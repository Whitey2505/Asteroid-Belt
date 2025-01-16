1 REM this is the game asteroid belt from the 1982 book Computer 
2 rem Spacegames. Ported to run on my SC108/RC2014 style z80
3 rem There are some minor tweaks to get it to run but fundamentally
4 rem the game from the book in its original form
5 gosub 5000
10 print "Asteroid belt"
12 PRINT
13 PRINT "Each asteroid is made up of a number of stars."
14 print "Hit the number equal to the quantity of stars"
15 print "in order to destroy them and save your ship."
16 print "Be quick or your ship will crash into the asteroid"
17 print
18 print "hit return to continue";
19 readln
20 let s=0
30 for g=1 to 10
35 LET Q=0
40 gosub 5000
50 let a=int(rnd*18+1)
60 let d=int(rnd*12+1)
70 let n=int(rnd*9+1)
80 for i=1 to d
90 print
100 next i
110 for i=1 to n
120 if i<>1 and i<>4 and i<>7 then goto 150
130 print
135 FOR Z=1 TO A
140 print " ";
145 NEXT Z
150 print "*";
160 next i
170 print
180 for i=1 to 500
190 let q=val ("0"+inkey$)
200 if q<>0 then goto 240
210 next i
220 print "crashed into asteroid"
230 goto 290
240 if q<>n then goto 270
250 print "you destroyed it"
260 let s=s+1
270 if q<n then print "not strong enough"
280 if q>n then print "too strong"
290 for i=1 to 3000
300 next i
310 next g
320 print "you hit ";s;" out of 10"
330 stop
5000 REM CLEAR SCREEN                   
5010 PRINT CHR$(27);"[2J": RETURN  
