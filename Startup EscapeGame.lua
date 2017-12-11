--rednet.open("back")
os.unloadAPI(shell.resolve("exceptional"))
os.loadAPI(shell.resolve("exceptional"))

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Function Principale --- Start Escape Game		 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

function programme1()
	shell.run("edit prtest")
	return false
end

function testprogramme1()
	os.loadAPI("code")
	try {
		function()
			re = code.code1()
		end
	}:catch{
		function(e)
                printError("Caught exception of type " .. e.Type .. " on line " .. e.Line .. " in chunk \"" .. e.Chunk .. "\"!")
        end
	}
	return re
end

function programme2()
	shell.run("edit prtest2")
	return false
end

function testprogramme2()
	os.loadAPI("code")
	try {
		function()
			re = code.code2()
		end
	}:catch{
		function(e)
                printError("Caught exception of type " .. e.Type .. " on line " .. e.Line .. " in chunk \"" .. e.Chunk .. "\"!")
        end
	}
	return re
end

local function escapegame()
	escapegameepreuve1()
	sleep(1)
	escapegameepreuve2()
	sleep(1)
	escapegameepreuve3()
	sleep(1)
	escapegameepreuve4()
	sleep(1)
	escapegameepreuve5()
	sleep(1)
	fin = "Felicitation tu as fini L'EscapeGame."
	return true
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Function Epreuve 1 --- Start Escape Game		 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

function escapegameepreuve1()
while true do
	term.clear()
	term.setCursorPos(1,1)
	term.setTextColor(colors.yellow)
	term.write("Epreuve 1 :")
	term.setTextColor(colors.blue)
	term.setCursorPos(2,3)
	term.write("Type : \"Create Function\".")
	term.setCursorPos(3,4)
	term.write("Info : Prototype : function epreuve1(arg1).")
	term.setCursorPos(4,5)
	term.setTextColor(colors.cyan)
	term.write("Function : ")
	term.setCursorPos(4,6)
	term.write("Elle returnra le Factorielle de n'importe.")
	term.setCursorPos(4,7)
	term.write("quel nombre positif.")
	term.setCursorPos(4,8)
	term.write("")
	term.setCursorPos(4,10)
	term.setTextColor(colors.orange)
	term.write("Bonne Chance.")
	term.setCursorPos(4,12)
	term.setTextColor(colors.white)
	term.write("Press Enter pour Ecrire la function l'Epreuve.")
	read()
	programme1()
	term.clear()
	term.setCursorPos(1,1)
	term.setTextColor(colors.yellow)
	term.write("Epreuve 1 :")
	term.setTextColor(colors.blue)
	term.setCursorPos(2,3)
	term.write("Type : \"Create Function\".")
	term.setCursorPos(3,4)
	term.write("Info : Prototype : function epreuve1(arg1).")
	term.setCursorPos(4,5)
	term.setTextColor(colors.cyan)
	term.write("Function : ")
	term.setCursorPos(4,6)
	term.write("Elle returnra le Factorielle de n'importe.")
	term.setCursorPos(4,7)
	term.write("quel nombre positif.")
	term.setCursorPos(4,8)
	term.write("")
	term.setCursorPos(4,10)
	term.setTextColor(colors.orange)
	term.write("Bonne Chance.")
	term.setCursorPos(4,12)
	term.setTextColor(colors.white)
	term.write("Press Enter pour Valider l'Epreuve.            ")
	read()
	reponse = testprogramme1()
	--rednet.send(idS, "E1P", "Epreuve1SendKerzanaEscapeGame")
	--Nan, E1R = rednet.receive("Epreuve1ReturnKerzanaEscapeGame")
	if reponse == "true" then
		term.setCursorPos(4,14)
		term.setTextColor(colors.green)
		term.write("Epreuve 1 Fini.")
		sleep(2)
		term.clear()
		return(true)
	else
		term.setCursorPos(4,14)
		term.setTextColor(colors.red)
		term.write("Epreuve 1 Fail.")
		sleep(4)
		term.clear()
	end
end
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Function Epreuve 2 --- Start Escape Game		 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

function escapegameepreuve2()
while true do
		term.clear()
	term.setCursorPos(1,1)
	term.setTextColor(colors.yellow)
	term.write("Epreuve 2 :")
	term.setTextColor(colors.blue)
	term.setCursorPos(2,3)
	term.write("Type : \"Create Function\".")
	term.setCursorPos(3,4)
	term.write("Info : Prototype : function epreuve2(arg1).")
	term.setCursorPos(4,5)
	term.setTextColor(colors.cyan)
	term.write("Function : ")
	term.setCursorPos(4,6)
	term.write("Elle returnra une suit de caractére ")
	term.setCursorPos(4,7)
	term.write("dans un tableau.")
	term.setCursorPos(4,8)
	term.write("Example : \"abcd\" -> \"defg\" la chaine de test aura tjr 10 charactere")
	term.setCursorPos(4,10)
	term.setTextColor(colors.orange)
	term.write("Bonne Chance.")
	term.setCursorPos(4,12)
	term.setTextColor(colors.white)
	term.write("Press Enter pour Ecrire la function l'Epreuve.")
	read()
	programme2()
	term.clear()
	term.setCursorPos(1,1)
	term.setTextColor(colors.yellow)
	term.write("Epreuve 2 :")
	term.setTextColor(colors.blue)
	term.setCursorPos(2,3)
	term.write("Type : \"Create Function\".")
	term.setCursorPos(3,4)
	term.write("Info : Prototype : function epreuve2(arg1).")
	term.setCursorPos(4,5)
	term.setTextColor(colors.cyan)
	term.write("Function : ")
	term.setCursorPos(4,6)
	term.write("Elle returnra une suit de caractére ")
	term.setCursorPos(4,7)
	term.write("dans un tableau.")
	term.setCursorPos(4,8)
	term.write("Example : \"abcd\" -> \"defg\"")
	term.setCursorPos(4,10)
	term.setTextColor(colors.orange)
	term.write("Bonne Chance.")
	term.setCursorPos(4,12)
	term.setTextColor(colors.white)
	term.write("Press Enter pour Valider l'Epreuve.            ")
	read()
	reponse = testprogramme2()
	--rednet.send(idS, "E1P", "Epreuve1SendKerzanaEscapeGame")
	--Nan, E1R = rednet.receive("Epreuve1ReturnKerzanaEscapeGame")
	if reponse == "true" then
		term.setCursorPos(4,14)
		term.setTextColor(colors.green)
		term.write("Epreuve 2 Fini.")
		sleep(2)
		term.clear()
		return(true)
	else
		term.setCursorPos(4,14)
		term.setTextColor(colors.red)
		term.write("Epreuve 2 Fail.")
		sleep(4)
		term.clear()
	end
end
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Function Epreuve 3 --- Start Escape Game		 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

function escapegameepreuve3()
	while true do
		term.clear()
	term.setCursorPos(1,1)
	term.setTextColor(colors.yellow)
	term.write("Epreuve 3 :")
	term.setTextColor(colors.blue)
	term.setCursorPos(2,3)
	term.write("Type : \"Create Programme\".")
	term.setCursorPos(3,4)
	term.write("Info : In computer in your Base center.")
	term.setCursorPos(4,5)
	term.setTextColor(colors.cyan)
	term.write("Programme : ")
	term.setCursorPos(4,6)
	term.write(" ")
	term.setCursorPos(4,7)
	term.write(" ")
	term.setCursorPos(4,8)
	term.write(" ")
	term.setCursorPos(4,10)
	term.setTextColor(colors.orange)
	term.write("Bonne Chance.")
	term.setCursorPos(4,12)
	term.setTextColor(colors.white)
	term.write("Press Enter pour valider l'Epreuve.")
	E1R = read()
	--rednet.send(idS, "E3P", "Epreuve3SendKerzanaEscapeGame")
	--Nan, E3R = rednet.receive("Epreuve3ReturnKerzanaEscapeGame")
	if E1R == "true" then
		term.setCursorPos(4,14)
		term.setTextColor(colors.green)
		term.write("Epreuve 3 Fini.")
		sleep(2)
		term.clear()
		return E1R
	else
		term.setCursorPos(4,14)
		term.setTextColor(colors.red)
		term.write("Epreuve 3 Fail.")
		sleep(4)
		term.clear()
	end
	end
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Function Epreuve 4 --- Start Escape Game		 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

function escapegameepreuve4()
while true do
	term.clear()
	term.setCursorPos(1,1)
	term.setTextColor(colors.yellow)
	term.write("Epreuve 4 :")
	term.setTextColor(colors.blue)
	term.setCursorPos(2,3)
	term.write("Type : \"Create Programme\".")
	term.setCursorPos(3,4)
	term.write("Info : In computer in your Base center.")
	term.setCursorPos(4,5)
	term.setTextColor(colors.cyan)
	term.write("Programme : ")
	term.setCursorPos(4,6)
	term.write(" ")
	term.setCursorPos(4,7)
	term.write(" ")
	term.setCursorPos(4,8)
	term.write(" ")
	term.setCursorPos(4,10)
	term.setTextColor(colors.orange)
	term.write("Bonne Chance.")
	term.setCursorPos(4,12)
	term.setTextColor(colors.white)
	term.write("Press Enter pour valider l'Epreuve.")
	E1R = read()
	--rednet.send(idS, "E4P", "Epreuve4SendKerzanaEscapeGame")
	--Nan, E4R = rednet.receive("Epreuve4ReturnKerzanaEscapeGame")
	if E1R == "true" then
		term.setCursorPos(4,14)
		term.setTextColor(colors.green)
		term.write("Epreuve 4 Fini.")
		sleep(2)
		term.clear()
		return E1R
	else
		term.setCursorPos(4,14)
		term.setTextColor(colors.red)
		term.write("Epreuve 4 Fail.")
		sleep(4)
		term.clear()
	end
end
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Function Epreuve 5 --- Start Escape Game		 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

function escapegameepreuve5()
while true do
	term.clear()
	term.setCursorPos(1,1)
	term.setTextColor(colors.yellow)
	term.write("Epreuve 5 :")
	term.setTextColor(colors.blue)
	term.setCursorPos(2,3)
	term.write("Type : \"Create Programme\".")
	term.setCursorPos(3,4)
	term.write("Info : In computer in your Base center.")
	term.setCursorPos(4,5)
	term.setTextColor(colors.cyan)
	term.write("Programme : ")
	term.setCursorPos(4,6)
	term.write(" ")
	term.setCursorPos(4,7)
	term.write(" ")
	term.setCursorPos(4,8)
	term.write(" ")
	term.setCursorPos(4,10)
	term.setTextColor(colors.orange)
	term.write("Bonne Chance.")
	term.setCursorPos(4,12)
	term.setTextColor(colors.white)
	term.write("Press Enter pour valider l'Epreuve.")
	E1R = read()
	--rednet.send(idS, "E5P", "Epreuve5SendKerzanaEscapeGame")
	--Nan, E5R = rednet.receive("Epreuve5ReturnKerzanaEscapeGame")
	if E1R == "true" then
		term.setCursorPos(4,14)
		term.setTextColor(colors.green)
		term.write("Epreuve 5 Fini.")
		sleep(2)
		term.clear()
		return E1R
	else
		term.setCursorPos(4,14)
		term.setTextColor(colors.red)
		term.write("Epreuve 5 Fail.")
		sleep(4)
		term.clear()
	end
end
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		BackDoor Exit  --- Start Escape Game			 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

local function backdoor()
while true do
	--Nan, exitbackdoor = rednet.receive("BackDoorProgrammeEscapeGame")
	if exitbackdoor == "exit()" then
		term.setCursorPos(20,10)
  		term.setTextColor(colors.green)
  		term.write("Back Door Open Info sur Code recuperer.")
  		term.setCursorPos(20,11)
  		term.write("https://pastebin.com/iTGx9HNS")
	else
		--rednet.send(Nan,"Error 404 Not Found", "BackDoorProgrammeEscapeGame")
	end
	sleep(1)
end
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Event Exit Mdp --- Start Escape Game			 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

local function eventmdp()
while true do
	local event, key1 = os.pullEvent( "key" )
  	sleep(1)
  	local event, key2 = os.pullEvent( "key" )
  	sleep(1)
  	local event, key3 = os.pullEvent( "key" )
  	sleep(1)
  	local event, key4 = os.pullEvent( "key" )
  	sleep(1)
	if key1 == keys.e and key2 == keys.x and key3 == keys.i and key4 == keys.t then
		term.clear()
  		term.setCursorPos(20,10)
  		term.setTextColor(colors.green)
  		term.write("Exit Progamme Gg :).")
  		return false
	end
end
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Function Timer --- Start Escape Game			 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

function timer()
	local windowtimer = window.create(term.current(),28,17,60,1)
	--windowtimer.setBackgroundColor(colors.white)
	j = true
	for i = 3600, 1, -1 do
		windowtimer.redraw()
		windowtimer.setCursorPos(1,1)
		timerComptetmp = i
		timerCompte = math.floor(timerComptetmp / 60)
		timerCompteSec = timerComptetmp % 60
		if j then
			windowtimer.setTextColor(colors.red)
		else
			windowtimer.setTextColor(colors.orange)
		end
		windowtimer.setCursorPos(1,1)
		windowtimer.write(timerCompte.." m: "..timerCompteSec.."s restantes.")
		sleep(1)
		j = not j
	end
	fin = "Tu as Perdu Xd Mdrr Bye des Données Applied."
	--rednet.send(id, perdu, "EscapeGameLose")
	return false
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Print Introduction --- Start Escape Game		 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

local function ft_instruction()
	term.clear()
	term.setCursorPos(1,1)
	term.setTextColor(colors.yellow)
	term.write("Introduction et Explication:")
	term.setTextColor(colors.blue)
	term.setCursorPos(2,3)
	term.write("Bienvenue dans L'escape Game.")
	term.setCursorPos(3,4)
	term.write("Tu as 4 fin possible.")
	term.setCursorPos(4,5)
	term.setTextColor(colors.cyan)
	term.write("1 : Finir L'escape Game.")
	term.setCursorPos(4,6)
	term.write("2 : Reussir grace a une BackDoor.")
	term.setCursorPos(4,7)
	term.write("3 : Trouver le code de Fin de Programme.")
	term.setCursorPos(4,8)
	term.write("4 : Finir le Timer..")
	term.setCursorPos(4,10)
	term.write("Evidament si le timer se fini tu perds.")
	term.setCursorPos(4,11)
	term.write("Tu as 1 heur pour finir.")
	term.setCursorPos(4,13)
	term.write("Tes Donnees Applied sont en jeux.")
	term.setCursorPos(5,15)
	term.setTextColor(colors.orange)
	term.write("Bonne Chance.")
	term.setCursorPos(4,17)
	term.setTextColor(colors.white)
	term.write("Press Enter pour continuer.")
	read()
end

---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---
---		Main Programme --- Start Escape Game			 ---
---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

while true do
	ft_instruction()
	term.setCursorPos(1,1)
	term.setTextColor(colors.white)
	fin = "Winner !!!"
	term.clear()
	term.setCursorPos(1,1)
	term.write(">> \"start\" pour commencer")
	term.setCursorPos(2,2)
	statusGame = read()
	if statusGame == "start" then
		term.clear()
		term.setCursorPos(1,1)
		parallel.waitForAny(escapegame,backdoor,eventmdp,timer)
		break
	else
		print("Bien Essayer :).")
	end
end
term.setCursorPos(6,6)
--rednet.send(idS, "Finish", "FinEscapeGameKerzana")
print(fin)
