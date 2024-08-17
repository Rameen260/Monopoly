import GUI
setscreen ("graphics:500;700")
var athenbought, athenbought2, barcabought, barcabought2, gdyniabought, gdyniabought2, torontobought, torontobought2, romebought, romebought2, vancouverbought2, vancouverbought, newyorkbought2,
    gydniabought2, gydniabought, newyorkbought, rigabought, rigabought2, montrealbought, montrealbought2, parisbought, parisbought2, londonbought, londonbought2, hongkongbought, hongkongbought2 : int
    := 0
var font, font1, font2, font3, dicenum, dicenum2, low, high, chancecash, menu : int
var scorestring, scorestring2, name, skipper, roll, name2, statement : string
var dicepos, dicepos2 : int := 0
var x, x2 : int := 400
var y, y2 : int := 180
var score, score2 : int := 15000000 % Feel Free to change the value of starting money here
var player : int := 1

%ScoreString
proc getname
    %Getting Names
    locate (39, 22)
    font := Font.New ("Arial:10")
    Font.Draw ("Please enter Player 1's Name", 150, 80, font, black)
    locate (41, 22)
    put " " : 5 ..
    get name
    delay (200)
    cls
    Font.Draw ("Please enter Player 1's Name", 150, 80, font, white)
    locate (41, 22)
    Font.Draw ("Please enter Player 2's Name", 150, 80, font, black)
    put " " : 5 ..
    get name2
    Font.Draw ("Please enter Player 2's Name", 150, 80, font, white)
    Font.Free (font)
    % Bottom Scorebaord
    delay (300)
    cls
end getname


proc scores

    scorestring := intstr (score)
    scorestring2 := intstr (score2)
    font := Font.New ("Courier:12:Bold")
    Font.Draw ("$", 110, 640, font, red)
    Font.Draw ("$", 290, 640, font, red)
    Font.Draw (scorestring, 120, 640, font, red)
    Font.Draw (scorestring2, 300, 640, font, red)


    %Top Scoreboard
    font := Font.New ("Courier:15:Bold")
    Font.Draw ("Scoreboard", 188, 680, font, red)

    Font.Free (font)
end scores

proc names
    font := Font.New ("Courier:16:Bold")
    font := Font.New ("Courier:12")
    Font.Draw (name, 120, 660, font, blue)
    Font.Draw (name2, 300, 660, font, blue)
    Font.Free (font)
end names

proc taggy
    font := Font.New ("Arial:5")
    if athenbought2 = 1 then
	drawfilloval (355, 110, 30, 10, blue) %athens
	Font.Draw ("RENT: 360K", 337, 110, font, white)
    end if

    if barcabought2 = 1 then
	drawfilloval (285, 110, 30, 10, blue) %Barca
	Font.Draw ("RENT: 300K", 265, 110, font, white)

    end if

    if gdyniabought2 = 1 then

	drawfilloval (145, 110, 30, 10, blue) %gdynia
	Font.Draw ("RENT: 180K", 126, 110, font, white)
    end if

    if vancouverbought2 = 1 then
	drawfilloval (145, 460, 30, 10, blue)      %Vancouver
	Font.Draw ("RENT: 600K", 126, 460, font, white)
    end if
    if romebought2 = 1 then
	drawfilloval (145, 315, 30, 10, blue) %rome
	Font.Draw ("RENT: 540K", 126, 313, font, white)
    end if
    if torontobought2 = 1 then
	drawfilloval (145, 250, 30, 10, blue)   %toronto
	Font.Draw ("RENT: 480K", 126, 250, font, white)
    end if

    if newyorkbought2 = 1 then
	drawfilloval (145, 600, 30, 10, blue)     %newyork
	Font.Draw ("RENT: 660K", 126, 598, font, white)
    end if

    if londonbought2 = 1 then

	drawfilloval (215, 600, 30, 10, blue) %london
	Font.Draw ("RENT: 720K", 196, 598, font, white)
    end if

    if hongkongbought2 = 1 then
	drawfilloval (355, 600, 30, 10, blue)   %Hongking
	Font.Draw ("RENT: 780K", 334, 598, font, white)
    end if

    if parisbought2 = 1 then
	drawfilloval (355, 460, 30, 10, blue)  %Paris
	Font.Draw ("RENT: 900K", 334, 458, font, white)
    end if

    if montrealbought2 = 1 then
	drawfilloval (355, 390, 30, 10, blue) %montreal
	Font.Draw ("RENT: 1.2M", 334, 389, font, white)
    end if

    if rigabought2 = 1 then
	drawfilloval (355, 250, 30, 10, blue) %riga

	font := Font.New ("Arial:5")
	Font.Draw ("RENT: 1.05M", 334, 248, font, white)
    end if

    %---------PLAYER ONE-------------------------------

    if athenbought = 1 then
	drawfilloval (355, 110, 30, 10, 12) %athens

	font := Font.New ("Arial:5")
	Font.Draw ("RENT: 360K", 337, 110, font, white)
    end if

    if barcabought = 1 then
	drawfilloval (285, 110, 30, 10, 12) %Barca
	Font.Draw ("RENT: 300K", 265, 110, font, white)

    end if

    if gdyniabought = 1 then
	drawfilloval (145, 110, 30, 10, 12) %gdynia
	Font.Draw ("RENT: 180K", 126, 110, font, white)
    end if

    if vancouverbought = 1 then
	drawfilloval (145, 460, 30, 10, 12)      %Vancouver
	Font.Draw ("RENT: 600K", 126, 460, font, white)
    end if
    if romebought = 1 then
	drawfilloval (145, 315, 30, 10, 12) %rome
	Font.Draw ("RENT: 540K", 126, 313, font, white)
    end if
    if torontobought = 1 then
	drawfilloval (145, 250, 30, 10, 12)   %toronto
	Font.Draw ("RENT: 480K", 126, 250, font, white)
    end if

    if newyorkbought = 1 then
	drawfilloval (145, 600, 30, 10, 12)     %newyork
	Font.Draw ("RENT: 660K", 126, 598, font, white)
    end if

    if londonbought = 1 then

	drawfilloval (215, 600, 30, 10, 12) %london
	Font.Draw ("RENT: 720K", 196, 598, font, white)
    end if

    if hongkongbought = 1 then
	drawfilloval (355, 600, 30, 10, 12)   %Hongking
	Font.Draw ("RENT: 780K", 334, 598, font, white)
    end if

    if parisbought = 1 then
	drawfilloval (355, 460, 0, 30, 12)  %Paris
	Font.Draw ("RENT: 900K", 334, 458, font, white)
    end if

    if montrealbought = 1 then
	drawfilloval (355, 390, 30, 10, 12) %montreal
	Font.Draw ("RENT: 1.2M", 334, 389, font, white)
    end if

    if rigabought = 1 then
	drawfilloval (355, 250, 30, 10, 12) %riga
	Font.Draw ("RENT: 1.05M", 334, 248, font, white)
    end if

end taggy
taggy




proc board
    %boardbackground
    Pic.ScreenLoad ("back.jpg", 1, 100, picCopy)
    % drawfillbox (1, 100, 500, 610, 93)
    %Top
    Draw.ThickLine (1, 609, 618, 609, 3, black)
    %Bottom
    Draw.ThickLine (1, 99, 618, 99, 3, black)
    %Left
    Draw.ThickLine (1, 99, 1, 609, 3, black)
    %Right
    Draw.ThickLine (498, 99, 498, 610, 3, black)
    %boxes
    Draw.ThickLine (105, 550, 105, 99, 3, black)
    Draw.ThickLine (105, 609, 105, 99, 3, black)
    Draw.ThickLine (1, 505, 618, 505, 3, black)
    Draw.ThickLine (395, 609, 395, 100, 3, black)
    Draw.ThickLine (3, 203, 617, 203, 3, black)
    %corners
    Pic.ScreenLoad ("free parking.jpg", 3, 507, picCopy)
    Pic.ScreenLoad ("free parking.jpg", 397, 507, picCopy)
    Pic.ScreenLoad ("free parking.jpg", 3, 101, picCopy)
    Pic.ScreenLoad ("go.jpg", 396, 103, picCopy)
    %left
    Pic.ScreenLoad ("toronto.jpg", 3, 217, picCopy)
    Pic.ScreenLoad ("rome.jpg", 2, 290, picCopy)
    Pic.ScreenLoad ("chance2.jpg", 3, 360, picCopy)
    Pic.ScreenLoad ("vancouver.jpg", 3, 430, picCopy)


    Draw.ThickLine (3, 282, 105, 282, 3, black)
    Draw.ThickLine (3, 354, 105, 354, 3, black)
    Draw.ThickLine (3, 426, 105, 426, 3, black)

    %top
    Pic.ScreenLoad ("new york.jpg", 115, 507, picCopy)
    Pic.ScreenLoad ("london.jpg", 185, 507, picCopy)
    Pic.ScreenLoad ("chance3.jpg", 255, 507, picCopy)
    Pic.ScreenLoad ("hong kong.jpg", 325, 507, picCopy)

    Draw.ThickLine (180, 505, 180, 607, 3, black)
    Draw.ThickLine (250, 505, 250, 607, 3, black)
    Draw.ThickLine (320, 505, 320, 607, 3, black)

    Draw.ThickLine (1, 609, 618, 609, 3, black)
    %right
    Pic.ScreenLoad ("riga.jpg", 397, 217, picCopy)
    Pic.ScreenLoad ("chance1.jpg", 397, 290, picCopy)
    Pic.ScreenLoad ("montreal.jpg", 397, 360, picCopy)
    Pic.ScreenLoad ("paris.jpg", 397, 430, picCopy)



    Draw.ThickLine (396, 282, 498, 282, 3, black)
    Draw.ThickLine (396, 354, 498, 354, 3, black)
    Draw.ThickLine (396, 426, 498, 426, 3, black)

    Draw.ThickLine (498, 99, 498, 610, 3, black)
    %bottom

    Pic.ScreenLoad ("gdynia.jpg", 115, 101, picCopy)
    Pic.ScreenLoad ("chance.jpg", 185, 101, picCopy)
    Pic.ScreenLoad ("barcelona.jpg", 255, 101, picCopy)
    Pic.ScreenLoad ("athens.jpg", 325, 101, picCopy)

    Draw.ThickLine (180, 100, 180, 203, 3, black)
    Draw.ThickLine (250, 100, 250, 203, 3, black)
    Draw.ThickLine (320, 100, 320, 203, 3, black)

    Pic.ScreenLoad ("logo.jpg", 113, 260, picCopy)
end board

proc chance
    cls
    low := -3000000
    high := 2000000
    loop
	randint (chancecash, low, high)
	exit when chancecash rem 200000 = 0
    end loop
    if chancecash > 0 then
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Congratulations ", name, "! You have received ", chancecash, "$!"
	score := score + chancecash
	delay (3000)
    elsif chancecash = 0 then
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You get nothing!"
	delay (3000)
    else
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Unfortuantely ", name, ", you have lost ", chancecash, "$!"
	score := score + chancecash
	delay (3000)
    end if
end chance


proc chance2
    cls
    low := -4000000
    high := 2000000
    loop
	randint (chancecash, low, high)
	exit when chancecash rem 200000 = 0
    end loop
    if chancecash > 0 then
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Congratulations ", name2, "! You have received $", chancecash, "!"
	score2 := score2 + chancecash
	delay (3000)
    elsif chancecash = 0 then
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You get nothing!"
	delay (3000)
    else
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Unfortuantely ", name2, ", you have lost ", chancecash, "$!"
	score2 := score2 + chancecash
	delay (3000)
    end if
end chance2

proc athens
    scores
    names
    if athenbought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 360000
	score := score - 360000
	locate (41, 1)
	put name2, " owns this property, pay $360k rent"
    elsif athenbought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Athens for $1.2 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		athenbought := 1
		score := score - 1200000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)

		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end athens


proc barcelona
    scores
    names
    if barcabought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 300000
	score := score - 300000
	locate (41, 1)
	put name2, " owns this property, pay $300k rent"
	delay (1500)
    elsif barcabought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Barcelona for $1 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		barcabought := 1
		score := score - 1000000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end barcelona

proc gdynia
    if gdyniabought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 180000
	score := score - 180000
	scores
	names
	locate (41, 1)
	put name2, " owns this property, pay $180k rent"
	delay (1500)
    elsif gdyniabought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Gdynia for $600 K? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		score := score - 600000
		gdyniabought := 1
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end gdynia


proc toronto
    scores
    names
    if torontobought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 480000
	score := score - 480000
	locate (41, 1)
	put name2, " owns this property, pay $480k rent"
	delay (1500)
    elsif torontobought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Toronto for $1.6 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		score := score - 1600000
		torontobought := 1
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end toronto

proc rome
    scores
    names
    if romebought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 540000
	score := score - 540000
	locate (41, 1)
	put name2, " owns this property, pay $540k rent"
	delay (1500)
    elsif romebought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Rome for $1.8 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		score := score - 1800000
		romebought := 1
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end rome

proc vancouver
    scores
    names
    if vancouverbought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 600000
	score := score - 600000
	locate (41, 1)
	put name2, " owns this property, pay $600k rent"
	delay (1500)
    elsif vancouverbought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Vancouver for $2 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		vancouverbought := 1
		score := score - 2000000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end vancouver

proc newyork
    scores
    names
    if newyorkbought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 660000
	score := score - 660000
	locate (41, 1)
	put name2, " owns this property, pay $660k rent"
    elsif newyorkbought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	locate (41, 1)
	put "Would you like to buy New York for $2.2 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		score := score - 2200000
		newyorkbought := 1
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end newyork


proc london
    scores
    names
    locate (41, 1)
    if londonbought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 720000
	score := score - 720000
	locate (41, 1)
	put name, " owns this property, pay $720k rent"
    elsif londonbought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy London for $2.4 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		score := score - 2400000
		londonbought := 1
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end london

proc hongkong
    scores
    names
    locate (41, 1)
    if hongkongbought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 780000
	score := score - 780000
	locate (41, 1)
	put name, " owns this property, pay $780k rent"
    elsif hongkongbought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Hong Kong for $2.6 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		score := score - 2600000
		hongkongbought := 1
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if

end hongkong



proc paris
    scores
    names
    locate (41, 1)
    if parisbought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 900000
	score := score - 900000
	locate (41, 1)
	put name, " owns this property, pay $900k rent"
    elsif parisbought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Paris for $3M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		score := score - 3000000
		parisbought := 1
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end paris


proc montreal
    scores
    names
    locate (41, 1)
    if montrealbought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 1200000
	score := score - 1200000
	locate (41, 1)
	put name, " owns this property, pay $1.2M rent"
    elsif montrealbought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Montreal for $4M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		score := score - 4000000
		montrealbought := 1
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end montreal


proc riga
    scores
    names
    locate (41, 1)
    if rigabought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 + 10500000
	score := score - 1050000
	locate (41, 1)
	put name, " owns this property, pay $1.05M rent"
    elsif rigabought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Riga for $3.5M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		score := score - 3500000
		rigabought := 1
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end riga

proc parking
    cls
    board
    scores
    names
    taggy
    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
    locate (41, 1)
    put "Take a break and enjoy your free parking"
    delay (2000)
    cls
end parking
%-------------------------------Player 2-------------------


proc athens2
    scores
    names
    if athenbought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 - 360000
	score := score + 360000
	locate (41, 1)
	put name, " owns this property, pay $360k rent"
	delay (3000)
    elsif athenbought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy

	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Athens for $1.2 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		athenbought2 := 1
		score2 := score2 - 1200000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end athens2


proc barcelona2
    scores
    names
    if barcabought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score := score + 300000
	score2 := score2 - 300000
	locate (41, 1)
	put name, " owns this property, pay $300k rent"
	delay (3000)
    elsif barcabought2 = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Barcelona for $1 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		barcabought2 := 1
		score2 := score2 - 1000000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end barcelona2

proc gdynia2
    scores
    names
    if gdyniabought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score := score + 180000
	score2 := score2 - 180000
	locate (41, 1)
	put name, " owns this property, pay $180k rent"
	delay (3000)
    elsif gdyniabought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Gdynia for $600 K? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		gdyniabought2 := 1
		score2 := score2 - 600000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end gdynia2


proc toronto2
    scores
    names
    if torontobought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score := score + 480000
	score2 := score2 - 480000
	locate (41, 1)
	put name, " owns this property, pay $480k rent"
	delay (3000)
    elsif torontobought2 = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Toronto for $1.6 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		torontobought2 := 1
		score2 := score2 - 1600000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end toronto2

proc rome2
    scores
    names
    if romebought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score := score + 540000
	score2 := score2 - 540000
	locate (41, 1)
	put name, " owns this property, pay $540k rent"
	delay (3000)
    elsif romebought2 = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Rome for $1.8 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		romebought2 := 1
		score2 := score2 - 1800000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end rome2

proc vancouver2
    scores
    names
    if vancouverbought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score := score + 600000
	score2 := score2 - 600000
	locate (41, 1)
	put name, " owns this property, pay $600k rent"
	delay (3000)
    elsif vancouverbought2 = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Vancouver for $2 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		vancouverbought2 := 1
		score2 := score2 - 2000000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end vancouver2

proc newyork2
    scores
    names
    if newyorkbought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score := score + 300000
	score2 := score2 - 300000
	locate (41, 1)
	put name, " owns this property, pay $300k rent"
	delay (3000)
    elsif newyorkbought2 = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy New York for $2.2 M? (Y/N)"
	loop
	    get statement
	    if statement = "Y" then
		newyorkbought2 := 1
		score2 := score2 - 2200000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end newyork2


proc london2
    scores
    names
    locate (41, 1)
    if londonbought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 - 720000
	score := score + 720000
	locate (41, 1)
	put name, " owns this property, pay $720k rent"
	delay (3000)
    elsif londonbought2 = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
	delay (2000)
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy London for $2.4 M? (Y/N)"
	loop
	    get statement

	    if statement = "Y" then
		londonbought2 := 1
		score := score - 2400000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if

end london2

proc hongkong2
    scores
    names
    locate (41, 1)
    if hongkongbought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 - 780000
	score := score + 780000
	locate (41, 1)
	put name, " owns this property, pay $780k rent"
	delay (3000)
    elsif hongkongbought2 = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
	delay (2000)
    else
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "Would you like to buy Hong Kong for $2.6 M? (Y/N)"


	loop
	    get statement

	    if statement = "Y" then
		hongkongbought2 := 1
		score := score - 2600000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end hongkong2

proc paris2
    scores
    names
    locate (41, 1)
    if parisbought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 - 900000
	score := score + 900000
	locate (41, 1)
	put name, " owns this property, pay $900k rent"
	delay (3000)
    elsif parisbought2 = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
	delay (2000)
    else
	cls
	locate (41, 1)
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	put "Would you like to buy Paris for $3M? (Y/N)"
	loop
	    get statement

	    if statement = "Y" then
		parisbought2 := 1
		score := score - 3000000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end paris2


proc montreal2
    scores
    names
    locate (41, 1)
    if montrealbought = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 - 1200000
	score := score + 1200000
	locate (41, 1)
	put name, " owns this property, pay $1.2M rent"
	delay (3000)
    elsif montrealbought2 = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
	delay (2000)
    else
	cls
	locate (41, 1)
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	put "Would you like to buy Montreal for $4M? (Y/N)"
	loop
	    get statement

	    if statement = "Y" then
		montrealbought2 := 1
		score := score - 4000000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end montreal2


proc riga2
    scores
    names
    locate (41, 1)
    if rigabought2 = 1 then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	score2 := score2 - 10500000
	score := score + 1050000
	locate (41, 1)
	put name, " owns this property, pay $1.05M rent"
	delay (3000)
    elsif rigabought = 1
	    then
	cls
	board
	scores
	names
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	locate (41, 1)
	put "You already own this property!"
	delay (2000)
    else
	cls
	board
	scores
	names
	taggy
	locate (41, 1)
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	put "Would you like to buy Riga for $3.5M? (Y/N)"
	loop
	    get statement

	    if statement = "Y" then
		rigabought2 := 1
		score := score - 3500000
		put "Property bought"
		delay (2000)
		cls
		exit
	    elsif statement = "N" then
		put "Property not bought"
		delay (2000)
		cls
		exit
	    else
		put "Please enter 'Y' or 'N'"
	    end if
	end loop
    end if
end riga2

proc parking2
    cls
    board
    scores
    names
    taggy
    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
    locate (41, 1)
    put "Take a break and enjoy your free parking"
    delay (2000)
    cls
end parking2

procedure player1win
    cls
    Pic.ScreenLoad ("back1.jpg", 1, 1, picCopy)
    Pic.ScreenLoad ("mon.JPG", 120, 450, picCopy)
    Font.Draw ("CONGRATULATIONS", 150, 250, font1, black)
    Font.Draw ("PLAYER ONE HAS WON!", 120, 220, font1, black)

end player1win

procedure player2win
    cls
    Pic.ScreenLoad ("back1.jpg", 1, 1, picCopy)
    Pic.ScreenLoad ("mon.JPG", 120, 450, picCopy)
    Font.Draw ("CONGRATULATIONS", 150, 250, font1, black)
    Font.Draw ("PLAYER TWO HAS WON!", 120, 220, font1, black)
end player2win


procedure movement
    cls
    getname
    board
    scores

    loop
	%Player 1
	names
	board
	taggy
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	randint (dicenum, 1, 6)
	locate (40, 1)
	put "Enter anything to roll the dice (PLAYER ONE)"
	get roll : *

	put "You rolled a ", dicenum
	delay (1000)
	cls
	board
	dicepos := dicepos + dicenum
	if
		dicepos >= 20 then
	    dicepos := dicepos - 20
	    score := score + 2000000
	end if
	if dicepos = 0 then         %GO
	    x := 400
	    y := 180
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)

	elsif dicepos = 1 then         %Athens
	    x := 330
	    y := 180
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    athens
	elsif dicepos = 2 then      %Barcelona
	    x := 260
	    y := 180
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    barcelona
	elsif dicepos = 3 then         %Chance

	    x := 190
	    y := 180
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    chance
	elsif
		dicepos = 4 then         %Gdynia
	    x := 120
	    y := 180
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    gdynia
	elsif dicepos = 5 then         %FREE PARKING

	    x := 50
	    y := 180
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    parking
	elsif dicepos = 6 then         %Toronto

	    x := 50
	    y := 250
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    toronto
	elsif dicepos = 7 then         %Rome

	    x := 50
	    y := 320
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    rome
	elsif dicepos = 8 then         %Chance

	    x := 50
	    y := 390
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    chance
	elsif dicepos = 9 then         %Vancouver

	    x := 50
	    y := 460
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    vancouver
	elsif dicepos = 10 then         %FREE PARKING

	    x := 50
	    y := 530
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    parking
	elsif dicepos = 11 then          %New York

	    x := 120
	    y := 530
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    newyork
	elsif dicepos = 12 then         %London

	    x := 190
	    y := 530
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    london
	elsif dicepos = 13 then         %Chance

	    x := 260
	    y := 530
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    chance
	elsif dicepos = 14 then          %Hong Kong

	    x := 330
	    y := 530
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    hongkong
	elsif dicepos = 15 then          %FREE PARKING

	    x := 400
	    y := 530
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    parking
	elsif dicepos = 16 then          %Paris

	    x := 400
	    y := 460
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    paris
	elsif dicepos = 17 then         %Montreal

	    x := 400
	    y := 390
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    montreal
	elsif dicepos = 18 then         %Chance

	    x := 400
	    y := 320
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    chance
	elsif dicepos = 19 then          %Riga

	    x := 400
	    y := 250
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    riga
	end if
	statement := " "
	cls
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)

	%Player 2
	board
	scores
	names
	taggy
	if score < 0 then

	    player2win
	    exit
	elsif score2 < 0 then

	    player1win
	    exit
	end if

	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)

	randint (dicenum2, 1, 6)
	locate (40, 1)
	put "Enter anything to roll the dice (PLAYER TWO)"
	get roll : *

	put "You rolled a ", dicenum2
	delay (1000)
	cls
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	board
	dicepos2 := dicepos2 + dicenum2
	Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	if
		dicepos2 >= 20 then
	    dicepos2 := dicepos2 - 20
	    score2 := score2 + 2000000
	end if
	if dicepos2 = 0 then         %GO
	    x2 := 400
	    y2 := 180
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)

	elsif dicepos2 = 1 then         %Athens
	    x2 := 330
	    y2 := 180
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    athens2
	elsif
		dicepos2 = 2 then         %Barcelona
	    x2 := 260
	    y2 := 180
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    barcelona2
	elsif
		dicepos2 = 3 then         %Chance
	    x2 := 190
	    y2 := 180
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    chance2
	elsif
		dicepos2 = 4 then         %Gdynia
	    x2 := 120
	    y2 := 180
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    gdynia2
	elsif
		dicepos2 = 5 then         %FREE PARKING
	    x2 := 50
	    y2 := 180
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    parking2
	elsif
		dicepos2 = 6 then         %Toronto
	    x2 := 50
	    y2 := 250
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    toronto2
	elsif
		dicepos2 = 7 then         %Rome
	    x2 := 50
	    y2 := 320
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    rome2
	elsif
		dicepos2 = 8 then         %Chance
	    x2 := 50
	    y2 := 390
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    chance2
	elsif
		dicepos2 = 9 then         %Vancouver
	    x2 := 50
	    y2 := 460
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    vancouver2
	elsif
		dicepos2 = 10 then         %FREE PARKING
	    x2 := 50
	    y2 := 530
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    parking2
	elsif
		dicepos2 = 11 then         %New York
	    x2 := 120
	    y2 := 530
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    newyork2
	elsif
		dicepos2 = 12 then         %London
	    x2 := 190
	    y2 := 530
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    london2
	elsif
		dicepos2 = 13 then         %Chance
	    x2 := 260
	    y2 := 530
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    chance2
	elsif
		dicepos2 = 14 then         %Hong Kong
	    x2 := 330
	    y2 := 530
	    Pic.ScreenLoad ("blue.JPG", x, y, picCopy)
	    hongkong2
	elsif
		dicepos2 = 15 then         %FREE PARKING
	    x2 := 400
	    y2 := 530
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    parking2
	elsif
		dicepos2 = 16 then         %Paris
	    x2 := 400
	    y2 := 460
	    Pic.ScreenLoad ("blue.JPG", x, y, picCopy)
	    paris2
	elsif
		dicepos2 = 17 then         %Montreal
	    x2 := 400
	    y2 := 390
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    montreal2
	elsif
		dicepos2 = 18 then         %Chance
	    x2 := 400
	    y2 := 320
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    chance2
	elsif
		dicepos2 = 19 then         %Riga
	    x2 := 400
	    y2 := 250
	    Pic.ScreenLoad ("red.jpg", x, y, picCopy)
	    Pic.ScreenLoad ("blue.JPG", x2, y2, picCopy)
	    riga2
	end if
	cls
	scores

	if score < 0 then

	    player2win
	    exit
	elsif score2 < 0 then

	    player1win
	    exit
	end if

    end loop
end movement

proc intruction
    cls
    Pic.ScreenLoad ("back1.jpg", 1, 1, picCopy)
    font2 := Font.New ("Arial:20:bold,underline")
    font3 := Font.New ("Arial:12:bold")
    Font.Draw ("INSTRUCTIONS", 160, 650, font2, black)
    Font.Draw ("Welcome to Monopoly. You begin the game by rolling the dice. ", 10, 590, font3, black)
    Font.Draw ("As you land on properties you are provided the option to ", 10, 560, font3, black)
    Font.Draw ("purchase the property. If you choose to purchase the property,  ", 10, 530, font3, black)
    Font.Draw ("there will be a indication of ownership with the rent fee  ", 10, 500, font3, black)
    Font.Draw ("represented by the players model's colour. You will charge  ", 10, 470, font3, black)
    Font.Draw ("any player that lands on it 30% of its value. Watch out though! ", 10, 440, font3, black)
    Font.Draw ("If you buy a property with not enough money you'll lose.", 10, 410, font3, black)
    Font.Draw ("This rule applies to any other case your money drops under 0. ", 10, 380, font3, black)



    Font.Draw (" - PLAYER ONE", 120, 203, font3, black)
    Font.Draw (" - PLAYER TWO", 320, 203, font3, black)
    Pic.ScreenLoad ("red.jpg", 95, 200, picCopy)
    Pic.ScreenLoad ("blue.JPG", 300, 200, picCopy)
    var button : int := GUI.CreateButton (160, 100, 205, "PLAY MONOPOLY", movement)


end intruction







proc menu2

    Pic.ScreenLoad ("back1.jpg", 1, 1, picCopy)
    Pic.ScreenLoad ("mon.JPG", 120, 450, picCopy)
    font1 := Font.New ("Courier:20:bold")
    locate (20, 10)
    Font.Draw ("Please click a option", 90, 350, font1, black)


    var button : int := GUI.CreateButton (270, 200, 205, "PLAY MONOPOLY", movement)
    var button1 : int := GUI.CreateButton (50, 200, 205, "INTRUCTIONS", intruction)

end menu2
menu2

proc main
    loop
	exit when GUI.ProcessEvent
    end loop
end main
main

Font.Free (font)
Font.Free (font2)
Font.Free (font3)
Font.Free (font1)
