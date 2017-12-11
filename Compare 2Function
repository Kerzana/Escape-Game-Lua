
function code1()

function rotoneGood(number)
	number = number * (10 - number)
	return number
end

erreur = 0
os.loadAPI("prtest")

	for i = 1, 100 do
		a = math.random(1,100)
		x = prtest.rotone(a)
		y = rotoneGood(a)
		if x == y then
			a = (a - 1)
		else
			erreur = 1
			break
		end
	end
sleep(0.1)
if erreur == 0 then
	re = "true"
	return (re)
else
	re = "false"
	return (re)
end
end

function code2()

function rotoneGood2(arg1)
	y = 1
	tableau = {
	[0] = {0,0}
}
	for i = 1, arg1:len() do
		s = string.byte(arg1,i)
		if s == string.byte("z") then
			s = s - 24
		else if s == string.byte("y") then
			s = s - 24
		else
			s = s + 3
		end
		end
		table.insert(tableau, s)
	end
	green = string.char(tableau[y],tableau[y+1],tableau[y+2],tableau[y+3],tableau[y+4],tableau[y+5],tableau[y+6],tableau[y+7],tableau[y+8],tableau[y+9],tableau[y+10])
	return green
end

erreur = 0
os.loadAPI("prtest2")

	for i = 1, 100 do
		a = "axzybegkrt"
		x = prtest2.epreuve2(a)
		y = rotoneGood2(a)
		if x == y then
			a = (a - 1)
		else
			erreur = 1
			break
		end
	end
sleep(0.1)
if erreur == 0 then
	re = "true"
	return (re)
else
	re = "false"
	return (re)
end
end
