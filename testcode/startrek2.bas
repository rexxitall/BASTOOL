170 PRINT TAB(15); "* * * STAR  TREK * * *"
180 PRINT
240 REM PROGRAM BEGINS HERE
245 RANDOMIZE
270 FOR I = 1 TO 72
280 Z$ = Z$ + " ": Q$ = Q$ + " ": R$ = R$ + " ": S$ = S$ + " "
320 NEXT I
330 DIM G(8, 8), C(9, 2), K(3, 3), N(3), Z(8, 8)
370 T = INT(RND(1) * 20 + 20) * 100
380 T0 = T: T9 = 30: D0 = 0: E0 = 3000: E = E0
430 P = 10: P0 = P: S9 = 200: S = 0
470 DEF FND (D) = SQR((K(I, 1) - S1) ^ 2 + (K(I, 2) - S2) ^ 2)
490 Q1 = INT(RND(1) * 8 + 1): Q2 = INT(RND(1) * 8 + 1)
510 S1 = INT(RND(1) * 8 + 1): S2 = INT(RND(1) * 8 + 1)
530 FOR I = 1 TO 9: C(I, 1) = 0: C(I, 2) = 0: NEXT I
540 C(3, 1) = -1: C(2, 1) = -1: C(4, 1) = -1: C(4, 2) = -1: C(5, 2) = -1: C(6, 2) = -1
600 C(1, 2) = 1: C(2, 2) = 1: C(6, 1) = 1: C(7, 1) = 1: C(8, 1) = 1: C(8, 2) = 1: C(9, 2) = 1
670 DIM D(8)
680 FOR I = 1 TO 8: D(I) = 0: NEXT I
710 A1$ = "NSLPTSDCX"
720 D$ = "WARP ENGINESS.R. SENSORSL.R. SENSORSPHASER CNTRL"
730 D$ = D$ + "PHOTON TUBESDAMAGE CNTRLSHIELD CNTRLCOMPUTER"
740 G4$ = "III"
750 LET G1$ = "ANTARES.SIRIUS.RIGEL.DENEB.PROCYON.CAPELLA.VEGA."
760 G1$ = G1$ + "BETELGEUSE.CANOPUS.ALDEBARAN.ALTAIR.REGULUS."
770 G1$ = G1$ + "SAGITTARIUS.ARCTURUS.POLLUX.SPICA."
780 B9 = 0: K9 = 0
820 FOR I = 1 TO 8
830 FOR J = 1 TO 8
840 R1 = RND(1)
850 IF R1 > .98 THEN 900
860 IF R1 > .95 THEN 930
870 IF R1 > .8 THEN 960
880 K3 = 0
890 GOTO 980
900 K3 = 3
910 K9 = K9 + 3
920 GOTO 980
930 K3 = 2
940 K9 = K9 + 2
950 GOTO 980
960 K3 = 1
970 K9 = K9 + 1
980 R1 = RND(1)
990 IF R1 > .96 THEN 1020
1000 B3 = 0: GOTO 1040
1020 B3 = 1: B9 = B9 + 1
1040 S3 = INT(RND(1) * 8 + 1)
1050 G(I, J) = K3 * 100 + B3 * 10 + S3
1070 Z(I, J) = 0
1080 NEXT J
1090 NEXT I
1100 K7 = K9
1120 X$ = ""
1130 X0$ = " IS "
1140 IF B9 <> 0 THEN 1200
1150 B9 = 1
1160 IF G(6, 3) >= 200 THEN 1190
1170 G(6, 3) = G(6, 3) + 100
1180 K9 = K9 + 1
1190 G(6, 3) = G(6, 3) + 10
1200 IF B9 = 1 THEN 1230
1210 X$ = "S"
1220 X0$ = " ARE "
1230 PRINT "YOUR ORDERS ARE AS FOLLOWS:"
1240 PRINT "   DESTROY THE "; K9; " KLINGON WARSHIPS WHICH HAVE INVADED"
1250 PRINT "   THE GALAXY BEFORE THEY CAN ATTACK FEDERATION HEADQUARTERS"
1260 PRINT "   ON STARDATE "; T0 + T9; "; THIS GIVES YOU "; T9; " DAYS.  THERE"; X0$
1270 PRINT "  "; B9; " STARBASE"; X$; " IN THE GALAXY FOR RESUPPLYING YOUR SHIP"
1280 PRINT
1290 PRINT "HIT 'RETURN' WHEN READY TO ASSUME COMMAND"
1300 INPUT A$
1310 REM HERE ANY TIME ENTER NEW QUADRANT
1320 Z4 = Q1: Z5 = Q2: K3 = 0: B3 = 0: S3 = 0: G5 = 0
1380 D4 = .5 * RND(1)
1390 IF Q1 < 1 THEN 1600
1400 IF Q1 > 8 THEN 1600
1410 IF Q2 < 1 THEN 1600
1420 IF Q2 > 8 THEN 1600
1430 GOSUB 9030
1440 PRINT
1450 IF T <> T0 THEN 1490
1460 PRINT " YOUR MISSION BEGINS WITH YOUR STARSHIP LOCATED"
1470 PRINT " IN THE GALACTIC QUADRANT, "; G2$; "."
1480 GOTO 1500
1490 PRINT "NOW ENTERING "; G2$; " QUADRANT"
1500 PRINT
1510 X = G(Q1, Q2) * .01
1520 K3 = INT(X)
1530 B3 = INT((X - K3) * 10)
1540 S3 = G(Q1, Q2) - INT(G(Q1, Q2) * .1) * 10
1550 IF K3 = 0 THEN 1590
1560 PRINT "COMBAT AREA      CONDITION RED"
1570 IF S > 200 THEN 1590
1580 PRINT "SHIELDS DANGEROUSLY LOW"
1590 FOR I = 1 TO 3: FOR J = 1 TO 3: K(I, J) = 0: NEXT J: NEXT I
1600 FOR I = 1 TO 3: K(I, 3) = 0: NEXT I
1630 Q$ = Z$: R$ = Z$: S$ = MID$(Z$, 1, 48)
1660 REM POSITION ENTERPRISE IN QUADRANT, THEN PLACE K3 KLINGONS,
1670 REM B3 STARBASES AND S3 STARS ELSEWHERE
1680 A$ = "<*>"
1690 Z1 = S1
1700 Z2 = S2
1710 GOSUB 8670
1720 FOR I = 1 TO K3
1730 GOSUB 8590: A$ = "+++": Z1 = R1: Z2 = R2
1770 GOSUB 8670: K(I, 1) = R1: K(I, 2) = R2: K(I, 3) = S9
1810 NEXT I
1820 FOR I = 1 TO B3
1830 GOSUB 8590: A$ = ">!<": Z1 = R1: Z2 = R2
1870 GOSUB 8670: B4 = Z1: B5 = Z2: NEXT I
1910 FOR I = 1 TO S3
1920 GOSUB 8590: A$ = " * ": Z1 = R1: Z2 = R2: GOSUB 8670: NEXT I
1980 GOSUB 6430
1990 IF S + E <= 10 THEN 2020
2000 IF E > 10 THEN 2060
2010 IF D(7) >= 0 THEN 2060
2020 PRINT "** FATAL ERROR ** YOU HAVE JUST STRANDED YOUR SHIP IN SPACE"
2030 PRINT "YOU HAVE INSUFFICIENT MANEUVERING ENERGY"
2050 GOTO 6260
2060 PRINT "COMMAND"; : INPUT A$
2080 FOR I = 1 TO 9
2090 IF MID$(A$, 1, 1) <> MID$(A1$, I, 1) THEN 2160
2100 IF I <> 2 THEN 2140
2110 IF LEN(A$) < 2 THEN 2140
2120 IF MID$(A$, 2, 1) = "R" THEN 2140
2130 I = 6
2140 IF I = 1 THEN 2300: IF I = 2 THEN 1980: IF I = 3 THEN 4000: IF I = 4 THEN 4260
2142 IF I = 5 THEN 4700: IF I = 6 THEN 5530: IF I = 7 THEN 5690: IF I = 8 THEN 7290
2150 IF A$ = "XXX" THEN 6270
2160 NEXT I
2170 PRINT "ENTER ONE OF THE FOLLOWING:"
2180 PRINT "NAV -TO SET COURSE"
2190 PRINT "SRS -SHORT RANGE SENSOR SCAN"
2200 PRINT "LRS -LONG RANGE SENSOR SCAN"
2210 PRINT "PHA -TO FIRE PHASERS"
2220 PRINT "TOR -TO FIRE PHOTON TORPEDOES"
2230 PRINT "SHE -TO RAISE OR LOWER SHIELDS"
2240 PRINT "DAM -DAMAGE CONTROL REPORT"
2250 PRINT "COM -ON BOARD COMPUTER"
2260 PRINT "XXX -TO RESIGN YOUR COMMAND"
2270 PRINT
2280 GOTO 1990
2290 REM COURSE CONTROL BEGINS HERE
2300 PRINT "COURSE (1-9)";
2310 INPUT C1
2320 IF C1 >= 1 THEN 2350
2330 PRINT "LT. SULU REPORTS: 'INCORRECT COURSE DATA, SIR!'"
2340 GOTO 1990
2350 IF C1 < 9 THEN 2380: IF C1 > 9 THEN 2330: C1 = 1
2380 PRINT "WARP FACTOR(0-8)": INPUT W1
2400 IF W1 <= 0 THEN 2420: IF W1 <= 8 THEN 2450
2420 PRINT "CHIEF ENGINEER SCOTT REPORTS: 'THE ENGINES WILL NOT"
2430 PRINT "   TAKE WARP "; W1; " !'"
2440 GOTO 1990
2450 IF D(1) >= 0 THEN 2490: IF W1 <= .2 THEN 2490
2480 GOTO 2300
2490 N = INT(W1 * 8 + .5): IF E - N >= 0 THEN 2590
2530 IF S < N - E THEN 1990: IF D(7) < 0 THEN 1990
2570 GOTO 5530
2580 REM KLINGONS MOVE/FIRE ON MOVING STARSHIP
2590 FOR I = 1 TO K3
2600 IF K(I, 3) <= 0 THEN 2700
2610 A$ = "   ": Z1 = K(I, 1): Z2 = K(I, 2)
2640 GOSUB 8670
2650 GOSUB 8590
2660 K(I, 1) = Z1: K(I, 2) = Z2: A$ = "+++"
2690 GOSUB 8670
2700 NEXT I
2710 GOSUB 6000
2720 D1 = 0: D6 = W1
2740 IF W1 < 1 THEN 2770
2750 D6 = 1
2760 REM MAKE REPAIRS TO SHIP
2770 FOR I = 1 TO 8
2780 IF D(I) >= 0 THEN 2880: D(I) = D(I) + D6
2800 IF D(I) < 0 THEN 2880
2810 IF D1 = 1 THEN 2840: D1 = 1
2830 PRINT "DAMAGE CONTROL REPORT:"
2840 PRINT TAB(8);
2850 R1 = I
2860 GOSUB 8790
2870 PRINT "REPAIR COMPLETED"
2880 NEXT I
2890 REM DAMAGE/IMPROVEMENT DURING SOME VES
2900 IF RND(1) > .2 THEN 3070: R1 = INT(RND(1) * 8 + 1)
2915 IF K3 = 0 THEN 3000
2920 IF RND(1) >= .6 THEN 3000: D(R1) = D(R1) - (RND(1) * 5 + 1)
2940 PRINT : PRINT "DAMAGE CONTROL REPORT:";
2960 GOSUB 8790
2970 PRINT "DAMAGED": PRINT
2990 GOTO 3070
3000 D(R1) = D(R1) + (RND(1) * 3 + 1)
3010 PRINT : PRINT "DAMAGE CONTROL REPORT:";
3030 GOSUB 8790
3040 PRINT "STATE OF REPAIR IMPROVED": PRINT
3060 REM BEGIN MOVING STARSHIP
3070 A$ = "   ": Z1 = INT(S1): Z2 = INT(S2)
3100 GOSUB 8670
3110 X1 = C(C1, 1) + (C(C1 + 1, 1) - C(C1, 1)) * (C1 - INT(C1)): X = S1: Y = S2
3140 X2 = C(C1, 2) + (C(C1 + 1, 2) - C(C1, 2)) * (C1 - INT(C1)): Q4 = Q1: Q5 = Q2
3170 FOR I = 1 TO N: S1 = S1 + X1: S2 = S2 + X2
3200 IF S1 < 1 THEN 3500: IF S1 >= 9 THEN 3500: IF S2 < 1 THEN 3500: IF S2 >= 9 THEN 3500
3240 S8 = INT(S1) * 24 + INT(S2) * 3 - 26: IF S8 > 72 THEN 3280
3260 IF MID$(Q$, S8, 3) = "   " THEN 3360: GOTO 3320
3280 IF S8 > 144 THEN 3310
3290 IF MID$(R$, S8 - 72, 3) = "   " THEN 3360: GOTO 3320
3310 IF MID$(S$, S8 - 144, 3) = "   " THEN 3360
3320 S1 = S1 - X1: S2 = S2 - X2
3340 PRINT "WARP ENGINES SHUT DOWN AT SECTOR "; S1; ","; S2; " DUE TO BAD NAVIGATION"
3350 GOTO 3370
3360 NEXT I
3370 A$ = "<*>": Z1 = INT(S1): Z2 = INT(S2)
3400 GOSUB 8670
3410 GOSUB 3910
3420 T8 = 1: IF W1 >= 1 THEN 3450
3440 T8 = .1 * INT(10 * W1)
3450 T = T + T8: IF T > T0 + T9 THEN 6220
3480 GOTO 1980
3490 REM EXCEEDED QUADRANT LIMITS
3500 X = X + 8 * Q1 + N * X1: Y = Y + 8 * Q2 + N * X2
3520 Q1 = INT(X / 8): Q2 = INT(Y / 8)
3540 S1 = INT(X - Q1 * 8): S2 = INT(Y - Q2 * 8)
3560 IF S1 <> 0 THEN 3590: Q1 = Q1 - 1: S1 = 8
3590 IF S2 <> 0 THEN 3620: Q2 = Q2 - 1: S2 = 8
3620 X5 = 0: IF Q1 >= 1 THEN 3670: X5 = 1: Q1 = 1: S1 = 1
3670 IF Q1 <= 8 THEN 3710: X5 = 1: Q1 = 8: S1 = 8
3710 IF Q2 >= 1 THEN 3750: X5 = 1: Q2 = 1: S2 = 1
3750 IF Q2 <= 8 THEN 3790: X5 = 1: Q2 = 8: S2 = 8
3790 IF X5 = 0 THEN 3860
3800 PRINT "LT. UHURA REPORTS MESSAGE FROM STARFLEET COMMAND:"
3810 PRINT "   'PERMISSION TO ATTEMPT CROSSING OF GALACTIC PERIMETER"
3820 PRINT "   IS HEREBY DENIED. SHUT DOWN YOUR ENGINES.'"
3830 PRINT "CHIEF ENGINEER SCOTT REPORTS: 'WARP ENGINES SHUT DOWN"
3840 PRINT "   AT SECTOR "; S1; ","; S2; " OF QUADRANT "; Q1; ","; Q2; ".'"
3850 IF T > T0 + T9 THEN 6220
3860 IF 8 * Q1 + Q2 = 8 * Q4 + Q5 THEN 3370
3870 T = T + 1
3880 GOSUB 3910
3890 GOTO 1320
3900 REM MANEUVER ENERGY S/R ***
3910 E = E - N - 10
3920 IF E >= 0 THEN 3980
3930 PRINT "SHIELD CONTROL SUPPLIED ENERGY TO COMPLETE MANEUVER."
3940 S = S + E
3950 E = 0
3960 IF S > 0 THEN 3980
3970 S = 0
3980 RETURN
3990 REM LR SENSOR SCAN CODE ***
4000 IF D(3) >= 0 THEN 4030
4010 PRINT "LONG RANGE SENSORS ARE INOPERABLE"
4020 GOTO 1990
4030 PRINT "LONG RANGE SENSOR SCAN FOR QUADRANT "; Q1; ","; Q2
4040 O1$ = "...................": PRINT O1$
4060 FOR I = Q1 - 1 TO Q1 + 1
4080 FOR I1 = 1 TO 3: N(I1) = 0: NEXT I1
4110 FOR J = Q2 - 1 TO Q2 + 1
4120 IF I < 1 THEN 4180: IF I > 8 THEN 4180
4140 IF J < 1 THEN 4180: IF J > 8 THEN 4180
4160 N(J - Q2 + 2) = G(I, J): Z(I, J) = G(I, J)
4180 NEXT J
4185 PRINT
4190 FOR I1 = 1 TO 3: PRINT ":"; : IF N(I1) >= 100 THEN 4210
4200 PRINT " "; : IF N(I1) >= 10 THEN 4210: PRINT " ";
4210 PRINT N(I1); : NEXT I1: PRINT ":"
4220 PRINT O1$
4230 NEXT I
4240 GOTO 1990
4250 REM PHASER CONTROL CODE BEGINS HERE
4260 IF K3 > 0 THEN 4300
4270 PRINT "SCIENCE OFFICER SPOCK REPORTS:"
4280 PRINT "SENSORS SHOW NO ENEMY SHIPS IN THIS QUADRANT"
4290 GOTO 1990
4300 IF D(4) >= 0 THEN 4330
4310 PRINT "PHASERS INOPERATIVE": GOTO 1990
4330 IF D(8) >= 0 THEN 4350
4340 PRINT "COMPUTER FAILURE HAMPERS ACCURACY"
4350 PRINT "PHASERS LOCKED ON TARGET; ENERGY AVAILABLE ="; E
4370 PRINT "NUMBER OF UNITS TO FIRE:"; : INPUT X
4390 IF X <= 0 THEN 1990
4400 IF E - X < 0 THEN 4340
4410 E = E - X
4420 GOSUB 6000
4430 IF D(7) >= 0 THEN 4450
4440 X = X * RND(1)
4450 H1 = INT(X / K3)
4460 FOR I = 1 TO 3
4470 IF K(I, 3) <= 0 THEN 4670
4480 H = INT((H1 / FND(0)) * (RND(1) + 2))
4490 IF H > .15 * K(I, 3) THEN 4530
4500 PRINT "SENSORS SHOW NO DAMAGE TO ENEMY AT SECTOR "; K(I, 1); ","; K(I, 2): GOTO 4670
4530 K(I, 3) = K(I, 3) - H
4540 PRINT H; "UNIT HIT ON KLINGON AT SECTOR "; K(I, 1); ","; K(I, 2)
4550 IF K(I, 3) <= 0 THEN 4580
4560 PRINT "SENSORS SHOW "; K(I, 3); " UNITS REMAINING": GOTO 4670
4580 PRINT "KLINGON DESTROYED"
4590 K3 = K3 - 1: K9 = K9 - 1: A$ = "   ": Z1 = K(I, 1): Z2 = K(I, 2)
4640 GOSUB 8670
4650 LET G(Q1, Q2) = K3 * 100 + B3 * 10 + S3
4660 IF K9 <= 0 THEN 6370
4670 NEXT I
4680 GOTO 1990
4690 REM PHOTON TORPEDO CODE BEGINS***
4700 IF D(5) >= 0 THEN 4730
4710 PRINT "PHOTON TORPEDO TUBES NOT OPERATIONAL": GOTO 1990
4730 IF P > 0 THEN 4760
4740 PRINT "ALL PHOTON TORPEDOES EXPENDED": GOTO 1990
4760 PRINT "TORPEDO COURSE (1-9)"; : INPUT C1: IF C1 >= 1 THEN 4810
4790 PRINT "ENSIGN CHEKOV REPORTS, 'INCORRECT COURSE DATA, SIR.'"
4800 GOTO 1990
4810 IF C1 > 9 THEN 4790: IF C1 < 9 THEN 4850: IF C1 >= 9 THEN 4760: C1 = 1
4850 X1 = C(C1, 1) + (C(C1 + 1, 1) - C(C1, 1)) * (C1 - INT(C1))
4860 X2 = C(C1, 2) + (C(C1 + 1, 2) - C(C1, 2)) * (C1 - INT(C1))
4870 E = E - 2: X = S1: Y = S2: P = P - 1
4910 PRINT "TORPEDO TRACK:"
4920 X = X + X1: Y = Y + X2
4940 X3 = INT(X + .5): Y3 = INT(Y + .5)
4960 IF X3 < 1 THEN 5490
4970 IF X3 >= 9 THEN 5490
4980 IF Y3 < 1 THEN 5490
4990 IF Y3 >= 9 THEN 5490
5000 PRINT "               "; X3; ","; Y3
5010 A$ = "   ": Z1 = X: Z2 = Y
5040 GOSUB 8830
5050 IF Z3 <> 0 THEN 4920
5060 A$ = "+++": Z1 = X: Z2 = Y
5090 GOSUB 8830
5100 IF Z3 = 0 THEN 5210
5110 PRINT " ***KLINGON DESTROYED*** "
5120 K3 = K3 - 1: K9 = K9 - 1
5140 IF K9 <= 0 THEN 6370
5150 FOR I = 1 TO 3
5160 IF X3 <> K(I, 1) THEN 5180
5170 IF Y3 = K(I, 2) THEN 5190
5180 NEXT I
5190 K(I, 3) = 0: GOTO 5430
5210 A$ = " * ": Z1 = X: Z2 = Y
5240 GOSUB 8830
5250 IF Z3 = 0 THEN 5280
5260 PRINT "STAR AT"; X3; ","; Y3; "ABSORBED TORPEDO ENERGY."
5270 GOTO 5500
5280 A$ = ">!<": Z1 = X: Z2 = Y
5310 GOSUB 8830
5320 IF Z3 = 0 THEN 4760
5330 PRINT "*** STARBASE DESTROYED ***"
5340 B3 = B3 - 1: B9 = B9 - 1
5360 IF B9 > 0 THEN 5400
5370 PRINT "THAT DOES IT, CAPTAIN!  YOU ARE HEREBY RELIEVED OF COMMAND"
5380 PRINT "AND SENTENCED TO 99 YEARS HARD LABOUR ON CYGNUS 12!": GOTO 6270
5400 PRINT "STARFLEET COMMAND REVIEWING YOUR RECORD TO CONSIDER"
5410 PRINT "COURT MARTIAL"
5420 D0 = 0
5430 A$ = "   ": Z1 = X: Z2 = Y
5460 GOSUB 8670
5470 G(Q1, Q2) = K3 * 100 + B3 * 10 + S3: GOTO 5500
5490 PRINT "TORPEDO MISSED"
5500 GOSUB 6000
5510 GOTO 1990
5520 REM SHIELD CONTROL STARTS HERE
5530 IF D(7) >= 0 THEN 5560
5540 PRINT "SHIELD CONTROL INOPERABLE"
5550 GOTO 1990
5560 PRINT "ENERGY AVAILABLE E="; E + S; ". NUMBER OF UNITS TO SHIELDS:";
5570 INPUT X
5580 IF X >= 0 THEN 5620
5590 IF S <> X THEN 5620
5600 PRINT "(SHIELDS UNCHANGED)"
5610 GOTO 1990
5620 IF E + S - X < 0 THEN 5560
5630 E = E + S - X: S = X
5650 PRINT "DEFLECTOR CONTROL ROOM REPORT:"
5660 PRINT "   SHIELDS NOW AT "; S; " PER YOUR COMMAND"
5670 GOTO 1990
5680 REM DAMAGE CONTROL STARTS HERE
5690 IF D(6) >= 0 THEN 5910
5700 PRINT "DAMAGE CONTROL REPORT NOT AVAILABLE"
5710 IF D0 = 0 THEN 1990
5720 D3 = 0
5730 FOR I = 1 TO 8: IF D(I) >= 0 THEN 5760: D3 = D3 + .1
5760 NEXT I
5770 IF D3 = 0 THEN 1990
5780 D3 = D3 + D4
5790 IF D3 < 1 THEN 5810
5800 D3 = .9
5810 PRINT "TECHNICIANS STANDING BY TO EFFECT REPAIRS TO SHIP;"
5820 PRINT "ESTIMATED TIME TO REPAIR: 0."; INT(10 * D3); ";STARDATES"
5840 PRINT "WILL YOU AUTHORISE REPAIR (YES/NO)"; : INPUT A$
5860 IF A$ <> "YES" THEN 1990
5870 FOR I = 1 TO 8: D(I) = 0: NEXT I
5900 T = T + D3 + .1
5910 PRINT : PRINT "DEVICE              STATE OF REPAIR"
5930 FOR R1 = 1 TO 8: GOSUB 8790: PRINT "   "; INT(100 * D(R1)) / 100: NEXT R1
5970 PRINT
5980 GOTO 5710
5990 REM KLINGONS SHOOTING CODE BEGINS
6000 IF K3 <= 0 THEN 6210: IF D0 = 0 THEN 6040
6020 PRINT "STARBASE SHIELDS PROTECT THE ENTERPRISE": GOTO 6210
6040 FOR I = 1 TO 3
6050 IF K(I, 3) <= 0 THEN 6200
6060 H = INT((K(I, 3) / FND(0)) * (2 + RND(1)))
6070 S = S - H
6080 PRINT H; "UNIT HIT ON ENTERPRISE FROM SECTOR"; K(I, 1); ","; K(I, 2)
6090 IF S < 0 THEN 6240
6100 PRINT "     (SHIELDS DOWN TO"; S; " UNITS.)"
6110 IF H < 20 THEN 6200
6120 IF RND(1) > .6 THEN 6200
6130 IF H / S <= .02 THEN 6200
6140 D2 = H / S + .5 * RND(1)
6150 R1 = INT(RND(1) * 8 + 1)
6160 D(R1) = D(R1) - D2
6170 PRINT "DAMAGE CONTROL REPORTS"
6180 GOSUB 8790
6190 PRINT "DAMAGED BY THE HIT!"
6200 NEXT I
6210 RETURN
6220 PRINT "IT IS STARDATE"; T
6230 GOTO 6270
6240 PRINT
6250 PRINT "THE ENTERPRISE HAS BEEN DESTROYED. THE FEDERATION WILL BE CONQUERED"
6260 PRINT "IT IS STARDATE "; T
6270 PRINT "THERE WERE "; K9; " KLINGONS LEFT AT THE END OF YOUR MISSION"
6290 PRINT : PRINT
6310 PRINT "THE FEDERATION IS IN NEED OF A NEW STARSHIP COMMANDER "
6320 PRINT "IS THERE A VOLUNTEER?"
6330 PRINT "LET HIM STEP FORWARD AND ENTER 'AYE'"; : INPUT A$
6350 IF A$ = "AYE" THEN 240
6360 GOTO 9250
6370 PRINT "CONGRATULATIONS CAPTAIN! THE LAST KLINGON BATTLE CRUISER"
6380 PRINT "MENACING THE FEDERATION HAS BEEN DESTROYED": PRINT
6400 PRINT "YOUR EFFICIENCY RATING IS "; ((K7 / (T - T0)) * 1000): GOTO 6290
6430 FOR I = S1 - 1 TO S1 + 1
6440 FOR J = S2 - 1 TO S2 + 1
6450 IF INT(I + .5) < 1 THEN 6540
6460 IF INT(I + .5) > 8 THEN 6540
6470 IF INT(J + .5) < 1 THEN 6540
6480 IF INT(J + .5) > 8 THEN 6540
6490 A$ = ">!<": Z1 = I: Z2 = J
6520 GOSUB 8830
6530 IF Z3 = 1 THEN 6580
6540 NEXT J
6550 NEXT I
6560 D0 = 0
6570 GOTO 6650
6580 D0 = 1: C$ = "DOCKED": E = 3000: P = 10
6620 PRINT "SHIELDS DROPPED FOR DOCKING PURPOSES"
6630 S = 0
6640 GOTO 6720
6650 IF K3 > 0 THEN 6690
6660 IF E < E0 * .1 THEN 6710
6670 C$ = " GREEN"
6680 GOTO 6720
6690 C$ = " *RED* "
6700 GOTO 6720
6710 C$ = "YELLOW"
6720 IF D2 >= 0 THEN 6770
6730 PRINT
6740 PRINT "*** SHORT RANGE SENSORS ARE OUT ***"
6750 PRINT
6760 GOTO 7270
6770 O1$ = "---------------------------------"
6780 PRINT O1$
6790 DIM N5$(4)
6800 N5$ = "####"
6810 PRINT " ";
6820 FOR I = 1 TO 22 STEP 3: PRINT MID$(Q$, I, 3); " "; : NEXT I
6850 PRINT : PRINT " ";
6870 FOR I = 25 TO 46 STEP 3: PRINT MID$(Q$, I, 3); " "; : NEXT I
6900 PRINT "        STARDATE       ";
6910 PRINT (INT(T) * 10) / 10: PRINT " ";
6930 FOR I = 49 TO 70 STEP 3: PRINT MID$(Q$, I, 3); " "; : NEXT I
6960 PRINT "        CONDITION      ";
6970 PRINT C$
6980 PRINT " ";
6990 FOR I = 1 TO 22 STEP 3: PRINT MID$(R$, I, 3); " "; : NEXT I
7020 PRINT "        QUADRANT       "; Q1; ","; Q2: PRINT " ";
7040 FOR I = 25 TO 46 STEP 3: PRINT MID$(R$, I, 3); " "; : NEXT I
7070 PRINT "        SECTOR         "; S1; ","; S2: PRINT " ";
7090 FOR I = 49 TO 70 STEP 3: PRINT MID$(R$, I, 3); " "; : NEXT I
7120 PRINT "        TOTAL ENERGY   "; : PRINT INT(E + S)
7140 PRINT " ";
7150 FOR I = 1 TO 22 STEP 3: PRINT MID$(S$, I, 3); " "; : NEXT I
7180 PRINT "        PHOTON TORPEDOES"; : PRINT INT(P): PRINT " ";
7210 FOR I = 25 TO 46 STEP 3: PRINT MID$(S$, I, 3); " "; : NEXT I
7240 PRINT "        SHIELDS         "; : PRINT INT(S): PRINT " ";
7260 PRINT O1$
7270 RETURN
7280 REM *** LIBRARY COMPUTER CODE BEGINS HERE
7290 IF D(8) >= 0 THEN 7320
7300 PRINT "COMPUTER DISABLED": GOTO 1990
7320 PRINT "COMPUTER ACTIVE AND AWAITING COMMAND:"; : INPUT A
7340 IF A < 0 THEN 1990: PRINT : H8 = 1
7370 IF A = 0 THEN 7540: IF A = 1 THEN 7900: IF A = 2 THEN 8070: IF A = 3 THEN 8500
7380 IF A = 4 THEN 8150: IF A = 5 THEN 7400: GOTO 7450
7400 REM ***SETUP TO CHANGE C.G. RECORD TO GALAXY MAP
7410 H8 = 0: G5 = 1: PRINT "                              THE GALAXY"
7440 GOTO 7550
7450 PRINT "FUNCTIONS AVAILABLE FROM ON-BOARD COMPUTER:"
7460 PRINT "   0 = CUMULATIVE GALACTIC RECORD"
7470 PRINT "   1 = STATUS REPORT"
7480 PRINT "   2 = PHOTON TORPEDO DATA"
7490 PRINT "   3 = STARBASE NAV DATA"
7500 PRINT "   4 = DIRECTION/DISTANCE CALCULATOR"
7510 PRINT "   5 = GALAXY 'REGION NAME' MAP"
7520 GOTO 7320
7530 REM ***CUMULATIVE GALACTIC RECORD CODE BEGINS***
7540 PRINT "COMPUTER RECORD OF GALAXY"
7550 PRINT "     1   2   3   4   5   6   7   8"
7560 PRINT "    --- --- --- --- --- --- --- ---"
7590 FOR I = 1 TO 8
7610 PRINT I;
7620 IF H8 = 0 THEN 7740
7630 FOR J = 1 TO 8
7650 N$ = "": M$ = ""
7660 IF I <> Q1 THEN 7700: IF J <> Q2 THEN 7700
7680 N$ = CHR$(21): M$ = CHR$(23)
7690 PRINT N$;
7700 Z9$ = STR$(Z(I, J)): PRINT MID$("   ", 1, 4 - LEN(Z9$)); Z9$; M$;
7720 NEXT J
7730 GOTO 7850
7740 Z4 = I: Z5 = 1
7760 GOSUB 9030
7770 J0 = INT(15 - .5 * LEN(G2$)): PRINT TAB(J0); : PRINT G2$;
7800 Z5 = 5
7810 GOSUB 9030
7820 J0 = INT(39 - .5 * LEN(G2$)): PRINT TAB(J0); : PRINT G2$;
7850 PRINT : PRINT
7870 NEXT I
7880 GOTO 1990
7890 REM STATUS REPORT CODE BEGINS HERE
7900 PRINT "STATUS REPORT:"
7910 X$ = ""
7920 IF K9 = 1 THEN 7940
7930 X$ = "S"
7940 PRINT K9; " KLINGON "; X$; " LEFT"
7950 V5 = (T0 + T9) - T
7960 PRINT "MISSION MUST BE COMPLETED IN"; INT(10 * V5) / 10; " STARDATES"
7970 X$ = ""
7980 IF B9 = 1 THEN 8040
7990 X$ = "S"
8000 IF B9 <> 0 THEN 8040
8010 PRINT "YOUR STUPIDITY HAS LEFT YOU ON YOUR OWN IN"
8020 PRINT "THE GALAXY -- YOU HAVE NO STARBASES LEFT!"
8030 GOTO 5690
8040 PRINT "THE FEDERATION IS MAINTAINING "; B9; " STARBASE"; X$; " IN THE GALAXY"
8050 GOTO 5690
8060 REM CODE FOR TORPEDO DATA, BASE NAV., D/D CALCULATOR
8070 H8 = 0
8080 FOR I = 1 TO 3
8090 IF K(I, 3) <= 0 THEN 8480
8100 W1 = K(I, 1): X = K(I, 2)
8120 C1 = S1: A = S2
8140 GOTO 8220
8150 PRINT "DIRECTION/DISTANCE CALCULATOR:"
8160 PRINT "YOU ARE AT QUADRANT ("; Q1; ","; Q2; ") SECTOR ("; S1; ","; S2; ")"
8170 PRINT "PLEASE ENTER--"
8180 PRINT "INITIAL COORDINATES (X,Y)"; : INPUT C1, A
8200 PRINT "FINAL COORDINATES (X,Y)"; : INPUT W1, X
8220 X = X - A: A = C1 - W1
8240 IF X < 0 THEN 8350
8250 IF A < 0 THEN 8410
8260 IF X > 0 THEN 8280
8270 IF A = 0 THEN 8370
8280 C1 = 1
8290 IF ABS(A) <= ABS(X) THEN 8330
8300 V5 = C1 + (((ABS(A) - ABS(X)) + ABS(A)) / ABS(A))
8310 PRINT "DIRECTION ="; V5: GOTO 8460
8330 PRINT "DIRECTION ="; C1 + (ABS(A) / ABS(X)): GOTO 8460
8350 IF A > 0 THEN 8390: IF X = 0 THEN 8410
8370 C1 = 5: GOTO 8290
8390 C1 = 3: GOTO 8420
8410 C1 = 7
8420 IF ABS(A) >= ABS(X) THEN 8450
8430 PRINT "DIRECTION ="; C1 + (((ABS(X) - ABS(A)) + ABS(X)) / ABS(X))
8440 GOTO 8460
8450 PRINT "DIRECTION ="; C1 + (ABS(X) / ABS(A))
8460 PRINT "DISTANCE ="; SQR(X ^ 2 + A ^ 2)
8470 IF H8 = 1 THEN 1990
8480 NEXT I
8490 GOTO 1990
8500 IF B3 <> 0 THEN 8530
8510 PRINT "MR. SPOCK REPORTS: 'SENSORS SHOW NO STARBASES IN THIS QUADRANT.'"
8520 GOTO 1990
8530 PRINT "FROM ENTERPRISE TO STARBASE:"
8540 W1 = B4: X = B5: GOTO 8120
8570 REM END OF LIBRARY COMPUTER CODE
8590 R1 = INT(RND(1) * 8 + 1)
8600 R2 = INT(RND(1) * 8 + 1)
8610 A$ = "   "
8620 Z1 = R1: Z2 = R2
8640 GOSUB 8830
8650 IF Z3 = 0 THEN 8590
8660 RETURN
8670 REM *
8680 S8 = INT(Z1 + .5) * 24 + INT(Z2 + .5) * 3 - 26
8690 IF S8 > 72 THEN 8720
8700 Q$ = MID$(Q$, 1, S8 - 1) + A$ + MID$(Q$, S8 + 3, LEN(Q$) - (S8 + 3) + 1)
8710 GOTO 8780
8720 IF S8 > 144 THEN 8760
8730 S8 = S8 - 72
8740 R$ = MID$(R$, 1, S8 - 1) + A$ + MID$(R$, S8 + 3, LEN(R$) - (S8 + 3) + 1)
8750 GOTO 8780
8760 S8 = S8 - 144
8770 S$ = MID$(S$, 1, S8 - 1) + MID$(A$, 1, 3) + MID$(S$, S8 + 3, LEN(S$) - (S8 + 3) + 1)
8780 RETURN
8790 REM PRINTS DEVICE NAME FROM ARRAY
8800 S8 = R1 * 12 - 11: PRINT MID$(D$, S8, 12),
8820 RETURN
8830 REM *
8840 Z1 = INT(Z1 + .5): Z2 = INT(Z2 + .5)
8860 S8 = Z1 * 24 + Z2 * 3 - 26
8870 Z3 = 0
8880 IF S8 > 72 THEN 8920
8890 IF MID$(Q$, S8, 3) <> A$ THEN 9000
8900 Z3 = 1
8910 GOTO 9000
8920 IF S8 > 144 THEN 8970
8930 S8 = S8 - 72
8940 IF MID$(R$, S8, 3) <> A$ THEN 9000
8950 Z3 = 1
8960 GOTO 9000
8970 S8 = S8 - 144
8980 IF MID$(S$, S8, 3) <> A$ THEN 9000
8990 Z3 = 1
9000 RETURN
9030 L2 = 2
9040 IF Z5 >= 5 THEN 9060
9050 L2 = 1
9060 L3 = 2 * (Z4 - 1) + L2
9070 I3 = 1: I0 = 1
9090 FOR L = 1 TO LEN(G1$)
9100 IF MID$(G1$, L, 1) <> "." THEN 9140
9110 IF I3 = L3 THEN 9150
9120 I0 = L + 1: I3 = I3 + 1
9140 NEXT L
9150 G2$ = MID$(G1$, I0, (L - 1) - I0 + 1)
9160 IF G5 = 1 THEN 9240
9170 L3 = Z5
9180 IF Z5 <= 4 THEN 9200
9190 L3 = Z5 - 4
9200 G3$ = "IV"
9210 IF L3 = 4 THEN 9230
9220 G3$ = MID$(G4$, 1, L3)
9230 G2$ = G2$ + " " + G3$
9240 RETURN
9250 STOP
9260 END

