' BASTOOL .01 (c) Dipl.-Ing. Thomas Ludewig 2007
' using at your own risk- no warrenty
' CURRENT DIR:/root/Desktop/FREEBASIC_TOOLS
' PROCESS    :/root/Desktop/FREEBASIC_TOOLS/startrek/st_fixed.bas
CLS
COLOR 10 'an old Program should live on a green monochrome screen ;)
'DYNAMIC
'Lines read: 1614
'VARS FOUND:
                                 '        A1r!           REM SINGLE :REM A1
                                 '        A2r!           REM SINGLE :REM A2
                                 '        A3r!           REM SINGLE :REM A3
                                 '        A4r!           REM SINGLE :REM A4
                                 '        A5r!           REM SINGLE :REM A5
                                 '        A6r!           REM SINGLE :REM A6
                                 '        A7r!           REM SINGLE :REM A7
                                 '        A8r!           REM SINGLE :REM A8
                                 '        Ar!            REM SINGLE :REM A
                                 '        B1r!           REM SINGLE :REM B1
                   REDIM  SHARED          B2_r!(10)     'AS  SINGLE :REM B2(
                   REDIM  SHARED          B3_r!(10)     'AS  SINGLE :REM B3(
                                 '        B4r!           REM SINGLE :REM B4
                                 '        B5r!           REM SINGLE :REM B5
                                 '        B6r!           REM SINGLE :REM B6
                                 '        B7r!           REM SINGLE :REM B7
                                 '        B8r!           REM SINGLE :REM B8
                                 '        B9r!           REM SINGLE :REM B9
                                 '        BT_As$         REM STRING :REM A$
                                 '        BT_Or!         REM SINGLE :REM O
                                 '        Br!            REM SINGLE :REM B
                                 '        Bs$            REM STRING :REM B$
                   REDIM  SHARED          C1_r!(10)     'AS  SINGLE :REM C1(
                   REDIM  SHARED          C2_r!(10)     'AS  SINGLE :REM C2(
                   REDIM  SHARED          C2_s$(10)     'AS  STRING :REM C2$(
                                 '        C3r!           REM SINGLE :REM C3
                                 '        C4r!           REM SINGLE :REM C4
                   REDIM  SHARED          C5_r!(10)     'AS  SINGLE :REM C5(
                                 '        C5s$           REM STRING :REM C5$
                   REDIM  SHARED          C6_r!(10)     'AS  SINGLE :REM C6(
                                 '        C6r!           REM SINGLE :REM C6
                                 '        C7r!           REM SINGLE :REM C7
                   REDIM  SHARED          C_s$(10)      'AS  STRING :REM C$(
                                 '        Cr!            REM SINGLE :REM C
                                 '        D0r!           REM SINGLE :REM D0
                                 '        D1r!           REM SINGLE :REM D1
                                 '        D2r!           REM SINGLE :REM D2
                                 '        D3r!           REM SINGLE :REM D3
                   REDIM  SHARED          D4_r!(10)     'AS  SINGLE :REM D4(
                                 '        D4r!           REM SINGLE :REM D4
                                 '        D5r!           REM SINGLE :REM D5
                                 '        D6r!           REM SINGLE :REM D6
                                 '        D7r!           REM SINGLE :REM D7
                   REDIM  SHARED          D9_r!(10)     'AS  SINGLE :REM D9(
                   REDIM  SHARED          D_s$(10)      'AS  STRING :REM D$(
                                 '        Dr!            REM SINGLE :REM D
                                 '        E1r!           REM SINGLE :REM E1
                                 '        E3r!           REM SINGLE :REM E3
                                 '        Er!            REM SINGLE :REM E
                   REDIM  SHARED          F1_r!(10)     'AS  SINGLE :REM F1(
                                 '        F3r!           REM SINGLE :REM F3
                                 '        F4r!           REM SINGLE :REM F4
                                 '        F5r!           REM SINGLE :REM F5
                                 '        F9r!           REM SINGLE :REM F9
                                 '        Fr!            REM SINGLE :REM F
                   REDIM  SHARED          G1_s$(10)     'AS  STRING :REM G1$(
                                 '        G1r!           REM SINGLE :REM G1
                                 '        G2r!           REM SINGLE :REM G2
                                 '        G2s$           REM STRING :REM G2$
                                 '        G3r!           REM SINGLE :REM G3
                                 '        G3s$           REM STRING :REM G3$
                                 '        G4s$           REM STRING :REM G4$
                   REDIM  SHARED          G_r!(10,10)   'AS  SINGLE :REM G(
                                 '        Gr!            REM SINGLE :REM G
                                 '        H2r!           REM SINGLE :REM H2
                   REDIM  SHARED          H3_r!(10)     'AS  SINGLE :REM H3(
                                 '        H3r!           REM SINGLE :REM H3
                   REDIM  SHARED          H4_r!(10,10)  'AS  SINGLE :REM H4(
                                 '        H4r!           REM SINGLE :REM H4
                   REDIM  SHARED          H5_r!(10)     'AS  SINGLE :REM H5(
                                 '        H5r!           REM SINGLE :REM H5
                                 '        H9r!           REM SINGLE :REM H9
                                 '        I1r!           REM SINGLE :REM I1
                                 '        I2r!           REM SINGLE :REM I2
                                 '        I3r!           REM SINGLE :REM I3
                                 '        I4r!           REM SINGLE :REM I4
                                 '        I5r!           REM SINGLE :REM I5
                                 '        I6r!           REM SINGLE :REM I6
                                 '        I7r!           REM SINGLE :REM I7
                                 '        I8r!           REM SINGLE :REM I8
                                 '        I9r!           REM SINGLE :REM I9
                                 '        Ir!            REM SINGLE :REM I
                                 '        J1r!           REM SINGLE :REM J1
                                 '        J2r!           REM SINGLE :REM J2
                                 '        J3r!           REM SINGLE :REM J3
                                 '        J4r!           REM SINGLE :REM J4
                                 '        J5r!           REM SINGLE :REM J5
                                 '        J6r!           REM SINGLE :REM J6
                                 '        J7r!           REM SINGLE :REM J7
                                 '        J8r!           REM SINGLE :REM J8
                                 '        J9r!           REM SINGLE :REM J9
                                 '        Jr!            REM SINGLE :REM J
                                 '        K1r!           REM SINGLE :REM K1
                                 '        K2r!           REM SINGLE :REM K2
                                 '        K3r!           REM SINGLE :REM K3
                   REDIM  SHARED          K4_r!(10)     'AS  SINGLE :REM K4(
                   REDIM  SHARED          K5_r!(10)     'AS  SINGLE :REM K5(
                   REDIM  SHARED          K6_r!(10)     'AS  SINGLE :REM K6(
                   REDIM  SHARED          K7_r!(10)     'AS  SINGLE :REM K7(
                   REDIM  SHARED          K8_r!(10)     'AS  SINGLE :REM K8(
                                 '        K9r!           REM SINGLE :REM K9
                                 '        Kr!            REM SINGLE :REM K
                                 '        L1r!           REM SINGLE :REM L1
                                 '        L2r!           REM SINGLE :REM L2
                                 '        L3r!           REM SINGLE :REM L3
                                 '        L5r!           REM SINGLE :REM L5
                                 '        L6r!           REM SINGLE :REM L6
                                 '        L9r!           REM SINGLE :REM L9
                                 '        Lr!            REM SINGLE :REM L
                                 '        Mr!            REM SINGLE :REM M
                                 '        Ms$            REM STRING :REM M$
                                 '        N1r!           REM SINGLE :REM N1
                                 '        N2r!           REM SINGLE :REM N2
                                 '        N4r!           REM SINGLE :REM N4
                                 '        N5r!           REM SINGLE :REM N5
                                 '        N6r!           REM SINGLE :REM N6
                                 '        Nr!            REM SINGLE :REM N
                                 '        Ns$            REM STRING :REM N$
                                 '        P1r!           REM SINGLE :REM P1
                                 '        P2r!           REM SINGLE :REM P2
                                 '        P3r!           REM SINGLE :REM P3
                                 '        P4r!           REM SINGLE :REM P4
                                 '        P5r!           REM SINGLE :REM P5
                                 '        Pr!            REM SINGLE :REM P
                                 '        Q1r!           REM SINGLE :REM Q1
                                 '        Q2r!           REM SINGLE :REM Q2
                                 '        Q4r!           REM SINGLE :REM Q4
                   REDIM  SHARED          Q_s$(10,10)   'AS  STRING :REM Q$(
                                 '        Qr!            REM SINGLE :REM Q
                                 '        Qs$            REM STRING :REM Q$
                                 '        R1r!           REM SINGLE :REM R1
                                 '        R2r!           REM SINGLE :REM R2
                                 '        R3r!           REM SINGLE :REM R3
                                 '        R4r!           REM SINGLE :REM R4
                                 '        R5r!           REM SINGLE :REM R5
                                 '        R6r!           REM SINGLE :REM R6
                                 '        R7r!           REM SINGLE :REM R7
                                 '        R8r!           REM SINGLE :REM R8
                                 '        Rr!            REM SINGLE :REM R
                                 '        S0r!           REM SINGLE :REM S0
                                 '        S1r!           REM SINGLE :REM S1
                   REDIM  SHARED          S2_r!(10,10)  'AS  SINGLE :REM S2(
                                 '        S3r!           REM SINGLE :REM S3
                                 '        S4r!           REM SINGLE :REM S4
                                 '        S5s$           REM STRING :REM S5$
                                 '        S6r!           REM SINGLE :REM S6
                   REDIM  SHARED          S7_s$(10)     'AS  STRING :REM S7$(
                                 '        S7r!           REM SINGLE :REM S7
                                 '        S8r!           REM SINGLE :REM S8
                                 '        S9r!           REM SINGLE :REM S9
                   REDIM  SHARED          S_s$(10)      'AS  STRING :REM S$(
                                 '        Sr!            REM SINGLE :REM S
                                 '        T1r!           REM SINGLE :REM T1
                                 '        T2r!           REM SINGLE :REM T2
                                 '        T2s$           REM STRING :REM T2$
                                 '        T3r!           REM SINGLE :REM T3
                                 '        T4r!           REM SINGLE :REM T4
                                 '        T5r!           REM SINGLE :REM T5
                                 '        T6r!           REM SINGLE :REM T6
                                 '        T7r!           REM SINGLE :REM T7
                   REDIM  SHARED          T_s$(10)      'AS  STRING :REM T$(
                                 '        Tr!            REM SINGLE :REM T
                                 '        Ur!            REM SINGLE :REM U
                   REDIM  SHARED          V_s$(10,10)   'AS  STRING :REM V$(
                                 '        Vr!            REM SINGLE :REM V
                                 '        W1r!           REM SINGLE :REM W1
                                 '        W2r!           REM SINGLE :REM W2
                                 '        W3r!           REM SINGLE :REM W3
                                 '        W4r!           REM SINGLE :REM W4
                                 '        W7r!           REM SINGLE :REM W7
                                 '        Wr!            REM SINGLE :REM W
                                 '        X1r!           REM SINGLE :REM X1
                                 '        X2r!           REM SINGLE :REM X2
                                 '        X3r!           REM SINGLE :REM X3
                                 '        X4r!           REM SINGLE :REM X4
                                 '        X5r!           REM SINGLE :REM X5
                                 '        X6r!           REM SINGLE :REM X6
                                 '        X7r!           REM SINGLE :REM X7
                                 '        X8r!           REM SINGLE :REM X8
                                 '        Xr!            REM SINGLE :REM X
                                 '        Xs$            REM STRING :REM X$
                                 '        Y1r!           REM SINGLE :REM Y1
                                 '        Y2r!           REM SINGLE :REM Y2
                                 '        Y3r!           REM SINGLE :REM Y3
                                 '        Y4r!           REM SINGLE :REM Y4
                                 '        Y5r!           REM SINGLE :REM Y5
                                 '        Y6r!           REM SINGLE :REM Y6
                                 '        Y7r!           REM SINGLE :REM Y7
                                 '        Y8r!           REM SINGLE :REM Y8
                                 '        Yr!            REM SINGLE :REM Y
                                 '        Z1r!           REM SINGLE :REM Z1
                                 '        Z2r!           REM SINGLE :REM Z2
                                 '        Z3r!           REM SINGLE :REM Z3
                                 '        Z4r!           REM SINGLE :REM Z4
                                 '        Z5r!           REM SINGLE :REM Z5
                                 '        Z6r!           REM SINGLE :REM Z6
                                 '        Z7r!           REM SINGLE :REM Z7
                                 '        Zr!            REM SINGLE :REM Z
                   REM   *** SUPER STAR TREK ***
                   REM     INTELLEC MDS VERSION
                   REM WRITTEN IN BASIC BY RON WILLIAMS
                   REM      INTEL CORP. - 5/15/76
                   REM ADAPTED FROM A FORTRAN VERSION WRITTEN
                   REM    FOR  THE CDC 6600 IN 1974.
                   REDIM G1_s$ ( 16 ) , V_s$ ( 5 , 5 ) , C_s$ ( 20 ) , G_r! ( 8 , 8 ) , D_s$ ( 12 ) , Q_s$ ( 10 , 10 ) , D4_r! ( 12 ) , D9_r! ( 106 )
                   REDIM S2_r! ( 8 , 8 )
                   Qs$ = "?"
                   DATA "S.R." "SENSORS" , "L.R." "SENSORS" , "PHASERS" , "PHOTON" "TUBES" , "LIFE" "SUPPORT"
                   DATA "WARP" "ENGINES" , "IMPULSE" "ENGINES" , "SHIELDS" , "SUBSPACE" "RADIO"
                   DATA "SHUTTLE" "CRAFT" , "COMPUTER" , "TRANSFER" "PANEL" , "ABANDON" , "CHART" , "COMPUTER"
                   DATA "DAMAGES" , "DESTRUCT" , "DOCK" , "IDLE" , "IMPULSE" , "LRSCAN" , "NAVIGATE" , "PHASERS" , "QUIT"
                   DATA "SHIELDS" , "SOS" , "SRSCAN" , "STATUS" , "TORPEDO" , "TRANSFER" , "VISUAL" , "WARP" , "SHORT"
                   DATA "MEDIUM" , "LONG" , "BEGINNER" , "NOVICE" , "SENIOR" , "EXPERT" , "COURSE" , "WCOST" , "ICOST"
                   DATA "PEFFECT" , "SCORE" , "END" , "ANTARES" , "SIRIUS" , "RIGEL" , "MERAK" , "PROCYON" , "CAPELLA"
                   DATA "VEGA" , "DENEB" , "CANOPUS" , "ALDEBARAN" , "ALTAIR" , "REGULUS" , "BELLATRIX" , "ARCTURUS"
                   DATA "POLLUX" , "SPICA" , 10.5 , 12 , 1.5 , 9 , 0 , 3 , 7.5 , 6 , 4.5
                   FUNCTION Fkta ( Xr! ) : Fkta = int ( 8 * rnd ( Xr! ) ) + 1 : END FUNCTION
                   FUNCTION Fktb ( Xr! ) : Fktb = int ( 10 * rnd ( Xr! ) ) + 1 : END FUNCTION
                   FUNCTION Fktd ( Xr! ) : Fktd = Xr! / 60 : END FUNCTION
                   FUNCTION Fktr ( Xr! ) : Fktr = int ( Xr! * 10 + .5 ) / 10 : END FUNCTION
                   FUNCTION Fkts ( Xr! ) : Fkts = int ( Xr! * 100 + .5 ) / 100 : END FUNCTION
                   FOR Ir! = 1 TO 12
                       read D_s$ ( Ir! )
                   NEXT
                   FOR Ir! = 1 TO 20
                       read C_s$ ( Ir! )
                   NEXT
                   FOR Ir! = 1 TO 3
                       read T_s$ ( Ir! )
                   NEXT
                   FOR Ir! = 1 TO 4
                       read S_s$ ( Ir! )
                   NEXT
                   FOR Ir! = 1 TO 6
                       read C2_s$ ( Ir! )
                   NEXT
                   FOR Ir! = 1 TO 16
                       read G1_s$ ( Ir! )
                   NEXT
                   FOR Ir! = 1 TO 9
                       read C5_r! ( Ir! )
                   NEXT
          L_450_:  REM CALL SETUP
                   GOSUB SUB_24090_
                   S7_s$ ( 1 ) = ""
                   S7_s$ ( 2 ) = "  "
                   S7_s$ ( 3 ) = " "
                   S7_s$ ( 4 ) = ""
          L_510_:  IF A2r! <> 0 THEN
                       GOTO L_2130_
                   END IF
          L_540_:  J4r! = 0
                   T1r! = 0
                   print
                   INPUT "COMMAND" ; BT_As$
                   IF len ( BT_As$ ) > 1 THEN
                       GOTO L_630_
                   END IF
                   print "USE AT LEAST 2 LETTERS, PLEASE."
                   GOTO L_540_
          L_630_:  FOR Ir! = 1 TO 20
                       IF BT_As$ = left$ ( C_s$ ( Ir! ) , len ( BT_As$ ) ) THEN
                           GOTO L_780_
                       END IF
                   NEXT
                   INPUT "ILLEGAL COMMAND - DO YOU NEED A LIST" ; Bs$
                   IF left$ ( Bs$ , 1 ) = "N" THEN
                       GOTO L_510_
                   END IF
                   print
                   FOR Ir! = 1 TO 20 STEP 4
                       print C_s$ ( Ir! ) ; tab ( 12 ) ; C_s$ ( Ir! + 1 ) ; tab ( 22 ) ; C_s$ ( Ir! + 2 ) ; tab ( 32 ) ; C_s$ ( Ir! + 3 )
                   NEXT
                   print
                   GOTO L_510_
          L_780_:  ON Ir! GOTO L_820_ , L_850_ , L_880_ , L_910_ , L_940_ , L_970_ , L_1000_ , L_1130_ , L_1190_ , L_1220_
                   ON Ir! - 10 GOTO L_1280_ , L_1350_ , L_1390_ , L_1500_ , L_1530_ , L_1560_ , L_1600_ , L_1660_ , L_1780_ , L_1900_
                   print "ERROR AT 170 - SHOULD NOT BE HERE"
                   STOP
          L_820_:  rem - ABANDON
                   GOSUB SUB_33430_
                   GOTO L_510_
          L_850_:  rem - CHART
                   GOSUB SUB_4320_
                   GOTO L_510_
          L_880_:  rem - COMPUTER
                   GOSUB SUB_5260_
                   GOTO L_510_
          L_910_:  rem - DAMAGES
                   GOSUB SUB_7140_
                   GOTO L_510_
          L_940_:  REM - DESTRUCT
                   GOSUB SUB_34080_
                   GOTO L_510_
          L_970_:  rem - DOCK
                   GOSUB SUB_6930_
                   GOTO L_510_
         L_1000_:  rem - IOLE
                   GOSUB SUB_31710_
                   IF J3r! = 0 THEN
                       GOTO L_510_
                   END IF
                   IF A2r! <> 0 THEN
                       GOTO L_2130_
                   END IF
                   IF G_r! ( Q1r! , Q2r! ) = 1000 THEN
                       GOTO L_2060_
                   END IF
                   GOSUB SUB_2220_
                   GOTO L_510_
         L_1130_:  rem - IMPULSE
                   GOSUB SUB_12540_
                   IF J3r! = 0 THEN
                       GOTO L_510_
                   END IF
                   GOTO L_1930_
         L_1190_:  rem - LRSCAN
                   GOSUB SUB_13060_
                   GOTO L_510_
         L_1220_:  rem - NAVIGATE
                   GOSUB SUB_32110_
                   IF J3r! = 0 THEN
                       GOTO L_510_
                   END IF
                   GOTO L_1930_
         L_1280_:  rem - PHASERS
                   GOSUB SUB_19620_
                   IF J3r! = 0 THEN
                       GOTO L_510_
                   END IF
                   GOSUB SUB_2220_
                   GOTO L_510_
         L_1350_:  rem - QUIT
                   GOTO L_2130_
         L_1370_:  print " TOO BAD...WE HATE TO LOSE GOOD ASTRONAUTS!"
                   GOTO L_34710_
         L_1390_:  rem - SHIELDS
                   GOSUB SUB_26040_
                   IF J3r! = 0 THEN
                       GOTO L_510_
                   END IF
                   IF A2r! <> 0 THEN
                       GOTO L_2130_
                   END IF
                   GOSUB SUB_2220_
                   S9r! = 0
                   GOTO L_510_
         L_1500_:  rem - SOS
                   GOSUB SUB_11110_
                   GOTO L_510_
         L_1530_:  rem - SRSCAN
                   GOSUB SUB_28010_
                   GOTO L_510_
         L_1560_:  REM - STATUS
                   print
                   GOSUB SUB_34660_
                   GOTO L_510_
         L_1600_:  rem - TORPEDOS
                   GOSUB SUB_20500_
                   IF J3r! = 0 THEN
                       GOTO L_510_
                   END IF
                   GOTO L_1930_
         L_1660_:  rem - TRANSFER
                   GOSUB SUB_29210_
                   IF J3r! = 0 THEN
                       GOTO L_510_
                   END IF
                   IF A2r! <> 0 THEN
                       GOTO L_2130_
                   END IF
                   IF G_r! ( Q1r! , Q2r! ) <> 1000 THEN
                       GOTO L_510_
                   END IF
                   GOTO L_2060_
         L_1780_:  rem - VISUAL
                   GOSUB SUB_29550_
                   IF J3r! = 0 THEN
                       GOTO L_510_
                   END IF
                   IF A2r! <> 0 THEN
                       GOTO L_2130_
                   END IF
                   IF G_r! ( Q1r! , Q2r! ) <> 1000 THEN
                       GOTO L_510_
                   END IF
                   GOTO L_2060_
         L_1900_:  rem - WARP
                   GOSUB SUB_25660_
                   GOTO L_510_
         L_1930_:  rem - AFTERMOVINGSTARSHIP
                   IF A2r! <> 0 THEN
                       GOTO L_2130_
                   END IF
                   IF T1r! <> 0 THEN
                       GOSUB SUB_7330_
                   END IF
                   IF A2r! <> 0 THEN
                       GOTO L_2130_
                   END IF
         L_2030_:  IF G_r! ( Q1r! , Q2r! ) < 1000 THEN
                       GOTO L_2110_
                   END IF
         L_2060_:  GOSUB SUB_3680_
                   IF A2r! <> 0 THEN
                       GOTO L_2130_
                   END IF
                   GOTO L_2030_
         L_2110_:  GOSUB SUB_2220_
                   GOTO L_510_
         L_2130_:  rem - WE REM RE FINISHED
                   print
                   print
                   INPUT "WOULD YOU LIKE  TO  TRY AGAIN" ; BT_As$
                   IF left$ ( BT_As$ , 1 ) = "Y" THEN
                       GOTO L_450_
                   END IF
                   GOTO L_1370_
                   rem - BEGINSUBROUTINES

       SUB_2220_:  rem - ATTACK
                   IF ( C3r! <> 0 ) AND ( J4r! = 0 ) THEN
                       GOSUB SUB_15300_
                   END IF
                   IF K3r! = 0 THEN
                       RETURN
                   END IF
                   IF A2r! <> 0 THEN
                       RETURN
                   END IF
                   P2r! = 1 / I8r!
                   J5r! = 0
                   print
                   IF C5s$ = "DOCKED" THEN
                       GOTO L_3610_
                   END IF
                   H2r! = 0
                   H3r! = 0
                   C6r! = 1
                   IF S9r! = 1 THEN
                       C6r! = .5 + .5 * rnd ( 1 )
                   END IF
                   A3r! = 0
                   FOR Lr! = 1 TO K3r!
                       IF K6_r! ( Lr! ) < 0 THEN
                           GOTO L_3210_
                       END IF
                       A3r! = 1
                       D6r! = .8 + .05 * rnd ( 1 )
                       H4r! = K6_r! ( Lr! ) * D6r! ^ K8_r! ( Lr! )
                       IF ( S4r! = 0 ) AND ( S9r! = 0 ) THEN
                           GOTO L_2680_
                       END IF
                       P3r! = .1
                       IF P2r! * S3r! > P3r! THEN
                           P3r! = P2r! * S3r!
                       END IF
                       H5r! = P3r! * C6r! * H4r! + 1
                       IF H5r! > S3r! THEN
                           H5r! = S3r!
                       END IF
                       S3r! = S3r! - H5r!
                       H4r! = H4r! - H5r!
                       IF ( P3r! > .1 ) AND ( H4r! < .005 * E1r! ) THEN
                           GOTO L_3210_
                       END IF
         L_2680_:      J5r! = 1
                       print Fktr ( H4r! ) ; "UNIT HIT ON THE " ; S5s$ ; " FROM " ;
                       J6r! = K4_r! ( Lr! )
                       J7r! = K5_r! ( Lr! )
                       IF Q_s$ ( J6r! , J7r! ) = "K" THEN
                           print "KLINGON AT" ;
                       END IF
                       IF Q_s$ ( J6r! , J7r! ) = "C" THEN
                           print "COMMANDER AT" ;
                       END IF
                       print J6r! ; "-" ; J7r!
                       IF H4r! > H2r! THEN
                           H2r! = H4r!
                       END IF
                       H3r! = H3r! + H4r!
                       IF H4r! < ( 275 - 25 * S8r! ) * ( 1 + .5 * rnd ( 1 ) ) THEN
                           GOTO L_3200_
                       END IF
                       N4r! = 1 + int ( H4r! / ( 500 + 100 * rnd ( 1 ) ) )
                       print "***CRITICAL HIT--" ;
                       K9r! = 1
                       FOR W4r! = 1 TO N4r!
                           J9r! = int ( 12 * rnd ( 1 ) ) + 1
                           C5_r! ( W4r! ) = J9r!
                           E3r! = ( H4r! * D5r! ) / ( N4r! * ( 75 + 25 * rnd ( 1 ) ) )
                           IF J9r! = 6 THEN
                               E3r! = E3r! / 3
                           END IF
                           D4_r! ( J9r! ) = D4_r! ( J9r! ) + E3r!
                           IF W4r! = 1 THEN
                               GOTO L_3100_
                           END IF
                           FOR Vr! = 1 TO W4r!
                               IF J9r! = C5_r! ( Vr! - 1 ) THEN
                                   GOTO L_3110_
                               END IF
                           NEXT Vr!
                           K9r! = K9r! + 1
                           IF K9r! = 3 THEN
                               print
                           END IF
                           print " AND " ;
         L_3100_:          print D_s$ ( J9r! ) ;
         L_3110_:      NEXT W4r!
                       print " DAMAGED."
                       IF D4_r! ( 8 ) = 0 THEN
                           GOTO L_3200_
                       END IF
                       IF S4r! <> 0 THEN
                           print "*** SHIELDS KNOCKED DOWN."
                       END IF
                       S4r! = 0
         L_3200_:      E1r! = E1r! - H4r!
         L_3210_:  NEXT Lr!
                   IF A3r! = 0 THEN
                       RETURN
                   END IF
                   IF E1r! <= 0 THEN
                       GOTO L_3580_
                   END IF
                   P4r! = 100 * P2r! * S3r! + .5
                   IF J5r! <> 0 THEN
                       GOTO L_3340_
                   END IF
                   print "KLINGONS ATTACK--SHIELD STRENGTH REDUCED  TO  " ;
                   GOTO L_3440_
         L_3340_:  print "ENERGY LEFT:" ; Fkts ( E1r! ) ; "   SHIELDS " ;
                   IF S4r! <> 0 THEN
                       print "UP," ;
                   END IF
                   IF ( S4r! = 0 ) AND ( D4_r! ( 8 ) = 0 ) THEN
                       print "DOWN, " ;
                   END IF
                   IF D4_r! ( 8 ) > 0 THEN
                       print "DAMAGED, " ;
                   END IF
         L_3440_:  print int ( P4r! ) ; "%"
                   IF ( H2r! < 200 ) AND ( H3r! < 500 ) THEN
                       GOTO L_3630_
                   END IF
                   J8r! = int ( H3r! * rnd ( 1 ) * .015 )
                   IF J8r! < 2 THEN
                       GOTO L_3630_
                   END IF
                   print
                   print "MCCOY - 'SICKBAY  TO  BRIDGE.  WE SUFFERED " ;
                   print J8r! ; "CASUALTIES"
                   print "          IN THAT LAST ATTACK'"
                   C4r! = C4r! + J8r!
                   GOTO L_3630_
         L_3580_:  F9r! = 5
                   GOSUB SUB_9720_
                   RETURN


         L_3610_:  print "*** KLINGONS ATTACK-- STARBASE SHIELDS PROTECT " ;
                   print "THE " ; S5s$
         L_3630_:  FOR W4r! = 1 TO K3r!
                       K8_r! ( W4r! ) = K7_r! ( W4r! )
                   NEXT W4r!
                   GOSUB SUB_27710_
                   RETURN



       SUB_3680_:  rem - AU TO VER
                   print
                   IF J4r! = 0 THEN
                       GOTO L_3760_
                   END IF
                   print "*** RED ALERT!  RED ALERT!"
                   print "***THE " ; S5s$ ; " HAS S TO PPED IN A QUADRANT " ;
                   print "CONTAINING A SUPERNOVA."
         L_3760_:  print "*** EMERGENCY AU TO -OVERRIDE ATTEMPTS  TO  HURL " ;
                   print S5s$
                   print "   SAFELY OUT OF THE QUADRANT."
                   S2_r! ( Q1r! , Q2r! ) = 1
                   GOSUB SUB_16850_
                   IF D4_r! ( 6 ) = 0 THEN
                       GOTO L_4070_
                   END IF
                   print
                   print "WARP ENGINES DAMAGED."
                   print
                   print "ATTEMPTING  TO  ENGAGE IMPULSE ENGINES..."
                   IF D4_r! ( 7 ) = 0 THEN
                       GOTO L_3950_
                   END IF
                   print "IMPULSE ENGINES DAMAGED."
                   F9r! = 8
                   GOSUB SUB_9720_
                   RETURN


         L_3950_:  P2r! = .75 * E1r!
                   D6r! = .004 * ( P2r! - 50 )
                   D7r! = 1.4142 + 1.2 * rnd ( 1 )
                   D1r! = D6r!
                   IF D6r! > D7r! THEN
                       D1r! = D7r!
                   END IF
                   T1r! = D1r! / .4
                   D2r! = 12 * rnd ( 1 )
                   J4r! = 0
                   GOSUB SUB_12920_
                   GOTO L_4200_
         L_4070_:  W1r! = 6 + 2 * rnd ( 1 )
                   W2r! = W1r! * W1r!
                   P2r! = .75 * E1r!
                   D6r! = P2r! / ( W1r! * W1r! * W1r! * ( S4r! + 1 ) )
                   D7r! = 1.4142 + 2 * rnd ( 1 )
                   D1r! = D6r!
                   IF D6r! > D7r! THEN
                       D1r! = D7r!
                   END IF
                   T1r! = 10 * D1r! / W2r!
                   D2r! = 12 * rnd ( 1 )
                   J4r! = 0
                   GOSUB SUB_32610_
         L_4200_:  IF J4r! <> 0 THEN
                       GOTO L_4260_
                   END IF
                   F9r! = 8
                   GOSUB SUB_9720_
                   RETURN


         L_4260_:  IF R1r! <> 0 THEN
                       RETURN
                   END IF
                   F9r! = 1
                   GOSUB SUB_9720_
                   RETURN



       SUB_4320_:  rem - CHART
                   print
                   print "      1   2   3   4   5   6   7   8"
                   print "     --- --- --- --- --- --- --- ---"
                   FOR Ir! = 1 TO 8
                       print Ir! ; " " ;
                       FOR Jr! = 1 TO 8
                           ON sgn ( S2_r! ( Ir! , Jr! ) ) + 2 GOTO L_4420_ , L_4440_ , L_4460_
                           print "ERR AT 3065"
                           STOP
         L_4420_:          print " .1." ;
                           GOTO L_4570_
         L_4440_:          print " ..." ;
                           GOTO L_4570_
         L_4460_:          IF S2_r! ( Ir! , Jr! ) > 1000 THEN
                               GOTO L_4560_
                           END IF
                           IF G_r! ( Ir! , Jr! ) < 1000 THEN
                               print S7_s$ ( len ( str$ ( G_r! ( Ir! , Jr! ) ) ) ) ; str$ ( G_r! ( Ir! , Jr! ) ) ;
                           END IF
                           IF G_r! ( Ir! , Jr! ) = 1000 THEN
                               print " ***" ;
                           END IF
                           GOTO L_4570_
         L_4560_:          print S2_r! ( Ir! , Jr! ) - 1000 ;
         L_4570_:      NEXT Jr!
                       print
                   NEXT Ir!
                   GOSUB SUB_17750_
                   print
                   print "THE " ; S5s$ ; " IS CURRENTLY IN " ; G2s$ ; " (" ; Q1r! ; "-" ; Q2r! ; ")"
                   RETURN



       SUB_4640_:  rem - CHOOSE
                   FOR Ir! = 1 TO 10
                       print
                   NEXT
                   FOR Ir! = 1 TO 41
                       print "*" ;
                   NEXT
                   print
                   print "**" ; tab ( 39 ) ; "**"
                   print "**  WELCOME  TO  THE WORLD OF STAR TREK  **"
                   print "**" ; tab ( 39 ) ; "**"
                   FOR Ir! = 1 TO 41
                       print "*" ;
                   NEXT
                   print
                   print
                   print
                   S8r! = 0
                   L2r! = 0
                   print "HOW LONG A GAME WOULD YOU LIKE" ;
         L_4840_:  INPUT BT_As$
                   FOR Ir! = 1 TO 3
                       IF BT_As$ = left$ ( T_s$ ( Ir! ) , len ( BT_As$ ) ) THEN
                           GOTO L_4920_
                       END IF
                   NEXT Ir!
                   print "WOULD YOU LIKE A SHORT, MEDIUM OR LONG GAME" ;
                   GOTO L_4840_
         L_4920_:  L2r! = Ir!
         L_4930_:  print "ARE YOU A BEGINNER, NOVICE, SENIOR OR EXPERT PLAYER" ;
                   INPUT BT_As$
                   FOR Ir! = 1 TO 4
                       IF BT_As$ = left$ ( S_s$ ( Ir! ) , len ( BT_As$ ) ) THEN
                           GOTO L_5010_
                       END IF
                   NEXT Ir!
                   GOTO L_4930_
         L_5010_:  S8r! = Ir!
                   INPUT "ENTER YOUR MISSION PASSWORD..." ; Xs$
                   print
                   print "....SETTING UP THE GALAXY...."
                   Jr! = rnd ( 1 )
                   rem - INITIALIZE
                   D5r! = .5 * S8r!
                   I2r! = int ( L2r! + 1 + rnd ( 1 ) * 3 )
                   IF I2r! > 5 THEN
                       I2r! = 5
                   END IF
                   R3r! = I2r!
                   I5r! = 7 * L2r!
                   R5r! = I5r!
                   R7r! = ( S8r! - 2 * rnd ( 1 ) + 1 ) * S8r! * .1 + .1
                   IF R7r! < .2 THEN
                       R7r! = R7r! + .1
                   END IF
                   I1r! = int ( 2 * R7r! * I5r! )
                   R1r! = I1r!
                   I4r! = int ( S8r! + .0625 * I1r! * rnd ( 1 ) )
                   R2r! = I4r!
                   I3r! = ( I1r! + 4 * I4r! ) * I5r!
                   R4r! = I3r!
                   RETURN



       SUB_5260_:  rem - COMPUTE
                   IF D4_r! ( 11 ) = 0 THEN
                       GOTO L_5320_
                   END IF
                   print "LIBRARY COMPUTER DISABLED"
                   RETURN


         L_5320_:  print "----LIBRARY COMPUTER ACTIVE----"
         L_5330_:  INPUT "PROGRAM NAME" ; Bs$
                   FOR Ir! = 1 TO 6
                       IF Bs$ = left$ ( C2_s$ ( Ir! ) , len ( Bs$ ) ) THEN
                           GOTO L_5430_
                       END IF
                   NEXT
                   print "VALID PROGRAMS ARE:"
                   print "  COURSE    WCOST   ICOST"
                   print "  PEFFECT   SCORE   END"
                   GOTO L_5330_
         L_5430_:  ON Ir! GOTO L_5440_ , L_6010_ , L_6110_ , L_6210_ , L_6300_ , L_6330_
         L_5440_:  rem - COURSE&DIRECTION
                   INPUT "ENTER QUADRANT AND SECTOR - " ; A3r! , A4r!
                   IF ( A3r! <> int ( A3r! ) ) OR ( A4r! <> int ( A4r! ) ) THEN
                       GOTO L_6340_
                   END IF
                   IF A3r! < 0 THEN
                       GOTO L_5330_
                   END IF
                   IF A3r! = 0 THEN
                       A3r! = 10 * Q1r! + Q2r!
                   END IF
                   A3r! = A3r! + .5
                   Kr! = int ( A3r! / 10 )
                   IF ( Kr! < 1 ) OR ( Kr! > 8 ) THEN
                       GOTO L_6340_
                   END IF
                   C6_r! ( 1 ) = Kr!
                   Kr! = int ( A3r! - C6_r! ( 1 ) * 10 )
                   IF ( Kr! < 1 ) OR ( Kr! > 8 ) THEN
                       GOTO L_6340_
                   END IF
                   C6_r! ( 2 ) = Kr!
                   A4r! = A4r! + .5
                   Kr! = int ( A4r! / 100 )
                   IF ( Kr! < 1 ) OR ( Kr! > 10 ) THEN
                       GOTO L_6340_
                   END IF
                   C6_r! ( 1 ) = C6_r! ( 1 ) + ( Kr! - 1 ) / 10
                   Kr! = int ( A4r! - Kr! * 100 )
                   IF ( Kr! < 1 ) OR ( Kr! > 10 ) THEN
                       GOTO L_6340_
                   END IF
                   C6_r! ( 2 ) = C6_r! ( 2 ) + ( Kr! - 1 ) / 10
                   Xr! = Q1r! + ( ( S6r! - 1 ) / 10 ) - C6_r! ( 1 )
                   Yr! = Q2r! + ( ( S7r! - 1 ) / 10 ) - C6_r! ( 2 )
                   D1r! = 0
                   D2r! = 0
                   IF ( Xr! = 0 ) AND ( Yr! = 0 ) THEN
                       GOTO L_5980_
                   END IF
                   D1r! = sqr ( Xr! * Xr! + Yr! * Yr! )
                   IF Xr! < 0 THEN
                       Z7r! = sgn ( Yr! ) * ( 3.1416 - atn ( abs ( Yr! / Xr! ) ) )
                   END IF
                   IF Xr! = 0 THEN
                       Z7r! = sgn ( Yr! ) * 1.5708
                   END IF
                   IF Xr! > 0 THEN
                       Z7r! = atn ( Yr! / Xr! )
                   END IF
                   D2r! = 12 - Z7r! * 1.9098593
                   IF D2r! > 12 THEN
                       D2r! = D2r! - 12
                   END IF
         L_5980_:  print "COURSE IS" ; Fkts ( D2r! ) ; " FOR  A DISTANCE OF" ;
                   print Fkts ( D1r! ) ; "QUADRANTS."
                   GOTO L_5330_
         L_6010_:  rem - COST FOR WARP DRIVE
                       INPUT "ENTER DISTANCE AND WARP FACTOR" ; D1r! , A4r!
                       IF ( D1r! < 0 ) THEN
                           GOTO L_5330_
                       END IF
                       C7r! = D1r! * A4r! * A4r! * A4r!
                       T1r! = ( 10 * D1r! ) / ( A4r! * A4r! )
                       print "IT WOULD TAKE" ; Fkts ( T1r! ) ; "STARDATES AND USE"
                       print Fktr ( C7r! ) ; "UNITS OF ENERGY  (" ; Fktr ( C7r! + C7r! ) ; "IF SHIELDS ARE UP)"
                       GOTO L_5330_
         L_6110_:      rem - COST FOR IMPULSE POWER
                           INPUT "ENTER DISTANCE..." ; D1r!
                           IF D1r! < 0 THEN
                               GOTO L_5330_
                           END IF
                           C7r! = 250 * D1r! + 50
                           T1r! = D1r! / .4
                           print "IT WOULD TAKE" ; Fktr ( T1r! ) ; "STARDATES AND USE"
                           print C7r! ; "UNITS OF ENERGY"
                           GOTO L_5330_
         L_6210_:          rem - PHASER EFFECTIVENESS
                           INPUT "ENTER PHASER RANGE IN QUADRANTS" ; A3r!
                           IF A3r! < 0 THEN
                               GOTO L_5330_
                           END IF
                           A3r! = A3r! * 10
                           C7r! = ( .9 ^ A3r! ) * 100
                           print "PHASERS ARE " ; left$ ( str$ ( C7r! ) , 5 ) ; "% EFFECTIVE AT THAT RANGE"
                           GOTO L_5330_
         L_6300_:          rem - SCORE
                           GOSUB SUB_23290_
                           GOTO L_5330_
         L_6330_:          RETURN
         L_6340_:          print "FORMAT IS MN,XXYY...WHERE MN IS THE QUADRANT"
                           print "AND XXYY IS THE SECTOR...E.G. 64,0307 REFERS"
                           print " TO  QUADRANT 6-4, SECTOR 3-7."
                           print "NOTE: SECTOR COORDINATES MUST BE 4 DIGITS."
                           GOTO L_5330_

       SUB_6390_:          REM - DEADKL
                           IF T2s$ <> "C" THEN
                               GOTO L_6610_
                           END IF
                           C3r! = 0
                           print "***COMMANDER AT" ;
                           FOR Fr! = 1 TO R2r!
                               IF ( C1_r! ( Fr! ) = Q1r! ) AND ( C2_r! ( Fr! ) = Q2r! ) THEN
                                   GOTO L_6500_
                               END IF
                           NEXT Fr!
         L_6500_:          C1_r! ( Fr! ) = C1_r! ( R2r! )
                           C2_r! ( Fr! ) = C2_r! ( R2r! )
                           C1_r! ( R2r! ) = 0
                           C2_r! ( R2r! ) = 0
                           R2r! = R2r! - 1
                           F1_r! ( 2 ) = 1E + 30
                           IF R2r! <> 0 THEN
                               F1_r! ( 2 ) = D0r! - ( I4r! / R2r! ) * log ( rnd ( 1 ) )
                           END IF
                           K2r! = K2r! + 1
                           GOTO L_6630_
         L_6610_:          print "***KLINGON AT" ;
                           K1r! = K1r! + 1
         L_6630_:          print A5r! ; "-" ; A6r! ; "DESTROYED."
                           Q_s$ ( A5r! , A6r! ) = "."
                           R1r! = R1r! - 1
                           IF R1r! = 0 THEN
                               RETURN
                           END IF
                           R5r! = R4r! / ( R1r! + 4 * R2r! )
                           G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 100
                           FOR Fr! = 1 TO K3r!
                               IF ( K4_r! ( Fr! ) = A5r! ) AND ( K5_r! ( Fr! ) = A6r! ) THEN
                                   GOTO L_6760_
                               END IF
                           NEXT Fr!
         L_6760_:          K3r! = K3r! - 1
                           IF Fr! > K3r! THEN
                               GOTO L_6870_
                           END IF
                           FOR Gr! = Fr! TO K3r!
                               K4_r! ( Gr! ) = K4_r! ( Gr! + 1 )
                               K5_r! ( Gr! ) = K5_r! ( Gr! + 1 )
                               K6_r! ( Gr! ) = K6_r! ( Gr! + 1 )
                               K7_r! ( Gr! ) = K7_r! ( Gr! + 1 )
                               K8_r! ( Gr! ) = K7_r! ( Gr! )
                           NEXT Gr!
         L_6870_:          K4_r! ( K3r! + 1 ) = 0
                           K5_r! ( K3r! + 1 ) = 0
                           K7_r! ( K3r! + 1 ) = 0
                           K8_r! ( K3r! + 1 ) = 0
                           K6_r! ( K3r! + 1 ) = 0
                           RETURN

       SUB_6930_:          rem - DOCK
                           IF C5s$ = "DOCKED" THEN
                               GOTO L_7120_
                           END IF
                           IF B6r! = 0 THEN
                               GOTO L_7030_
                           END IF
                           IF ( abs ( S6r! - B6r! ) <= 1 ) AND ( abs ( S7r! - B7r! ) <= 1 ) THEN
                               GOTO L_7050_
                           END IF
         L_7030_:          print S5s$ ; " NOT ADJACENT  TO  A BASE."
                           RETURN
         L_7050_:          C5s$ = "DOCKED"
                           print "HELMSMAN SULU - 'DOCKING MANEUVER COMPLETED.'"
                           E1r! = I7r!
                           S3r! = I8r!
                           T4r! = I9r!
                           L1r! = J1r!
                           RETURN
         L_7120_:          print "MR. SULU - 'BUT CAPTAIN, WE'RE ALREADY DOCKED!'"
                           RETURN

       SUB_7140_:          rem - DREPORT
                           Jr! = 0
                           print
                           FOR Ir! = 1 TO 12
                               IF D4_r! ( Ir! ) <= 0 THEN
                                   GOTO L_7280_
                               END IF
                               IF Jr! <> 0 THEN
                                   GOTO L_7270_
                               END IF
                               print "     DEVICE" ; spc ( 12 ) ; "-REPAIR TIMES-"
                               print spc ( 21 ) ; "IN FLIGHT    DOCKED"
                               Jr! = 1
         L_7270_:              print "  " ; D_s$ ( Ir! ) ; tab ( 23 ) ; Fkts ( D4_r! ( Ir! ) ) ; tab ( 33 ) ; Fkts ( D3r! * D4_r! ( Ir! ) )
         L_7280_:          NEXT Ir!
                           IF Jr! = 0 THEN
                               print "MR. SPOCK - 'ALL DEVICES FUNCTIONAL, CAPTAIN'"
                           END IF
                           RETURN

       SUB_7330_:          rem - EVENTS
         L_7340_:          Mr! = 0
                           D7r! = D0r! + T1r!
                           FOR Lr! = 1 TO 5
                               IF F1_r! ( Lr! ) > D7r! THEN
                                   GOTO L_7420_
                               END IF
                               Mr! = Lr!
                               D7r! = F1_r! ( Lr! )
         L_7420_:          NEXT Lr!
                           X6r! = D7r! - D0r!
                           D0r! = D7r!
                           R4r! = R4r! - ( R1r! + 4 * R2r! ) * X6r!
                           R5r! = R4r! / ( R1r! + 4 * R2r! )
                           IF R5r! > 0 THEN
                               GOTO L_7530_
                           END IF
                           F9r! = 2
                           GOSUB SUB_9720_
                           RETURN
         L_7530_:          IF ( D4_r! ( 5 ) = 0 ) OR ( C5s$ = "DOCKED" ) THEN
                               GOTO L_7660_
                           END IF
                           IF ( L1r! >= X6r! ) OR ( D4_r! ( 5 ) <= L1r! ) THEN
                               GOTO L_7620_
                           END IF
                           F9r! = 3
                           GOSUB SUB_9720_
                           RETURN
         L_7620_:          L1r! = L1r! - X6r!
                           IF D4_r! ( 5 ) <= X6r! THEN
                               L1r! = J1r!
                           END IF
         L_7660_:          Rr! = X6r!
                           IF C5s$ = "DOCKED" THEN
                               Rr! = X6r! / D3r!
                           END IF
                           FOR Lr! = 1 TO 12
                               IF D4_r! ( Lr! ) <= 0 THEN
                                   GOTO L_7830_
                               END IF
                               D4_r! ( Lr! ) = D4_r! ( Lr! ) - Rr!
                               IF D4_r! ( Lr! ) < 0 THEN
                                   D4_r! ( Lr! ) = 0
                               END IF
                               IF D4_r! ( Lr! ) <> 0 THEN
                                   GOTO L_7830_
                               END IF
                               print
                               print "DAMAGE CONTROL-  '" ; D_s$ ( Lr! ) ; " NOW OPERATIONAL.'"
         L_7830_:          NEXT Lr!
                           IF Mr! = 0 THEN
                               RETURN
                           END IF
                           T1r! = T1r! - X6r!
                           ON Mr! GOTO L_7890_ , L_7980_ , L_8380_ , L_8700_ , L_9100_
         L_7890_:          rem - SUPERNOVA
                           X2r! = 0
                           Y2r! = 0
                           GOSUB SUB_26450_
                           F1_r! ( 1 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
                           IF G_r! ( Q1r! , Q2r! ) = 1000 THEN
                               RETURN
                           END IF
                           GOTO L_7340_
         L_7980_:          rem - TRACTOR BEAM
                           IF R2r! = 0 THEN
                               GOTO L_8360_
                           END IF
                           IF C5s$ = "DOCKED" THEN
                               GOTO L_8340_
                           END IF
                           Ir! = int ( rnd ( 1 ) * R2r! ) + 1
                           Y6r! = ( C1_r! ( Ir! ) - Q1r! ) ^ 2 + ( C2_r! ( Ir! ) - Q2r! ) ^ 2
                           IF Y6r! = 0 THEN
                               GOTO L_8340_
                           END IF
                           Y6r! = sqr ( Y6r! )
                           T1r! = .17778 * Y6r!
                           print
                           print "***" ; S5s$ ; " CAUGHT IN LONG-RANGE TRACTOR BEAM--"
                           Q1r! = C1_r! ( Ir! )
                           Q2r! = C2_r! ( Ir! )
                           S6r! = Fktb ( 1 )
                           S7r! = Fktb ( 1 )
                           print "   PULLED  TO  QUADRANT" ; Q1r! ; "-" ; Q2r! ; ", SECTOR" ; S6r! ; "-" ; S7r!
                           IF R6r! <> 0 THEN
                               print "(REMAINDER OF IDLE PERIOD CANCELLED)"
                           END IF
                           R6r! = 0
                           IF S4r! <> 0 THEN
                               GOTO L_8330_
                           END IF
                           IF ( D4_r! ( 8 ) = 0 ) AND ( S3r! > 0 ) THEN
                               GOTO L_8310_
                           END IF
                           print "(SHIELDS NOT CURRENTLY USABLE.)"
                           GOTO L_8330_
         L_8310_:          GOSUB SUB_26120_
                           S9r! = 0
         L_8330_:          GOSUB SUB_16850_
         L_8340_:          F1_r! ( 2 ) = D0r! + T1r! - 1.5 * ( I5r! / R2r! ) * log ( rnd ( 1 ) )
                           GOTO L_7340_
         L_8360_:          F1_r! ( 2 ) = 1E + 30
                           GOTO L_7340_
         L_8380_:          D9_r! ( 1 ) = D0r!
                           D9_r! ( 2 ) = R1r!
                           D9_r! ( 3 ) = R2r!
                           D9_r! ( 4 ) = R3r!
                           D9_r! ( 5 ) = R4r!
                           D9_r! ( 6 ) = R5r!
                           D9_r! ( 7 ) = S1r!
                           D9_r! ( 8 ) = B1r!
                           D9_r! ( 9 ) = K1r!
                           D9_r! ( 10 ) = K2r!
                           FOR Ir! = 1 TO 8
                               FOR Jr! = 1 TO 8
                                   D9_r! ( Ir! - 1 + 8 * ( Jr! - 1 ) + 11 ) = G_r! ( Ir! , Jr! )
                               NEXT Jr!
                           NEXT Ir!
                           FOR Ir! = 75 TO 84
                               D9_r! ( Ir! ) = C1_r! ( Ir! - 74 )
                           NEXT
                           FOR Ir! = 85 TO 94
                               D9_r! ( Ir! ) = C2_r! ( Ir! - 84 )
                           NEXT
                           FOR Ir! = 95 TO 99
                               D9_r! ( Ir! ) = B2_r! ( Ir! - 94 )
                           NEXT
                           FOR Ir! = 100 TO 104
                               D9_r! ( Ir! ) = B3_r! ( Ir! - 99 )
                           NEXT
                           D9_r! ( 105 ) = B4r!
                           D9_r! ( 106 ) = B5r!
                           S0r! = 1
                           F1_r! ( 3 ) = D0r! - .3 * I5r! * log ( rnd ( 1 ) )
                           GOTO L_7340_
         L_8700_:          REM - STARBASE ATTACK
                           IF ( R2r! = 0 ) OR ( R3r! = 0 ) THEN
                               GOTO L_8840_
                           END IF
                           FOR Ir! = 1 TO R3r!
                               FOR Jr! = 1 TO R2r!
                                   IF ( B2_r! ( Ir! ) = C1_r! ( Jr! ) ) AND ( B3_r! ( Ir! ) = C2_r! ( Jr! ) ) THEN
                                       GOTO L_8870_
                                   END IF
                               NEXT Jr!
                           NEXT Ir!
         L_8810_:          F1_r! ( 4 ) = D0r! + .5 + 3 * rnd ( 1 )
                           F1_r! ( 5 ) = 1E + 30
                           GOTO L_7340_
         L_8840_:          F1_r! ( 4 ) = 1E + 30
                           F1_r! ( 5 ) = 1E + 30
                           GOTO L_7340_
         L_8870_:          B4r! = B2_r! ( Ir! )
                           B5r! = B3_r! ( Ir! )
                           IF ( B4r! = Q1r! ) AND ( B5r! = Q2r! ) THEN
                               GOTO L_8810_
                           END IF
                           F1_r! ( 5 ) = D0r! + .5 + 3 * rnd ( 1 )
                           F1_r! ( 4 ) = F1_r! ( 5 ) - .3 * I5r! * log ( rnd ( 1 ) )
                           IF D4_r! ( 9 ) > 0 THEN
                               GOTO L_7340_
                           END IF
                           print
                           print "LT. UHURA-  'CAPTAIN, THE STARBASE IN" ; B4r! ; "-" ; B5r!
                           print "  REPORTS THAT IT IS UNDER ATTACK AND CAN HOLD OUT"
                           print "  ONLY UNTIL STARDATE" ; Fktr ( F1_r! ( 5 ) ) ; "'"
                           IF R6r! = 0 THEN
                               GOTO L_7340_
                           END IF
                           print
                           INPUT "MR. SPOCK-  'CAPTAIN, SHALL WE CANCEL THE IDLE PERIOD" ; Bs$
                           IF left$ ( Bs$ , 1 ) = "Y" THEN
                               R6r! = 0
                           END IF
                           GOTO L_7340_
         L_9100_:          REM - STARBASE DESTROYED
                           F1_r! ( 5 ) = 1E + 30
                           IF ( R2r! = 0 ) OR ( R3r! = 0 ) THEN
                               GOTO L_7340_
                           END IF
                           Kr! = int ( G_r! ( B4r! , B5r! ) / 100 )
                           IF G_r! ( B4r! , B5r! ) - Kr! * 100 < 10 THEN
                               GOTO L_7340_
                           END IF
                           FOR Ir! = 1 TO R2r!
                               IF ( C1_r! ( Ir! ) = B4r! ) AND ( C2_r! ( Ir! ) = B5r! ) THEN
                                   GOTO L_9250_
                               END IF
                           NEXT
                           GOTO L_7340_
         L_9250_:          IF S2_r! ( B4r! , B5r! ) = - 1 THEN
                               S2_r! ( B4r! , B5r! ) = 0
                           END IF
                           IF S2_r! ( B4r! , B5r! ) > 999 THEN
                               S2_r! ( B4r! , B5r! ) = S2_r! ( B4r! , B5r! ) - 10
                           END IF
                           IF ( B4r! <> Q1r! ) OR ( B5r! <> Q2r! ) THEN
                               GOTO L_9520_
                           END IF
                           FOR Ir! = 1 TO K3r!
                               Kr! = K4_r! ( Ir! )
                               Lr! = K5_r! ( Ir! )
                               IF Q_s$ ( Kr! , Lr! ) = "C" THEN
                                   GOTO L_9410_
                               END IF
                           NEXT
         L_9410_:          IF K6_r! ( Ir! ) < 25 + 50 * rnd ( 1 ) THEN
                               GOTO L_7340_
                           END IF
                           Q_s$ ( B6r! , B7r! ) = "."
                           B6r! = 0
                           B7r! = 0
                           GOSUB SUB_16760_
                           print
                           print "MR. SPOCK-  'CAPTAIN, I BELIEVE THE STARBASE HAS" ;
                           print " BEEN DESTROYED.'"
                           GOTO L_9590_
         L_9520_:          IF ( R3r! = 1 ) OR ( D4_r! ( 9 ) > 0 ) THEN
                               GOTO L_9590_
                           END IF
                           print
                           print "LT. UHURA-  'CAPTAIN, STARFLEET COMMAND REPORTS THAT"
                           print "  THE STARBASE IN QUADRANT" ; B4r! ; "-" ; B5r! ; "HAS BEEN"
                           print "  DESTROYED BY A KLINGON COMMANDER.'"
         L_9590_:          G_r! ( B4r! , B5r! ) = G_r! ( B4r! , B5r! ) - 10
                           IF R3r! <= 1 THEN
                               GOTO L_9700_
                           END IF
                           FOR Ir! = 1 TO R3r!
                               IF ( B2_r! ( Ir! ) = B4r! ) AND ( B3_r! ( Ir! ) = B5r! ) THEN
                                   GOTO L_9680_
                               END IF
                           NEXT
         L_9680_:          B2_r! ( Ir! ) = B2_r! ( R3r! )
                           B3_r! ( Ir! ) = B3_r! ( R3r! )
         L_9700_:          R3r! = R3r! - 1
                           GOTO L_7340_

       SUB_9720_:          rem - FINISH
                           A2r! = 1
                           print
                           print "IT IS STARDATE" ; Fktr ( D0r! )
                           print
                           ON F9r! GOTO L_9790_ , L_10220_ , L_10380_ , L_10440_ , L_10470_ , L_10500_ , L_10520_ , L_10560_
                           ON F9r! - 8 GOTO L_10590_ , L_10650_ , L_10700_
         L_9790_:          rem - THE GAME HAS BEEN WON
                           print "YOU HAVE DESTROYED THE KLINGON INVASION FLEET"
                           print
                           print "     ***THE FEDERATION IS SAVED***"
                           G1r! = 1
                           IF ( A1r! = 0 ) OR ( B1r! <> 0 ) THEN
                               GOTO L_10200_
                           END IF
                           IF left$ ( S5s$ , 1 ) <> "E" THEN
                               GOTO L_10200_
                           END IF
                           IF 3 * S1r! + 35 * N1r! + C4r! >= 100 THEN
                               GOTO L_10200_
                           END IF
                           IF D0r! - J2r! <= 6 THEN
                               GOTO L_10000_
                           END IF
                           R8r! = .1 * S8r! * ( S8r! + 1 ) + .1
                           IF ( K1r! + K2r! ) / ( D0r! - J2r! ) < R8r! THEN
                               GOTO L_10200_
                           END IF
        L_10000_:          print
                           print "IN FACT, YOU HAVE DONE SO WELL THAT STARFLEET COMMAND"
                           IF S8r! = 4 THEN
                               GOTO L_10170_
                           END IF
                           print "PROMOTES YOU ONE STEP IN RANK, " ;
                           IF S8r! = 1 THEN
                               print "FROM BEGINNER  TO  NOVICE CLASS!"
                           END IF
                           IF S8r! = 2 THEN
                               print "FROM NOVICE  TO  SENIOR CLASS!"
                           END IF
                           IF S8r! = 3 THEN
                               print "FROM SENIOR  TO  EXPERT CLASS!"
                           END IF
                           print "   ***CONGRATULATIONS***"
                           GOTO L_10200_
        L_10170_:          print "PROMOTES YOU  TO  'COMMODORE EMERITUS'."
                           print
                           print "NOW YOU CAN RETIRE AND WRITE YOUR OWN STAR TREK GAME!"
        L_10200_:          GOSUB SUB_23290_
                           RETURN
        L_10220_:          rem - FED RESOURCES DEPLETED
                           print "YOUR TIME HAS RUN OUT, AND THE"
                           print "FEDERATION HAS BEEN CONQUERED."
                           print
                           print "YOUR STARSHIP IS NOW KLINGON PROPERY, AND YOU ARE PUT"
                           print "ON TRIAL AS A WAR CRIMINAL.  ON THE BASIS OF YOUR RECORD,"
                           IF R1r! * 3 > I1r! THEN
                               GOTO L_10350_
                           END IF
                           print "YOU ARE FOUND GUILTY AND SENTENCED  TO  DEATH!"
                           A1r! = 0
                           GOSUB SUB_23290_
                           RETURN
        L_10350_:          print "YOU ARE ACQUITTED"
                           GOSUB SUB_23290_
                           RETURN
        L_10380_:          rem - L.S. FAILURE
                           print "YOUR LIFE SUPPORT RESERVES HAVE RUN OUT, AND"
                           print "YOU WILL SOON DIE OF ASPHYXIATION"
        L_10410_:          print
                           print "YOUR STARSHIP IS A DERELICT IN SPACE."
                           GOTO L_10720_
        L_10440_:          rem - ENERGY GONE
                           print "YOUR ENERGY SUPPLY IS EXHAUSTED."
                           GOTO L_10410_
        L_10470_:          rem - BATTLE DEFEAT
                           print "THE " ; S5s$ ; " HAS BEEN DESTROYED IN BATTLE."
                           GOTO L_10720_
        L_10500_:          print "F9=6 INVALID"
                           RETURN
        L_10520_:          rem - NOVA
                           print "YOUR STARSHIP HAS BEEN DESTROYED BY A NOVA."
                           print "NICE SHOT, YOU HOCKEY PUCK!"
                           GOTO L_10720_
        L_10560_:          rem - SUPERNOVA
                           print "THE " ; S5s$ ; " HAS BEEN INCINERATED BY A SUPERNOVA."
                           GOTO L_10720_
        L_10590_:          rem - ABANDON ( NO BASES )
                           print "YOU HAVE BEEN CAPTURED BY THE KLINGONS.  if  YOU STILL"
                           print "HAD A STARBASE  TO  BE RETURNED  TO , YOU WOULD HAVE BEEN"
                           print "REPATRIATED AND GIVEN ANOTHER CHANCE.  SINCE YOU HAVE"
                           print "NO STARBASES, YOU WILL BE MERCILESSLY TORTURED  TO  DEATH!"
                           GOTO L_10720_
        L_10650_:          REM - SELF-DESTRUCT
                           print
                           print "THE " ; S5s$ ; " IS NOW AN EXPANDING CLOUD"
                           print "OF SUB-A TO MIC PARTICLES..."
                           GOTO L_10720_
        L_10700_:          rem - NOT REMATERIALIZED
                           print "STARBASE WAS UNABLE  TO  RE-MATERIALIZE YOUR STARSHIP."
        L_10720_:          print
                           IF left$ ( S5s$ , 1 ) = "F" THEN
                               S5s$ = ""
                           END IF
                           IF left$ ( S5s$ , 1 ) = "E" THEN
                               S5s$ = "FAERIE QUEENE"
                           END IF
                           A1r! = 0
                           IF R1r! = 0 THEN
                               GOTO L_11030_
                           END IF
                           G3r! = R4r! / I3r!
                           B8r! = ( R1r! + 2 * R2r! ) / ( I1r! + 2 * I4r! )
                           A3r! = G3r! / B8r!
                           IF A3r! < 1 + .5 + rnd ( 1 ) THEN
                               GOTO L_11000_
                           END IF
                           print "AS A RESULT OF YOUR ACTIONS, A TREATY WITH THE KLINGON"
                           print "EMPIRE HAS BEEN SIGNED.  THE TERMS OF THE TREATY ARE"
                           IF A3r! < 3 * rnd ( 1 ) THEN
                               GOTO L_10980_
                           END IF
                           print "FAVORABLE  TO  THE FEDERATION."
                           print
                           print "CONGRATULATIONS."
                           GOTO L_11010_
        L_10980_:          print "HIGHLY UNFAVORABLE  TO  THE FEDERATION."
                           GOTO L_11010_
        L_11000_:          print "THE FEDERATION WILL BE DESTROYED!"
        L_11010_:          GOSUB SUB_23290_
                           RETURN
        L_11030_:          print "SINCE YOU  TO OK THE LAST KLINGON WITH YOU, YOU ARE"
                           print "A MARTYR AND A HERO.  SOMEDAY MAYBE THEY'LL ERECT"
                           print "A STATUE IN YOUR MEMORY.  REST IN PEACE AND TRY NOT"
                           print " TO  THINK ABOUT PIGEONS!"
                           G1r! = 1
                           A1r! = 0
                           GOSUB SUB_23290_
                           RETURN

      SUB_11110_:          REM - HELP
                           IF C5s$ <> "DOCKED" THEN
                               GOTO L_11170_
                           END IF
                           print "ENSIGN CHEKOV-  'BUT CAPTAIN, WE'RE ALREADY DOCKED!'"
                           RETURN
        L_11170_:          IF D4_r! ( 9 ) = 0 THEN
                               GOTO L_11220_
                           END IF
                           print "SUBSPACE RADIO DAMAGED...CANNOT TRANSMIT."
                           RETURN
        L_11220_:          IF R3r! <> 0 THEN
                               GOTO L_11280_
                           END IF
                           print "LT. UHURA-  'CAPTAIN, I'M NOT GETTING ANY RESPONSE" ;
                           print " FROM STARBASE!'"
                           RETURN
        L_11280_:          N1r! = N1r! + 1
                           IF B6r! = 0 THEN
                               GOTO L_11330_
                           END IF
                           GOTO L_11450_
        L_11330_:          D1r! = 1E + 30
                           FOR Lr! = 1 TO R3r!
                               Xr! = 10 * sqr ( ( B2_r! ( Lr! ) - Q1r! ) ^ 2 + ( B3_r! ( Lr! ) - Q2r! ) ^ 2 )
                               IF Xr! > D1r! THEN
                                   GOTO L_11410_
                               END IF
                               D1r! = Xr!
                               Kr! = Lr!
        L_11410_:          NEXT Lr!
                           Q1r! = B2_r! ( Kr! )
                           Q2r! = B3_r! ( Kr! )
                           GOSUB SUB_16850_
        L_11450_:          Q_s$ ( S6r! , S7r! ) = "."
                           print
                           print "STARBASE IN QUADRANT" ; Q1r! ; "-" ; Q2r! ; "RESPONDS --" ;
                           print "  " ; S5s$ ; " DEMATERIALIZES."
                           P2r! = ( 1 - .98 ^ D1r! ) ^ .333333
                           FOR Lr! = 1 TO 3
                               IF Lr! = 1 THEN
                                   print "1ST " ;
                               END IF
                               IF Lr! = 2 THEN
                                   print "2ND " ;
                               END IF
                               IF Lr! = 3 THEN
                                   print "3RD " ;
                               END IF
                               print "ATTEMPT  TO  RE-MATERIALIZE THE " ; S5s$ ; ". . . . ." ;
                               IF rnd ( 1 ) > P2r! THEN
                                   GOTO L_11690_
                               END IF
                               print "FAILS."
                           NEXT Lr!
        L_11660_:          F9r! = 11
                           GOSUB SUB_9720_
                           RETURN
        L_11690_:          FOR Lr! = 1 TO 5
                               Ir! = B6r! + int ( 3 * rnd ( 1 ) ) - 1
                               IF ( Ir! < 1 ) OR ( Ir! > 10 ) THEN
                                   GOTO L_11810_
                               END IF
                               Jr! = B7r! + int ( 3 * rnd ( 1 ) ) - 1
                               IF ( Jr! < 1 ) OR ( Jr! > 10 ) THEN
                                   GOTO L_11810_
                               END IF
                               IF Q_s$ ( Ir! , Jr! ) = "." THEN
                                   GOTO L_11840_
                               END IF
        L_11810_:          NEXT Lr!
                           print "FAILS."
                           GOTO L_11660_
        L_11840_:          print "SUCCEEDS."
                           S6r! = Ir!
                           S7r! = Jr!
                           Q_s$ ( Ir! , Jr! ) = left$ ( S5s$ , 1 )
                           GOSUB SUB_6930_
                           print "LT. UHURA-  'CAPTAIN, WE MADE IT!'"
                           RETURN

      SUB_11910_:          rem - HITEM
                           P4r! = 2
                           L5r! = K3r!
                           Nr! = 1
                           FOR Kr! = 1 TO L5r!
                               IF H3_r! ( Kr! ) = 0 THEN
                                   GOTO L_12510_
                               END IF
                               D6r! = .9 + .01 * rnd ( 1 )
                               H2r! = H3_r! ( Kr! ) * D6r! ^ K7_r! ( Nr! )
                               P3r! = K6_r! ( Nr! )
                               Pr! = abs ( P3r! )
                               IF P4r! * H2r! < Pr! THEN
                                   Pr! = P4r! * H2r!
                               END IF
                               K6_r! ( Nr! ) = P3r! - sgn ( P3r! ) * abs ( Pr! )
                               X8r! = K4_r! ( Nr! )
                               Y8r! = K5_r! ( Nr! )
                               IF H2r! > 4.99 THEN
                                   GOTO L_12140_
                               END IF
                               print "VERY SMALL HIT ON "
                               GOTO L_12150_
        L_12140_:              print Fktr ( H2r! ) ; "UNIT HIT ON " ;
        L_12150_:              Ms$ = Q_s$ ( X8r! , Y8r! )
                               IF Ms$ = "K" THEN
                                   print "KLINGON AT" ;
                               END IF
                               IF Ms$ = "C" THEN
                                   print "COMMANDER AT" ;
                               END IF
                               print X8r! ; "-" ; Y8r!
                               IF K6_r! ( Nr! ) <> 0 THEN
                                   GOTO L_12360_
                               END IF
                               A5r! = X8r!
                               A6r! = Y8r!
                               T2s$ = Q_s$ ( X8r! , Y8r! )
                               GOSUB SUB_6390_
                               IF R1r! <> 0 THEN
                                   GOTO L_12520_
                               END IF
                               F9r! = 1
                               GOSUB SUB_9720_
                               GOTO L_12520_
        L_12360_:              IF K6_r! ( Nr! ) < 0 THEN
                                   GOTO L_12510_
                               END IF
                               IF rnd ( 1 ) < .9 THEN
                                   GOTO L_12510_
                               END IF
                               IF K6_r! ( Nr! ) > ( .4 + .4 * rnd ( 1 ) ) * P3r! THEN
                                   GOTO L_12510_
                               END IF
                               print
                               print "***MR. SPOCK - 'CAPTAIN, THE VESSEL AT SECTOR" ;
                               print X8r! ; "-" ; Y8r!
                               print "   HAS JUST LOST ITS FIREPOWER.'"
                               print
                               K6_r! ( Nr! ) = - K6_r! ( Nr! )
        L_12510_:              Nr! = Nr! + 1
        L_12520_:          NEXT Kr!
                           RETURN

      SUB_12540_:          REM - IMPULSE
                           J3r! = 0
                           IF D4_r! ( 7 ) <> 0 THEN
                               GOTO L_13040_
                           END IF
                           IF E1r! <= 75 THEN
                               GOTO L_12700_
                           END IF
                           INPUT "ENTER COURSE AND DISTANCE" ; D2r! , D1r!
                           IF D2r! < 0 THEN
                               RETURN
                           END IF
                           P3r! = 50 + 250 * D1r!
                           IF P3r! < E1r! THEN
                               GOTO L_12820_
                           END IF
        L_12700_:          print
                           print "1ST OFFICER SPOCK-  'CAPTAIN, THE IMPULSE ENGINES"
                           print "REQUIRE 50 UNITS OF ENERGY  TO  ENGAGE, PLUS 250 UNITS"
                           print "PER " ;
                           IF E1r! > 75 THEN
                               GOTO L_12790_
                           END IF
                           print "QUADRANT.  THEY ARE, THEREFORE, USELESS NOW.'"
                           RETURN
        L_12790_:          print "QUADRANT.  WE CAN GO, THEREFORE, A MAXIMUM OF " ;
                           print Fktr ( .004 * ( E1r! - 50 ) - .05 ) ; "QUADRANTS.'"
                           RETURN
        L_12820_:          T1r! = D1r! / .4
                           IF T1r! < R5r! THEN
                               GOTO SUB_12920_
                           END IF
                           print "1ST OFFICER SPOCK-  'CAPTAIN, OUR SPEED UNDER IMPULSE"
                           print "POWER IS ONLY 4 SECTORS PER STARDATE.  ARE YOU SURE"
                           INPUT "WE DARE SPEND THE TIME'" ; Bs$
                           IF left$ ( Bs$ , 1 ) <> "Y" THEN
                               RETURN
                           END IF

      SUB_12920_:          GOSUB SUB_13480_
                           J3r! = 1
                           IF A2r! <> 0 THEN
                               RETURN
                           END IF
                           E1r! = E1r! - P3r!
                           IF E1r! > 0 THEN
                               RETURN
                           END IF
                           F9r! = 4
                           GOSUB SUB_9720_
                           RETURN
        L_13040_:          print "IMPULSE ENGINES DAMAGED."
                           RETURN

      SUB_13060_:          REM - LRSCAN
                           Ns$ = "    #"
                           print
                           IF D4_r! ( 2 ) <> 0 THEN
                               GOTO L_13460_
                           END IF
                           print "L.R. SCAN FOR  QUADRANT" ; Q1r! ; "-" ; Q2r!
                           print
                           Ir! = Q1r! - 1
                           Jr! = Q1r! + 1
                           Kr! = Q2r! - 1
                           Lr! = Q2r! + 1
                           FOR Mr! = Ir! TO Jr!
                               FOR Nr! = Kr! TO Lr!
                                   IF ( Mr! <= 0 ) OR ( Mr! > 8 ) THEN
                                       GOTO L_13360_
                                   END IF
                                   IF ( Nr! <= 0 ) OR ( Nr! > 8 ) THEN
                                       GOTO L_13360_
                                   END IF
                                   IF D4_r! ( 11 ) = 0 THEN
                                       S2_r! ( Mr! , Nr! ) = 1
                                   END IF
                                   IF G_r! ( Mr! , Nr! ) >= 1000 THEN
                                       print "  ***" ;
                                   END IF
                                   IF G_r! ( Mr! , Nr! ) < 1000 THEN
                                       print spc ( 5 - len ( str$ ( G_r! ( Mr! , Nr! ) ) ) ) ; G_r! ( Mr! , Nr! ) ;
                                   END IF
                                   GOTO L_13370_
        L_13360_:                  print Ns$ ;
        L_13370_:              NEXT Nr!
                               print
                           NEXT Mr!
                           IF D4_r! ( 11 ) = 0 THEN
                               RETURN
                           END IF
                           print
                           print "***WARNING*** - COMPUTER DISABLED - SCAN NOT RECORDED."
                           RETURN
        L_13460_:          print "LONG RANGE SENSORS DAMAGED."
                           RETURN

      SUB_13480_:          REM - MOVE
                           A5r! = ( 15 - D2r! ) * .5235988
                           D4r! = - sin ( A5r! )
                           D6r! = cos ( A5r! )
                           B8r! = abs ( D4r! )
                           IF abs ( D6r! ) > B8r! THEN
                               B8r! = abs ( D6r! )
                           END IF
                           D4r! = D4r! / B8r!
                           D6r! = D6r! / B8r!
                           T5r! = 0
                           T6r! = 0
                           IF D0r! + T1r! < F1_r! ( 2 ) THEN
                               GOTO L_13670_
                           END IF
                           T5r! = 1
                           C5s$ = "RED"
                           D1r! = D1r! * ( F1_r! ( 2 ) - D0r! ) / T1r! + .1
                           T1r! = F1_r! ( 2 ) - D0r! + .00001
        L_13670_:          Q_s$ ( S6r! , S7r! ) = "."
                           X7r! = S6r!
                           Y7r! = S7r!
                           H9r! = int ( 10 * D1r! * B8r! + .5 )
                           IF H9r! = 0 THEN
                               GOTO L_13950_
                           END IF
                           FOR Lr! = 1 TO H9r!
                               X7r! = X7r! + D4r!
                               X1r! = int ( X7r! + .5 )
                               Y7r! = Y7r! + D6r!
                               Y1r! = int ( Y7r! + .5 )
                               IF ( X1r! < 1 ) OR ( X1r! > 10 ) THEN
                                   GOTO L_14420_
                               END IF
                               IF ( Y1r! < 1 ) OR ( Y1r! > 10 ) THEN
                                   GOTO L_14420_
                               END IF
                               IF Q_s$ ( X1r! , Y1r! ) = "O" THEN
                                   GOTO L_13920_
                               END IF
                               IF Q_s$ ( X1r! , Y1r! ) <> "." THEN
                                   GOTO L_14090_
                               END IF
                           NEXT Lr!
        L_13920_:          D1r! = .1 * sqr ( ( S6r! - X1r! ) ^ 2 + ( S7r! - Y1r! ) ^ 2 )
                           S6r! = X1r!
                           S7r! = Y1r!
        L_13950_:          F4r! = S6r!
                           F5r! = S7r!
                           IF Q_s$ ( X1r! , Y1r! ) <> "O" THEN
                               GOTO L_15150_
                           END IF
                           T2r! = Fkta ( 1 )
                           T3r! = Fkta ( 1 )
                           Q1r! = Fkta ( 1 )
                           Q2r! = Fkta ( 1 )
                           S6r! = Fktb ( 1 )
                           S7r! = Fktb ( 1 )
                           print
                           print "*** SPACE PORTAL ENTERED ***"
                           GOTO L_15090_
        L_14090_:          T6r! = 1
                           Kr! = 50 * D1r! / T1r!
                           D1r! = .1 * sqr ( ( S6r! - X1r! ) ^ 2 + ( S7r! - Y1r! ) ^ 2 )
                           IF ( Q_s$ ( X1r! , Y1r! ) = "K" ) OR ( Q_s$ ( X1r! , Y1r! ) = "C" ) THEN
                               GOTO L_14360_
                           END IF
                           print
                           print S5s$ ; " BLOCKED BY " ;
                           IF Q_s$ ( X1r! , Y1r! ) = "*" THEN
                               print "STAR AT" ;
                           END IF
                           IF Q_s$ ( X1r! , Y1r! ) = "B" THEN
                               print "STARBASE AT" ;
                           END IF
                           print " SECTOR" ; X1r! ; "-" ; Y1r! ; "...."
                           print "EMERGENCY S TO P REQUIRED" ; Fktr ( Kr! ) ; "UNITS OF ENERGY."
                           E1r! = E1r! - Kr!
                           S6r! = int ( X7r! - D4r! + .5 )
                           F4r! = S6r!
                           S7r! = int ( Y7r! - D6r! + .5 )
                           F5r! = S7r!
                           IF E1r! > 0 THEN
                               GOTO L_15150_
                           END IF
                           F9r! = 4
                           GOSUB SUB_9720_
                           RETURN
        L_14360_:          S6r! = X1r!
                           S7r! = Y1r!
                           GOSUB SUB_22840_
                           F4r! = S6r!
                           F5r! = S7r!
                           GOTO L_15150_
        L_14420_:          IF K3r! = 0 THEN
                               GOTO L_14550_
                           END IF
                           FOR Lr! = 1 TO K3r!
                               F3r! = sqr ( ( X1r! - K4_r! ( Lr! ) ) ^ 2 + ( Y1r! - K5_r! ( Lr! ) ) ^ 2 )
                               K8_r! ( Lr! ) = .5 * ( F3r! + K7_r! ( Lr! ) )
                           NEXT Lr!
                           IF G_r! ( Q1r! , Q2r! ) <> 1000 THEN
                               GOSUB SUB_2220_
                           END IF
                           IF A2r! <> 0 THEN
                               RETURN
                           END IF
        L_14550_:          X7r! = 10 * ( Q1r! - 1 ) + S6r!
                           Y7r! = 10 * ( Q2r! - 1 ) + S7r!
                           X1r! = int ( X7r! + 10 * D1r! * B8r! * D4r! + .5 )
                           Y1r! = int ( Y7r! + 10 * D1r! * B8r! * D6r! + .5 )
                           L6r! = 0
        L_14600_:          L5r! = 0
                           IF X1r! > 0 THEN
                               GOTO L_14660_
                           END IF
                           X1r! = - X1r! + 1
                           L5r! = 1
        L_14660_:          IF Y1r! > 0 THEN
                               GOTO L_14710_
                           END IF
                           Y1r! = - Y1r! + 1
                           L5r! = 1
        L_14710_:          IF X1r! <= 80 THEN
                               GOTO L_14760_
                           END IF
                           X1r! = 161 - X1r!
                           L5r! = 1
        L_14760_:          IF Y1r! <= 80 THEN
                               GOTO L_14810_
                           END IF
                           Y1r! = 161 - Y1r!
                           L5r! = 1
        L_14810_:          IF L5r! = 0 THEN
                               GOTO L_14860_
                           END IF
                           L6r! = 1
                           GOTO L_14600_
        L_14860_:          IF L6r! = 0 THEN
                               GOTO L_15020_
                           END IF
                           print
                           print "*** MESSAGE FROM STARFLEET COMMAND.....STARDATE" ;
                           print Fktr ( D0r! )
                           print
                           print "'PERMISSION  TO  CROSS GALACTIC " ;
                           print "PERIMETER IS HEREBY DENIED.'"
                           print "        'SHUT DOWN ENGINES IMMMEDIATELY!'"
                           print
                           print "SCOTT HERE - 'ENGINES SHUT DOWN AT " ;
                           Z1r! = int ( ( X1r! + 9 ) / 10 )
                           Z2r! = int ( ( Y1r! + 9 ) / 10 )
                           print "QUADRANT" ; Z1r! ; "-" ; Z2r! ; ",  " ;
                           print "SECTOR" ; X1r! - 10 * ( Z1r! - 1 ) ; "-" ; Y1r! - 10 * ( Z2r! - 1 ) ; "'"
        L_15020_:          IF T5r! <> 0 THEN
                               RETURN
                           END IF
                           Q1r! = int ( ( X1r! + 9 ) / 10 )
                           Q2r! = int ( ( Y1r! + 9 ) / 10 )
                           S6r! = X1r! - 10 * ( Q1r! - 1 )
                           S7r! = Y1r! - 10 * ( Q2r! - 1 )
        L_15090_:          GOSUB SUB_17750_
                           print
                           print "ENTERING THE " ; G2s$ ; " QUADRANT  (" ; Q1r! ; "-" ; Q2r! ; ")"
                           Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
                           GOSUB SUB_16850_
                           RETURN
        L_15150_:          Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
                           IF L6r! = 1 THEN
                               RETURN
                           END IF
                           IF K3r! = 0 THEN
                               GOTO L_15280_
                           END IF
                           FOR Lr! = 1 TO K3r!
                               F3r! = sqr ( ( F4r! - K4_r! ( Lr! ) ) ^ 2 + ( F5r! - K5_r! ( Lr! ) ) ^ 2 )
                               K8_r! ( Lr! ) = .5 * ( K7_r! ( Lr! ) + F3r! )
                               K7_r! ( Lr! ) = F3r!
                           NEXT Lr!
                           GOSUB SUB_27710_
        L_15280_:          GOSUB SUB_16760_
                           RETURN

      SUB_15300_:          rem - MOVECOM
                           Ar! = 1
                           Br! = 1
                           FOR Kr! = 1 TO K3r!
                               Cr! = K4_r! ( Kr! )
                               Dr! = K5_r! ( Kr! )
                               IF Q_s$ ( Cr! , Dr! ) = "C" THEN
                                   GOTO L_15400_
                               END IF
                           NEXT Kr!
        L_15400_:          Nr! = 0
                           Fr! = K6_r! ( Kr! ) + 100 * K3r!
                           IF Fr! > 1000 THEN
                               Nr! = int ( rnd ( 1 ) * K7_r! ( Kr! ) + 1 )
                           END IF
                           IF ( ( C5s$ = "DOCKED" ) AND ( ( B4r! <> Q1r! ) OR ( B5r! <> Q2r! ) ) ) THEN
                               Nr! = - S8r!
                           END IF
                           IF Nr! = 0 THEN
                               Nr! = int ( ( ( Fr! + 200 * rnd ( 1 ) ) / 150 ) - 5 )
                           END IF
                           IF Nr! = 0 THEN
                               RETURN
                           END IF
                           IF ( Nr! > 0 ) AND ( K7_r! ( Kr! ) < 1.5 ) THEN
                               RETURN
                           END IF
                           IF abs ( Nr! ) > S8r! THEN
                               Nr! = sgn ( Nr! ) * abs ( S8r! )
                           END IF
                           Tr! = abs ( Nr! )
                           Pr! = S6r! - Cr!
                           Qr! = S7r! - Dr!
                           IF 2 * abs ( Pr! ) < abs ( Qr! ) THEN
                               Pr! = 0
                           END IF
                           IF 2 * abs ( Qr! ) < abs ( Pr! ) THEN
                               Qr! = 0
                           END IF
                           IF Pr! <> 0 THEN
                               Pr! = sgn ( Pr! * Nr! )
                           END IF
                           IF Qr! <> 0 THEN
                               Qr! = sgn ( Qr! * Nr! )
                           END IF
                           Rr! = Cr!
                           Sr! = Dr!
                           Q_s$ ( Cr! , Dr! ) = "."
                           FOR L2r! = 1 TO Tr!
                               Lr! = Rr! + Pr!
                               Mr! = Sr! + Qr!
                               IF ( Lr! > 0 ) AND ( Lr! <= 10 ) THEN
                                   GOTO L_15850_
                               END IF
                               ON sgn ( Nr! ) + 2 GOTO L_16370_ , L_16040_ , L_16040_
        L_15850_:              IF ( Mr! > 0 ) AND ( Mr! <= 10 ) THEN
                                   GOTO L_15890_
                               END IF
                               ON sgn ( Nr! ) + 2 GOTO L_16370_ , L_15920_ , L_15920_
        L_15890_:              IF Q_s$ ( Lr! , Mr! ) = "." THEN
                                   GOTO L_16170_
                               END IF
        L_15920_:              IF ( Qr! = Br! ) OR ( Pr! = 0 ) THEN
                                   GOTO L_16040_
                               END IF
                               Mr! = Sr! + Br!
                               IF ( Mr! > 0 ) AND ( Mr! <= 10 ) THEN
                                   GOTO L_16000_
                               END IF
                               ON sgn ( Nr! ) + 2 GOTO L_16370_ , L_16030_ , L_16030_
        L_16000_:              IF Q_s$ ( Lr! , Mr! ) = "." THEN
                                   GOTO L_16170_
                               END IF
        L_16030_:              Br! = - Br!
        L_16040_:              IF ( Pr! = Ar! ) OR ( Qr! = 0 ) THEN
                                   GOTO L_16190_
                               END IF
                               Lr! = Rr! + Ar!
                               IF ( Lr! > 0 ) AND ( Lr! <= 10 ) THEN
                                   GOTO L_16120_
                               END IF
                               ON sgn ( Nr! ) + 2 GOTO L_16370_ , L_16150_ , L_16150_
        L_16120_:              IF Q_s$ ( Lr! , Mr! ) = "." THEN
                                   GOTO L_16170_
                               END IF
        L_16150_:              Ar! = - Ar!
                               GOTO L_16190_
        L_16170_:              Rr! = Lr!
                               Sr! = Mr!
        L_16190_:          NEXT L2r!
                           Q_s$ ( Rr! , Sr! ) = "C"
                           IF ( Rr! = Cr! ) AND ( Sr! = Dr! ) THEN
                               RETURN
                           END IF
                           K4_r! ( Kr! ) = Rr!
                           K5_r! ( Kr! ) = Sr!
                           K7_r! ( Kr! ) = sqr ( ( S6r! - Rr! ) ^ 2 + ( S7r! - Sr! ) ^ 2 )
                           K8_r! ( Kr! ) = K7_r! ( Kr! )
                           IF Nr! > 0 THEN
                               print "***COMMANDER ADVANCES  TO " ;
                           END IF
                           IF Nr! < 0 THEN
                               print "***COMMANDER RETREATS  TO " ;
                           END IF
                           print " SECTOR" ; Rr! ; "-" ; Sr!
                           GOSUB SUB_27710_
                           RETURN
        L_16370_:          Ir! = Q1r! + int ( ( Lr! + 9 ) / 10 ) - 1
                           Jr! = Q2r! + int ( ( Mr! + 9 ) / 10 ) - 1
                           IF ( Ir! < 1 ) OR ( Ir! > 8 ) THEN
                               GOTO L_16730_
                           END IF
                           IF ( Jr! < 1 ) OR ( Jr! > 8 ) THEN
                               GOTO L_16730_
                           END IF
                           FOR L3r! = 1 TO R2r!
                               IF ( C1_r! ( L3r! ) = Ir! ) AND ( C2_r! ( L3r! ) = Jr! ) THEN
                                   GOTO L_16730_
                               END IF
                           NEXT L3r!
                           print "***COMMANDER ESCAPES  TO  " ;
                           print "QUADRANT" ; Ir! ; "-" ; Jr! ; "  (AND REGAINS STRENGTH)"
                           K4_r! ( Kr! ) = K4_r! ( K3r! )
                           K5_r! ( Kr! ) = K5_r! ( K3r! )
                           K7_r! ( Kr! ) = K7_r! ( K3r! )
                           K8_r! ( Kr! ) = K8_r! ( K3r! )
                           K6_r! ( Kr! ) = K6_r! ( K3r! )
                           K3r! = K3r! - 1
                           C3r! = 0
                           IF C5s$ <> "DOCKED" THEN
                               GOSUB SUB_16760_
                           END IF
                           GOSUB SUB_27710_
                           G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 100
                           G_r! ( Ir! , Jr! ) = G_r! ( Ir! , Jr! ) + 100
                           FOR L3r! = 1 TO R2r!
                               IF ( C1_r! ( L3r! ) = Q1r! ) AND ( C2_r! ( L3r! ) = Q2r! ) THEN
                                   GOTO L_16700_
                               END IF
                           NEXT L3r!
        L_16700_:          C1_r! ( L3r! ) = Ir!
                           C2_r! ( L3r! ) = Jr!
                           RETURN
        L_16730_:          Ar! = - Ar!
                           Br! = - Br!
                           GOTO L_16190_

      SUB_16760_:          REM - NEWCOND
                           C5s$ = "GREEN"
                           IF E1r! < 1000 THEN
                               C5s$ = "YELLOW"
                           END IF
                           IF G_r! ( Q1r! , Q2r! ) > 99 THEN
                               C5s$ = "RED"
                           END IF
                           RETURN

      SUB_16850_:          rem - NEW QUAD
                           J4r! = 1
                           B6r! = 0
                           B7r! = 0
                           K3r! = 0
                           C3r! = 0
                           Ur! = G_r! ( Q1r! , Q2r! )
                           IF Ur! > 999 THEN
                               GOTO L_17680_
                           END IF
                           K3r! = int ( .01 * Ur! )
                           FOR Ar! = 1 TO 10
                               FOR Br! = 1 TO 10
                                   Q_s$ ( Ar! , Br! ) = "."
                               NEXT Br!
                           NEXT Ar!
                           Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
                           Ur! = G_r! ( Q1r! , Q2r! )
                           IF Ur! < 100 THEN
                               GOTO L_17330_
                           END IF
                           Ur! = Ur! - 100 * K3r!
                           FOR Ar! = 1 TO K3r!
        L_17080_:              Sr! = Fktb ( 1 )
                               K4_r! ( Ar! ) = Sr!
                               Tr! = Fktb ( 1 )
                               K5_r! ( Ar! ) = Tr!
                               IF Q_s$ ( Sr! , Tr! ) <> "." THEN
                                   GOTO L_17080_
                               END IF
                               Q_s$ ( Sr! , Tr! ) = "K"
                               K7_r! ( Ar! ) = sqr ( ( S6r! - Sr! ) ^ 2 + ( S7r! - Tr! ) ^ 2 )
                               K8_r! ( Ar! ) = K7_r! ( Ar! )
                               K6_r! ( Ar! ) = rnd ( 1 ) * 150 + 325
                           NEXT Ar!
                           IF R2r! = 0 THEN
                               GOTO L_17320_
                           END IF
                           FOR Ar! = 1 TO R2r!
                               IF ( C1_r! ( Ar! ) = Q1r! ) AND ( C2_r! ( Ar! ) = Q2r! ) THEN
                                   GOTO L_17290_
                               END IF
                           NEXT Ar!
                           GOTO L_17320_
        L_17290_:          Q_s$ ( Sr! , Tr! ) = "C"
                           K6_r! ( K3r! ) = 1000 + 400 * rnd ( 1 )
                           C3r! = 1
        L_17320_:          GOSUB SUB_27710_
        L_17330_:          IF Ur! < 10 THEN
                               GOTO L_17430_
                           END IF
                           Ur! = Ur! - 10
        L_17370_:          B6r! = Fktb ( 1 )
                           B7r! = Fktb ( 1 )
                           IF Q_s$ ( B6r! , B7r! ) <> "." THEN
                               GOTO L_17370_
                           END IF
                           Q_s$ ( B6r! , B7r! ) = "B"
        L_17430_:          GOSUB SUB_16760_
                           IF Ur! < 1 THEN
                               RETURN
                           END IF
                           FOR Ar! = 1 TO Ur!
        L_17480_:              Sr! = Fktb ( 1 )
                               Tr! = Fktb ( 1 )
                               IF Q_s$ ( Sr! , Tr! ) <> "." THEN
                                   GOTO L_17480_
                               END IF
                               Q_s$ ( Sr! , Tr! ) = "*"
                           NEXT Ar!
                           IF ( T2r! <> Q1r! ) OR ( T3r! <> Q2r! ) THEN
                               RETURN
                           END IF
        L_17580_:          Sr! = Fktb ( 1 )
                           Tr! = Fktb ( 1 )
                           IF Q_s$ ( Sr! , Tr! ) <> "." THEN
                               GOTO L_17580_
                           END IF
                           Q_s$ ( Sr! , Tr! ) = "O"
                           print
                           print "MR. SPOCK - 'CAPTAIN, THE SHORT-RANGE SENSORS DETECT A"
                           print "SPACE WARP SOMEWHERE IN THIS QUADRANT.'"
                           RETURN
        L_17680_:          FOR Ar! = 1 TO 10
                               FOR Br! = 1 TO 10
                                   Q_s$ ( Ar! , Br! ) = "."
                               NEXT Br!
                           NEXT Ar!
                           Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
                           RETURN

      SUB_17750_:          G4s$ = "III"
                           Lr! = 2
                           IF Q2r! >= 5 THEN
                               GOTO L_17810_
                           END IF
                           Lr! = 1
        L_17810_:          G2s$ = G1_s$ ( 2 * ( Q1r! - 1 ) + Lr! )
                           Lr! = Q2r!
                           IF Lr! <= 4 THEN
                               GOTO L_17870_
                           END IF
                           Lr! = Q2r! - 4
        L_17870_:          G3s$ = "IV"
                           IF Lr! = 4 THEN
                               GOTO L_17920_
                           END IF
                           G3s$ = left$ ( G4s$ , Lr! )
        L_17920_:          G2s$ = G2s$ + " " + G3s$
                           RETURN

      SUB_17940_:          REM - NOVA
                           IF rnd ( 1 ) > .1 THEN
                               GOTO L_18000_
                           END IF
                           GOSUB SUB_26450_
                           RETURN
        L_18000_:          Q_s$ ( A5r! , A6r! ) = "."
                           print "***STAR AT SECTOR" ; A5r! ; "-" ; A6r! ; "NOVAS."
                           G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 1
                           S1r! = S1r! + 1
                           B9r! = 1
                           T6r! = 1
                           T7r! = 1
                           Kr! = 0
                           X1r! = 0
                           Y1r! = 0
                           H4_r! ( B9r! , 1 ) = A5r!
                           H4_r! ( B9r! , 2 ) = A6r!
        L_18120_:          FOR Mr! = B9r! TO T6r!
                               FOR Qr! = 1 TO 3
                                   FOR Jr! = 1 TO 3
                                       IF Jr! * Qr! = 4 THEN
                                           GOTO L_19310_
                                       END IF
                                       J5r! = H4_r! ( Mr! , 1 ) + Qr! - 2
                                       J6r! = H4_r! ( Mr! , 2 ) + Jr! - 2
                                       IF ( J5r! < 1 ) OR ( J5r! > 10 ) THEN
                                           GOTO L_19310_
                                       END IF
                                       IF ( J6r! < 1 ) OR ( J6r! > 10 ) THEN
                                           GOTO L_19310_
                                       END IF
                                       IF Q_s$ ( J5r! , J6r! ) = "." THEN
                                           GOTO L_19310_
                                       END IF
                                       IF Q_s$ ( J5r! , J6r! ) = "O" THEN
                                           GOTO L_19310_
                                       END IF
                                       IF Q_s$ ( J5r! , J6r! ) <> "*" THEN
                                           GOTO L_18490_
                                       END IF
                                       IF rnd ( 1 ) >= .1 THEN
                                           GOTO L_18420_
                                       END IF
                                       X2r! = J5r!
                                       Y2r! = J6r!
                                       GOSUB SUB_26450_
                                       RETURN
        L_18420_:                      T7r! = T7r! + 1
                                       H4_r! ( T7r! , 1 ) = J5r!
                                       H4_r! ( T7r! , 2 ) = J6r!
                                       G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 1
                                       S1r! = S1r! + 1
                                       print "***STAR AT SECTOR" ; J5r! ; "-" ; J6r! ; "NOVAS."
                                       GOTO L_19290_
        L_18490_:                      IF Q_s$ ( J5r! , J6r! ) <> "B" THEN
                                           GOTO L_18670_
                                       END IF
                                       G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 10
                                       FOR Vr! = 1 TO R3r!
                                           IF ( B2_r! ( Vr! ) <> Q1r! ) OR ( B3_r! ( Vr! ) <> Q2r! ) THEN
                                               GOTO L_18590_
                                           END IF
                                           B2_r! ( Vr! ) = B2_r! ( R3r! )
                                           B3_r! ( Vr! ) = B3_r! ( R3r! )
        L_18590_:                      NEXT Vr!
                                       R3r! = R3r! - 1
                                       B6r! = 0
                                       B7r! = 0
                                       B1r! = B1r! + 1
                                       GOSUB SUB_16760_
                                       print "***STARBASE AT SECTOR" ; J5r! ; "-" ; J6r! ; "DESTROYED."
                                       GOTO L_19290_
        L_18670_:                      IF ( S6r! <> J5r! ) OR ( S7r! <> J6r! ) THEN
                                           GOTO L_18970_
                                       END IF
                                       print "***STARSHIP BUFFETED BY NOVA."
                                       IF S4r! <> 0 THEN
                                           GOTO L_18760_
                                       END IF
                                       E1r! = E1r! - 1000
                                       GOTO L_18860_
        L_18760_:                      IF S3r! >= 1000 THEN
                                           GOTO L_18920_
                                       END IF
                                       D6r! = 1000 - S3r!
                                       E1r! = E1r! - D6r!
                                       GOSUB SUB_16760_
                                       S3r! = 0
                                       S4r! = 0
                                       print "***STARSHIP SHIELDS KNOCKED OUT."
                                       D4_r! ( 8 ) = .005 * D5r! * rnd ( 1 ) * D6r!
        L_18860_:                      IF E1r! > 0 THEN
                                           GOTO L_18930_
                                       END IF
                                       F9r! = 7
                                       GOSUB SUB_9720_
                                       RETURN
        L_18920_:                      S3r! = S3r! - 1000
        L_18930_:                      X1r! = X1r! + S6r! - H4_r! ( Mr! , 1 )
                                       Y1r! = Y1r! + S7r! - H4_r! ( Mr! , 2 )
                                       Kr! = Kr! + 1
                                       GOTO L_19310_
        L_18970_:                      IF Q_s$ ( J5r! , J6r! ) <> "C" THEN
                                           GOTO L_19240_
                                       END IF
                                       FOR Vr! = 1 TO K3r!
                                           IF ( K4_r! ( Vr! ) = J5r! ) AND ( K5_r! ( Vr! ) = J6r! ) THEN
                                               GOTO L_19050_
                                           END IF
                                       NEXT Vr!
        L_19050_:                      K6_r! ( Vr! ) = K6_r! ( Vr! ) - 800
                                       IF K6_r! ( Vr! ) <= 0 THEN
                                           GOTO L_19240_
                                       END IF
                                       N5r! = J5r! + J5r! - H4_r! ( Mr! , 1 )
                                       N6r! = J6r! + J6r! - H4_r! ( Mr! , 2 )
                                       print "***COMMANDER AT SECTOR" ; J5r! ; "-" ; J6r! ; "DAMAGED" ;
                                       IF ( N5r! < 1 ) OR ( N5r! > 10 ) OR ( N6r! < 1 ) OR ( N6r! > 10 ) THEN
                                           GOTO L_19220_
                                       END IF
                                       print " AND BUFFETED  TO  SECTOR" ; N5r! ; "-" ; N6r!
                                       Q_s$ ( N5r! , N6r! ) = "C"
                                       K4_r! ( Vr! ) = N5r!
                                       K5_r! ( Vr! ) = N6r!
                                       K7_r! ( Vr! ) = sqr ( ( S6r! - N5r! ) ^ 2 + ( S7r! - N6r! ) ^ 2 )
                                       K8_r! ( Vr! ) = K7_r! ( Vr! )
                                       Q_s$ ( J5r! , J6r! ) = "."
        L_19220_:                      print
                                       GOTO L_19310_
        L_19240_:                      A5r! = J5r!
                                       A6r! = J6r!
                                       T2s$ = Q_s$ ( J5r! , J6r! )
                                       GOSUB SUB_6390_
                                       GOTO L_19310_
        L_19290_:                      print
                                       Q_s$ ( J5r! , J6r! ) = "."
        L_19310_:                  NEXT Jr!
                               NEXT Qr!
                           NEXT Mr!
                           IF T6r! = T7r! THEN
                               GOTO L_19400_
                           END IF
                           B9r! = T6r! + 1
                           T6r! = T7r!
                           GOTO L_18120_
        L_19400_:          IF Kr! = 0 THEN
                               RETURN
                           END IF
                           D1r! = Kr! * .1
                           IF X1r! <> 0 THEN
                               X1r! = sgn ( X1r! )
                           END IF
                           IF Y1r! <> 0 THEN
                               Y1r! = sgn ( Y1r! )
                           END IF
                           Ir! = 3 * ( X1r! + 1 ) + Y1r! + 2
                           D2r! = C5_r! ( Ir! )
                           IF D2r! = 0 THEN
                               D1r! = 0
                           END IF
                           IF D1r! = 0 THEN
                               RETURN
                           END IF
                           print
                           print "FORCE OF NOVA DISPLACES STARSHIP."
                           GOSUB SUB_13480_
                           RETURN

      SUB_19620_:          rem - PHASERS
                           Pr! = 2
                           J3r! = 1
                           IF C5s$ <> "DOCKED" THEN
                               GOTO L_19700_
                           END IF
                           print "PHASERS CAN'T BE FIRED THRU BASE SHIELDS."
                           GOTO L_19860_
        L_19700_:          IF D4_r! ( 3 ) = 0 THEN
                               GOTO L_19750_
                           END IF
                           print "PHASER BANKS DAMAGED."
                           GOTO L_19860_
        L_19750_:          IF S4r! = 0 THEN
                               GOTO L_19800_
                           END IF
                           print "SHIELDS MUST BE DOWN  TO  FIRE PHASERS."
                           GOTO L_19860_
        L_19800_:          IF K3r! > 0 THEN
                               GOTO L_19880_
                           END IF
                           print
                           print "MR. SPOCK - 'CAPTAIN, THE SHORT-RANGE SENSORS"
                           print "    DETECT NO KLINGONS IN THIS QUADRANT.'"
        L_19860_:          J3r! = 0
                           RETURN
        L_19880_:          print "PHASERS LOCKED ON TARGET.  ENERGY AVAILABLE=" ;
        L_19890_:          print .01 * int ( 100 * E1r! )
                           INPUT "UNITS  TO  FIRE" ; P1r!
                           IF P1r! < E1r! THEN
                               GOTO L_19960_
                           END IF
                           print "ENERGY AVAILABLE =" ;
                           GOTO L_19890_
        L_19960_:          IF P1r! > 0 THEN
                               GOTO L_20010_
                           END IF
                           J3r! = 0
                           RETURN
        L_20010_:          E1r! = E1r! - P1r!
                           IF D4_r! ( 11 ) = 0 THEN
                               GOTO L_20090_
                           END IF
                           P1r! = P1r! * ( rnd ( 1 ) * .5 + .5 )
                           print
                           print "COMPUTER MALFUNCTION HAMPERS PHASER ACCURACY."
                           print
        L_20090_:          Er! = P1r!
                           IF K3r! = 0 THEN
                               GOTO L_20470_
                           END IF
                           Er! = 0
                           T5r! = ( K3r! * ( K3r! + 1 ) ) / 2
                           FOR Ir! = 1 TO K3r!
                               H3_r! ( Ir! ) = ( ( K3r! + 1 - Ir! ) / T5r! ) * P1r!
                               H5_r! ( Ir! ) = abs ( K6_r! ( Ir! ) ) / ( Pr! * .9 ^ K7_r! ( Ir! ) )
                               IF H3_r! ( Ir! ) <= H5_r! ( Ir! ) THEN
                                   GOTO L_20230_
                               END IF
                               Er! = Er! + ( H3_r! ( Ir! ) - H5_r! ( Ir! ) )
                               H3_r! ( Ir! ) = H5_r! ( Ir! )
        L_20230_:          NEXT Ir!
                           IF Er! = 0 THEN
                               GOTO L_20410_
                           END IF
                           FOR Ir! = 1 TO K3r!
                               R7r! = H5_r! ( Ir! ) - H3_r! ( Ir! )
                               IF R7r! <= 0 THEN
                                   GOTO L_20370_
                               END IF
                               IF R7r! >= Er! THEN
                                   GOTO L_20390_
                               END IF
                               H3_r! ( Ir! ) = H5_r! ( Ir! )
                               Er! = Er! - R7r!
        L_20370_:          NEXT Ir!
                           GOTO L_20410_
        L_20390_:          H3_r! ( Ir! ) = H3_r! ( Ir! ) + Er!
                           Er! = 0
        L_20410_:          GOSUB SUB_11910_
                           IF ( Er! <> 0 ) AND ( A2r! = 0 ) THEN
                               GOTO L_20470_
                           END IF
                           J3r! = 1
                           RETURN
        L_20470_:          print Fktr ( Er! ) ; "EXPENDED ON EMPTY SPACE."
                           J3r! = 1
                           RETURN

      SUB_20500_:          REM - PHOTONS
                           J3r! = 1
                           IF D4_r! ( 4 ) = 0 THEN
                               GOTO L_20570_
                           END IF
                           print "PHOTON TUBES DAMAGED."
                           GOTO L_20660_
        L_20570_:          IF T4r! <> 0 THEN
                               GOTO L_20620_
                           END IF
                           print "NO TORPEDOS LEFT."
                           GOTO L_20660_
        L_20620_:          INPUT " TORPEDO COURSE" ; C6r!
                           IF C6r! >= 0 THEN
                               GOTO L_20680_
                           END IF
        L_20660_:          J3r! = 0
                           RETURN
        L_20680_:          INPUT "BURST OF 3" ; Bs$
                           Nr! = 1
                           IF left$ ( Bs$ , 1 ) = "N" THEN
                               GOTO L_20900_
                           END IF
                           IF left$ ( Bs$ , 1 ) <> "Y" THEN
                               GOTO L_20680_
                           END IF
                           IF T4r! > 2 THEN
                               GOTO L_20810_
                           END IF
                           print "NO BURST.  ONLY" ; T4r! ; " TORPEDOS LEFT."
                           GOTO L_20660_
        L_20810_:          INPUT "SPREAD ANGLE (3 - 30 DEG)" ; G2r!
                           IF G2r! < 0 THEN
                               GOTO L_20660_
                           END IF
                           IF ( G2r! < 3 ) OR ( G2r! > 30 ) THEN
                               GOTO L_20810_
                           END IF
                           G2r! = Fktd ( G2r! )
                           Nr! = 3
        L_20900_:          REM - CONTINUE
                           FOR Z6r! = 1 TO Nr!
                               IF C5s$ <> "DOCKED" THEN
                                   T4r! = T4r! - 1
                               END IF
                               Z7r! = Z6r!
                               Rr! = rnd ( 1 )
                               Rr! = ( Rr! + rnd ( 1 ) ) * .5 - .5
                               IF ( Rr! >= - .4 ) AND ( Rr! <= .4 ) THEN
                                   GOTO L_21140_
                               END IF
                               Rr! = ( rnd ( 1 ) + 1.2 ) * Rr!
                               IF Nr! = 3 THEN
                                   GOTO L_21070_
                               END IF
                               print "*** TORPEDO MISFIRES..."
                               GOTO L_21080_
        L_21070_:              print "*** TORPEDO NUMBER" ; Z6r! ; "MISFIRES..."
        L_21080_:              IF rnd ( 1 ) > .2 THEN
                                   GOTO L_21140_
                               END IF
                               print "***PHOTON TUBES DAMAGED BY MISFIRE."
                               D4_r! ( 4 ) = D5r! * ( 1 + 2 * rnd ( 1 ) )
                               GOTO L_22780_
        L_21140_:              IF ( S4r! <> 0 ) OR ( C5s$ = "DOCKED" ) THEN
                                   Rr! = Rr! + .001 * S3r! * Rr!
                               END IF
                               A3r! = C6r! + .25 * Rr!
                               IF Nr! = 1 THEN
                                   GOTO L_21250_
                               END IF
                               A8r! = ( 15 - A3r! + ( 2 - Z6r! ) * G2r! ) * .5235988
                               print
                               print "TRACK FOR TORPEDO NUMBER" ; Z7r! ; "--"
                               GOTO L_21280_
        L_21250_:              print
                               print " TORPEDO TRACK --"
                               A8r! = ( 15 - A3r! ) * .5235988
        L_21280_:              X4r! = - sin ( A8r! )
                               Y4r! = cos ( A8r! )
                               B8r! = abs ( X4r! )
                               IF abs ( Y4r! ) > abs ( X4r! ) THEN
                                   B8r! = abs ( Y4r! )
                               END IF
                               X4r! = X4r! / B8r!
                               Y4r! = Y4r! / B8r!
                               X5r! = S6r!
                               Y5r! = S7r!
                               FOR L9r! = 1 TO 15
                                   X5r! = X5r! + X4r!
                                   A5r! = int ( X5r! + .5 )
                                   IF ( A5r! < 1 ) OR ( A5r! > 10 ) THEN
                                       GOTO L_22750_
                                   END IF
                                   Y5r! = Y5r! + Y4r!
                                   A6r! = int ( Y5r! + .5 )
                                   IF ( A6r! < 1 ) OR ( A6r! > 10 ) THEN
                                       GOTO L_22750_
                                   END IF
                                   IF ( L9r! = 5 ) OR ( L9r! = 9 ) THEN
                                       print
                                   END IF
                                   print Fktr ( X5r! ) ; "-" ; Fktr ( Y5r! ) ; ", " ;
                                   IF Q_s$ ( A5r! , A6r! ) <> "." THEN
                                       GOTO L_21570_
                                   END IF
                                   GOTO L_22740_
        L_21570_:                  print
                                   IF Q_s$ ( A5r! , A6r! ) = "K" THEN
                                       GOTO L_21710_
                                   END IF
                                   IF Q_s$ ( A5r! , A6r! ) <> "C" THEN
                                       GOTO L_22220_
                                   END IF
                                   IF rnd ( 1 ) > .1 THEN
                                       GOTO L_21710_
                                   END IF
                                   print "***COMMANDER AT SECTOR" ; A5r! ; "-" ; A6r! ; "USES ANTI-PHOTON" ;
                                   print " DEVICE!"
                                   print "   TORPEDO NEUTRALIZED."
                                   GOTO L_22770_
        L_21710_:                  FOR Vr! = 1 TO K3r!
                                       IF ( A5r! = K4_r! ( Vr! ) ) AND ( A6r! = K5_r! ( Vr! ) ) THEN
                                           GOTO L_21760_
                                       END IF
                                   NEXT Vr!
        L_21760_:                  Kr! = K6_r! ( Vr! )
                                   W3r! = 200 + 800 * rnd ( 1 )
                                   IF abs ( Kr! ) < W3r! THEN
                                       W3r! = abs ( Kr! )
                                   END IF
                                   K6_r! ( Vr! ) = Kr! - sgn ( Kr! ) * abs ( W3r! )
                                   IF K6_r! ( Vr! ) <> 0 THEN
                                       GOTO L_21880_
                                   END IF
                                   T2s$ = Q_s$ ( A5r! , A6r! )
                                   GOSUB SUB_6390_
                                   GOTO L_22770_
        L_21880_:                  IF Q_s$ ( A5r! , A6r! ) = "K" THEN
                                       print "***KLINGON AT" ;
                                   END IF
                                   IF Q_s$ ( A5r! , A6r! ) = "C" THEN
                                       print "***COMMANDER AT" ;
                                   END IF
                                   print A5r! ; "-" ; A6r! ;
                                   A7r! = A8r! + 2.5 * ( rnd ( 1 ) - .5 )
                                   W3r! = abs ( - sin ( A7r! ) )
                                   IF abs ( cos ( A7r! ) ) > W3r! THEN
                                       W3r! = abs ( cos ( A7r! ) )
                                   END IF
                                   X7r! = - sin ( A7r! ) / W3r!
                                   Y7r! = cos ( A7r! ) / W3r!
                                   Pr! = int ( A5r! + X7r! + .5 )
                                   Qr! = int ( A6r! + Y7r! + .5 )
                                   IF ( Pr! < 1 ) OR ( Pr! > 10 ) OR ( Qr! < 1 ) OR ( Qr! > 10 ) THEN
                                       GOTO L_22200_
                                   END IF
                                   IF Q_s$ ( Pr! , Qr! ) <> "." THEN
                                       GOTO L_22200_
                                   END IF
                                   Q_s$ ( Pr! , Qr! ) = Q_s$ ( A5r! , A6r! )
                                   Q_s$ ( A5r! , A6r! ) = "."
                                   print "DAMAGED--"
                                   print "   DISPLACED BY BLAST  TO  SECTOR" ; Pr! ; "-" ; Qr!
                                   K4_r! ( Vr! ) = Pr!
                                   K5_r! ( Vr! ) = Qr!
                                   K7_r! ( Vr! ) = sqr ( ( S6r! - Pr! ) ^ 2 + ( S7r! - Qr! ) ^ 2 )
                                   K8_r! ( Vr! ) = K7_r! ( Vr! )
                                   GOSUB SUB_27710_
                                   GOTO L_22770_
        L_22200_:                  print "DAMAGED, BUT NOT DESTROYED."
                                   GOTO L_22770_
        L_22220_:                  IF Q_s$ ( A5r! , A6r! ) <> "B" THEN
                                       GOTO L_22440_
                                   END IF
                                   print "***STARBASE DESTROYED...CONGRATULATIONS...YOU TURKEY!"
                                   IF S2_r! ( Q1r! , Q2r! ) < 0 THEN
                                       S2_r! ( Q1r! , Q2r! ) = 0
                                   END IF
                                   FOR Wr! = 1 TO R3r!
                                       IF ( B2_r! ( Wr! ) <> Q1r! ) OR ( B3_r! ( Wr! ) <> Q2r! ) THEN
                                           GOTO L_22350_
                                       END IF
                                       B2_r! ( Wr! ) = B2_r! ( R3r! )
                                       B3_r! ( Wr! ) = B3_r! ( R3r! )
        L_22350_:                  NEXT Wr!
                                   Q_s$ ( A5r! , A6r! ) = "."
                                   R3r! = R3r! - 1
                                   B6r! = 0
                                   B7r! = 0
                                   G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 10
                                   B1r! = B1r! + 1
                                   GOSUB SUB_16760_
                                   GOTO L_22770_
        L_22440_:                  IF Q_s$ ( A5r! , A6r! ) <> "*" THEN
                                       GOTO L_22640_
                                   END IF
                                   IF rnd ( 1 ) > .15 THEN
                                       GOTO L_22520_
                                   END IF
                                   print "***STAR AT SECTOR" ; A5r! ; "-" ; A6r! ; "UNAFFECTED BY PHOTON BLAST"
                                   GOTO L_22770_
        L_22520_:                  X2r! = A5r!
                                   Y2r! = A6r!
                                   GOSUB SUB_17940_
                                   A5r! = X2r!
                                   A6r! = Y2r!
                                   IF G_r! ( Q1r! , Q2r! ) = 1000 THEN
                                       RETURN
                                   END IF
                                   IF A2r! <> 0 THEN
                                       RETURN
                                   END IF
                                   GOTO L_22770_
        L_22640_:                 
                                   print
                                   print "AAAAAIIIIIIIEEEEEEEAAAAAAAUUUUUUGGGGGGGHHHHHHHHHH!!!"
                                   print "    HACK!     HACK!    COUGH!      *CHOKE!*"
                                   print
                                   print "MR. SPOCK-  'FASCINATING!'"
                                   Q_s$ ( A5r! , A6r! ) = "."
                                   T2r! = 0
                                   T3r! = 0
                                   GOTO L_22770_
        L_22740_:              NEXT L9r!
        L_22750_:              print
                               print TORPEDO ; MISSED! ; ""
        L_22770_:          NEXT Z6r!
        L_22780_:          IF R1r! <> 0 THEN
                               RETURN
                           END IF
                           F9r! = 1
                           GOSUB SUB_9720_
                           RETURN

      SUB_22840_:          REM - RAM
                           print
                           print "*** RED ALERT!!   RED ALERT!! ***"
                           print
                           print "*** COLLISION IMMINENT!!"
                           print
                           print "*** " ; S5s$ ; " RAMS " ;
                           W7r! = 1
                           IF Q_s$ ( S6r! , S7r! ) = "C" THEN
                               W7r! = 2
                           END IF
                           IF W7r! = 1 THEN
                               print "KLINGON AT " ;
                           END IF
                           IF W7r! = 2 THEN
                               print "COMMANDER AT " ;
                           END IF
                           print "SECTOR" ; S6r! ; "-" ; S7r!
                           A5r! = S6r!
                           A6r! = S7r!
                           T2s$ = Q_s$ ( S6r! , S7r! )
                           GOSUB SUB_6390_
                           print "***" ; S5s$ ; " HEAVILY DAMAGED."
                           Kr! = int ( 5 + rnd ( 1 ) * 20 )
                           print "***SICKBAY REPORTS" ; Kr! ; "CASUALTIES!"
                           C4r! = C4r! + Kr!
                           FOR Lr! = 1 TO 12
                               Ir! = rnd ( 1 )
                               Jr! = ( 3.5 * W7r! * ( rnd ( 1 ) + Ir! ) + 1 ) * D5r!
                               IF Lr! = 6 THEN
                                   Jr! = Jr! / 3
                               END IF
                               D4_r! ( Lr! ) = D4_r! ( Lr! ) + T1r! + Jr!
                           NEXT Lr!
                           D4_r! ( 6 ) = D4_r! ( 6 ) - 3
                           IF D4_r! ( 6 ) < 0 THEN
                               D4_r! ( 6 ) = 0
                           END IF
                           S4r! = 0
                           IF R1r! <> 0 THEN
                               RETURN
                           END IF
                           F9r! = 1
                           GOSUB SUB_9720_
                           RETURN

      SUB_23290_:          REM - SCORE
                           Pr! = D0r! - J2r!
                           IF ( Pr! <> 0 ) AND ( R1r! = 0 ) THEN
                               GOTO L_23370_
                           END IF
                           IF Pr! < 5 THEN
                               Pr! = 5
                           END IF
        L_23370_:          Nr! = ( K2r! + K1r! ) / Pr!
                           Kr! = int ( 500 * Nr! + .5 )
                           Lr! = 0
                           IF G1r! <> 0 THEN
                               Lr! = 100 * S8r!
                           END IF
                           Ir! = 0
                           IF left$ ( S5s$ , 1 ) = "E" THEN
                               Mr! = 0
                           END IF
                           IF left$ ( S5s$ , 1 ) = "F" THEN
                               Mr! = 1
                           END IF
                           IF left$ ( S5s$ , 1 ) = "" THEN
                               Mr! = 2
                           END IF
                           IF A1r! = 0 THEN
                               Ir! = 200
                           END IF
                           Jr! = 10 * K1r! + 50 * K2r! + Kr! + Lr! - Ir! - 100 * B1r! - 100 * Mr! - 35 * N1r! - 3 * S1r! - C4r!
                           print
                           IF Jr! <> 0 THEN
                               GOTO L_23630_
                           END IF
                           print "AS YET, YOU HAVE NO SCORE."
                           RETURN
        L_23630_:          print "YOUR SCORE --"
                           print
                           IF K1r! = 0 THEN
                               GOTO L_23690_
                           END IF
                           print K1r! ; tab ( 5 ) ; "ORDINARY KLINGON(S) DESTROYED" ; tab ( 36 ) ; 10 * K1r!
        L_23690_:          IF K2r! = 0 THEN
                               GOTO L_23730_
                           END IF
                           print K2r! ; tab ( 5 ) ; "KLINGON COMMANDER(S) DESTROYED" ; tab ( 36 ) ; 50 * K2r!
        L_23730_:          IF Kr! = 0 THEN
                               GOTO L_23780_
                           END IF
                           print Fktr ( Nr! ) ; tab ( 5 ) ; "KLINGONS PER STARDATE, AVERAGE" ;
                           print tab ( 36 ) ; Kr!
        L_23780_:          IF S1r! = 0 THEN
                               GOTO L_23820_
                           END IF
                           print S1r! ; tab ( 5 ) ; "STAR(S) DESTROYED" ; tab ( 36 ) ; - 3 * S1r!
        L_23820_:          IF B1r! = 0 THEN
                               GOTO L_23860_
                           END IF
                           print B1r! ; tab ( 5 ) ; "STARBASES DESTROYED" ; tab ( 36 ) ; - 100 * B1r!
        L_23860_:          IF N1r! = 0 THEN
                               GOTO L_23900_
                           END IF
                           print N1r! ; tab ( 5 ) ; "SOS CALL(S)  TO  A STARBASE" ; tab ( 36 ) ; - 35 * N1r!
        L_23900_:          IF C4r! = 0 THEN
                               GOTO L_23940_
                           END IF
                           print C4r! ; tab ( 5 ) ; "CASUALTIES INCURRED" ; tab ( 36 ) ; - C4r!
        L_23940_:          IF Mr! = 0 THEN
                               GOTO L_23980_
                           END IF
                           print Mr! ; tab ( 5 ) ; "SHIP(S) LOST OR DESTROYED" ; tab ( 36 ) ; - 100 * Mr!
        L_23980_:          IF A1r! <> 0 THEN
                               GOTO L_24020_
                           END IF
                           print "PENALTY FOR  GETTING YOURSELF KILLED" ; tab ( 36 ) ; - 200
        L_24020_:          IF G1r! = 0 THEN
                               GOTO L_24060_
                           END IF
                           print tab ( 5 ) ; "BONUS FOR  WINNING " ; S_s$ ( S8r! ) ; " GAME" ; tab ( 36 ) ; Lr!
        L_24060_:          print tab ( 5 ) ; "-------------------------------------"
                           print tab ( 28 ) ; " TO TAL" ; tab ( 36 ) ; Jr! ; "**"
                           RETURN

      SUB_24090_:          rem - SETUP
                           A2r! = 0
                           G1r! = 0
                           GOSUB SUB_4640_
                           S5s$ = "ENTERPRISE"
                           I7r! = 5000
                           E1r! = I7r!
                           I8r! = 2500
                           S3r! = I8r!
                           S4r! = 0
                           S9r! = S4r!
                           J1r! = 4
                           L1r! = J1r!
                           Q1r! = Fkta ( 1 )
                           Q2r! = Fkta ( 1 )
                           S6r! = Fktb ( 1 )
                           S7r! = Fktb ( 1 )
                           I9r! = 10
                           T4r! = I9r!
                           W1r! = 5
                           W2r! = 25
                           FOR Ir! = 1 TO 12
                               D4_r! ( Ir! ) = 0
                           NEXT
                           J2r! = 100 * int ( 31 * rnd ( 1 ) + 20 )
                           D0r! = J2r!
                           K1r! = 0
                           K2r! = 0
                           N1r! = 0
                           N2r! = 0
                           R6r! = 0
                           C4r! = 0
                           A1r! = 1
                           D3r! = .25
                           FOR Ir! = 1 TO 8
                               FOR Jr! = 1 TO 8
                                   S2_r! ( Ir! , Jr! ) = 0
                               NEXT Jr!
                           NEXT Ir!
                           F1_r! ( 1 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
                           F1_r! ( 5 ) = 1E + 30
                           F1_r! ( 2 ) = D0r! - 1.5 * ( I5r! / R2r! ) * log ( rnd ( 1 ) )
                           I6r! = 0
                           F1_r! ( 3 ) = D0r! - .3 * I5r! * log ( rnd ( 1 ) )
                           F1_r! ( 4 ) = D0r! - .3 * I5r! * log ( rnd ( 1 ) )
                           FOR Ir! = 1 TO 8
                               FOR Jr! = 1 TO 8
                                   Kr! = int ( rnd ( 1 ) * 9 + 1 )
                                   I6r! = I6r! + Kr!
                                   G_r! ( Ir! , Jr! ) = Kr!
                               NEXT Jr!
                           NEXT Ir!
                           S1r! = 0
                           FOR Ir! = 1 TO I2r!
        L_24630_:              Xr! = int ( rnd ( 1 ) * 6 + 2 )
                               Yr! = int ( rnd ( 1 ) * 6 + 2 )
                               IF G_r! ( Xr! , Yr! ) >= 10 THEN
                                   GOTO L_24630_
                               END IF
                               IF Ir! < 2 THEN
                                   GOTO L_24780_
                               END IF
                               Kr! = Ir! - 1
                               FOR Jr! = 1 TO Kr!
                                   D1r! = sqr ( ( B2_r! ( Jr! ) - Xr! ) ^ 2 + ( B3_r! ( Jr! ) - Yr! ) ^ 2 )
                                   IF D1r! < 2 THEN
                                       GOTO L_24630_
                                   END IF
                               NEXT Jr!
        L_24780_:              B2_r! ( Ir! ) = Xr!
                               B3_r! ( Ir! ) = Yr!
                               S2_r! ( Xr! , Yr! ) = - 1
                               G_r! ( Xr! , Yr! ) = G_r! ( Xr! , Yr! ) + 10
                           NEXT Ir!
                           B1r! = 0
                           Kr! = I1r! - I4r!
                           Lr! = int ( .25 * S8r! * ( 9 - L2r! ) + 1 )
        L_24860_:          Mr! = int ( ( 1 - rnd ( 1 ) ^ 2 ) * Lr! )
                           IF Mr! > Kr! THEN
                               Mr! = Kr!
                           END IF
                           Nr! = 100 * Mr!
        L_24910_:          Xr! = Fkta ( 1 )
                           Yr! = Fkta ( 1 )
                           IF G_r! ( Xr! , Yr! ) + Nr! > 999 THEN
                               GOTO L_24910_
                           END IF
                           G_r! ( Xr! , Yr! ) = G_r! ( Xr! , Yr! ) + Nr!
                           Kr! = Kr! - Mr!
                           IF Kr! <> 0 THEN
                               GOTO L_24860_
                           END IF
                           FOR Ir! = 1 TO I4r!
        L_25020_:              Xr! = Fkta ( 1 )
                               Yr! = Fkta ( 1 )
                               IF ( G_r! ( Xr! , Yr! ) < 99 ) AND ( rnd ( 1 ) < .75 ) THEN
                                   GOTO L_25020_
                               END IF
                               IF G_r! ( Xr! , Yr! ) > 899 THEN
                                   GOTO L_25020_
                               END IF
                               IF Ir! = 1 THEN
                                   GOTO L_25190_
                               END IF
                               Mr! = Ir! - 1
                               FOR Jr! = 1 TO Mr!
                                   IF ( C1_r! ( Jr! ) = Xr! ) AND ( C2_r! ( Jr! ) = Yr! ) THEN
                                       GOTO L_25020_
                                   END IF
                               NEXT Jr!
        L_25190_:              G_r! ( Xr! , Yr! ) = G_r! ( Xr! , Yr! ) + 100
                               C1_r! ( Ir! ) = Xr!
                               C2_r! ( Ir! ) = Yr!
                           NEXT Ir!
                           Ir! = int ( D0r! )
                           print
                           S0r! = 0
        L_25260_:          T2r! = Fkta ( 1 )
                           T3r! = Fkta ( 1 )
                           IF G_r! ( T2r! , T3r! ) < 100 THEN
                               GOTO L_25260_
                           END IF
                           IF S8r! <> 1 THEN
                               GOTO L_25490_
                           END IF
                           print "IT IS STARDATE" ; Ir! ; "...THE ORGANIAN PEACE TREATY BETWEEN"
                           print "THE UNITED FEDERATION OF PLANETS AND THE KLINGON EMPIRE"
                           print "HAS COLLAPSED AND THE FEDERATION IS BEING ATTACKED BY A"
                           print "DEADLY KLINGON INVASION FLEET.  AS CAPTAIN OF THE STARSHIP"
                           print "U.S.S. ENTERPRISE, IT IS YOUR MISSION  TO  SEEK OUT AND"
                           print "DESTROY THIS INVASION FOR CE OF" ; I1r! ; "BATTLE CRUISERS."
                           print
                           print "YOU HAVE AN INITIAL ALLOTMENT OF" ; int ( I5r! ) ;
                           print "STARDATES"
                           print " TO  COMPLETE YOUR MISSION."
                           print "AS THE MISSION PROCEEDS, YOU MAY BE GIVEN MORE TIME."
                           print
                           print "YOU WILL HAVE" ; I2r! ; "SUPPORTING STARBASE(S)."
                           print
                           GOTO L_25620_
        L_25490_:          print "STARDATE.............." ; Ir!
                           print "NUMBER OF KLINGONS...." ; I1r!
                           print "NUMBER OF STARDATES..." ; int ( I5r! )
                           print "NUMBER OF STARBASES..." ; I2r!
                           print "STARBASE LOCATIONS...." ;
                           FOR Ir! = 1 TO I2r!
                               print B2_r! ( Ir! ) ; "-" ; B3_r! ( Ir! ) ;
                               IF Ir! <> I2r! THEN
                                   print ", " ;
                               END IF
                           NEXT Ir!
                           print
                           print
        L_25620_:          GOSUB SUB_17750_
                           print "THE " ; S5s$ ; " IS CURRENTLY IN THE " ; G2s$ ; " QUADRANT."
                           GOSUB SUB_16850_
                           RETURN

      SUB_25660_:          REM - SETWARP
                           INPUT "WARP FACTOR" ; Kr!
                           print
                           IF Kr! < 1 THEN
                               GOTO L_26000_
                           END IF
                           IF Kr! > 10 THEN
                               GOTO L_26020_
                           END IF
                           Jr! = W1r!
                           W1r! = Kr!
                           W2r! = W1r! * W1r!
                           IF ( W1r! <= Jr! ) OR ( W1r! <= 6 ) THEN
                               GOTO L_25870_
                           END IF
                           IF W1r! <= 8 THEN
                               GOTO L_25890_
                           END IF
                           IF W1r! > 8 THEN
                               GOTO L_25920_
                           END IF
        L_25870_:          print "ENSIGN CHEKOV - 'WARP FACTOR" ; W1r! ; "CAPTAIN'"
                           RETURN
        L_25890_:          print "ENGINEER SCOTT - 'AYE, BUT OUR MAXIMUM SAFE SPEED" ;
                           print " IS WARP 6.'"
                           RETURN
        L_25920_:          IF W1r! = 10 THEN
                               GOTO L_25980_
                           END IF
                           print "ENGINEER SCOTT-'AYE, CAPTAIN, BUT OUR ENGINES MAY NOT " ;
                           print "TAKE IT.'"
                           RETURN
        L_25980_:          print "ENGINEER SCOTT-'AYE, CAPTAIN, WE'LL GIVE IT A TRY.'"
                           RETURN
        L_26000_:          print "ENSIGN CHEKOV-'WE CAN'T GO BELOW WARP 1, CAPTAIN.'"
                           RETURN
        L_26020_:          print "ENSIGN CHEKOV-'OUR  TO P SPEED IS WARP 10, CAPTAIN.'"
                           RETURN

      SUB_26040_:          REM - SHIELDS
                           J3r! = 0
                           IF D4_r! ( 8 ) <> 0 THEN
                               GOTO L_26380_
                           END IF
                           IF S4r! <> 0 THEN
                               GOTO L_26170_
                           END IF

      SUB_26120_:          INPUT "SHIELDS ARE DOWN.  DO YOU WANT THEM UP" ; Bs$
                           IF left$ ( Bs$ , 1 ) = "Y" THEN
                               GOTO L_26220_
                           END IF
                           RETURN
        L_26170_:          INPUT "SHIELDS ARE UP.  DO YOU WANT THEM DOWN" ; Bs$
                           IF left$ ( Bs$ , 1 ) = "Y" THEN
                               GOTO L_26330_
                           END IF
                           RETURN
        L_26220_:          S4r! = 1
                           S9r! = 1
                           IF C5s$ <> "DOCKED" THEN
                               E1r! = E1r! - 50
                           END IF
                           print "SHIELDS RAISED."
                           IF E1r! <= 0 THEN
                               GOTO L_26400_
                           END IF
                           J3r! = 1
                           RETURN
        L_26330_:          S4r! = 0
                           S9r! = 1
                           print "SHIELDS LOWERED."
                           J3r! = 1
                           RETURN
        L_26380_:          print "SHIELDS DAMAGED AND DOWN."
                           RETURN
        L_26400_:          print
                           print "SHIELDS USE UP LAST OF THE ENERGY."
                           F9r! = 4
                           GOSUB SUB_9720_
                           RETURN

      SUB_26450_:          REM - SUPERNOVA
                           IF X2r! <> 0 THEN
                               GOTO L_26770_
                           END IF
                           Nr! = int ( rnd ( 1 ) * I6r! + 1 )
                           FOR Xr! = 1 TO 8
                               FOR Yr! = 1 TO 8
                                   Nr! = Nr! - ( G_r! ( Xr! , Yr! ) - int ( G_r! ( Xr! , Yr! ) / 10 ) * 10 )
                                   IF Nr! <= 0 THEN
                                       GOTO L_26590_
                                   END IF
                               NEXT Yr!
                           NEXT Xr!
                           RETURN
        L_26590_:          IF ( Xr! <> Q1r! ) OR ( Yr! <> Q2r! ) THEN
                               GOTO L_26910_
                           END IF
                           IF J4r! <> 0 THEN
                               GOTO L_26910_
                           END IF
                           Nr! = int ( rnd ( 1 ) * ( G_r! ( Xr! , Yr! ) - int ( G_r! ( Xr! , Yr! ) / 10 ) * 10 ) ) + 1
                           FOR X3r! = 1 TO 10
                               FOR Y3r! = 1 TO 10
                                   IF Q_s$ ( X3r! , Y3r! ) <> "*" THEN
                                       GOTO L_26750_
                                   END IF
                                   Nr! = Nr! - 1
                                   IF Nr! = 0 THEN
                                       GOTO L_26770_
                                   END IF
        L_26750_:              NEXT Y3r!
                           NEXT X3r!
        L_26770_:          print
                           print "*** RED ALERT!!  RED ALERT!! ***"
                           X3r! = X2r!
                           Y3r! = Y2r!
                           print "*** INCIPIENT SUPERNOVA DETECTED AT SECTOR" ; X3r! ; "-" ; Y3r!
                           Xr! = Q1r!
                           Yr! = Q2r!
                           Kr! = ( X2r! - S6r! ) ^ 2 + ( Y2r! - S7r! ) ^ 2
                           IF Kr! > 1.5 THEN
                               GOTO L_26980_
                           END IF
                           print "*** EMERGENCY AU TO -OVERRIDE JAMMED ***"
                           A2r! = 1
                           GOTO L_26980_
        L_26910_:          IF D4_r! ( 9 ) <> 0 THEN
                               GOTO L_26980_
                           END IF
                           print
                           print "MESSAGE FROM STARFLEET COMMAND...STARDATE" ; int ( D0r! )
                           print "'SUPERNOVA IN QUADRANT" ; Xr! ; "-" ; Yr! ;
                           print "....CAUTION ADVISED'"
        L_26980_:          Nr! = G_r! ( Xr! , Yr! )
                           Rr! = int ( Nr! / 100 )
                           Qr! = 0
                           IF ( Xr! <> Q1r! ) OR ( Yr! <> Q2r! ) THEN
                               GOTO L_27060_
                           END IF
                           K3r! = 0
                           C3r! = 0
        L_27060_:          IF Rr! = 0 THEN
                               GOTO L_27280_
                           END IF
                           R1r! = R1r! - Rr!
                           IF R2r! = 0 THEN
                               GOTO L_27280_
                           END IF
                           FOR Lr! = 1 TO R2r!
                               IF ( C1_r! ( Lr! ) <> Xr! ) OR ( C2_r! ( Lr! ) <> Yr! ) THEN
                                   GOTO L_27270_
                               END IF
                               C1_r! ( Lr! ) = C1_r! ( R2r! )
                               C2_r! ( Lr! ) = C2_r! ( R2r! )
                               C1_r! ( R2r! ) = 0
                               C2_r! ( R2r! ) = 0
                               R2r! = R2r! - 1
                               Rr! = Rr! - 1
                               Qr! = 1
                               IF R2r! = 0 THEN
                                   F1_r! ( 2 ) = 1E + 30
                               END IF
        L_27270_:          NEXT Lr!
        L_27280_:          IF R3r! = 0 THEN
                               GOTO L_27410_
                           END IF
                           FOR Lr! = 1 TO R3r!
                               IF ( B2_r! ( Lr! ) <> Xr! ) OR ( B3_r! ( Lr! ) <> Yr! ) THEN
                                   GOTO L_27400_
                               END IF
                               B2_r! ( Lr! ) = B2_r! ( R3r! )
                               B3_r! ( Lr! ) = B3_r! ( R3r! )
                               B2_r! ( R3r! ) = 0
                               B3_r! ( R3r! ) = 0
                               R3r! = R3r! - 1
        L_27400_:          NEXT Lr!
        L_27410_:          IF X2r! = 0 THEN
                               GOTO L_27490_
                           END IF
                           Nr! = G_r! ( Xr! , Yr! ) - int ( G_r! ( Xr! , Yr! ) / 100 ) * 100
                           S1r! = S1r! + ( Nr! - int ( Nr! / 10 ) * 10 )
                           B1r! = B1r! + int ( Nr! / 10 )
                           K1r! = K1r! + Rr!
                           K2r! = K2r! + Qr!
        L_27490_:          IF ( S2_r! ( Xr! , Yr! ) <> 0 ) AND ( D4_r! ( 9 ) <> 0 ) THEN
                               S2_r! ( Xr! , Yr! ) = 1000 + G_r! ( Xr! , Yr! )
                           END IF
                           IF ( D4_r! ( 9 ) = 0 ) OR ( ( Q1r! = Xr! ) AND ( Q2r! = Yr! ) ) THEN
                               S2_r! ( Xr! , Yr! ) = 1
                           END IF
                           G_r! ( Xr! , Yr! ) = 1000
                           IF ( R1r! <> 0 ) OR ( ( Xr! = Q1r! ) AND ( Yr! = Q2r! ) ) THEN
                               GOTO L_27650_
                           END IF
                           print
                           print "MR. SPOCK-  'CAPTAIN, A SUPERNOVA IN QUADRANT" ;
                           print Xr! ; "-" ; Yr! ; "HAS JUST DESTROYED THE LAST OF THE KLINGONS.'"
                           F9r! = 1
                           GOSUB SUB_9720_
                           RETURN
        L_27650_:          IF A2r! = 0 THEN
                               RETURN
                           END IF
                           F9r! = 8
                           GOSUB SUB_9720_
                           RETURN

      SUB_27710_:          REM - SORTKL
                           IF K3r! <= 1 THEN
                               RETURN
                           END IF
        L_27750_:          Z4r! = 0
                           FOR BT_Or! = 1 TO K3r! - 1
                               IF K7_r! ( BT_Or! ) <= K7_r! ( BT_Or! + 1 ) THEN
                                   GOTO L_27960_
                               END IF
                               Kr! = K7_r! ( BT_Or! )
                               K7_r! ( BT_Or! ) = K7_r! ( BT_Or! + 1 )
                               K7_r! ( BT_Or! + 1 ) = Kr!
                               Kr! = K8_r! ( BT_Or! )
                               K8_r! ( BT_Or! ) = K8_r! ( BT_Or! + 1 )
                               K8_r! ( BT_Or! + 1 ) = Kr!
                               Kr! = K4_r! ( BT_Or! )
                               K4_r! ( BT_Or! ) = K4_r! ( BT_Or! + 1 )
                               K4_r! ( BT_Or! + 1 ) = Kr!
                               Kr! = K5_r! ( BT_Or! )
                               K5_r! ( BT_Or! ) = K5_r! ( BT_Or! + 1 )
                               K5_r! ( BT_Or! + 1 ) = Kr!
                               Kr! = K6_r! ( BT_Or! )
                               K6_r! ( BT_Or! ) = K6_r! ( BT_Or! + 1 )
                               K6_r! ( BT_Or! + 1 ) = Kr!
                               Z4r! = 1
        L_27960_:          NEXT BT_Or!
                           IF Z4r! <> 0 THEN
                               GOTO L_27750_
                           END IF
                           RETURN

      SUB_28010_:          rem - SRSCAN
                           IF D4_r! ( 1 ) <> 0 THEN
                               29230 REM D(1) like in the original was never initiated D4=Dameges ??? Thomas
                           END IF
                           print
                           print "    1 2 3 4 5 6 7 8 9 10"
                           FOR Ir! = 1 TO 10
                               IF Ir! < 10 THEN
                                   print " " ;
                               END IF
                               print Ir! ;
                               FOR Jr! = 1 TO 10
                                   print Q_s$ ( Ir! , Jr! ) ; " " ;
                               NEXT Jr!
        L_28150_:              ON Ir! GOTO L_28170_ , L_28190_ , L_28240_ , L_28260_ , L_28390_
                               ON Ir! - 5 GOTO L_28410_ , L_28430_ , L_28450_ , L_28550_ , L_28570_
        L_28170_:              print " STARDATE      " ; Fktr ( D0r! )
                               GOTO L_28580_
        L_28190_:              IF C5s$ <> "DOCKED" THEN
                                   GOSUB SUB_16760_
                               END IF
                               print " CONDITION      " ; C5s$
                               GOTO L_28580_
        L_28240_:              print " POSITION      " ; Q1r! ; "-" ; Q2r! ; ", " ; S6r! ; "-" ; S7r!
                               GOTO L_28580_
        L_28260_:              print " LIFE SUPPORT   " ;
                               IF D4_r! ( 5 ) <> 0 THEN
                                   GOTO L_28320_
                               END IF
                               print "ACTIVE"
                               GOTO L_28580_
        L_28320_:              IF C5s$ <> "DOCKED" THEN
                                   GOTO L_28370_
                               END IF
                               print "DAMAGED, SUPPORTED BY STARBASE"
                               GOTO L_28580_
        L_28370_:              print "DAMAGED, RESERVES=" ; Fkts ( L1r! )
                               GOTO L_28580_
        L_28390_:              print " WARP FACTOR   " ; Fktr ( W1r! )
                               GOTO L_28580_
        L_28410_:              print " ENERGY" ; spc ( 8 ) ; .01 * int ( 100 * E1r! )
                               GOTO L_28580_
        L_28430_:              print " TORPEDOS      " ; T4r!
                               GOTO L_28580_
        L_28450_:              print " SHIELDS        " ;
                               Bs$ = "DOWN,"
                               IF S4r! <> 0 THEN
                                   Bs$ = "UP,"
                               END IF
                               IF D4_r! ( 8 ) > 0 THEN
                                   Bs$ = "DAMAGED,"
                               END IF
                               print Bs$ ; int ( 100 * S3r! / I8r! + .5 ) ; "%"
                               GOTO L_28580_
        L_28550_:              print " KLINGONS LEFT " ; R1r!
                               GOTO L_28580_
        L_28570_:              print " TIME LEFT     " ; Fkts ( R5r! )
        L_28580_:          NEXT Ir!
                           RETURN
                           print "SHORT RANGE SENSORS DAMAGED."
                           RETURN

      SUB_28620_:          REM - TIMEWARP
                           print
                           print "*** TIME WARP ENTERED ***"
                           print "YOU ARE TRAVELING" ;
                           IF S0r! <> 0 THEN
                               GOTO L_28730_
                           END IF
                           T1r! = - .5 * I5r! * log ( rnd ( 1 ) )
                           print "FORWARD IN TIME" ; Fktr ( T1r! ) ; "STARDATES."
                           F1_r! ( 2 ) = F1_r! ( 2 ) + T1r!
                           GOTO L_29190_
        L_28730_:          Mr! = D0r!
                           D0r! = D9_r! ( 1 )
                           print "BACKWARD IN TIME" ; Fktr ( Mr! - D0r! ) ; "STARDATES."
                           S0r! = 0
                           R1r! = D9_r! ( 2 )
                           R2r! = D9_r! ( 3 )
                           R3r! = D9_r! ( 4 )
                           R4r! = D9_r! ( 5 )
                           R5r! = D9_r! ( 6 )
                           S1r! = D9_r! ( 7 )
                           B1r! = D9_r! ( 8 )
                           K1r! = D9_r! ( 9 )
                           K2r! = D9_r! ( 10 )
                           FOR Ir! = 1 TO 8
                               FOR Jr! = 1 TO 8
                                   G_r! ( Ir! , Jr! ) = D9_r! ( Ir! - 1 + 8 * ( Jr! - 1 ) + 11 )
                               NEXT Jr!
                           NEXT Ir!
                           FOR Ir! = 75 TO 84
                               C1_r! ( Ir! - 74 ) = D9_r! ( Ir! )
                           NEXT
                           FOR Ir! = 85 TO 94
                               C2_r! ( Ir! - 84 ) = D9_r! ( Ir! )
                           NEXT
                           FOR Ir! = 95 TO 99
                               B2_r! ( Ir! - 94 ) = D9_r! ( Ir! )
                           NEXT
                           FOR Ir! = 100 TO 104
                               B3_r! ( Ir! - 99 ) = D9_r! ( Ir! )
                           NEXT
                           B4r! = D9_r! ( 105 )
                           B5r! = D9_r! ( 106 )
                           F1_r! ( 1 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
                           IF R2r! <> 0 THEN
                               F1_r! ( 2 ) = D0r! - ( I5r! / R2r! ) * log ( rnd ( 1 ) )
                           END IF
                           F1_r! ( 3 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
                           FOR Ir! = 1 TO 8
                               FOR Jr! = 1 TO 8
                                   IF 1 < S2_r! ( Ir! , Jr! ) THEN
                                       S2_r! ( Ir! , Jr! ) = 1
                                   END IF
                               NEXT Jr!
                           NEXT Ir!
                           print
                           print "SPOCK HAS RECONSTRUCTED A CORRECT STAR CHART FROM MEMORY."
        L_29190_:          GOSUB SUB_16850_
                           RETURN

      SUB_29210_:          REM - TRANSFER
                           J3r! = 0
                           IF D4_r! ( 12 ) <> 0 THEN
                               GOTO L_29530_
                           END IF
                           INPUT "NUMBER OF UNITS  TO  SHIELDS" ; Z3r!
                           IF Z3r! < 0 THEN
                               RETURN
                           END IF
                           IF E1r! + S3r! - Z3r! > 0 THEN
                               GOTO L_29350_
                           END IF
                           print "SCOTT HERE-  'WE ONLY HAVE" ; Fktr ( E1r! + S3r! ) ; "UNITS LEFT.'"
                           RETURN
        L_29350_:          E1r! = E1r! + S3r! - Z3r!
                           S3r! = Z3r!
                           print "--ENERGY TRANSFER COMPLETE--"
                           print "(SHIP ENERGY=" ; Fktr ( E1r! ) ; "    SHIELD ENERGY=" ; Fktr ( S3r! ) ; ")"
                           J3r! = 1
                           T1r! = .1
                           P5r! = ( K3r! + 4 * C3r! ) / 48
                           IF P5r! < .1 THEN
                               P5r! = .1
                           END IF
                           IF P5r! > rnd ( 1 ) THEN
                               GOSUB SUB_2220_
                           END IF
                           IF A2r! <> 0 THEN
                               RETURN
                           END IF
                           GOSUB SUB_7330_
                           RETURN
        L_29530_:          print "TRANSFER PANEL DAMAGED."
                           RETURN

      SUB_29550_:          REM - VISUAL
        L_29560_:          INPUT "WHICH DIRECTION" ; Zr!
                           print
                           J3r! = 0
                           IF Zr! < 0 THEN
                               RETURN
                           END IF
                           IF Zr! <= 12 THEN
                               GOTO L_29670_
                           END IF
                           print "DIRECTIONS ARE FROM 0  TO  12 ONLY"
                           GOTO L_29560_
        L_29670_:          T1r! = .05
                           Pr! = ( K3r! + 4 * C3r! ) / 48
                           IF Pr! < .05 THEN
                               Pr! = .05
                           END IF
                           IF Pr! > rnd ( 1 ) THEN
                               GOSUB SUB_2220_
                           END IF
                           IF A2r! <> 0 THEN
                               RETURN
                           END IF
                           GOSUB SUB_7330_
                           J3r! = 1
                           IF A2r! <> 0 THEN
                               RETURN
                           END IF
                           D5r! = int ( ( Zr! / 12 ) * 8 + 1.5 )
                           IF D5r! > 8 THEN
                               D5r! = 1
                           END IF
                           FOR Ir! = 1 TO 5
                               FOR Jr! = 1 TO 5
                                   V_s$ ( Ir! , Jr! ) = " "
                               NEXT Jr!
                           NEXT Ir!
                           Nr! = 0
                           V_s$ ( 3 , 3 ) = left$ ( S5s$ , 1 )
                           ON D5r! GOTO L_29950_ , L_30160_ , L_30360_ , L_30570_ , L_30770_ , L_30980_ , L_31180_ , L_31390_
        L_29950_:          Ir! = S6r! - 2
                           Jr! = S7r! - 2
                           V_s$ ( 1 , 1 ) = Qs$
                           IF ( Jr! > 0 ) AND ( Ir! > 0 ) THEN
                               V_s$ ( 1 , 1 ) = Q_s$ ( Ir! , Jr! )
                           END IF
                           Ir! = S6r! - 1
                           Jr! = S7r! - 1
                           V_s$ ( 2 , 2 ) = Qs$
                           IF ( Ir! > 0 ) AND ( Jr! > 0 ) THEN
                               V_s$ ( 2 , 2 ) = Q_s$ ( Ir! , Jr! )
                           END IF
                           Nr! = Nr! + 1
                           IF Nr! = 3 THEN
                               GOTO L_31600_
                           END IF
                           Ir! = S6r! - 2
                           V_s$ ( 1 , 2 ) = Qs$
                           IF ( Ir! > 0 ) AND ( Jr! > 0 ) THEN
                               V_s$ ( 1 , 2 ) = Q_s$ ( Ir! , Jr! )
                           END IF
        L_30160_:          Ir! = S6r! - 2
                           V_s$ ( 1 , 3 ) = Qs$
                           IF Ir! > 0 THEN
                               V_s$ ( 1 , 3 ) = Q_s$ ( Ir! , S7r! )
                           END IF
                           Ir! = S6r! - 1
                           V_s$ ( 2 , 3 ) = Qs$
                           IF Ir! > 0 THEN
                               V_s$ ( 2 , 3 ) = Q_s$ ( Ir! , S7r! )
                           END IF
                           Nr! = Nr! + 1
                           IF Nr! = 3 THEN
                               GOTO L_31600_
                           END IF
                           Ir! = S6r! - 2
                           Jr! = S7r! + 1
                           V_s$ ( 1 , 4 ) = Qs$
                           IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN
                               V_s$ ( 1 , 4 ) = Q_s$ ( Ir! , Jr! )
                           END IF
        L_30360_:          Ir! = S6r! - 2
                           Jr! = S7r! + 2
                           V_s$ ( 1 , 5 ) = Qs$
                           IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN
                               V_s$ ( 1 , 5 ) = Q_s$ ( Ir! , Jr! )
                           END IF
                           Ir! = S6r! - 1
                           Jr! = S7r! + 1
                           V_s$ ( 2 , 4 ) = Qs$
                           IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN
                               V_s$ ( 2 , 4 ) = Q_s$ ( Ir! , Jr! )
                           END IF
                           Nr! = Nr! + 1
                           IF Nr! = 3 THEN
                               GOTO L_31600_
                           END IF
                           Jr! = S7r! + 2
                           V_s$ ( 2 , 5 ) = Qs$
                           IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN
                               V_s$ ( 2 , 5 ) = Q_s$ ( Ir! , Jr! )
                           END IF
        L_30570_:          Jr! = S7r! + 2
                           V_s$ ( 3 , 5 ) = Qs$
                           IF Jr! < 11 THEN
                               V_s$ ( 3 , 5 ) = Q_s$ ( S6r! , Jr! )
                           END IF
                           Jr! = S7r! + 1
                           V_s$ ( 3 , 4 ) = Qs$
                           IF Jr! < 11 THEN
                               V_s$ ( 3 , 4 ) = Q_s$ ( S6r! , Jr! )
                           END IF
                           Nr! = Nr! + 1
                           IF Nr! = 3 THEN
                               GOTO L_31600_
                           END IF
                           Ir! = S6r! + 1
                           Jr! = S7r! + 2
                           V_s$ ( 4 , 5 ) = Qs$
                           IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN
                               V_s$ ( 4 , 5 ) = Q_s$ ( Ir! , Jr! )
                           END IF
        L_30770_:          Ir! = S6r! + 2
                           Jr! = S7r! + 2
                           V_s$ ( 5 , 5 ) = Qs$
                           IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN
                               V_s$ ( 5 , 5 ) = Q_s$ ( Ir! , Jr! )
                           END IF
                           Ir! = S6r! + 1
                           Jr! = S7r! + 1
                           V_s$ ( 4 , 4 ) = Qs$
                           IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN
                               V_s$ ( 4 , 4 ) = Q_s$ ( Ir! , Jr! )
                           END IF
                           Nr! = Nr! + 1
                           IF Nr! = 3 THEN
                               GOTO L_31600_
                           END IF
                           Ir! = S6r! + 2
                           V_s$ ( 5 , 4 ) = Qs$
                           IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN
                               V_s$ ( 5 , 4 ) = Q_s$ ( Ir! , Jr! )
                           END IF
        L_30980_:          Ir! = S6r! + 2
                           V_s$ ( 5 , 3 ) = Qs$
                           IF Ir! < 11 THEN
                               V_s$ ( 5 , 3 ) = Q_s$ ( Ir! , S7r! )
                           END IF
                           Ir! = S6r! + 1
                           V_s$ ( 4 , 3 ) = Qs$
                           IF Ir! < 11 THEN
                               V_s$ ( 4 , 3 ) = Q_s$ ( Ir! , S7r! )
                           END IF
                           Nr! = Nr! + 1
                           IF Nr! = 3 THEN
                               GOTO L_31600_
                           END IF
                           Ir! = S6r! + 2
                           Jr! = S7r! - 1
                           V_s$ ( 5 , 2 ) = Qs$
                           IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN
                               V_s$ ( 5 , 2 ) = Q_s$ ( Ir! , Jr! )
                           END IF
        L_31180_:          Ir! = S6r! + 2
                           Jr! = S7r! - 2
                           V_s$ ( 5 , 1 ) = Qs$
                           IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN
                               V_s$ ( 5 , 1 ) = Q_s$ ( Ir! , Jr! )
                           END IF
                           Ir! = S6r! + 1
                           Jr! = S7r! - 1
                           V_s$ ( 4 , 2 ) = Qs$
                           IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN
                               V_s$ ( 4 , 2 ) = Q_s$ ( Ir! , Jr! )
                           END IF
                           Nr! = Nr! + 1
                           IF Nr! = 3 THEN
                               GOTO L_31600_
                           END IF
                           Jr! = S7r! - 2
                           V_s$ ( 4 , 1 ) = Qs$
                           IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN
                               V_s$ ( 4 , 1 ) = Q_s$ ( Ir! , Jr! )
                           END IF
        L_31390_:          Jr! = S7r! - 2
                           V_s$ ( 3 , 1 ) = Qs$
                           IF Jr! > 0 THEN
                               V_s$ ( 3 , 1 ) = Q_s$ ( S6r! , Jr! )
                           END IF
                           Jr! = S7r! - 1
                           V_s$ ( 3 , 2 ) = Qs$
                           IF Jr! > 0 THEN
                               V_s$ ( 3 , 2 ) = Q_s$ ( S6r! , Jr! )
                           END IF
                           Nr! = Nr! + 1
                           IF Nr! = 3 THEN
                               GOTO L_31600_
                           END IF
                           Ir! = S6r! - 1
                           Jr! = S7r! - 2
                           V_s$ ( 2 , 1 ) = Qs$
                           IF ( Ir! > 0 ) AND ( Jr! > 0 ) THEN
                               V_s$ ( 2 , 1 ) = Q_s$ ( Ir! , Jr! )
                           END IF
                           GOTO L_29950_
        L_31600_:          FOR Ir! = 1 TO 5
                               IF ( V_s$ ( Ir! , 1 ) = " " ) AND ( V_s$ ( Ir! , 3 ) = " " ) AND ( V_s$ ( Ir! , 5 ) = " " ) THEN
                                   GOTO L_31690_
                               END IF
                               print "  " ;
                               FOR Jr! = 1 TO 5
                                   print V_s$ ( Ir! , Jr! ) ; " " ;
                               NEXT Jr!
                               print
        L_31690_:          NEXT Ir!
                           RETURN

      SUB_31710_:          REM - WAIT
                           J3r! = 0
                           INPUT "HOW MANY STARDATES" ; Z5r!
                           IF ( Z5r! < R5r! ) AND ( K3r! = 0 ) THEN
                               GOTO L_31810_
                           END IF
                           INPUT "ARE YOU SURE" ; Bs$
                           IF left$ ( Bs$ , 1 ) <> "Y" THEN
                               RETURN
                           END IF
        L_31810_:          R6r! = 1
        L_31820_:          IF Z5r! <= 0 THEN
                               R6r! = 0
                           END IF
                           IF R6r! = 0 THEN
                               RETURN
                           END IF
                           T1r! = Z5r!
                           Z6r! = Z5r!
                           IF K3r! = 0 THEN
                               GOTO L_31980_
                           END IF
                           T1r! = 1 + rnd ( 1 )
                           IF Z5r! < T1r! THEN
                               T1r! = Z5r!
                           END IF
                           Z6r! = T1r!
        L_31980_:          IF T1r! < Z5r! THEN
                               GOSUB SUB_2220_
                           END IF
                           IF A2r! <> 0 THEN
                               RETURN
                           END IF
                           GOSUB SUB_7330_
                           J3r! = 1
                           IF A2r! <> 0 THEN
                               RETURN
                           END IF
                           Z5r! = Z5r! - Z6r!
                           GOTO L_31820_

      SUB_32110_:          REM WARP
                           J3r! = 0
                           IF D4_r! ( 6 ) <> 0 THEN
                               GOTO L_33410_
                           END IF
                           INPUT "ENTER COURSE AND DISTANCE" ; D2r! , D1r!
                           IF D2r! < 0 THEN
                               RETURN
                           END IF
                           Pr! = ( D1r! + .05 ) * W1r! * W1r! * W1r! * ( S4r! + 1 )
                           IF Pr! < E1r! THEN
                               GOTO L_32460_
                           END IF
                           J3r! = 0
                           print
                           print "ENGINEERING  TO  BRIDGE--"
                           IF ( S4r! = 0 ) OR ( .5 * Pr! > E1r! ) THEN
                               GOTO L_32330_
                           END IF
                           print "  WE HAVEN'T THE ENERGY  TO  GO THAT FAR WITH" ;
                           print " THE SHIELDS UP."
                           RETURN
        L_32330_:          Wr! = int ( ( E1r! / ( D1r! + .05 ) ) ^ .333333 )
                           IF Wr! <= 0 THEN
                               GOTO L_32440_
                           END IF
                           print "  WE HAVEN'T THE ENERGY.  BUT WE COULD DO IT AT WARP" ; Wr!
                           IF S4r! <> 0 THEN
                               GOTO L_32420_
                           END IF
                           RETURN
        L_32420_:          print "  if  YOU'LL LOWER THE SHIELDS."
                           RETURN
        L_32440_:          print "  WE CAN'T DO IT, CAPTAIN.  WE HAVEN'T GOT THE ENERGY."
                           RETURN
        L_32460_:          T1r! = 10 * D1r! / W2r!
                           IF T1r! < .8 * R5r! THEN
                               GOTO SUB_32610_
                           END IF
                           print
                           print "MR. SPOCK - 'CAPTAIN, I COMPUTE THAT SUCH A TRIP"
                           print " WILL REQUIRE APPROXIMATELY" ; Fktr ( 100 * T1r! / R5r! ) ;
                           print "PERCENT"
                           print "   OF OUR REMAINING TIME.  ARE YOU SURE " ;
                           INPUT "THIS IS WISE" ; Bs$
                           IF left$ ( Bs$ , 1 ) = "Y" THEN
                               GOTO SUB_32610_
                           END IF
                           J3r! = 0
                           RETURN

      SUB_32610_:          Q4r! = 0
                           Wr! = 0
                           IF W1r! <= 6 THEN
                               GOTO L_33150_
                           END IF
                           Pr! = D1r! * ( 6 - W1r! ) ^ 2 / 66.66666
                           IF Pr! > rnd ( 1 ) THEN
                               Q4r! = 1
                           END IF
                           IF Q4r! <> 0 THEN
                               D1r! = rnd ( 1 ) * D1r!
                           END IF
                           Wr! = 0
                           IF W1r! < 10 THEN
                               GOTO L_32800_
                           END IF
                           IF .25 * D1r! > rnd ( 1 ) THEN
                               Wr! = 1
                           END IF
        L_32800_:          IF ( Q4r! = 0 ) AND ( Wr! = 0 ) THEN
                               GOTO L_33150_
                           END IF
                           Ar! = ( 15 - D2r! ) * .5235998
                           X1r! = - sin ( Ar! )
                           X2r! = cos ( Ar! )
                           B8r! = abs ( X1r! )
                           IF abs ( X2r! ) > abs ( X1r! ) THEN
                               B8r! = abs ( X2r! )
                           END IF
                           X1r! = X1r! / B8r!
                           Y1r! = Y1r! / B8r!
                           Nr! = int ( 10 * D1r! * B8r! + .5 )
                           Xr! = S6r!
                           Yr! = S7r!
                           IF Nr! = 0 THEN
                               GOTO L_33150_
                           END IF
                           FOR Lr! = 1 TO Nr!
                               Xr! = Xr! + X1r!
                               Qr! = int ( Xr! + .5 )
                               IF ( Qr! < 1 ) OR ( Qr! > 10 ) THEN
                                   GOTO L_33150_
                               END IF
                               Yr! = Yr! + Y1r!
                               Rr! = int ( Yr! + .5 )
                               IF ( Rr! < 1 ) OR ( Rr! > 10 ) THEN
                                   GOTO L_33150_
                               END IF
                               IF Q_s$ ( Qr! , Rr! ) = "." THEN
                                   GOTO L_33140_
                               END IF
                               Q4r! = 0
                               Wr! = 0
        L_33140_:          NEXT Lr!
        L_33150_:          GOSUB SUB_13480_
                           IF A2r! <> 0 THEN
                               RETURN
                           END IF
                           E1r! = E1r! - D1r! * W1r! * W1r! * W1r! * ( S4r! + 1 )
                           IF E1r! > 0 THEN
                               GOTO L_33260_
                           END IF
                           F9r! = 4
                           GOSUB SUB_9720_
                           RETURN
        L_33260_:          T1r! = 10 * D1r! / W2r!
                           IF Wr! <> 0 THEN
                               GOSUB SUB_28620_
                           END IF
                           IF Q4r! = 0 THEN
                               GOTO L_33390_
                           END IF
                           print
                           print "ENGINEERING  TO  BRIDGE--"
                           print "   SCOTT HERE-  " ;
                           print "'WE'VE JUST BLOWN THE WARP ENGINES."
                           print "   WE'LL HAVE  TO  SHUT 'ER DOWN HERE, CAPTAIN.'"
                           D4_r! ( 6 ) = D5r! * ( 3 * rnd ( 1 ) + 1 )
        L_33390_:          J3r! = 1
                           RETURN
        L_33410_:          print "WARP ENGINES DAMAGED."
                           RETURN

      SUB_33430_:          REM - ABANDON
                           ON sgn ( D4_r! ( 10 ) ) + 2 GOTO L_33450_ , L_33490_ , L_33470_
        L_33450_:          print "YE FAERIE QUEENE HAS NO SHUTTLE CRAFT."
                           RETURN
        L_33470_:          print "SHUTTLE CRAFT DAMAGED."
                           RETURN
        L_33490_:          print
                           print "***ABANDON SHIP!  ABANDON SHIP!"
                           print "***ALL HANDS ABANDON SHIP!"
                           print
                           print "YOU AND THE BRIDGE CREW ESCAPE IN THE GALILEO."
                           print "THE REMAINDER OF THE CREW BEAMS DOWN"
                           print " TO  THE NEAREST HABITABLE PLANET."
                           IF R3r! <> 0 THEN
                               GOTO L_33620_
                           END IF
                           F9r! = 9
                           GOSUB SUB_9720_
                           RETURN
        L_33620_:          print
                           print "YOU ARE CAPTURED BY KLINGONS AND RELEASED  TO "
                           print "THE FEDERATION IN A PRISONER-OF-WAR EXCHANGE."
                           print "STARFLEET PUTS YOU IN COMMAND OF ANOTHER SHIP,"
                           print "THE FAERIE QUEENE WHICH IS ANTIQUATED, BUT"
                           print "STILL USABLE."
                           Nr! = int ( rnd ( 1 ) * R3r! + 1 )
                           Q1r! = B2_r! ( Nr! )
                           Q2r! = B3_r! ( Nr! )
        L_33710_:          S6r! = 5
                           S7r! = 5
                           GOSUB SUB_16850_
                           Q_s$ ( S6r! , S7r! ) = "."
                           FOR Lr! = 1 TO 3
                               S6r! = int ( 3 * rnd ( 1 ) - 1 + B6r! )
                               IF ( S6r! < 1 ) OR ( S7r! > 10 ) THEN
                                   GOTO L_33870_
                               END IF
                               S7r! = int ( 3 * rnd ( 1 ) - 1 + B7r! )
                               IF ( S7r! < 1 ) OR ( S7r! > 10 ) THEN
                                   GOTO L_33870_
                               END IF
                               IF Q_s$ ( S6r! , S7r! ) = "." THEN
                                   GOTO L_33890_
                               END IF
        L_33870_:          NEXT Lr!
                           GOTO L_33710_
        L_33890_:          S5s$ = "FAERIE QUEENE"
                           Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
                           C5s$ = "DOCKED"
                           FOR Lr! = 1 TO 12
                               D4_r! ( Lr! ) = 0
                           NEXT
                           D4_r! ( 10 ) = - 1
                           E1r! = 3000
                           I7r! = E1r!
                           S3r! = 1500
                           I8r! = S3r!
                           T4r! = 6
                           I9r! = T4r!
                           L1r! = 3
                           J1r! = L1r!
                           S4r! = 0
                           W1r! = 5
                           W2r! = 25
                           RETURN

      SUB_34080_:          REM - DESTRUCT
                           IF D4_r! ( 11 ) = 0 THEN
                               GOTO L_34140_
                           END IF
                           print "COMPUTER DAMAGED - CANNOT EXECUTE DESTRUCT SEQUENCE"
                           RETURN
        L_34140_:          print
                           print "    ---WORKING---"
                           print "IDENTIFICATION-POSITIVE"
                           print "SELF-DESTRUCT-SEQUENCE-ACTIVATED"
                           Jr! = 3
                           FOR Ir! = 10 TO 6 STEP - 1
                               print spc ( Jr! ) ; Ir!
                               GOSUB SUB_34610_
                               Jr! = Jr! + 3
                           NEXT
                           print "ENTER-YOUR-MISSION-PASSWORD- TO -CONTINUE"
                           print "SELF-DESTRUCT-SEQUENCE-OTHERWISE-DESTRUCT"
                           print "SEQUENCE-WILL-BE-ABORTED"
                           INPUT Bs$
                           IF Bs$ <> Xs$ THEN
                               GOTO L_34570_
                           END IF
                           print "PASSWORD-ACCEPTED"
                           Jr! = 10
                           FOR Ir! = 5 TO 1 STEP - 1
                               print spc ( Jr! ) ; Ir!
                               GOSUB SUB_34610_
                               Jr! = Jr! + 3
                           NEXT
                           print
                           print "*****ENTROPY OF " ; S5s$ ; " MAXIMIZED*****"
                           print
                           IF K3r! = 0 THEN
                               GOTO L_34540_
                           END IF
                           Wr! = 20 * E1r!
                           FOR Lr! = 1 TO K3r!
                               IF K6_r! ( Lr! ) * K7_r! ( Lr! ) > Wr! THEN
                                   GOTO L_34530_
                               END IF
                               A5r! = K4_r! ( Lr! )
                               A6r! = K5_r! ( Lr! )
                               T2s$ = Q_s$ ( A5r! , A6r! )
                               GOSUB SUB_6390_
        L_34530_:          NEXT Lr!
        L_34540_:          F9r! = 10
                           GOSUB SUB_9720_
                           RETURN
        L_34570_:          print "PASSWORD-REJECTED"
                           print "CONTINUITY-EFFECTED"
                           print
                           RETURN

      SUB_34610_:          Kr! = 12345
                           FOR Mr! = 1 TO 90
                               Kr! = Kr! + 1
                           NEXT Mr!
                           RETURN

      SUB_34660_:          REM - STATUS
                           FOR Ir! = 1 TO 10
                           NEXT Ir!
                           GOTO L_28150_
                           RETURN
        L_34710_:          END
'1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 
