local function getErrorData(errString)
	local all, chunk, line, text = errString:match("^((.+):(%d+):%s(.+))$")
	local exceptional, excepDetails = text:match("^(%[Exceptional%:(.+)%])$")
	if all ~= nil and exceptional == nil then
		--# It's a regular Lua error.
		local details = {
			["Type"] = "LuaError",
			["Message"] = text,
			["Line"] = tonumber(line),
			["Chunk"] = chunk,
			["Plain"] = errString
		}
		return details
	elseif all ~= nil and exceptional ~= nil then
		--# It's an exception.
		local details = textutils.unserialise(excepDetails)
		details.Plain = errString
		details.Line = tonumber(line)
		details.Chunk = chunk
		return details
	else
		--# Don't know how to handle it...
		local details = {
			["Type"] = "Unknown",
			["Line"] = tonumber(line),
			["Chunk"] = chunk,
			["Plain"] = errString
		}
	end
end

local function makeCatch(reqType, tbl, errData)
	return function(self, catchFunc)
		if (type(self) == "function" or type(self) == "table") and catchFunc == nil then
			catchFunc = self
		end

		if type(catchFunc) == "table" then
			for _,v in pairs(catchFunc) do
				if type(v) == "function" then
					catchFunc = v
					break
				end
			end
		end

		if type(catchFunc) ~= "function" then
			error("catch argument couldn't be resolved to a function!", 2)
			return
		end

		if reqType == nil or errData.Type == reqType then
			catchFunc(errData)
		end
		return tbl
	end
end

local env = getfenv(0)
env["try"] = function(f)
	if f == nil then
		error("throw argument couldn't be resolved to a function!", 2)
	end

	local firstErr = nil

	if type(f) == "function" then
		local ok, err = pcall(f)
		if not ok then
			firstErr = err
		end
	elseif type(f) == "table" then
		for _,v in pairs(f) do
			local ok, err = pcall(v)
			if not ok then
				firstErr = err
				break
			end
		end
	end

	local handled = {}

	if firstErr ~= nil then
		--# There was an error!
		return setmetatable({}, {
			__index = function(t, k)
				if k == "catch" then
					k = nil
				end

				if k ~= nil then
					handled[k] = true
				end

				local errData = getErrorData(firstErr)
				if k == nil and handled[errData.Type] then
					return function() return t end
				end
				return makeCatch(k, t, errData)
			end,

			__newindex = function() end
		})
	else
		--# Don't care...
		return setmetatable({}, {
			__index = function(t, k)
				return function()
					return t
				end
			end
		})
	end
end

env["throw"] = function(msg)
	if type(msg) == "string" then
		error(msg, 2)
	elseif type(msg) == "table" then
		if msg.Type == nil then
			error("throw table has no type!", 2)
		end
		error("[Exceptional:" .. textutils.serialise(msg) .. "]", 2)
	end
end
