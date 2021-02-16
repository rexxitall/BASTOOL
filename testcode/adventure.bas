' BASTOOL .01 (c) Dipl.-Ing. Thomas Ludewig 2007
' using at your own risk- no warrenty
' CURRENT DIR:/root/Desktop/FREEBASIC_TOOLS
' PROCESS    :/root/Desktop/FREEBASIC_TOOLS/adv.bas
CLS
COLOR 10 'an old Program should live on a green monochrome screen ;)
'DYNAMIC
'Lines read: 240
'VARS FOUND:
                                 '        A3s$           REM STRING :REM A3$
                                 '        A9s$           REM STRING :REM A9$
                                 '        Aas$           REM STRING :REM A$
                                 '        BAr!           REM SINGLE :REM BA
                                 '        BONr!          REM SINGLE :REM BON
                                 '        BREr!          REM SINGLE :REM BRE
                                 '        BUr!           REM SINGLE :REM BU
                                 '        Br!            REM SINGLE :REM B
                                 '        CAr!           REM SINGLE :REM CA
                                 '        CONr!          REM SINGLE :REM CON
                                 '        CUTr!          REM SINGLE :REM CUT
                                 '        Cs$            REM STRING :REM C$
                                 '        D0r!           REM SINGLE :REM D0
                                 '        DGr!           REM SINGLE :REM DG
                                 '        DROr!          REM SINGLE :REM DRO
                                 '        DRr!           REM SINGLE :REM DR
                                 '        ELr!           REM SINGLE :REM EL
                                 '        FLr!           REM SINGLE :REM FL
                                 '        GLr!           REM SINGLE :REM GL
                                 '        GUr!           REM SINGLE :REM GU
                                 '        INSr!          REM SINGLE :REM INS
                                 '        INVr!          REM SINGLE :REM INV
                                 '        JOECOs$        REM STRING :REM CO$
                                 '        JOEFOr!        REM SINGLE :REM FO
                                 '        LOOr!          REM SINGLE :REM LOO
                   REDIM  SHARED          LO_r!(0,0)    'AS  SINGLE :REM LO(
                   REDIM  SHARED          LO_s$(0)      'AS  STRING :REM LO$(
                                 '        LOr!           REM SINGLE :REM LO
                   REDIM  SHARED          N1_s$(0)      'AS  STRING :REM N1$(
                                 '        NAs$           REM STRING :REM NA$
                   REDIM  SHARED          N_r!(0)       'AS  SINGLE :REM N(
                   REDIM  SHARED          N_s$(0)       'AS  STRING :REM N$(
                                 '        Nr!            REM SINGLE :REM N
                                 '        OPEr!          REM SINGLE :REM OPE
                                 '        PAr!           REM SINGLE :REM PA
                                 '        PULr!          REM SINGLE :REM PUL
                                 '        PUSr!          REM SINGLE :REM PUS
                                 '        QUIr!          REM SINGLE :REM QUI
                                 '        R1r!           REM SINGLE :REM R1
                                 '        REAr!          REM SINGLE :REM REA
                                 '        ROr!           REM SINGLE :REM RO
                                 '        Rr!            REM SINGLE :REM R
                                 '        SCr!           REM SINGLE :REM SC
                                 '        STAr!          REM SINGLE :REM STA
                                 '        TAr!           REM SINGLE :REM TA
                                 '        TEr!           REM SINGLE :REM TE
                                 '        THRr!          REM SINGLE :REM THR
                                 '        Tr!            REM SINGLE :REM T
                                 '        V1s$           REM STRING :REM V1$
                   REDIM  SHARED          V_s$(0)       'AS  STRING :REM V$(
                                 '        Vr!            REM SINGLE :REM V
                                 '        Vs$            REM STRING :REM V$
                                 '        WEAr!          REM SINGLE :REM WEA
                                 '        Z8r!           REM SINGLE :REM Z8
                                 '        Z9r!           REM SINGLE :REM Z9
                                 '        Zs$            REM STRING :REM Z$



					DATA A VIDEO CASSETTE RECORDER,REC,2,A VIDEO TAPE,TAP,0,A LARGE BATTERY,BAT,0,A BLANK CREDIT CARD,CAR,0,AN ELECTRONIC LOCK,LOC,0,AN ELABORATE PAPER WEIGHT,WEI,5,A LOCKED WOODEN D0OR,D0O,4,AN OPEN WOODEN D0OR,D0O,0,A SOLID LOOKING D0OR,D0O,10
					DATA AN OPEN D0OR,D0O,0,AN ALERT SECURITY GUARD,GUA,10,A SLEEPING SECURITY GUARD,GUA,0,A LOCKED MAINTENANCE CLOSET,CLO,14,A MAINTENANCE CLOSET,CLO,0,A PLASTIC BAG,BAG,13,AN OLDE FASHIONED KEY,KEY,9,A SMALL METAL SQUARE ON THE WALL,SQU,16
					DATA A LEVER ON THE SQUARE,LEV,16,AN OLD MAHOGANY DESK,DES,5,A BROOM,BRO,13,A DUSTPAN,DUS,13,A SPIRAL NOTEBOOK,NOT,0,A MAHOGANY DRAWER,DRA,0,A GLASS CASE ON A PEDESTAL,CAS,6,A RAZOR BLADE,BLA,27,A VERY LARGE RUBY,RUB,0,A SIGN ON THE SQUARE
					DATA SIG,16,A QUARTER,QUA,0,A COFFEE MACHINE,MAC,8,A CUP OF STEAMING HOT COFFEE,CUP,0,A SMALL CAPSULE,CAP,0,A LARGE SCULPTURE,SCU,3,A TALL OFFICE BUILDING,BUI,1,A PAIR OF SLIDING D0ORS,D0O,3,A LARGE BUTTON ON THE WALL
					DATA BUT,29,A PANEL OF BUTTONS NUMBERED ONE THRU THREE,PAN,9,A STRONG NYLON ROPE,ROP,17,A LARGE HOOK WITH A ROPE HANGING FROM IT,HOO,21,A C.I.A. IDENTIFICATION BADGE,BAD,-1,A PORTABLE TELEVISION,TEL,7
					DATA A BANK OF MONITORS,MON,7,A CHAOS I.D. CARD
					DATA CAR,30,A BANK OF MONITORS,MON,19,A SMALL PAINTING,PAI,23,A PAIR OF RUBBER GLOVES,GLO,13,A BOX WITH A BUTTON ON IT,BOX,24,ONE,ONE,9,TWO,TWO,9,THREE,THR,9,SLIT,SLI,10,ON A BUSY STREET,0,0,0,0,IN A VISITOR`S ROOM,0,0,3,0
					DATA IN THE LOBBY OF THE BUILDING,1,0,4,2,IN A DINGY ANTE ROOM,0,0,0,3
					DATA IN THE COMPANY PRESIDENT`S OFFICE,0,0,0,4,IN A SMALL SOUND PROOFED CUBICLE,0,12,0,0,IN A SECURITY OFFICE,0,0,8,0,IN A SMALL HALLWAY,0,14,9,7,IN A SMALL ROOM,3,0,0,0,IN A SHORT CORRID0R,0,15,0,9,IN A HALLWAY MADE OF METAL,0,0,12,10
					DATA IN A SMALL PLAIN ROOM,6,0,0,11
					DATA IN A MAINTENANCE CLOSET,0,0,14,0,IN A CAFETERIA,8,0,0,0,IN A SIDE CORRID0R,10,0,16,0,IN A POWER GENERATOR ROOM,0,0,0,15,IN A SUB-BASEMENT BELOW THE CHUTE,0,0,18,0,IN THE ENTRANCE TO THE SECRET COMPLEX,0,20,19,17
					DATA IN A SECRET MONITORING ROOM,0,0,0,18,ON A LEDGE IN FRONT OF A METAL PIT 1000`S OF FEET DEEP,18,0,0,0,ON THE OTHER SIDE OF THE PIT,0,0,22,0,IN A LONG CORRID0R,0,25,23,21,IN A LARGE ROOM,0,26,0,22,IN A SECRET LABORATORY,0,0,25,0
					DATA IN A NARROW CROSS CORRID0R,22,0,0,24,IN A CROSS EXAMINATION ROOM,23,28,0,0,IN A SMALL BATHROOM,0,0,28,0,IN THE OFFICE OF THE CHIEF OF CHAOS,26,30,0,27,IN THE CHAOS CONTROL ROOM,0,0,30,0,NEAR THE END OF THE COMPLEX,28,0,0,29
					DATA "GO ",GET,DRO,PUS,PUL,LOO,INS,OPE,WEA,REA,STA,BRE,CUT,THR,CON,QUI,BON,INV



                   cls 250 : DEFINT A - Z : GOTO L_4_
          SUB_2_:  Z9r! = 0 : FOR Rr! = 1 TO 50 : IF V1s$ = N_s$ ( Rr! ) AND ( N_r! ( Rr! ) = LOr! OR N_r! ( Rr! ) = - 1 ) THEN Z9r! = 1 : RETURN
                   NEXT : print "I D0N`T SEE THAT HERE." : Z9r! = 2 : RETURN
            L_4_:  print chr$ ( 23 ) ; "        C.I.A  ADVENTURE"
                   REDIM N1_s$ ( 50 ) , N_s$ ( 50 ) , N_r! ( 50 ) , V_s$ ( 18 ) , LO_r! ( 30 , 4 ) , LO_s$ ( 30 ) : FLr! = 1 : DRr! = 0 : DGr! = - 1 : Tr! = 0 : ELr! = 0 : BUr! = 0 : D0r! = 0 : CAr! = 0 : BAr! = 0 : TEr! = 0 : GLr! = 0
                   PAr! = 0 : ROr! = 0 : FOR Rr! = 1 TO 5 : R1r! = int ( 9 * rnd ( 9 ) ) : JOECOs$ = JOECOs$ + str$ ( R1r! ) : NEXT : LOr! = 1 : A9s$ = ">" + string$ ( 62 , "-" ) + "<"
                   Rr! = len ( JOECOs$ ) : JOECOs$ = right$ ( JOECOs$ , Rr! - 1 )
                   FOR Rr! = 1 TO 50 : read N1_s$ ( Rr! ) , N_s$ ( Rr! ) , N_r! ( Rr! ) : NEXT
                   FOR Rr! = 1 TO 30 : read LO_s$ ( Rr! ) , LO_r! ( Rr! , 1 ) , LO_r! ( Rr! , 2 ) , LO_r! ( Rr! , 3 ) , LO_r! ( Rr! , 4 ) : NEXT
                   FOR Rr! = 1 TO 18 : read V_s$ ( Rr! ) : NEXT
           L_20_:  rem
                   print "WE ARE " ; LO_s$ ( LOr! ) ; "."
                   FOR Rr! = 1 TO 46 : IF N_r! ( Rr! ) = LOr! THEN print "I CAN SEE " ; N1_s$ ( Rr! ) ; "."
                       NEXT : Br! = 0 : FOR Rr! = 1 TO 4 : IF LO_r! ( LOr! , Rr! ) > 0 THEN Br! = 1
                   NEXT : IF Br! = 0 THEN GOTO L_45_
                   print "WE COULD EASILY GO: " ;
                   IF LO_r! ( LOr! , 1 ) > 0 THEN print "NORTH  " ;
                   IF LO_r! ( LOr! , 2 ) > 0 THEN print "SOUTH  " ;
                   IF LO_r! ( LOr! , 3 ) > 0 THEN print "EAST  " ;
                   IF LO_r! ( LOr! , 4 ) > 0 THEN print "WEST  " ;
           L_45_:  print : print A9s$
           L_50_:  Tr! = Tr! + 1 : IF DGr! > 0 THEN DGr! = DGr! - 1
                   IF Tr! = 1 THEN input "ENTER YOUR NAME PARTNER" ; NAs$
                   GOTO L_2000_
           L_56_:  Nr! = 0 : FOR Rr! = 1 TO 46 : IF N_r! ( Rr! ) = - 1 THEN Nr! = Nr! + 1
                   NEXT
           L_60_:  print : input "WHAT D0 YOU THINK WE SHOULD D0" ; Aas$
                   GOSUB SUB_3000_ : Vs$ = left$ ( Aas$ , 3 ) : GOSUB SUB_3010_ :
            	   FOR Rr! = 1 TO 18 : IF Vs$ = V_s$ ( Rr! ) THEN GOTO L_69_ :END IF: NEXT
                   IF Vs$ = "ORD" THEN GOTO L_5000_
                   print "I D0N`T KNOW HOW TO D0 THAT." : GOTO L_60_
           L_69_:  IF Vs$ = "QUI" THEN GOTO L_850_
                   Vr! = Rr! : FOR Rr! = 1 TO len ( Aas$ ) : IF mid$ ( Aas$ , Rr! , 1 ) = " " THEN GOTO L_75_ :end if : NEXT
                   IF Vs$ = "LOO" THEN GOTO L_20_
                   IF Vs$ = "BON" THEN GOTO L_900_
                   IF Vs$ = "INV" THEN GOTO L_950_
                   print "PLEASE USE 2 WORD COMMANDS SO I CAN UNDERSTAND YOU." : GOTO L_60_
           L_75_:  V1s$ = mid$ ( Aas$ , Rr! + 1 , 3 ) : FOR Rr! = 1 TO 49 : IF V1s$ = N_s$ ( Rr! ) THEN GOTO L_80_ : end if:NEXT
                   IF V1s$ = "NOR" OR V1s$ = "SOU" OR V1s$ = "EAS" OR V1s$ = "WES" THEN GOTO L_80_
                   print "I D0N`T KNOW WHAT IT IS YOU ARE TALKING ABOUT." : GOTO L_60_
           L_80_:  on Vr! GOTO L_100_ , L_150_ , L_200_ , L_250_ , L_300_ , L_350_ , L_400_ , L_450_ , L_500_ , L_550_ , L_600_ , L_650_ , L_700_ , L_750_ , L_800_ , L_850_ , L_900_ , L_950_
          L_100_:  IF V1s$ = "NOR" AND LO_r! ( LOr! , 1 ) > 0 THEN LOr! = LO_r! ( LOr! , 1 ) : GOTO L_20_
                   IF V1s$ = "SOU" AND LO_r! ( LOr! , 2 ) > 0 THEN LOr! = LO_r! ( LOr! , 2 ) : GOTO L_20_
                   IF V1s$ = "EAS" AND LO_r! ( LOr! , 3 ) > 0 THEN LOr! = LO_r! ( LOr! , 3 ) : GOTO L_20_
                   IF V1s$ = "WES" AND LO_r! ( LOr! , 4 ) > 0 THEN LOr! = LO_r! ( LOr! , 4 ) : GOTO L_20_
                   IF V1s$ = "NOR" OR V1s$ = "SOU" OR V1s$ = "EAS" OR V1s$ = "WES" THEN GOTO L_135_
                   GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF Rr! = 8 THEN LOr! = 5 : GOTO L_20_
                   IF Rr! = 37 AND ROr! = 1 AND LOr! = 20 THEN LOr! = 21 : GOTO L_20_
                   IF Rr! = 10 THEN LOr! = 11 : GOTO L_20_
                   IF Rr! = 14 THEN LOr! = 13 : GOTO L_20_
                   IF Rr! = 33 THEN LOr! = 3 : GOTO L_20_
                   IF Rr! = 34 AND D0r! = 1 THEN LOr! = 9 : GOTO L_20_
          L_135_:  print "I CAN`T GO THAT WAY AT THE MOMENT." : GOTO L_50_
          L_150_:  GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF Rr! = 2 OR Rr! = 3 OR Rr! = 4 OR Rr! = 6 OR Rr! = 15 OR Rr! = 16 OR Rr! = 20 OR Rr! = 21 OR Rr! = 22 OR Rr! = 23 OR Rr! = 25 OR Rr! = 26 OR Rr! = 27 OR Rr! = 28 OR Rr! = 30 OR Rr! = 31 OR Rr! = 37 OR Rr! = 39 OR Rr! = 40 OR Rr! = 42 OR Rr! = 44 OR Rr! = 45 OR Rr! = 46 THEN GOTO L_160_
                   print "I CAN`T CARRY THAT!" : GOTO L_50_
          L_160_:  IF N_r! ( Rr! ) = - 1 THEN print "I ALREADY HAVE IT." : GOTO L_50_
                   IF Nr! >= 5 THEN print "I CAN`T CARRY ANYMORE." : GOTO L_50_
                   print "O.K." : N_r! ( Rr! ) = - 1
                   IF V1s$ = "PAI" AND PAr! = 0 THEN print "SOMETHING FELL FROM THE FRAME!" : N_r! ( 31 ) = LOr! : PAr! = 1
                   IF V1s$ = "TEL" THEN TEr! = 0
                   GOTO L_50_
          L_200_:  FOR Rr! = 1 TO 46 : IF V1s$ = N_s$ ( Rr! ) AND N_r! ( Rr! ) = - 1 THEN GOTO L_205_ :end if: NEXT
                   print "I D0N`T SEEM TO BE CARRYING IT." : GOTO L_50_
          L_205_:  IF Rr! = 30 THEN print "I DROPPED THE CUP BUT IT BROKE INTO SMALL PIECES." : print "THE COFFEE SOAKED INTO THE GROUND." : N_r! ( 30 ) = 0 : DRr! = 0 : GOTO L_50_
                   IF Rr! = 45 THEN GLr! = 0
                   IF Rr! = 31 AND N_r! ( 30 ) = - 1 THEN print "O.K. I DROPPED IT." : print "BUT IT FELL IN THE COFFEE!" : N_r! ( 31 ) = 0 : DRr! = 1 : GOTO L_50_
                   print "O.K. I DROPPED IT." : N_r! ( Rr! ) = LOr! : GOTO L_50_
          L_250_:  IF V1s$ = "BUT" AND LOr! = 3 AND D0r! = 0 THEN print "THE D0ORS OPEN WITH A WHOOSH!" : D0r! = 1 : GOTO L_50_
                   IF N_r! ( 46 ) = - 1 AND V1s$ = "BUT" THEN print "I PUSH THE BUTTON ON THE BOX AND" : GOTO L_268_
                   GOSUB SUB_2_
                   IF Z9r! = 2 THEN GOTO L_50_
                   IF Rr! = 17 AND GLr! <> 1 THEN print "THERE`S ELECTRICITY COURSING THRU THE SQUARE!" : print "I`M BEING ELECTROCUTED!" : GOTO L_10000_
                   IF Rr! = 35 AND BUr! = 0 THEN print "THE BUTTON ON THE WALL GOES IN ....." : print "CLICK! SOMETHING SEEMS DIFFFERENT NOW." : BUr! = 1 : GOTO L_50_
                   IF Rr! = 47 AND FLr! <> 1 THEN LO_r! ( 9 , 1 ) = 3 : FLr! = 1 : GOTO L_280_
                   IF Rr! = 48 AND FLr! <> 2 THEN LO_r! ( 9 , 1 ) = 8 : FLr! = 2 : GOTO L_280_
                   IF Rr! = 49 AND FLr! <> 3 THEN LO_r! ( 9 , 1 ) = 10 : FLr! = 3 : GOTO L_280_
          L_268_:  IF N_r! ( 46 ) = - 1 AND ( LOr! = 6 OR LOr! = 29 ) THEN print "THERE IS A BLINDING FLASH...." : FOR! Rr! = 1 TO 3000 : NEXT : LOr! = 1 : FLr! = 1 : LO_r! ( 9 , 1 ) = 3 : GOTO L_20_
                   'WARNING: Something may wrong with the code structure indent was negative
                   print "NOTHING HAPPENS." : GOTO L_50_
          L_280_:  print "THE D0ORS CLOSE AND I FEEL AS IF THE ROOM IS MOVING." : print "SUDDENLY THE D0ORS OPEN AGAIN." : FOR Rr! = 1 TO 5000 : NEXT : GOTO L_20_
          L_300_:  GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF Rr! = 18 AND GLr! <> 1 THEN print "THE LEVER HAS ELECTRICITY COURSING THRU IT!" : print "I`M BEING ELECTROCUTED!" : GOTO L_10000_
                   IF Rr! = 18 AND ELr! = 0 THEN print "THE LEVER GOES ALL THE WAY UP AND CLICKS." : print "SOMETHING SEEMS DIFFERENT NOW." : ELr! = 1 : GOTO L_50_
                   print "NOTHING HAPPENS." : GOTO L_50_
          L_350_:  rem
                   IF V1s$ = "DRA" AND LOr! = 5 THEN print "IT LOOKS FRAGILE." : GOTO L_50_
                   GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF Rr! = 1 AND BAr! <> 1 THEN print "THERE`S NO POWER FOR IT." : GOTO L_50_
                   IF Rr! = 1 AND TEr! <> 1 THEN print "THERE`S NO T.V. TO WATCH ON." : GOTO L_50_
                   IF Rr! = 6 THEN print "IT LOOKS HEAVY." : GOTO L_50_
                   IF Rr! = 7 THEN print "IT`S LOCKED." : GOTO L_50_
                   IF Rr! = 13 THEN print "IT`S A VERY STRONG BAG." : GOTO L_50_
                   IF Rr! = 19 THEN print "I CAN SEE A LOCKED DRAWER IN IT." : GOTO L_50_
                   IF Rr! = 22 OR Rr! = 27 THEN print "THERE`S WRITING ON IT." : GOTO L_50_
                   IF Rr! = 34 AND D0r! = 1 THEN print "THE D0ORS ARE OPEN." : GOTO L_50_
                   IF Rr! = 24 THEN print "I CAN SEE A GLEAMING STONE IN IT." : GOTO L_50_
                   IF Rr! = 9 THEN print "THERE IS A SMALL SLIT NEAR THE D0OR." : GOTO L_50_
                   IF Rr! = 34 THEN print "THERE`S A BUTTON NEAR THE D0ORS." : GOTO L_50_
                   IF Rr! = 41 AND BUr! = 1 THEN print "THE SCREEN IS DARK." : GOTO L_50_
                   IF Rr! = 41 THEN print "I SEE A METAL PIT 1000`S OF FEET DEEP ON ONE MONITOR." : print "ON THE OTHER SIDE OF THE PIT,I SEE A LARGE HOOK." : GOTO L_50_
                   IF Rr! = 43 AND BUr! = 1 THEN print "THE SCREEN IS DARK." : GOTO L_50_
                   IF Rr! = 43 THEN print "I SEE A ROOM WITH A CASE ON A PEDESTAL IN IT." : GOTO L_50_
                   IF Rr! = 44 THEN print "I SEE A PICTURE OF A GRINNING JACKAL." : GOTO L_50_
                   print "I SEE NOTHING OF INTEREST." : GOTO L_50_
          L_400_:  GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF Rr! <> 3 AND Rr! <> 2 AND Rr! <> 4 AND Rr! <> 28 THEN print "I CAN`T INSERT THAT!" : GOTO L_50_
                   input "TELL ME, IN ONE WORD, INTO WHAT" ; A3s$ : A3s$ = left$ ( A3s$ , 3 )
                   R1r! = Rr! : V1s$ = A3s$ : GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF R1r! = 3 AND Rr! = 1 THEN print "O.K." : BAr! = 1 : N_r! ( 3 ) = 0 : BAr! = 1 : GOTO L_50_
                   IF R1r! = 4 AND Rr! = 50 AND DGr! <= 0 THEN print "THE GUARD WON`T LET ME!" : GOTO L_50_
                   IF R1r! = 2 AND Rr! = 1 THEN print "O.K. THE TAPE IS IN THE RECORDER." : N_r! ( 2 ) = 0 : TAr! = 1 : GOTO L_50_
                   IF R1r! = 4 AND Rr! = 50 THEN print "POP! A SECTION OF THE WALL OPENS....." : print "REVEALING SOMETHING VERY INTERESTING." : N_r! ( 4 ) = 0 : N_r! ( 5 ) = LOr! : GOTO L_50_
                   IF R1r! = 28 AND Rr! = 29 THEN print "POP! A CUP OF COFFEE COMES OUT OF THE MACHINE." : N_r! ( 28 ) = 0 : N_r! ( 30 ) = LOr! : GOTO L_50_
                   print "NOTHING HAPPENED." : GOTO L_50_
          L_450_:  rem
                   IF V1s$ = "DRA" AND LOr! = 5 AND N_r! ( 23 ) = 0 THEN print "IT`S STUCK." : GOTO L_50_
                   GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF Rr! = 7 OR Rr! = 9 OR Rr! = 13 OR Rr! = 15 OR Rr! = 23 OR Rr! = 32 OR Rr! = 5 THEN GOTO L_460_
                   print "I CAN`T OPEN THAT!" : GOTO L_50_
          L_460_:  IF Rr! = 7 AND N_r! ( 16 ) = - 1 THEN print "O.K. I OPENED THE D0OR." : N_r! ( 7 ) = 0 : N_r! ( 8 ) = 4 : GOTO L_50_
                   IF Rr! = 9 THEN print "I CAN`T. IT D0ESN`T WORK." : GOTO L_50_
                   IF Rr! = 13 AND N_r! ( 16 ) = - 1 THEN print "O.K. THE CLOSET IS OPENED." : N_r! ( 13 ) = 0 : N_r! ( 14 ) = 14 : GOTO L_50_
                   IF Rr! = 15 THEN print "I CAN`T. IT`S TOO STRONG." : GOTO L_50_
                   IF Rr! = 23 THEN print "IT`S STUCK." : GOTO L_50_
                   IF Rr! = 32 AND N_r! ( 28 ) = 0 AND N_r! ( 4 ) = 0 AND SCr! = 1 THEN print "I OPEN THE SCULPTURE." : print "SOMETHING FALLS OUT." : N_r! ( 28 ) = LOr! : N_r! ( 4 ) = LOr! : GOTO L_50_
                   IF Rr! <> 5 THEN GOTO L_495_
                   input "WHAT`S THE COMBINATION" ; Cs$
                   IF Cs$ = JOECOs$ THEN print "THE D0OR IS SLOWLY OPENING." : N_r! ( 5 ) = 0 : N_r! ( 9 ) = 0 : N_r! ( 10 ) = 10 : GOTO L_50_
                   print "YOU MUST HAVE THE WRONG COMBINATION OR YOU ARE NOT" : print "SAYING IT RIGHT." : GOTO L_50_
          L_495_:  print "I CAN`T D0 THAT......YET!" : GOTO L_50_
          L_500_:  IF V1s$ = "GLO" AND N_r! ( 45 ) = - 1 THEN print "O.K. I`M NOW WEARING THE GLOVES." : GLr! = 1 : GOTO L_50_
                   print "I CAN`T WEAR THAT!" : GOTO L_50_
          L_550_:  IF V1s$ <> "SIG" AND V1s$ <> "NOT" THEN print "I CAN`T READ THAT." : GOTO L_50_
                   GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF Rr! = 22 THEN print "IT SAYS:" : print NAs$ ; "," : print "  WE HAVE DISCOVERED ONE OF CHAOSES SECRET WORDS." : print "IT IS: BOND-007- .TO BE USED IN A -TASTEFUL- SITUATION." : GOTO L_50_
                   IF Rr! = 27 THEN print "IT SAYS: WATCH OUT! DANGEROUS!" : GOTO L_50_
          L_600_:  IF V1s$ <> "REC" THEN print "I CAN`T START THAT." : GOTO L_50_
                   GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF BAr! <> 1 OR TEr! <> 1 OR TAr! <> 1 THEN GOTO L_620_
                   print "THE RECORDER STARTS UP AND PRESENTS A SHORT MESSAGE:"
                   print NAs$ ; ","
                   print "WE HAVE UNCOVERED A NUMBER THAT MAY HELP YOU."
                   print "THAT NUMBER IS:" ; JOECOs$ ; ". PLEASE WATCH OUT FOR HIDDEN TRAPS."
                   print "ALSO, THERE IS SOMETHING IN THE SCULPTURE." : SCr! = 1 : GOTO L_50_
          L_620_:  print "NOTHING HAPPENED." : GOTO L_50_
          L_650_:  IF V1s$ <> "DRA" THEN print "I`M TRYING TO BREAK IT, BUT I CAN`T." : GOTO L_50_
                   IF N_r! ( 6 ) <> - 1 THEN print "I CAN`T D0 THAT YET." : GOTO L_50_
                   IF LOr! = 5 THEN print "IT`S HARD....BUT I GOT IT. TWO THINGS FELL OUT." : N_r! ( 3 ) = LOr! : N_r! ( 22 ) = LOr! : N_r! ( 23 ) = LOr! : GOTO L_50_
                   print "NOTHING HAPPENS." : GOTO L_50_
          L_700_:  GOSUB SUB_2_ : IF Z9r! = 2 THEN GOTO L_50_
                   IF Rr! <> 15 AND Rr! <> 24 THEN print "I`M TRYING. IT D0ESN`T WORK." : GOTO L_50_
                   IF N_r! ( 25 ) <> - 1 THEN print "I CAN`T D0 THAT YET." : GOTO L_50_
                   IF Rr! = 15 THEN print "RIP! THE BAG GOES TO PIECES, AND SOMETHING FALLS OUT!" : N_r! ( 15 ) = 0 : N_r! ( 2 ) = LOr! : GOTO L_50_
                   IF Rr! = 24 THEN print "I CUT THE CASE AND REACH IN TO PULL SOMETHING OUT." : N_r! ( 26 ) = - 1 : GOTO L_50_
          L_750_:  IF V1s$ <> "ROP" THEN print "I CAN`T THROW THAT." : GOTO L_50_
                   IF N_r! ( 37 ) <> - 1 THEN print "I CAN`T D0 THAT YET." : GOTO L_50_
                   input "TELL ME,IN ONE WORD,AT WHAT" ; A3s$ : A3s$ = left$ ( A3s$ , 3 )
                   IF A3s$ <> "HOO" THEN print "O.K. I THREW IT." : N_r! ( 37 ) = LOr! : GOTO L_50_
                   IF LOr! <> 20 THEN print "I CAN`T D0 THAT YET." : GOTO L_50_
                   print "I THREW THE ROPE AND IT SNAGGED ON THE HOOK." : ROr! = 1 : N_r! ( 37 ) = LOr! : GOTO L_50_
          L_800_:  IF V1s$ <> "TEL" THEN print "I CAN`T CONNECT THAT." : GOTO L_50_
                   IF N_r! ( 40 ) <> LOr! THEN print "I D0N`T SEE THE TELEVISION HERE." : GOTO L_50_
                   IF TEr! = 1 THEN print "I DID THAT ALREADY." : GOTO L_50_
                   IF LOr! <> 2 THEN print "I CAN`T D0 THAT....YET!" : GOTO L_50_
                   print "O.K. THE T.V. IS CONNECTED." : TEr! = 1 : GOTO L_50_
          L_850_:  print "WHAT? YOU WOULD LEAVE ME HERE TO DIE ALONE?"
                   print "JUST FOR THAT, I`M GOING TO DESTROY THE GAME." : print : print : print : print "BOOOOOOOOOOOOM!" : FOR Rr! = 1 TO 5000 : NEXT : GOTO L_22222_
          L_900_:  IF LOr! = 14 THEN print "WHOOPS! A TRAP D0OR OPENED UNDERNEATH ME AND" : print "I FIND MYSELF FALLING." : FOR Rr! = 1 TO 4000 : NEXT : LOr! = 17 : GOTO L_20_
                   print "NOTHING HAPPENED." : GOTO L_50_
          L_950_:  Z8r! = 0 : print "WE ARE PRESENTLY CARRYING:" : FOR Rr! = 1 TO 46
                       IF N_r! ( Rr! ) <> - 1 THEN GOTO L_965_
                       print N1_s$ ( Rr! ) ; : IF Rr! = 45 AND GLr! = 1 THEN print ". WHICH I`M WEARING." ELSE print " "
                       Z8r! = 1
          L_965_:  NEXT
                   IF Z8r! = 0 THEN print "NOTHING"
                   GOTO L_50_
         L_2000_:  IF LOr! = 3 AND N_r! ( 39 ) = - 1 THEN print "THE D0OR MAN LOOKS AT MY BADGE AND THEN THROWS ME OUT." : FOR Rr! = 1 TO 5000 : NEXT : LOr! = 1 : GOTO L_20_
                   IF LOr! = 10 AND N_r! ( 42 ) <> - 1 THEN print "THE GUARD LOOKS AT ME SUSPICIOUSLY, THEN THROWS ME BACK." : FOR Rr! = 1 TO 4000 : NEXT : LOr! = 9 : GOTO L_20_
                   IF LOr! = 6 AND BUr! <> 1 THEN print "SIRENS GO OFF ALL AROUND ME!" : print "GUARDS GOTO l1 IN AND SHOOT ME TO DEATH!" : GOTO L_10000_
                   IF LOr! = 11 AND ELr! <> 1 THEN print "THE FLOOR IS WIRED WITH ELECDRICITY!" : print "I`M BEING ELECTROCUTED!" : GOTO L_10000_
                   IF LOr! = 10 AND N_r! ( 30 ) = - 1 AND DRr! = 1 THEN print "THE GUARD TAKES MY COFFEE" : print "AND FALLS TO SLEEP RIGHT AWAY." : DGr! = 5 + int ( 10 * rnd ( 10 ) ) : N_r! ( 11 ) = 0 : N_r! ( 12 ) = 10 : DRr! = 0 : N_r! ( 30 ) = 0 : GOTO L_56_
                   IF DGr! = 0 THEN print "I HEAR A NOISE LIKE SOMEONE IS YAWNING." : N_r! ( 11 ) = 10 : N_r! ( 12 ) = 0 : GUr! = - 2 : DGr! = - 1 : GOTO L_56_
                   IF LOr! = 1 AND N_r! ( 26 ) = - 1 THEN print "HURRAY! YOU`VE RECOVERED THE RUBY!" : print "YOU WIN!" : GOTO L_10020_
                   IF Tr! > 375 THEN print "I THINK THEY ARE ON TO ME....I HEAR NOISES."
                   IF Tr! = 400 THEN print "OH NO! THEY CAUGHT UP TO ME! HELP! THEY`RE PULLING OUT GUNS!" : GOTO L_10000_
                   IF Tr! = 1 THEN print "WRITING ON THE WALL SAYS:" : print "IF YOU WANT INSTRUCTIONS TYPE:ORDERS PLEASE"
                   IF LOr! = 6 AND LO_r! ( 6 , 2 ) <> 0 THEN print "A SECRET D0OR SLAMS D0WN BEHIND ME!" : LO_r! ( 6 , 2 ) = 0 : GOTO L_56_
                   IF LOr! = 10 AND GUr! = - 2 THEN print "THE GUARD DRAWS HIS GUN AND SHOOTS ME!" : GOTO L_10000_
                   GOTO L_56_
       SUB_3000_:  IF Aas$ = "N" THEN Aas$ = "GO NORTH" : RETURN


                   IF Aas$ = "S" THEN Aas$ = "GO SOUTH" : RETURN


                   IF Aas$ = "E" THEN Aas$ = "GO EAST" : RETURN


                   IF Aas$ = "W" THEN Aas$ = "GO WEST" : RETURN


                   IF Aas$ = "I" THEN Aas$ = "INV" : RETURN


                   RETURN


       SUB_3010_:  IF Vs$ = "WAL" OR Vs$ = "GOTO l1" THEN Vs$ = "GO " : RETURN


                   IF Vs$ = "TAK" OR Vs$ = "CAR" THEN Vs$ = "GET" : RETURN


                   IF Vs$ = "LEA" THEN Vs$ = "DRO" : RETURN


                   IF Vs$ = "PRE" THEN Vs$ = "PUS" : RETURN


                   IF Vs$ = "EXA" THEN Vs$ = "LOO" : RETURN


                   IF Vs$ = "PUT" THEN Vs$ = "INS" : RETURN


                   IF Vs$ = "UNL" THEN Vs$ = "OPE" : RETURN


                   IF Vs$ = "PLA" THEN Vs$ = "STA" : RETURN


                   IF Vs$ = "SMA" THEN Vs$ = "BRE" : RETURN


                   IF Vs$ = "ATT" THEN Vs$ = "CON" : RETURN


                   IF Vs$ = "LIS" THEN Vs$ = "INV" : RETURN


                   RETURN


         L_5000_:  print "YOUR MISSION," ; NAs$ ; ",IS TO RECOVER A RUBY THAT IS BEING"
                   print "USED IN TOP SECRET GOVERNMENT PROJECTS AS A PART IN A"
                   print "LASER PROJECTOR."
                   print "  YOU WILL HAVE A PARTNER WHO IS NOT TOO BRIGHT AND NEEDS"
                   print "YOU TO TELL HIM WHAT TO D0. USE TWO WORD COMMANDS LIKE:"
                   print : print "	       GET NOTEBOOK   GO WEST  LOOK D0OR"
                   print : print "SOME COMMANDS USE ONLY ONE WORD. EXAMPLE: INVENTORY"
                   print "  IF YOU WANT TO SEE CHANGES IN YOUR SURROUNDINGS TYPE: LOOK"
                   print "THE RUBY HAS BEEN CAPTURED BY A SECRET SPY RING KNOWN AS"
                   print "CHAOS. WE SUSPECT THEY ARE UNDER COVER SOMEWHERE IN THIS"
                   print "NEIGHBORHOOD. GOOD LUCK!"
                   GOTO L_56_
        L_10000_:  FOR Rr! = 1 TO 5000 : NEXT : print "I`M DEAD!"
                   print "YOU DIDN`T WIN."
        L_10020_:  input "WOULD YOU LIKE TO TRY AGAIN (Y/N)" ; Zs$
                   IF left$ ( Zs$ , 1 ) = "Y" THEN GOTO l1
        L_22222_:  END







