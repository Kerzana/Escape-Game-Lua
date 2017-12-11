function checkLine(tableau,i,j)
	q = 0
	for k = 1, 9 do
		if tableau[i][k] ~= "-" then
			if tableau[i][j] == tableau[i][k] then
				if q == 2 then
					print("Coucou")
					sleep(3)
						return false
				end
				q = 2
			end
		else
		
		end
	end
	return true
end

function checkColumn(tableau,i,j)
	q = 0
	for k = 1, 9 do
		if tableau[k][j] ~= "-" then
			if tableau[i][j] == tableau[k][j] then
				if q == 2 then
					print("Coucou2")
					sleep(3)
					return false
				end
				q = 2
			end
		else
		
		end
	end
	return true
end

function checkBox(tableau,i,j)
	q = 0
	if  i >= 1 and i <= 3 then
		l = 1
		m = 3
	else if i >= 4 and i <= 6 then
		l = 4
		m = 6
	else if i >= 7 and i <= 9 then
		l = 7
		m = 9
	else
	end
	end
	end
	if  j >= 1 and j <= 3 then
		n = 1
		o = 3
	else if j >= 4 and j <= 6 then
		n = 4
		o = 6
	else if j >= 7 and j <= 9 then
		n = 7
		o = 9
	else
	end
	end
	end
	for l = l, m do
		for n = n, o do
			if tableau[l][n] ~= "-" then
				print(tableau[l][n])
				if tableau[l][n] == tableau[i][j] then
					if q == 2 then
						print("Coucou3")
						sleep(3)
						return false
					end
					q = 2
				end
			else
			
			end
		end
	end
	return true
end

function checkValid(tableau,i,j)
	return(checkBox(tableau,i,j) and checkColumn(tableau,i,j) and checkLine(tableau,i,j))
end

function resolvSudoku(tableau)
	
end

function sudokutotable(arg)
	tableau = {
		[0] = {[1]="-", [2]="-", [3]="-", [4]="-", [5]="-", [6]="-", [7]="-", [8]="-", [9]="-"}
	}
	
	for y = 1, 9 do
		tableau[y] = {}
		for i = 1, 10 do
			table.insert(tableau[y],i,string.char(string.byte(arg, i)))
		end
		arg = string.sub(arg,11,arg:len())
	end
	
	for n = 1, 9 do
		for b = 1, 9 do
			if checkValid(tableau,n,b) then
			else
				return false
			end
		end
	end

	--finishtableau = resolvSudoku(tableau)
	return tableau
end





blue = sudokutotable("9--------\n---------\n---------\n---------\n---------\n---------\n---------\n---------\n---------\n")

if blue == false then
	term.clear()
	term.setCursorPos(1,1)
	term.write("Error No Valid Sudoku.")
	return false
end

term.clear()
term.setCursorPos(1,1)
x = 0
for w = 1, 9 do
	term.setCursorPos(1,x)
	term.write("------------------")
	term.setCursorPos(1,x + 1)
	for z = 1, 9 do
		term.write(blue[w][z].."|")
	end
	x = x + 2
end
