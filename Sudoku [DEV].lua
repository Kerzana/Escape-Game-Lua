function checkColumn(tableau,line,column)
    errror = 0
    for linecheck = 1, 9 do
        if tableau[linecheck][column] ~= "-" then
            if tonumber(tableau[line][column]) == tonumber(tableau[linecheck][column]) then
                if errror == 2 then
                    return false
                end
                errror = 2
            end
        end
    end
    return true
end

function checkLine(tableau,line,column)
    failure = 0
    for checkcolumn = 1, 9 do
        if tableau[line][checkcolumn] ~= "-" then
            if tonumber(tableau[line][column]) == tonumber(tableau[line][checkcolumn]) then
                if failure == 2 then
                    return false
                end
                failure = 2
            end
        end
    end
    return true
end

function checkBox(tableau,line,column)
    minLine = 0
    maxline = 0
    if  line >= 1 and line <= 3 then
        minLine = 1
        maxline = 3
    else if line >= 4 and line <= 6 then
        minLine = 4
        maxline = 6
    else if line >= 7 and line <= 9 then
        minLine = 7
        maxline = 9
    else
    end
    end
    end
    mincolumn = 0
    maxcolumn = 0
    if  column >= 1 and column <= 3 then
        mincolumn = 1
        maxcolumn = 3
    else if column >= 4 and column <= 6 then
        mincolumn = 4
        maxcolumn = 6
    else if column >= 7 and column <= 9 then
        mincolumn = 7
        maxcolumn = 9
    else
    end
    end
    end
    errror = 0
    for minLine = minLine, maxline do
        for mincolumn = mincolumn, maxcolumn do
            if tableau[minLine][mincolumn] ~= "-" then
                if tonumber(tableau[line][column]) == tonumber(tableau[minLine][mincolumn]) then
                    if errror == 2 then
                        return false
                    end
                    errror = 2
                end
            end
        end
    end
    return true
end

function checkValid(tableau,i,j)
    return(checkBox(tableau,i,j) and checkColumn(tableau,i,j) and checkLine(tableau,i,j))
end

function printtableau(tableau)
    term.setCursorPos(1,1)
    x = 0
    for w = 1, 9 do
        term.setCursorPos(1,x)
        term.write("------------------")
        term.setCursorPos(1,x + 1)
        for z = 1, 9 do
            term.write(tableau[w][z].."|")
        end
        x = x + 2
    end
end

function resolvSudoku(tableau,line,column)
    sleep(0)
    printtableau(tableau)
    tmpre = 0
    for line = line, 9 do
        if tmpre == 2 then
            column = 1
        end
        tmpre = 2
        for column = column, 9 do
            if tableau[line][column] == "-" then
                for case = 1, 9 do
                    tableau[line][column] = case
                    printtableau(tableau)
                    tmp = checkValid(tableau,line,column)
                    if  tmp == true then
                        if resolvSudoku(tableau,line,column+1) == true then
                            return false
                        else if resolvSudoku(tableau,line,column+1) == tableau then
                        	return tableau
                        end
                        end
                    end
                    if case == 9 then
                        tableau[line][column] = "-"
                        return false
                    end
                end
            else
            end
        end
    end
    return tableau
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

    finishtableau = resolvSudoku(tableau,1,1)
    return finishtableau
end





blue = sudokutotable("213597-6-\n7-6-81325\n-543-6917\n9426-87--\n63-17--42\n178234596\n5618-3-79\n3-976215-\n-27-15683")

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
