' BASTOOL .01 (c) Dipl.-Ing. Thomas Ludewig 2007
' using at your own risk- no warrenty
' CURRENT DIR:/root/Desktop/FREEBASIC_TOOLS
' PROCESS    :/root/Desktop/FREEBASIC_TOOLS/cbasic/strtrk.bas
CLS
COLOR 10 'an old Program should live on a green monochrome screen ;)
'DYNAMIC
'Lines read: 690
'VARS FOUND:
                                 '        A1r!           REM SINGLE :REM A1
                                 '        A2r!           REM SINGLE :REM A2
                                 '        ACr!           REM SINGLE :REM AC
                                 '        ANs$           REM STRING :REM AN$
                                 '        AQr!           REM SINGLE :REM AQ
                                 '        ARs$           REM STRING :REM AR$
                                 '        AUr!           REM SINGLE :REM AU
                                 '        AVr!           REM SINGLE :REM AV
                   REDIM  SHARED          A_s$(10)      'AS  STRING :REM A$(
                                 '        Ar!            REM SINGLE :REM A
                                 '        B1r!           REM SINGLE :REM B1
                                 '        B2r!           REM SINGLE :REM B2
                                 '        B3r!           REM SINGLE :REM B3
                                 '        B9r!           REM SINGLE :REM B9
                                 '        BT_Cs$         REM STRING :REM C$
                                 '        BT_Gs$         REM STRING :REM G$
                                 '        Br!            REM SINGLE :REM B
                                 '        C1r!           REM SINGLE :REM C1
                   REDIM  SHARED          C2_r!(10)     'AS  SINGLE :REM C2(
                   REDIM  SHARED          C3_r!(10)     'AS  SINGLE :REM C3(
                                 '        CXr!           REM SINGLE :REM CX
                                 '        CYr!           REM SINGLE :REM CY
                                 '        DRr!           REM SINGLE :REM DR
                                 '        DTr!           REM SINGLE :REM DT
                   REDIM  SHARED          D_r!(10)      'AS  SINGLE :REM D(
                   REDIM  SHARED          D_s$(10)      'AS  STRING :REM D$(
                                 '        E8r!           REM SINGLE :REM E8
                                 '        EGs$           REM STRING :REM EG$
                                 '        EHs$           REM STRING :REM EH$
                                 '        EQr!           REM SINGLE :REM EQ
                                 '        Er!            REM SINGLE :REM E
                                 '        F1r!           REM SINGLE :REM F1
                                 '        F2r!           REM SINGLE :REM F2
                                 '        F3r!           REM SINGLE :REM F3
                                 '        F4r!           REM SINGLE :REM F4
                                 '        GFr!           REM SINGLE :REM GF
                   REDIM  SHARED          G_r!(10,10)   'AS  SINGLE :REM G(
                                 '        Hr!            REM SINGLE :REM H
                                 '        Ir!            REM SINGLE :REM I
                                 '        Jr!            REM SINGLE :REM J
                                 '        K1r!           REM SINGLE :REM K1
                                 '        K2r!           REM SINGLE :REM K2
                                 '        K3r!           REM SINGLE :REM K3
                                 '        K9r!           REM SINGLE :REM K9
                                 '        KAr!           REM SINGLE :REM KA
                                 '        KDr!           REM SINGLE :REM KD
                                 '        KFs$           REM STRING :REM KF$
                                 '        KPr!           REM SINGLE :REM KP
                                 '        KQr!           REM SINGLE :REM KQ
                   REDIM  SHARED          K_r!(10,10)   'AS  SINGLE :REM K(
                                 '        Lr!            REM SINGLE :REM L
                                 '        MRr!           REM SINGLE :REM MR
                                 '        PDr!           REM SINGLE :REM PD
                                 '        PEr!           REM SINGLE :REM PE
                                 '        PFr!           REM SINGLE :REM PF
                                 '        PGr!           REM SINGLE :REM PG
                                 '        PHr!           REM SINGLE :REM PH
                                 '        PJr!           REM SINGLE :REM PJ
                                 '        PRr!           REM SINGLE :REM PR
                                 '        PWs$           REM STRING :REM PW$
                                 '        Pr!            REM SINGLE :REM P
                                 '        Q1r!           REM SINGLE :REM Q1
                                 '        Q2r!           REM SINGLE :REM Q2
                                 '        Q3r!           REM SINGLE :REM Q3
                                 '        Q4r!           REM SINGLE :REM Q4
                                 '        Q8r!           REM SINGLE :REM Q8
                                 '        Q8s$           REM STRING :REM Q8$
                                 '        Q9s$           REM STRING :REM Q9$
                                 '        R1r!           REM SINGLE :REM R1
                                 '        R2r!           REM SINGLE :REM R2
                                 '        R3r!           REM SINGLE :REM R3
                                 '        R9r!           REM SINGLE :REM R9
                                 '        RRr!           REM SINGLE :REM RR
                                 '        S1r!           REM SINGLE :REM S1
                                 '        S2r!           REM SINGLE :REM S2
                                 '        S3r!           REM SINGLE :REM S3
                                 '        S4r!           REM SINGLE :REM S4
                                 '        S9r!           REM SINGLE :REM S9
                                 '        SDr!           REM SINGLE :REM SD
                                 '        SLr!           REM SINGLE :REM SL
                   REDIM  SHARED          S_r!(10,10)   'AS  SINGLE :REM S(
                                 '        Sr!            REM SINGLE :REM S
                                 '        T9r!           REM SINGLE :REM T9
                                 '        TECr!          REM SINGLE :REM TEC
                                 '        TFr!           REM SINGLE :REM TF
                                 '        TKr!           REM SINGLE :REM TK
                                 '        Tr!            REM SINGLE :REM T
                                 '        Ur!            REM SINGLE :REM U
                                 '        W1r!           REM SINGLE :REM W1
                                 '        X4r!           REM SINGLE :REM X4
                                 '        XAr!           REM SINGLE :REM XA
                                 '        XFr!           REM SINGLE :REM XF
                                 '        XMr!           REM SINGLE :REM XM
                                 '        XXr!           REM SINGLE :REM XX
                                 '        Xr!            REM SINGLE :REM X
                                 '        Xs$            REM STRING :REM X$
                                 '        YYr!           REM SINGLE :REM YY
                                 '        Yr!            REM SINGLE :REM Y
                   REM EXPANDED APRIL 1977 BY W.A. BURTON
                   REM PIRATED JAN. 1978 BY ZOSO
                   FUNCTION Fkta1 ( Xr! ) : Fkta1 = int ( .5 + A1r! + Xr! * cos ( C1r! * CXr! ) ) : END FUNCTION
                   FUNCTION Fktb1 ( Xr! ) : Fktb1 = int ( .5 + B1r! + Xr! * sin ( C1r! * CXr! ) ) : END FUNCTION
                   REDIM G_r! ( 8 , 8 ) , S_r! ( 8 , 8 ) , K_r! ( 3 , 3 )
                   GOSUB SUB_11960_
                   print
           L_80_:  INPUT "What is your security clearance number (1 TO 1000)" , T9r!
                   E8r! = T9r!
                   IF ( T9r! < 1 ) OR ( T9r! > 1000 ) THEN
                       print ARs$ ; "INVALID!! REENTER!!"
                       GOTO L_80_
                   END IF
                   FOR Ar! = 1 TO T9r! / 2
                       R9r! = rnd ( 1 )
                       R9r! = rnd ( 2 )
                   NEXT Ar!
          L_180_:  INPUT "       Enter rank     (1=Low,12=High)" , R9r!
                   IF ( R9r! < 1 ) OR ( R9r! > 12 ) THEN
                       GOTO L_180_
                       RRr! = R9r!
                   END IF
                   X4r! = R9r!
                   R9r! = R9r! + .001
                   W1r! = W1r! + .001
                   print "Command order : STAND BY !"
                   print "You are presently being assigned to a mission..."
                   print " with a failure factor of " ; ( RRr! * 20 )
                   print "       Good-bye, Captain..."
                   CXr! = .017453
                   ARs$ = " ---> "
                   XAr! = int ( X4r! * 50 )
                   ACr! = ( 1 / ( X4r! + .1 ) )
                   IF X4r! >= 9 THEN
                       GOTO L_8650_
                   END IF
          L_370_:  Er! = 3000 - XAr! + 100
                   Pr! = 10
                   S9r! = 200
                   FUNCTION Fktd ( D ) : Fktd = sqr ( ( K_r! ( Ir! , 1 ) - S1r! ) ^ 2 + ( K_r! ( Ir! , 2 ) - S2r! ) ^ 2 ) : END FUNCTION
                   Q1r! = int ( rnd ( 1 ) * 8 + 1 )
                   Q2r! = int ( rnd ( 1 ) * 8 + 1 )
                   S1r! = int ( rnd ( 1 ) * 8 + 1 )
                   S2r! = int ( rnd ( 1 ) * 8 + 1 )
                   DATA "Warp Engines" , "Short Range Sensors" , "Long Range Sensors"
                   DATA "Phasers" , "Photon Torpedoes" , "Shield Control"
                   DATA "Damage Control" , "Computer" , "Damage Repair" , "Communications"
                   FOR Ar! = 1 TO 10
                       read D_s$ ( Ar! )
                   NEXT Ar!
                   A_s$ ( 0 ) = " . "
                   A_s$ ( 1 ) = " E "
                   A_s$ ( 2 ) = " * "
                   A_s$ ( 3 ) = " K "
                   A_s$ ( 4 ) = " B "
          L_560_:  F1r! = .86
                   F2r! = .01
                   F3r! = .95
                   F4r! = .99
                   K9r! = 0
                   B9r! = K9r!
                   FOR Ir! = 1 TO 8
                       FOR Jr! = 1 TO 8
                           R1r! = rnd ( 1 )
                           R2r! = rnd ( 1 )
                           R3r! = int ( 8 * rnd ( 1 ) + 1 )
                           K3r! = - ( R1r! > F1r! - F2r! * R9r! ) - ( R1r! > F3r! - F2r! * R9r! ) - ( R1r! > F4r! - F2r! * R9r! )
                           K9r! = K9r! + K3r!
                           B3r! = - ( R2r! > F3r! )
                           B9r! = B9r! + B3r!
                           G_r! ( Ir! , Jr! ) = 100 * K3r! + 10 * B3r! + R3r!
                       NEXT Jr!
                   NEXT Ir!
                   IF NOT ( ( B9r! > 0 ) AND ( K9r! > 0 ) ) THEN
                       GOTO L_560_
                   END IF
                   print "Objective: Destroy " ; K9r! ; " Klingons using " ; B9r! ; " starbase" ;
                   Ur! = K9r!
                   Yr! = B9r!
                   IF B9r! = 1 THEN
                       print " " ;
                       GOTO L_850_
                   END IF
                   print "s " ;
          L_850_:  T9r! = K9r! + rnd ( 1 ) * K9r! / R9r! + 10 - R9r!
                   PRr! = T9r! / K9r!
                   print "in " ; T9r! ; " stardays."
                   GOSUB SUB_9400_
          L_890_:  S3r! = 0
                   B3r! = S3r!
                   K3r! = B3r!
                   FOR Ar! = 1 TO 8
                       FOR Br! = 1 TO 8
                           S_r! ( Ar! , Br! ) = 0
                       NEXT Br!
                   NEXT Ar!
                   FOR Ar! = 1 TO 3
                       FOR Br! = 1 TO 3
                           K_r! ( Ar! , Br! ) = 0
                       NEXT Br!
                   NEXT Ar!
                   S_r! ( S1r! , S2r! ) = 1
                   Xr! = .01 * G_r! ( Q1r! , Q2r! )
                   K3r! = int ( Xr! )
                   Yr! = ( Xr! - K3r! ) * 10
                   B3r! = int ( Yr! )
                   S3r! = G_r! ( Q1r! , Q2r! ) - 100 * K3r! - 10 * B3r!
                   IF K3r! = 0 THEN
                       FOR Ar! = 1 TO 3
                           FOR Br! = 1 TO 3
                               K_r! ( Ar! , Br! ) = 0
                           NEXT Br!
                       NEXT Ar!
                       GOTO L_1310_
                   END IF
                   print ARs$ ; "CONDITION RED !!!!!"
                   FOR Ar! = 1 TO K3r!
         L_1180_:      R1r! = int ( rnd ( 1 ) * 8 + 1 )
                       R2r! = int ( rnd ( 1 ) * 8 + 1 )
                       IF S_r! ( R1r! , R2r! ) <> 0 THEN
                           GOTO L_1180_
                       END IF
                       S_r! ( R1r! , R2r! ) = 3
                       K_r! ( Ar! , 1 ) = R1r!
                       K_r! ( Ar! , 2 ) = R2r!
                       K_r! ( Ar! , 3 ) = S9r!
                   NEXT Ar!
                   IF B3r! = 0 THEN
                       GOTO L_1400_
                   END IF
         L_1310_:  IF B3r! = 0 THEN
                       GOTO L_1400_
                   END IF
         L_1340_:  R1r! = int ( rnd ( 1 ) * 8 + 1 )
                   R2r! = int ( rnd ( 1 ) * 8 + 1 )
                   IF S_r! ( R1r! , R2r! ) <> 0 THEN
                       GOTO L_1340_
                   END IF
                   S_r! ( R1r! , R2r! ) = 4
         L_1400_:  IF S3r! = 0 THEN
                       GOTO L_1510_
                   END IF
                   FOR Ar! = 1 TO S3r!
         L_1440_:      R1r! = int ( rnd ( 1 ) * 8 + 1 )
                       R2r! = int ( rnd ( 1 ) * 8 + 1 )
                       IF S_r! ( R1r! , R2r! ) <> 0 THEN
                           GOTO L_1440_
                       END IF
                       S_r! ( R1r! , R2r! ) = 2
                   NEXT Ar!
         L_1510_:  G_r! ( Q1r! , Q2r! ) = int ( G_r! ( Q1r! , Q2r! ) ) + .5
         L_1520_:  print
         L_1530_:  print "QUADRANT (" ; Q1r! ; "," ; Q2r! ; ")"
                   print "SECTOR   (" ; S1r! ; "," ; S2r! ; ")"
                   IF KPr! <> 0 THEN
                       GOTO L_9070_
                   END IF
                   IF DTr! = 1 THEN
                       GOTO L_6440_
                   END IF
                   IF Sr! < 200 * K3r! THEN
                       print ARs$ ; "Shield Energy too low"
                       SLr! = 1
                       Ar! = 6
                       GOTO L_1920_
                   END IF
         L_1670_:  Ar! = 2
                   GOTO L_1920_
         L_1690_:  print
                   print D_s$ ( 2 )
                   FOR Ar! = 1 TO 8
                       FOR Br! = 1 TO 8
                           print A_s$ ( S_r! ( Ar! , Br! ) ) ;
                       NEXT Br!
                       print
                   NEXT Ar!
                   print
                   print "Shields " ; Sr! ; spc ( 4 ) ; " Energy " ; Er! ; spc ( 4 ) ; " Photons " ; Pr! ;
                   print spc ( 4 ) ; " Stardays " ; T9r! - Tr!
         L_1800_:  GOSUB SUB_7490_
                   INPUT "Command" , Ar!
                   IF ( Ar! > 10 ) OR ( Ar! < 0 ) THEN
                       INPUT " ----> COMMAND" , Ar!
                   END IF
                   IF ( Ar! > 10 ) OR ( Ar! < 0 ) THEN
                       print "WARNING - PROPER COMMANDS ONLY !! "
                       GOTO L_1800_
                   END IF
         L_1890_:  IF Ar! = 1 THEN
                       GOTO L_2010_
                   END IF
         L_1920_:  IF D_r! ( Ar! ) >= 0 THEN
                       GOTO L_2010_
                   END IF
                   print ARs$ ; "Captain, we don't have " ; D_s$ ( Ar! ) ; " anymore."
                   IF DTr! = 1 THEN
                       GOTO L_6440_
                   ELSE
                       GOTO L_1800_
                   END IF
         L_2010_:  ON Ar! GOTO L_2090_ , L_1690_ , L_3790_ , L_3990_ , L_4510_ , L_5300_ , L_5450_ , L_6440_ , L_10610_ , L_8840_
                   print
                   FOR Ar! = 1 TO 9
                       print Ar! ; " = " ; D_s$ ( Ar! )
                   NEXT Ar!
                   Ar! = 10
                   print Ar! ; "= " ; D_s$ ( Ar! )
                   GOTO L_1800_
         L_2090_:  INPUT "COURSE" , C1r!
                   IF ( C1r! < 0 ) OR ( C1r! > 359.99 ) THEN
                       GOTO L_2170_
                   END IF
                   INPUT "WARP FACTOR" , W1r!
                   SLr! = 0
                   KPr! = 0
                   GOTO L_2180_
         L_2170_:  print ARs$ ; "REJECTED ! Course must be in range of o to 359.99 degrees."
         L_2180_:  IF NOT ( W1r! > 0 ) THEN
                       GOTO L_1800_
                   END IF
                   IF ( D_r! ( 1 ) >= 0 ) OR ( W1r! <= ACr! ) THEN
                       GOTO L_2260_
                   END IF
                   print ARs$ ; "Warp Engines are damaged, maximum speed = " ; ACr!
                   GOTO L_2090_
         L_2260_:  TECr! = TECr! + 1
                   BT_Cs$ = ""
                   IF K3r! > 0 THEN
                       GOSUB SUB_5610_
                   END IF
                   IF Er! > 5 * W1r! THEN
                       GOTO L_2490_
                   END IF
                   IF Sr! < 1 THEN
                       GOTO L_5940_
                   END IF
                   print "Captain, you only have " ; Er! ; " units of energy. "
                   print "Refuel from your Shield reserves, which have " ; Sr! ; " units" ;
                   Q9s$ = "NO"
                   INPUT " " , Q9s$
                   IF ( Q9s$ = "Y" ) OR ( Q9s$ = "YES" ) THEN
                       GOSUB SUB_13820_
                   END IF
                   Ar! = 6
                   IF D_r! ( Ar! ) < 0 THEN
                       GOTO L_5940_
                   END IF
                   GOTO L_1800_
         L_2490_:  FOR Ir! = 1 TO 10
                       IF D_r! ( Ir! ) >= 0 THEN
                           GOTO L_2610_
                       END IF
                       D_r! ( Ir! ) = D_r! ( Ir! ) + 1
                       IF D_r! ( Ir! ) < 0 THEN
                           GOTO L_2610_
                       END IF
                       IF D_r! ( 7 ) < 0 THEN
                           GOTO L_2610_
                       END IF
                       print "Damage Control report: " ; D_s$ ( Ir! ) ; " repaired."
         L_2610_:  NEXT Ir!
                   IF rnd ( 1 ) > .1 THEN
                       GOTO L_2980_
                   END IF
                   IF rnd ( 1 ) > .1 THEN
                       GOTO L_2980_
                   END IF
                   GOTO L_2870_

       SUB_2690_:  IF rnd ( 1 ) > R9r! / 10 THEN
                       RETURN
                   END IF
                   R1r! = int ( rnd ( 1 ) * 8 + 1 )
                   IF D_r! ( R1r! ) < 0 THEN
                       RETURN
                   END IF
                   D_r! ( R1r! ) = D_r! ( R1r! ) - 10 * rnd ( 1 ) - 1
                   IF D_r! ( 7 ) < 0 THEN
                       RETURN
                   END IF
                   IF D_r! ( 7 ) < 0 THEN
                       RETURN
                   END IF
                   print
                   print "Damage Control report: " ; D_s$ ( R1r! ) ; " out."
                   print
                   RETURN


         L_2870_:  R1r! = int ( rnd ( 1 ) * 8 + 1 )
                   IF D_r! ( R1r! ) >= 0 THEN
                       GOTO L_2980_
                   END IF
                   IF D_r! ( 7 ) < 0 THEN
                       GOTO L_2980_
                   END IF
                   print
                   D_r! ( R1r! ) = 0
                   print "Damage Control report: " ; D_s$ ( R1r! ) ; " repaired."
                   print
         L_2980_:  W1r! = W1r! * 8
                   A1r! = 8 * Q2r! + S2r! - 9
                   B1r! = 72 - 8 * Q1r! - S1r!
                   IF W1r! < 1 THEN
                       W1r! = W1r! * 1.25
                   END IF
                   Er! = Er! - 2 * W1r!
                   Tr! = Tr! + W1r! / 25
                   IF Tr! > T9r! THEN
                       GOTO L_6050_
                   END IF
                   A2r! = int ( A1r! + W1r! * cos ( C1r! * CXr! ) + .5 )
                   B2r! = int ( B1r! + W1r! * sin ( C1r! * CXr! ) + .5 )
                   IF NOT ( ( A2r! < 0 ) OR ( A2r! > 63 ) OR ( B2r! < 0 ) OR ( B2r! > 63 ) ) THEN
                       GOTO L_3170_
                   END IF
                   print ARs$ ; "Captain, heed Starfleet regulations! ( STAY IN GALAXY ) !!"
                   Tr! = Tr! + W1r! / 24
                   GOTO L_1800_
         L_3170_:  REM DEF FNA1(X)=INT(.5+A1+X*COS(C1*CX))
                   REM DEF FNB1(X)=INT(.5+B1+X*SIN(C1*CX))
                   FOR Xr! = 0 TO int ( W1r! )
                       IF NOT ( Q1r! = 8 - int ( Fktb1 ( Xr! ) / 8 ) AND Q2r! = int ( Fkta1 ( Xr! ) / 8 + 1 ) ) THEN
                           Xr! = W1r!
                           GOTO L_3560_
                       END IF
                       S3r! = 8 - Fktb1 ( Xr! ) + 8 * int ( Fktb1 ( Xr! ) / 8 )
                       S4r! = Fkta1 ( Xr! ) + 1 - 8 * int ( Fkta1 ( Xr! ) / 8 )
                       IF S_r! ( S3r! , S4r! ) < 2 THEN
                           GOTO L_3560_
                       END IF
                       S_r! ( S1r! , S2r! ) = 0
                       S1r! = 8 - Fktb1 ( Xr! - 1 ) + 8 * int ( Fktb1 ( Xr! - 1 ) / 8 )
                       S2r! = Fkta1 ( Xr! - 1 ) + 1 - 8 * int ( Fkta1 ( Xr! - 1 ) / 8 )
                       S_r! ( S1r! , S2r! ) = 1
                       REM don't know about -1 !!
                       print ARs$ ; "Navigational error :Engines shut down at (" ;
                       print S1r! ; "," ; S2r! ; ")"
                       Tr! = Tr! + ( W1r! / 24 )
                       print " You lost " ; Tr! ; " units startime restarting engines."
                       print
                       IF S_r! ( S3r! , S4r! ) <> 4 THEN
                           GOTO L_1800_
                       END IF
         L_3420_:      print "Shields lowered for refueling"
                       Sr! = 0
                       Pr! = 10
                       BT_Cs$ = "D"
                       Er! = 3000 - XAr! + 100
                       GOSUB SUB_5610_
                       FOR R1r! = 1 TO 10
                           IF D_r! ( R1r! ) >= 0 THEN
                           NEXT R1r!
                           GOTO L_1800_
                       END IF
                       D_r! ( R1r! ) = D_r! ( R1r! ) + ( 11 * rnd ( 1 ) / R9r! )
                   NEXT R1r!
                   GOTO L_1800_
         L_3560_:  NEXT Xr!
                   'WARNING: Something may wrong with the code structure indent was negative
                   S_r! ( S1r! , S2r! ) = 0
                   S1r! = 8 - B2r! + 8 * int ( B2r! / 8 )
                   S2r! = A2r! + 1 - 8 * int ( A2r! / 8 )
                   Q3r! = 8 - int ( B2r! / 8 )
                   Q4r! = int ( A2r! / 8 ) + 1
                   IF NOT ( ( Q1r! = Q3r! ) AND ( Q2r! = Q4r! ) ) THEN
                       Q1r! = Q3r!
                       Q2r! = Q4r!
                       GOTO L_890_
                   END IF
                   S_r! ( S1r! , S2r! ) = 1
                   FOR Ar! = S1r! - 1 TO S1r! + 1
                       FOR Br! = S2r! - 1 TO S2r! + 1
                           IF ( Ar! > 8 ) OR ( Br! > 8 ) OR ( Ar! < 1 ) OR ( Br! < 1 ) THEN
                               GOTO L_3760_
                           END IF
                           IF S_r! ( Ar! , Br! ) = 4 THEN
                               GOTO L_3420_
                           END IF
         L_3760_:      NEXT Br!
                   NEXT Ar!
                   GOTO L_1800_
         L_3790_:  print
                   FOR Ar! = ( Q1r! - 1 ) TO ( Q1r! + 1 )
                       FOR Br! = ( Q2r! - 1 ) TO ( Q2r! + 1 )
                           IF ( Ar! < 1 ) OR ( Br! < 1 ) OR ( Ar! > 8 ) OR ( Br! > 8 ) THEN
                               print " ***" ;
                               GOTO L_3940_
                           END IF
                           BT_Gs$ = str$ ( G_r! ( Ar! , Br! ) )
                           IF G_r! ( Ar! , Br! ) < 100 THEN
                               BT_Gs$ = "0" + BT_Gs$
                           END IF
                           IF G_r! ( Ar! , Br! ) < 10 THEN
                               BT_Gs$ = "0" + BT_Gs$
                           END IF
                           print " " ; left$ ( BT_Gs$ , 3 ) ;
         L_3940_:          G_r! ( Ar! , Br! ) = int ( G_r! ( Ar! , Br! ) ) + .5
                       NEXT Br!
                       print
                   NEXT Ar!
                   GOTO L_1800_
         L_3990_:  print
                   IF K3r! <= 0 THEN
                       GOTO L_5550_
                   END IF
                   IF D_r! ( 8 ) >= 0 THEN
                       GOTO L_4070_
                   END IF
                   print ARs$ ; " Computer failure hampers accuracy"
         L_4070_:  print "Phasers locked on target.  Energy available=" ; Er! ;
                   print ": Number of units to fire:" ;
                   INPUT Xr!
                   IF Er! - Xr! < 0 THEN
                       print "NOT ENOUGH POWER"
                       GOTO L_1800_
                   END IF
                   Tr! = Tr! + .05
                   IF Tr! > T9r! THEN
                       GOTO L_6050_
                   END IF
                   Er! = Er! - Xr!
                   IF BT_Cs$ <> "D" THEN
                       GOSUB SUB_5610_
                   END IF
                   IF D_r! ( 8 ) >= 0 THEN
                       GOTO L_4260_
                   END IF
                   Xr! = Xr! * rnd ( 1 )
         L_4260_:  FOR Ir! = 1 TO 3
                       IF K_r! ( Ir! , 3 ) <= 0 THEN
                           GOTO L_4490_
                       END IF
                       Hr! = ( Xr! / Fktd ( 0 ) ) + sgn ( rnd ( 1 ) - .5 ) * 8 * rnd ( 1 )
                       K_r! ( Ir! , 3 ) = K_r! ( Ir! , 3 ) - Hr!
                       print Hr! ; " Unit hit on vessel at (" ; K_r! ( Ir! , 1 ) ;
                       print K_r! ( Ir! , 2 ) ; "), leaving " ; K_r! ( Ir! , 3 )
                       IF K_r! ( Ir! , 3 ) > 0 THEN
                           GOTO L_4490_
                       END IF
                       print "Klingon at (" ; K_r! ( Ir! , 1 ) ; "," ; K_r! ( Ir! , 2 ) ;
                       print ") destroyed"
                       K3r! = K3r! - 1
                       K9r! = K9r! - 1
                       IF K9r! = 0 THEN
                           GOTO L_6400_
                       END IF
                       G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 100
                       S_r! ( K_r! ( Ir! , 1 ) , K_r! ( Ir! , 2 ) ) = 0
                       K_r! ( Ir! , 1 ) = 0
                       K_r! ( Ir! , 2 ) = 0
                       K_r! ( Ir! , 3 ) = 0
         L_4490_:  NEXT Ir!
                   GOTO L_1800_
         L_4510_:  print
                   IF Pr! > 0 THEN
                       GOTO L_4570_
                   END IF
                   print ARs$ ; "All Photon Torpedoes expended"
                   GOTO L_1800_
         L_4570_:  INPUT "DIRECTION" , C1r!
                   Tr! = Tr! + .05
                   IF Tr! > T9r! THEN
                       GOTO L_6050_
                   END IF
                   Pr! = Pr! - 1
                   IF BT_Cs$ <> "D" THEN
                       GOSUB SUB_5610_
                   END IF
                   A1r! = 8 * Q2r! + S2r! - 9
                   B1r! = 72 - 8 * Q1r! - S1r!
                   IF C1r! = 90 * int ( C1r! / 90 ) THEN
                       GOTO L_5220_
                   END IF
                   REM DEF FNA1(W1)=INT(.5+A1+W1*COS(C1*CX))
                   REM DEF FNB1(W1)=INT(.5+B1+W1*SIN(C1*CX))
                   FOR W1r! = 0 TO 10 STEP .9
                       IF W1r! = 0 THEN
                           S3r! = S1r!
                           S4r! = S2r!
                           GOTO L_4890_
                       END IF
                       IF NOT ( Q1r! = 8 - int ( Fktb1 ( W1r! ) / 8 ) AND Q2r! = int ( Fkta1 ( W1r! ) / 8 + 1 ) ) THEN
                           GOTO L_1800_
                       END IF
                       S3r! = 8 - Fktb1 ( W1r! ) + 8 * int ( Fktb1 ( W1r! ) / 8 )
                       S4r! = Fkta1 ( W1r! ) + 1 - 8 * int ( Fkta1 ( W1r! ) / 8 )
                       IF ( Fkta1 ( W1r! ) = A2r! ) AND ( Fktb1 ( W1r! ) = B2r! ) THEN
                           GOTO L_5200_
                       END IF
                       A2r! = Fkta1 ( W1r! )
                       B2r! = Fktb1 ( W1r! )
         L_4890_:      print "(" ; S3r! ; "," ; S4r! ; ")" ; A_s$ ( S_r! ( S3r! , S4r! ) )
                       ON S_r! ( S3r! , S4r! ) + 1 GOTO L_5200_ , L_5200_ , L_5160_ , L_4910_ , L_5110_
         L_4910_:      IF rnd ( 1 ) < ( .1 * X4r! ) THEN
                           print "Shields deflect Torpedo"
                           GOTO L_1800_
                       END IF
                       print "Klingon destroyed"
                       S_r! ( S3r! , S4r! ) = 0
                       G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 100
                       K3r! = K3r! - 1
                       K9r! = K9r! - 1
                       IF K9r! = 0 THEN
                           GOTO L_6400_
                       END IF
                       FOR Ar! = 1 TO 3
                           IF ( K_r! ( Ar! , 1 ) = S3r! ) AND ( K_r! ( Ar! , 2 ) = S4r! ) THEN
                               K_r! ( Ar! , 1 ) = 0
                               K_r! ( Ar! , 2 ) = 0
                               K_r! ( Ar! , 3 ) = 0
                           END IF
                       NEXT Ar!
                       GOTO L_1800_
         L_5110_:      print ARs$ ; "Starbase destroyed"
                       B3r! = 0
                       B9r! = B9r! - 1
                       S_r! ( S3r! , S4r! ) = 0
                       GOTO L_5180_
         L_5160_:      print ARs$ ; "You can't destroy a star"
                       GOTO L_1800_
         L_5180_:      G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 10
                       GOTO L_1800_
         L_5200_:  NEXT W1r!
                   GOTO L_1800_
         L_5220_:  FOR W1r! = 0 TO 8
                       S3r! = int ( S1r! - W1r! * sin ( C1r! * CXr! ) )
                       S4r! = int ( S2r! + W1r! * cos ( C1r! * CXr! ) )
                   NEXT W1r! REM this next was missed (here ???) in the original source
                   IF ( S3r! > 8 ) OR ( S4r! > 8 ) OR ( S3r! < 1 ) OR ( S4r! < 1 ) THEN
                       GOTO L_1800_
                   END IF
                   GOTO L_4890_
         L_5300_:  print
         L_5310_:  print "Energy available=" ; Er! + Sr! ; ": Number of units to Shields" ;
                   INPUT Xr!
                   IF Xr! < 0 THEN
                       GOTO L_1800_
                   END IF
                   IF Er! + Sr! - Xr! < 0 THEN
                       GOTO L_5310_
                   END IF
                   Er! = Er! + Sr! - Xr!
                   Sr! = Xr!
                   IF SLr! = 1 THEN
                       GOTO L_1670_
                   END IF
                   GOTO L_1800_
         L_5450_:  print
                   print "DEVICE              STATE OF REPAIR"
                   FOR R1r! = 1 TO 10
                       print D_s$ ( R1r! ) ; tab ( 21 ) ; D_r! ( R1r! )
                   NEXT R1r!
                   IF DTr! = 1 THEN
                       GOTO L_6440_
                   ELSE
                       GOTO L_1800_
                   END IF
         L_5550_:  print "Short Range Sensors report no Klingons in this quadrant"
                   IF DTr! = 1 THEN
                       GOTO L_6440_
                   ELSE
                       GOTO L_1800_
                   END IF

       SUB_5610_:  IF ( BT_Cs$ = "D" ) AND ( K3r! <> 0 ) THEN
                       print "Starbase protects Enterprise"
                   ELSE
                       GOTO L_5670_
                   END IF
                   GOTO L_1800_
         L_5670_:  print
                   FOR Ir! = 1 TO 3
                       IF K_r! ( Ir! , 3 ) <= 0 THEN
                           GOTO L_5920_
                       END IF
                       Hr! = K_r! ( Ir! , 3 ) / Fktd ( 0 ) + sgn ( rnd ( 1 ) - .5 ) * rnd ( 1 ) * 7
                       Sr! = Sr! - Hr!
                       print Hr! ; " Unit hit from (" ; K_r! ( Ir! , 1 ) ; "," ;
                       print K_r! ( Ir! , 2 ) ; "), leaving " ; Sr!
                       IF Sr! < 0 THEN
                           GOTO L_6140_
                       END IF
                       GOSUB SUB_2690_
                       IF rnd ( 1 ) > R9r! / 10 THEN
                           GOTO L_5920_
                       END IF
         L_5830_:      R1r! = int ( 8 * rnd ( 1 ) + 1 )
                       R2r! = int ( 8 * rnd ( 1 ) + 1 )
                       IF NOT ( S_r! ( R1r! , R2r! ) = 0 ) THEN
                           GOTO L_5830_
                       END IF
                       S_r! ( R1r! , R2r! ) = 3
                       S_r! ( K_r! ( Ir! , 1 ) , K_r! ( Ir! , 2 ) ) = 0
                       K_r! ( Ir! , 1 ) = R1r!
                       K_r! ( Ir! , 2 ) = R2r!
         L_5920_:  NEXT Ir!
                   RETURN


         L_5940_:  print ARs$ ; " Enterprise dead in space"
                   print
                   CYr! = 1
                   print
                   GOTO L_6250_
         L_5990_:  IF K3r! <= 0 THEN
                       GOTO L_6250_
                   END IF
                   GOSUB SUB_5610_
                   GOTO L_5990_
                   print
         L_6050_:  print
                   print
                   print
                   print
                   print
                   print ARs$ ;
                   print "It is stardate" ; Tr!
                   print
                   GOTO L_6250_
         L_6140_:  print
                   print
                   print
                   print
                   print
                   print
                   print ARs$ ;
                   print "Enterprise disabled !!"
                   print
                   print
                   CYr! = 0
         L_6250_:  print "There are " ; K9r! ; " Klingons remaining."
                   IF CYr! <> 0 THEN
                       GOTO L_8330_
                   END IF
                   print "You have failed !!"
                   print
         L_6310_:  Lr! = int ( rnd ( 1 ) * 5 )
                   ON Lr! + 1 GOTO L_8090_ , L_8160_ , L_8180_ , L_8200_ , L_8270_
         L_6330_:  print
                   INPUT "Do you want to try again" , Xs$
                   IF left$ ( Xs$ , 1 ) = "Y" THEN
                       GOTO L_180_
                   ELSE
                       GOTO L_11860_
                   END IF
         L_6400_:  print "The Federation is saved !!"
                   print "You are hereby promoted to Admiral!!!!"
                   print
                   GOTO L_6330_
         L_6440_:  DTr! = 1
         L_6450_:  INPUT "Computer on--COMMAND" , Ar!
                   IF Ar! = 0 THEN
                       GOTO L_6540_
                   END IF
                   IF ( Ar! < 0 ) OR ( Ar! >= 10 ) THEN
                       print ARs$ ; " NO SUCH COMMAND !!"
                       GOTO L_6450_
                   END IF
                   ON Ar! GOTO L_6820_ , L_7010_ , L_7070_ , L_6680_ , L_1520_ , L_8010_ , L_8070_ , L_11150_ , L_1800_
         L_6540_:  print "FUNCTIONS AVAILABLE FROM COMPUTER"
                   print "   1 = Galactic Memory Map"
                   print "   2 = General Status Report"
                   print "   3 = Photon Trajectory"
                   print "   4 = New Mission"
                   print "   5 = Present Position"
                   print "   6 = Self-Destruct"
                   print "   7 = Warp-Compass"
                   print "   8 = Mission Progress Report"
                   print "   9 = Exit Computer"
                   GOTO L_6440_
         L_6650_:  print
                   print "--TEMPORARY MALFUNCTION--"
                   GOTO L_1800_
         L_6680_:  IF XMr! < 0 THEN
                       GOTO L_6790_
                   END IF
                   print ARs$ ; "Safety check -- Do you wish to abort mission"
                   INPUT ANs$
                   IF left$ ( ANs$ , 1 ) <> "Y" THEN
                       GOTO L_6810_
                   ELSE
                       GOTO L_180_
                   END IF
                   print
         L_6790_:  print "You have not been authorized for new mission !!"
                   print
         L_6810_:  GOTO L_6440_
         L_6820_:  print "QUADRANT CODE MEMORY MAP"
                   FOR Ar! = 1 TO 8
                       FOR Br! = 1 TO 8
                           IF G_r! ( Ar! , Br! ) = int ( G_r! ( Ar! , Br! ) ) THEN
                               print " ???" ;
                               GOTO L_6970_
                           END IF
                           BT_Gs$ = str$ ( G_r! ( Ar! , Br! ) )
                           IF G_r! ( Ar! , Br! ) < 100 THEN
                               BT_Gs$ = "0" + BT_Gs$
                           END IF
                           IF G_r! ( Ar! , Br! ) < 10 THEN
                               BT_Gs$ = "0" + BT_Gs$
                           END IF
                           print " " ; left$ ( BT_Gs$ , 3 ) ;
         L_6970_:      NEXT Br!
                       print " "
                   NEXT Ar!
                   GOTO L_6440_
         L_7010_:  print "   STATUS REPORT"
                   print "Number of Klingons left =" ; K9r!
                   print "Number of stardates left =" ; T9r! - Tr!
                   print "Number of Starbases left =" ; B9r!
                   Ar! = 7
                   GOTO L_1920_
         L_7070_:  IF K3r! = 0 THEN
                       GOTO L_5550_
                   END IF
                   IF D_r! ( 2 ) < 0 THEN
                       Ar! = 2
                       GOTO L_1890_
                   END IF
                   print "COORD" , "LOWDIR" , "HIGHDIR" , "DIST"
                   FOR Ar! = 1 TO 47
                       print "-" ;
                   NEXT Ar!
                   print
                   FOR Ir! = 0 TO 3
                       IF NOT ( K_r! ( Ir! , 3 ) > 0 ) THEN
                           GOTO L_7420_
                       END IF
                       W1r! = sqr ( ( S1r! - K_r! ( Ir! , 1 ) ) ^ 2 + ( S2r! - K_r! ( Ir! , 2 ) ) ^ 2 )
                       IF W1r! = 0 THEN
                           print "--->MALFUNCTION !"
                           GOTO L_1800_
                       END IF
                       ON error GOTO L_6650_
                       C1r! = 1.5708 - atn ( ( K_r! ( Ir! , 2 ) - S2r! ) / W1r! / sqr ( 1 - ( ( K_r! ( Ir! , 2 ) - S2r! ) / W1r! ) ^ 2 ) )
                       ON error GOTO L_6650_
                       C1r! = C1r! * sgn ( S1r! - K_r! ( Ir! , 1 ) ) / CXr!
                       C2_r! ( Ir! ) = C1r! - ( 10 * rnd ( 1 ) )
                       C3_r! ( Ir! ) = C1r! + ( 10 * rnd ( 1 ) )
                       IF C3_r! ( Ir! ) < 0 THEN
                           C3_r! ( Ir! ) = C3_r! ( Ir! ) + 360
                       END IF
                       IF C2_r! ( Ir! ) < 0 THEN
                           C2_r! ( Ir! ) = C2_r! ( Ir! ) + 360
                       END IF
                       print "(" ; K_r! ( Ir! , 1 ) ; "," ; K_r! ( Ir! , 2 ) ;
                       print ")" , C2_r! ( Ir! ) , C3_r! ( Ir! ) , W1r!
         L_7420_:  NEXT Ir!
                   IF DTr! = 1 THEN
                       GOTO L_6440_
                   ELSE
                       GOTO L_1800_
                   END IF
                   RETURN



       SUB_7490_:  MRr! = ( T9r! - Tr! ) / K9r!
                   DTr! = 0
                   XMr! = ( ( MRr! - PRr! ) / PRr! ) * 100
                   IF KAr! = 1 THEN
                       print TKr! - Tr! ; " stardates left to save Starbase."
                       GOTO L_7780_
                   END IF
                   IF ( rnd ( 1 ) > .01 * R9r! ) OR ( B9r! = 0 ) THEN
                       RETURN
                   END IF
                   KAr! = 1
                   FOR Ar! = 1 TO 8
                       FOR Br! = 1 TO 8
                           IF G_r! ( Ar! , Br! ) - 100 * int ( G_r! ( Ar! , Br! ) / 100 ) > 9 THEN
                               K1r! = Ar!
                               K2r! = Br!
                               IF rnd ( 1 ) > .5 THEN
                                   Ar! = 8
                                   Br! = 8
                               END IF
                           END IF
                       NEXT Br!
                   NEXT Ar!
                   TKr! = Tr! + .09 * sqr ( ( Q1r! - K1r! ) ^ 2 + ( Q2r! - K2r! ) ^ 2 ) * ( 10 - R9r! )
                   TKr! = TKr! + 1
                   print ARs$ ; "!!! Starbase in quadrant (" ; K1r! ; "," ;
                   print K2r! ; ") is under attack!!"
                   print "You have " ; TKr! - Tr! ; " stardates to save it!" ;
                   RETURN


         L_7780_:  IF Tr! < TKr! THEN
                       GOTO L_7960_
                   END IF
                   print "Too late!"
                   KAr! = 0
                   G_r! ( K1r! , K2r! ) = G_r! ( K1r! , K2r! ) - 10
                   B9r! = B9r! - 1
                   IF NOT ( ( Q1r! = K1r! ) AND ( Q2r! = K2r! ) ) THEN
                       RETURN
                   END IF
                   FOR Ar! = 1 TO 8
                       FOR Br! = 1 TO 8
                           IF S_r! ( Ar! , Br! ) = 4 THEN
                               S_r! ( Ar! , Br! ) = 0
                           END IF
                       NEXT Br!
                   NEXT Ar!
                   RETURN


         L_7960_:  IF ( Q1r! = K1r! ) AND ( Q2r! = K2r! ) THEN
                       print "You arrived in time! Starbase saved!"
                   END IF
                   KAr! = 0
                   GOTO L_1800_
         L_8010_:  IF SDr! <> 1 THEN
                       GOTO L_9340_
                   ELSE
                       GOTO L_11590_
                   END IF
                   GOTO L_1800_
         L_8070_:  GOSUB SUB_8510_
                   GOTO L_6440_
         L_8090_:  print "You have screwed up once too often !"
                   print "Off to the Vulcan torture camps !!"
                   IF Tr! <= 0 THEN
                       GOTO L_6330_
                   ELSE
                       GOTO L_8330_
                   END IF
         L_8160_:  print "You will be executed at sunrise"
                   GOTO L_8330_
         L_8180_:  print "You will be put to death for your incompetence"
                   GOTO L_8330_
         L_8200_:  print "You will be confined to your quarters until"
                   print "Vulcan's moons become tourist traps !!"
                   IF Tr! <= 0 THEN
                       GOTO L_6330_
                   ELSE
                       GOTO L_8330_
                   END IF
         L_8270_:  print "Imbecile !! We hope you consider suicide!"
                   IF Tr! <= 0 THEN
                       GOTO L_6330_
                   ELSE
                       GOTO L_8330_
                   END IF
         L_8330_:  Lr! = ( Ur! - K9r! ) * 10 + ( ( Ur! - K9r! ) * 500 / Tr! ) - 100 * ( Yr! - B9r! )
                   IF ( Er! <= 0 ) OR ( Sr! < 0 ) THEN
                       Lr! = Lr! - 200
                   END IF
                   IF K9r! = 0 THEN
                       Lr! = Lr! + ( R9r! * 100 )
                   END IF
                   print
                   print
                   print "Your mission rating is: " ; Lr!
         L_8430_:  print
                   print
                   print
                   print
                   print
                   GOSUB SUB_11910_
                   GOTO L_11950_
                   GOTO L_6330_

       SUB_8510_:  print
                   print "             O9O"
                   print "  135         .        O45"
                   print "       .      .      ."
                   print "          .   .   ."
                   print "18O .  .  .   E   .  .  .OOO       WARP-COMPASS"
                   print "          .   .   ."
                   print "       .      .      ."
                   print "  225         .        315"
                   print "             27O"
                   print
                   RETURN



       SUB_8630_:  XXr! = int ( rnd ( 2 ) * 10 ) + 1
                   RETURN


         L_8650_:  print
                   IF X4r! > 12 THEN
                       GOTO L_8820_
                   END IF
                   print "Command Central advises that your ranking-" ; X4r! ; "-is in the expert"
                   print "category. Be advised that if you are not properly qualified"
                   print "your chances of avoiding failure are nil."
         L_8720_:  print
                   print "Do you wish reassignment to a less hazardous mission (Y or N)"
                   INPUT ANs$
                   IF left$ ( ANs$ , 1 ) = "Y" THEN
                       GOTO L_180_
                   END IF
                   IF left$ ( ANs$ , 1 ) = "y" THEN
                       GOTO L_180_
                   END IF
                   GOTO L_370_
         L_8820_:  print "You have requested a suicide mission"
                   GOTO L_8720_
         L_8840_:  print "--COMMUNICATIONS ACTIVE--"
                   print
                   GOSUB SUB_8630_
                   PDr! = XXr!
                   GOSUB SUB_8630_
                   PEr! = XXr!
                   GOSUB SUB_8630_
                   PFr! = XXr!
                   GOSUB SUB_8630_
                   PGr! = XXr!
                   PHr! = PDr! * 10 + PEr!
                   PJr! = PFr! * 10 + PGr!
                   IF PHr! = PJr! THEN
                       GOTO L_6650_
                   END IF
                   KPr! = 1
                   IF ( PDr! = PEr! ) OR ( PFr! = PGr! ) THEN
                       GOTO L_9050_
                   ELSE
                       GOTO L_9100_
                   END IF
         L_9050_:  print "Sunspots block transmission at : "
                   GOTO L_1530_
         L_9070_:  print "Move elsewhere and try again"
                   print
                   GOTO L_2090_
         L_9100_:  print "Authorized frequencies"
                   print
                   print "Federation Command Base = " ; PHr!
                   print "Klingon Command Central = " ; PJr!
                   print
                   INPUT "Communication on channel" , XFr!
                   IF XFr! = PHr! THEN
                       GOTO L_9500_
                   END IF
                   IF XFr! = PJr! THEN
                       GOTO L_10040_
                   END IF
                   print
                   print ARs$ ; "ALERT !!"
                   print "Attempted communication on unauthorized frequency"
                   print
                   print "While security check is conducted on enterprise"
                   GOSUB SUB_8630_
                   Ar! = XXr!
                   GOSUB SUB_8630_
                   Ir! = ( XXr! / 2 ) + ( X4r! / 7 )
                   print "Your " ; D_s$ ( Ar! ) ; " will be inoperative for " ; Ir! ; " units of startime"
                   D_r! ( Ar! ) = D_r! ( Ar! ) - Ir!
                   GOTO L_1800_
         L_9340_:  print
                   print "Security Control advises that no authorization has been"
                   print "given to activate Self- Destruct system."
                   print "Proceed with assigned mission"
                   print
                   GOTO L_6450_

       SUB_9400_:  print
                   print "Be advised, your mission progress factor is " ; PRr!
                   GOSUB SUB_8630_
                   TFr! = ( XXr! * X4r! ) / 1.6
                   IF TFr! < 10 THEN
                       TFr! = TFr! + 10
                   END IF

       SUB_9470_:  print " The tolerance factor for this mission is [+/-] " ; TFr! ; " percent"
                   print
                   RETURN


         L_9500_:  ON sgn ( XMr! ) + 2 GOTO L_9510_ , L_9600_ , L_9630_
         L_9510_:  IF abs ( XMr! ) > ( TFr! * 1.5 ) THEN
                       GOTO L_9780_
                   END IF
                   IF abs ( XMr! ) > TFr! THEN
                       GOTO L_9720_
                   END IF
                   print
                   print "Captain, you are behind schedule - Let's go !!"
                   GOTO L_1800_
         L_9600_:  print
                   print "You are exactly on computed schedule; Proceed with mission"
                   GOTO L_1800_
         L_9630_:  IF XMr! > TFr! THEN
                       GOTO L_9900_
                       IF XMr! > ( TFr! * 1.5 ) THEN
                           GOTO L_9960_
                       END IF
                   END IF
                   print
                   print "You are ahead of computed schedule, keep up the good work !!"
                   GOTO L_1800_
         L_9720_:  print
                   print "You are behind schedule and out of tolerance factor !!"
                   print "Command Control projects failure...you may surrender to enemy"
                   EQr! = 1
                   SDr! = 1
                   GOTO L_8840_
         L_9780_:  YYr! = ACr! ^ X4r!
                   print ARs$ ; "---------COMPUTER PROJECTION----------"
                   print
                   print "Projected likelihood of success for your mission =" ; YYr! ; "percent"
                   print "We have auto activated Self-Destruct system on your vessel"
                   print "Goodbye, Captain............."
                   print
                   print "End of message from Federation Command"
                   print
                   print
                   GOSUB SUB_11910_
                   GOTO L_11590_
         L_9900_:  print
                   print "You are ahead of schedule and beyond tolerance factor"
                   print "Call Klingon leaders and request their surrender"
                   KQr! = 1
                   print
                   GOTO L_8840_
         L_9960_:  print ARs$ ; "Message from Command base"
                   print
                   print "Enemy has surrendered to Federation Command !!"
                   print
                   print
                   print
                   print
                   GOTO L_6400_
        L_10040_:  IF KQr! = 1 THEN
                       GOTO L_10550_
                       IF EQr! = 1 THEN
                           GOTO L_10140_
                       END IF
                   END IF
                   ON sgn ( XMr! ) + 2 GOTO L_10110_ , L_10230_ , L_10340_
        L_10110_:  IF abs ( XMr! ) <= TFr! THEN
                       GOTO L_10230_
                   END IF
        L_10140_:  print
                   print "Klingon command on frequency"
                   print "Naturally, we are pleased that you are conceding, Captain"
                   print "We are presently boarding your craft"
                   print
                   print "Here is a message from your leaders-"
                   print
                   GOSUB SUB_11910_
                   GOTO L_6310_
        L_10230_:  GOSUB SUB_8630_
                   IF XXr! <= 5 THEN
                       GOTO L_10310_
                   END IF
        L_10270_:  print
                   print "Message from Klingon Command...."
                   print "Eat Phaser Death, Federation dogs!!"
                   GOTO L_10470_
        L_10310_:  print
                   print "We'll talk with our weapons, Earth-swine !!"
                   GOTO L_10470_
        L_10340_:  GOSUB SUB_8630_
                   AQr! = int ( ( XXr! + 1 ) / 2 )
                   ON AQr! GOTO L_10270_ , L_10310_ , L_10370_ , L_10370_ , L_10340_
        L_10370_:  GFr! = TFr! * 1.5
                   IF XMr! > GFr! THEN
                       GOTO L_10550_
                   END IF
                   IF XMr! > TFr! THEN
                       GOTO L_10490_
                   END IF
                   print
                   print "Captain, despite your slight advantage, you are no match for"
                   print "the glorious Klingon Fleet"
        L_10470_:  print tab ( 25 ) ; "End of message from Klingon Command"
                   GOTO L_1800_
        L_10490_:  GOSUB SUB_8630_
                   IF XXr! <= 5 THEN
                       print " Klingon command to Enterprise.."
                       GOTO L_10310_
                   END IF
                   GOTO L_10560_
        L_10550_:  REM PRINT CHR$(26)
        L_10560_:  print
                   print "Message from Klingon leaders..."
                   print
                   print "We concede the war, Sir, congratulations !!"
                   GOTO L_8430_
        L_10610_:  AVr! = int ( X4r! / 2 ) + 1
                   DRr! = - 1
                   IF TECr! < AVr! THEN
                       GOTO L_10710_
                   END IF
                   IF BT_Cs$ <> "D" THEN
                       GOTO L_10820_
                   ELSE
                       GOTO L_10860_
                   END IF
        L_10710_:  AUr! = AVr! - TECr!
                   IF AUr! = 1 THEN
                       KFs$ = ""
                   ELSE
                       KFs$ = "s"
                   END IF
                   print
                   print "Damage Repair inactive !!"
                   print "Requires " ; AUr! ; " more recharge unit " ; KFs$
                   print
                   GOTO L_1800_
        L_10820_:  print
                   print ARs$ ; "You must be docked at Starbase for Damage Repair !!"
                   print
                   GOTO L_1800_
        L_10860_:  print
                   print
                   FOR Ar! = 1 TO 10
                       IF D_r! ( Ar! ) < 0 THEN
                           print tab ( 10 ) ; Ar! ; tab ( 20 ) ; D_s$ ( Ar! ) ; tab ( 40 ) ; "damaged"
                       END IF
                   NEXT Ar!
                   print
                   print "If no damage indicated above, answer with 0 (ZERO)"
        L_10950_:  INPUT "Which one to repair" , Ar!
                   IF ( Ar! < 1 ) OR ( Ar! > 10 ) THEN
                       print ARs$ ;
                       GOTO L_1800_
                   END IF
                   IF D_r! ( Ar! ) < 0 THEN
                       GOTO L_11060_
                   END IF
                   print
                   print D_s$ ( Ar! ) ; "        not damaged !!"
                   GOTO L_10950_
        L_11060_:  print
                   print tab ( 20 ) ; D_s$ ( Ar! ) ; "-- repaired"
                   print
                   D_r! ( Ar! ) = 0
                   TECr! = 0
                   GOTO L_1800_
                   print
                   print ARs$ ; "Nothing damaged at present"
                   GOTO L_1800_
        L_11150_:  print
                   GOSUB SUB_9470_
                   print "Initial mission progress factor was " ; PRr!
                   print "Current mission progress factor is  " ; MRr!
                   IF XMr! < 0 THEN
                       PWs$ = " worsened "
                   ELSE
                       PWs$ = " improved "
                   END IF
                   print
                   print "Your combat situation has " ; PWs$ ; " by a factor of " ; XMr! ; " percent"
                   IF abs ( XMr! ) >= TFr! THEN
                       EGs$ = " not "
                   ELSE
                       EGs$ = " "
                   END IF
                   IF EGs$ = " " THEN
                       EHs$ = ""
                   ELSE
                       EHs$ = ARs$
                   END IF
                   print EHs$ ; "Your progress is " ; EGs$ ; " within tolerance for this mission"
                   print
                   IF EGs$ = " not " THEN
                       GOTO L_11430_
                   ELSE
                       GOTO L_6440_
                   END IF
        L_11430_:  IF XMr! < 0 THEN
                       GOTO L_11480_
                   ELSE
                       GOTO L_11540_
                   END IF
        L_11480_:  print
                   SDr! = 1
                   KDr! = 0
                   print "Captain, Command Central projects defeat by enemy. You are now"
                   print "authorized to surrender or to activate Self-Destruct system"
                   GOTO L_6440_
        L_11540_:  print
                   SDr! = 0
                   KDr! = 1
                   print "Captain, Federation Command projects success for your mission."
                   GOTO L_9900_
        L_11590_:  REM PRINT CHR$(26)
                   GOSUB SUB_11870_
                   print "Self Destruct System activated"
                   print
                   print
                   print
                   GOSUB SUB_11870_
                   print "COUNTDOWN BEGUN !"
                   print
                   print
                   print tab ( 25 ) ; "FIVE"
                   print
                   GOSUB SUB_11870_
                   print tab ( 20 ) ; "FOUR"
                   print
                   GOSUB SUB_11870_
                   print tab ( 15 ) ; "THREE"
                   print
                   GOSUB SUB_11870_
                   print tab ( 10 ) ; "TWO"
                   print
                   GOSUB SUB_11870_
                   print tab ( 5 ) ; "ONE"
                   print
                   GOSUB SUB_11870_
                   print "ZERO"
                   GOSUB SUB_11870_
        L_11860_:  GOTO L_11950_

      SUB_11870_:  FOR Ir! = 1 TO 50
                       Ar! = Ar! + 1
                   NEXT Ir!
                   RETURN



      SUB_11910_:  FOR Ir! = 1 TO 1200
                       Ar! = Ar! + 1
                   NEXT Ir!
                   RETURN


        L_11950_:  GOTO L_13920_

      SUB_11960_:  REM INTRODUCTION TO GAME. R.SCHRADER, 1/12/83
                   REM WITH ADDITIONS AND CORRECTIONS BY V. STAPEL
                   print
                   print
                   print
                   print
                   print "                    SPACE - THE FINAL FRONTIER!"
                   print
                   print "    THESE ARE THE VOYAGES OF THE STARSHIP ENTERPISE.  THE MISSION: "
                   print "    TO SEEK NEW LIFE AND NEW CIVILIZATIONS; TO BOLDLY GO WHERE NO"
                   print "                      MAN HAS GONE BEFORE."
                   print
                   print
                   print
                   print
                   print
                   print
                   print
                   print
                   print
                   print
                   INPUT "Do you need instructions" , Q9s$
                   IF left$ ( Q9s$ , 1 ) = "N" THEN
                       RETURN
                   END IF
                   IF left$ ( Q9s$ , 1 ) = "n" THEN
                       RETURN
                   END IF
                   print "        **********    WELCOME TO STARTREK    **********"
                   print
                   print "    You are in control of the Starship Entrprise. Your mission"
                   print "will be to rid the galaxy of Klingons."
                   print "    The known galaxy is mapped into 64 quadrants (8 X 8). Each"
                   print "quadrant is composed of 64 sectors (also 8 X 8)."
                   print "    A map of the galaxy, as represented by your on-board Com-"
                   print "puter, looks like this:"
                   print
                   FOR Q8r! = 1 TO 3
                       print "      ??? ??? ??? ??? ??? ??? ??? ???"
                   NEXT Q8r!
                   print "      ??? ??? ??? ??? 316 ??? ??? ???"
                   FOR Q8r! = 1 TO 4
                       print "      ??? ??? ??? ??? ??? ??? ??? ???"
                   NEXT Q8r!
                   print
                   print "The question marks represent unexplored quadrants. The 3-digit"
                   print "numbers encode information about quadrants. The first digit"
                   print "tells how many Klingons are in the quadrant; the second, how"
                   print "many friendly bases; the third, how many stars."
                   print
                   INPUT "HIT RETURN TO CONTINUE" ; Q8s$
                   print
                   print "    When you are in a quadrant, it will be displayed as:"
                   print
                   print
                   print "     . . . . . . . ."
                   print "     . K . . . . * ."
                   print "     . . . . . . . ."
                   print "     * . . * . . . ."
                   print "     . . . . . E . ."
                   print "     . . . K . . . B"
                   print "     . * K . . . . ."
                   print "     . . . * . . . *"
                   print
                   print
                   print "The Klingons are represented by 'K', stars by '*', Your ship by"
                   print "an 'E', bases by 'B', and empty sectors by '.'"
                   print
                   INPUT "HIT RETURN TO CONTINUE" ; Q8s$
                   print
                   print "    In your pursuit of Klingons, you will have a large number of"
                   print "units of energy. These can by used to move the ship, to defend"
                   print "the ship, or to fire at Klingons. In executing any of the afore-"
                   print "mentioned functions, energy is expended. If you ever run out of"
                   print "energy, you will be immobile and defenseless."
                   print
                   print
                   print "    A SUMMARY OF TOP LEVEL COMMANDS FOLLOWS:"
                   print
                   print "---> LIST TOP LEVEL COMMANDS  (Activated by a '0')"
                   print "     This will list the commands you have available to you in"
                   print "     response to `COMMAND?'."
                   print
                   print "---> WARP  (Activated by entering a '1')"
                   print "     WARP moves the starship. Upon entering the command, you"
                   print "     will be asked for a direction of travel ( 0 to 360 degrees,"
                   print "     0 is right, 90 is up, etc), and the warp speed."
                   print
                   print "---> SHORT-RANGE SCAN  (Activated by a '2')"
                   print "     Displays the local quadrant."
                   print
                   INPUT "HIT RETURN TO CONTINUE" ; Q8s$
                   print "---> LONG-RANGE SCAN  ('3')"
                   print "     Displays information about your quadrant and it's eight"
                   print "     immediate neighbors:"
                   print
                   print "          103 008 104           (Numbers are interprteted"
                   print "          203 316 004            like on a galactic map)"
                   print "          106 505 207"
                   print
                   print "     The computer updates your galactic map after every "
                   print "     Long-Range scan."
                   print
                   print "---> PHASERS  ('4')"
                   print "     Computer-controlled high energy beams are fired at all"
                   print "     Klingons in the quadrant."
                   print
                   print "---> PHOTON TORPEDOES  ('5')"
                   print "     One of ten Torpedoes can be fired at a Klingon. They must"
                   print "     be manually aimed."
                   print
                   INPUT "HIT RETURN TO CONTINUE" ; Q8s$
                   print
                   print "---> SHIELDS  ('6')"
                   print "     As the Klingons have weapons like yours, your ship has"
                   print "     shields to protect it. This command controls the energy"
                   print "     in the shields."
                   print
                   print "---> DAMAGE CONTROL  ('7')"
                   print "     Enables you to check the operational status of any of the"
                   print "     ship's functions. "
                   print
                   print "---> COMPUTER  ('8')"
                   print "     Accesses the on-board Computer. (See the list of computer"
                   print "     commands at the end of this list.)"
                   print
                   print "---> DAMAGE REPAIR  ('9')"
                   print "     This will allow you to repair damage to the Enterprise"
                   print "     if you are docked at a Starbase."
                   print
                   INPUT "HIT RETURN TO CONTINUE" ; Q8s$
                   print
                   print "LIST OF COMPUTER COMMANDS"
                   print "   These are the options available to you in response"
                   print "to `Computer on---COMMAND?'"
                   print
                   print
                   print "---> `0' Lists available commands from the Computer."
                   print
                   print "---> GALACTIC MEMORY MAP   (`1')"
                   print "     This option lists all quadrants that the Enterprise has"
                   print "     been to or has seen through a Long-Range Scan."
                   print
                   print "---> GENERAL STATUS REPORT   (`2')"
                   print "     This will list the number of Klingons, Stardates and"
                   print "     Starbases left, as well as the state of repair of all"
                   print "     devices on the ship."
                   print
                   print "---> PHOTON TRAJECTORY   (`3')"
                   print "     This will assist in telling the Captain what direction"
                   print "     to aim the Photon Torpedoes."
                   print
                   INPUT "HIT RETURN TO CONTINUE" ; Q8s$
                   print "---> NEW MISSION   (`4')"
                   print "     This is to be used on the first couple of turns to abort"
                   print "     a mission that is too much (or too little) for the"
                   print "     player's experience or skill."
                   print
                   print "---> PRESENT POSITION   (`5')"
                   print "     If your Short-Range Scanners are out, this will give your"
                   print "     present position, but NOT what is in the quadrant."
                   print
                   print "---> SELF-DESTRUCT   (`6')"
                   print "     If Security Control authorizes it, you may destroy the"
                   print "     Enterprise to avoid take-over by the Klingons."
                   print
                   print "---> WARP-COMPASS   (`7')"
                   print "     With the Enterprise in the middle, this will help deter-"
                   print "     mine direction for movement and Photon Trajectory."
                   print
                   print "---> MISSION PROGRESS REPORT   (`8')"
                   print "     This gives the Initial and Current Progress Factors as "
                   print "     well as the tolerance factor for this mission."
                   print
                   INPUT "HIT RETURN TO CONTINUE" ; Q8s$
                   print "---> EXIT COMPUTER   (`9')"
                   print "     This returns you to the top level of commands."
                   print
                   print
                   print "   Some free advice for beginners:"
                   print "      1) Put enery in the shields before warping."
                   print "      2) When in doubt, consult the Computer (COMMAND 8)"
                   print "      3) Choose a low Security Clearance and a low Rank."
                   print
                   INPUT "HIT RETURN TO START" ; Q8s$
                   RETURN



      SUB_13820_:  print "  Amount to transfer from Shields" ;
                   INPUT Q8r!
                   IF ( Q8r! < 0 ) OR ( Q8r! > Sr! ) THEN
                       GOTO SUB_13820_
                   END IF
                   Sr! = Sr! - Q8r!
                   Er! = Er! + Q8r!
                   print
                   print Er! ; " units of energy now - Try again."
                   RETURN


        L_13920_:  reset
'1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 
