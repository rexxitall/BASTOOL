#LANG "qb"
OPTION GOSUB
' BASTOOL .01 (c) Dipl.-Ing. Thomas Ludewig 2007
' using at your own risk- no warrenty
' CURRENT DIR:C:\FREEBASIC\PROJECTS\BASTOOL\source
' PROCESS    :C:\FREEBASIC\PROJECTS\BASTOOL\source/startrek.bas
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
                                 '        B6r!           REM SINGLE :REM B6
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
                                 '        I7r!           REM SINGLE :REM I7
                                 '        Ir!            REM SINGLE :REM I
                                 '        J2r!           REM SINGLE :REM J2
                                 '        J3r!           REM SINGLE :REM J3
                                 '        J4r!           REM SINGLE :REM J4
                                 '        J5r!           REM SINGLE :REM J5
                                 '        J6r!           REM SINGLE :REM J6
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
                                 '        N4r!           REM SINGLE :REM N4
                                 '        N5r!           REM SINGLE :REM N5
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
                                 '        X6r!           REM SINGLE :REM X6
                                 '        X7r!           REM SINGLE :REM X7
                                 '        X8r!           REM SINGLE :REM X8
                                 '        Xr!            REM SINGLE :REM X
                                 '        Xs$            REM STRING :REM X$
                                 '        Y1r!           REM SINGLE :REM Y1
                                 '        Y3r!           REM SINGLE :REM Y3
                                 '        Y5r!           REM SINGLE :REM Y5
                                 '        Y6r!           REM SINGLE :REM Y6
                                 '        Yr!            REM SINGLE :REM Y
                                 '        Z1r!           REM SINGLE :REM Z1
                                 '        Z3r!           REM SINGLE :REM Z3
                                 '        Z4r!           REM SINGLE :REM Z4
                                 '        Z5r!           REM SINGLE :REM Z5
                                 '        Z6r!           REM SINGLE :REM Z6
                                 '        Z7r!           REM SINGLE :REM Z7
                                 '        Zr!            REM SINGLE :REM Z
             n10:  REM   *** SUPER STAR TREK ***
             n20:  REM     INTELLEC MDS VERSION
             n30:  REM WRITTEN IN BASIC BY RON WILLIAMS
             n40:  REM      INTEL CORP. - 5/15/76
             n50:  REM ADAPTED FROM A FORTRAN VERSION WRITTEN
             n60:  REM    FOR  THE CDC 6600 IN 1974.
             n70:  REDIM G1_s$ ( 16 ) , V_s$ ( 5 , 5 ) , C_s$ ( 20 ) , G_r! ( 8 , 8 ) , D_s$ ( 12 ) , Q_s$ ( 10 , 10 ) , D4_r! ( 12 ) , D9_r! ( 106 )
             n80:  REDIM S2_r! ( 8 , 8 )
             l90:  Q$ = "?"
            n100:  DATA "S.R." "SENSORS" , "L.R." "SENSORS" , "PHASERS" , "PHOTON" "TUBES" , "LIFE" "SUPPORT"
            n110:  DATA "WARP" "ENGINES" , "IMPULSE" "ENGINES" , "SHIELDS" , "SUBSPACE" "RADIO"
            n120:  DATA "SHUTTLE" "CRAFT" , "COMPUTER" , "TRANSFER" "PANEL" , "ABANDON" , "CHART" , "COMPUTER"
            n130:  DATA "DAMAGES" , "DESTRUCT" , "DOCK" , "IDLE" , "IMPULSE" , "LRSCAN" , "NAVIGATE" , "PHASERS" , "QUIT"
            n140:  DATA "SHIELDS" , "SOS" , "SRSCAN" , "STATUS" , "TORPEDO" , "TRANSFER" , "VISUAL" , "WARP" , "SHORT"
            n150:  DATA "MEDIUM" , "LONG" , "BEGINNER" , "NOVICE" , "SENIOR" , "EXPERT" , "COURSE" , "WCOST" , "ICOST"
            n160:  DATA "PEFFECT" , "SCORE" , "END" , "ANTARES" , "SIRIUS" , "RIGEL" , "MERAK" , "PROCYON" , "CAPELLA"
            n170:  DATA "VEGA" , "DENEB" , "CANOPUS" , "ALDEBARAN" , "ALTAIR" , "REGULUS" , "BELLATRIX" , "ARCTURUS"
            n180:  DATA "POLLUX" , "SPICA" , 10.5 , 12 , 1.5 , 9 , 0 , 3 , 7.5 , 6 , 4.5
            n190:  FUNCTION Fkta ( Xr! ) : Fkta = int ( 8 * rnd ( Xr! ) ) + 1 : END FUNCTION
            l200:  FUNCTION Fktb ( Xr! ) : Fktb = int ( 10 * rnd ( Xr! ) ) + 1 : END FUNCTION
            n210:  'WARNING: Something may wrong with the code structure indent was negative
                   FUNCTION Fktd ( Xr! ) : Fktd = Xr! / 60 : END FUNCTION
            n220:  FUNCTION Fktr ( Xr! ) : Fktr = int ( Xr! * 10 + .5 ) / 10 : END FUNCTION
            l230:  FUNCTION Fkts ( Xr! ) : Fkts = int ( Xr! * 100 + .5 ) / 100 : END FUNCTION
            n240:  'WARNING: Something may wrong with the code structure indent was negative
                   FOR Ir! = 1 TO 12
            l250:      read D_s$ ( Ir! )
            l260:  NEXT
            l270:  FOR Ir! = 1 TO 20
            l280:      read C_s$ ( Ir! )
            l290:  NEXT
            n300:  FOR Ir! = 1 TO 3
            l310:      read T_s$ ( Ir! )
            l320:  NEXT
            l330:  FOR Ir! = 1 TO 4
            l340:      read S_s$ ( Ir! )
            l350:  NEXT
            l360:  FOR Ir! = 1 TO 6
            n370:      read C2_s$ ( Ir! )
            l380:  NEXT
            l390:  FOR Ir! = 1 TO 16
            l400:      read G1_s$ ( Ir! )
            l410:  NEXT
            l420:  FOR Ir! = 1 TO 9
            l430:      read C5_r! ( Ir! )
            l440:  NEXT
          L_450_:  REM CALL SETUP
            n460:  GOSUB SUB_17090_
            l470:  S7_s$ ( 1 ) = ""
            l480:  S7_s$ ( 2 ) = "  "
            l490:  S7_s$ ( 3 ) = " "
            l500:  S7_s$ ( 4 ) = ""
          L_510_:  IF A2r! <> 0 THEN GOTO L_1650_
          L_520_:  J4r! = 0
            l530:  T1r! = 0
            l540:  print
            l550:  INPUT "COMMAND" ; BT_As$
            l560:  IF len ( BT_As$ ) > 1 THEN GOTO L_590_
            n570:  print "USE AT LEAST 2 LETTERS, PLEASE."
            l580:  GOTO L_520_
          L_590_:  FOR Ir! = 1 TO 20
            n600:      IF BT_As$ = left$ ( C_s$ ( Ir! ) , len ( BT_As$ ) ) THEN GOTO L_700_
            n610:  NEXT
            n620:  INPUT "ILLEGAL COMMAND - DO YOU NEED A LIST" ; Bs$
            n630:  IF left$ ( Bs$ , 1 ) = "N" THEN GOTO L_510_
            n640:  print
            l650:  FOR Ir! = 1 TO 20 STEP 4
            n660:      print C_s$ ( Ir! ) ; tab ( 12 ) ; C_s$ ( Ir! + 1 ) ; tab ( 22 ) ; C_s$ ( Ir! + 2 ) ; tab ( 32 ) ; C_s$ ( Ir! + 3 )
            n670:  NEXT
            l680:  print
            l690:  GOTO L_510_
          L_700_:  ON Ir! GOTO L_740_ , L_770_ , L_800_ , L_830_ , L_860_ , L_890_ , L_920_ , L_990_ , L_1030_ , L_1060_
            n710:  ON Ir! - 10 GOTO L_1100_ , L_1150_ , L_1190_ , L_1260_ , L_1290_ , L_1320_ , L_1360_ , L_1400_ , L_1460_ , L_1520_
            n720:  print "ERROR AT 170 - SHOULD NOT BE HERE"
            n730:  STOP
          L_740_:  REM  - ABANDON
            n750:  GOSUB SUB_23710_
            n760:  GOTO L_510_
          L_770_:  REM  - CHART
            n780:  GOSUB SUB_3120_
            n790:  GOTO L_510_
          L_800_:  REM  - COMPUTER
            n810:  GOSUB SUB_3920_
            n820:  GOTO L_510_
          L_830_:  REM  - DAMAGES
            n840:  GOSUB SUB_5280_
            n850:  GOTO L_510_
          L_860_:  REM - DESTRUCT
            n870:  GOSUB SUB_24280_
            l880:  GOTO L_510_
          L_890_:  REM  - DOCK
            n900:  GOSUB SUB_5130_
            n910:  GOTO L_510_
          L_920_:  REM  - IOLE
            n930:  GOSUB SUB_22630_
            n940:  IF J3r! = 0 THEN GOTO L_510_
            n950:  IF A2r! <> 0 THEN GOTO L_1650_
            n960:  IF G_r! ( Q1r! , Q2r! ) = 1000 THEN GOTO L_1600_
            n970:  GOSUB SUB_1720_
            n980:  GOTO L_510_
          L_990_:  REM  - IMPULSE
           n1000:  GOSUB SUB_9200_
           n1010:  IF J3r! = 0 THEN GOTO L_510_
           n1020:  GOTO L_1550_
         L_1030_:  REM  - LRSCAN
           n1040:  GOSUB SUB_9540_
           n1050:  GOTO L_510_
         L_1060_:  REM  - NAVIGATE
           n1070:  GOSUB SUB_22850_
           n1080:  IF J3r! = 0 THEN GOTO L_510_
           n1090:  GOTO L_1550_
         L_1100_:  REM  - PHASERS
           n1110:  GOSUB SUB_14120_
           n1120:  IF J3r! = 0 THEN GOTO L_510_
           n1130:  GOSUB SUB_1720_
           n1140:  GOTO L_510_
         L_1150_:  REM  - QUIT
           n1160:  GOTO L_1650_
         L_1170_:  print " TOO BAD...WE HATE TO LOSE GOOD ASTRONAUTS!"
           n1180:  GOTO L_24830_
         L_1190_:  REM  - SHIELDS
           n1200:  GOSUB SUB_18660_
           n1210:  IF J3r! = 0 THEN GOTO L_510_
           n1220:  IF A2r! <> 0 THEN GOTO L_1650_
           n1230:  GOSUB SUB_1720_
           n1240:  S9r! = 0
           n1250:  GOTO L_510_
         L_1260_:  REM  - SOS
           n1270:  GOSUB SUB_8210_
           n1280:  GOTO L_510_
         L_1290_:  REM  - SRSCAN
           n1300:  GOSUB SUB_20050_
           n1310:  GOTO L_510_
         L_1320_:  REM - STATUS
           n1330:  print
           n1340:  GOSUB SUB_24780_
           l1350:  GOTO L_510_
         L_1360_:  REM  - TORPEDOS
           n1370:  GOSUB SUB_14740_
           n1380:  IF J3r! = 0 THEN GOTO L_510_
           n1390:  GOTO L_1550_
         L_1400_:  REM  - TRANSFER
           n1410:  GOSUB SUB_21050_
           n1420:  IF J3r! = 0 THEN GOTO L_510_
           n1430:  IF A2r! <> 0 THEN GOTO L_1650_
           n1440:  IF G_r! ( Q1r! , Q2r! ) <> 1000 THEN GOTO L_510_
           n1450:  GOTO L_1600_
         L_1460_:  REM  - VISUAL
           n1470:  GOSUB SUB_21270_
           n1480:  IF J3r! = 0 THEN GOTO L_510_
           n1490:  IF A2r! <> 0 THEN GOTO L_1650_
           n1500:  IF G_r! ( Q1r! , Q2r! ) <> 1000 THEN GOTO L_510_
           n1510:  GOTO L_1600_
         L_1520_:  REM  - WARP
           n1530:  GOSUB SUB_18400_
           n1540:  GOTO L_510_
         L_1550_:  REM  - AFTERMOVINGSTARSHIP
           n1560:  IF A2r! <> 0 THEN GOTO L_1650_
           n1570:  IF T1r! <> 0 THEN GOSUB SUB_5410_
           n1580:  IF A2r! <> 0 THEN GOTO L_1650_
         L_1590_:  IF G_r! ( Q1r! , Q2r! ) < 1000 THEN GOTO L_1630_
         L_1600_:  GOSUB SUB_2620_
           n1610:  IF A2r! <> 0 THEN GOTO L_1650_
           n1620:  GOTO L_1590_
         L_1630_:  GOSUB SUB_1720_
           n1640:  GOTO L_510_
         L_1650_:  REM  - WE '10'
           n1660:  print
           l1670:  print
           l1680:  INPUT "WOULD YOU LIKE  TO  TRY AGAIN" ; BT_As$
           n1690:  IF left$ ( BT_As$ , 1 ) = "Y" THEN GOTO L_450_
           n1700:  GOTO L_1170_
           n1710:  REM  - BEGINSUBROUTINES

       SUB_1720_:  REM  - ATTACK
           n1730:  IF ( C3r! <> 0 ) AND ( J4r! = 0 ) THEN GOSUB SUB_11160_
           n1740:  IF K3r! = 0 THEN RETURN


           n1750:  IF A2r! <> 0 THEN RETURN


           n1760:  P2r! = 1 / I8
           n1770:  J5r! = 0
           n1780:  print
           n1790:  IF C5s$ = "DOCKED" THEN GOTO L_2550_
           n1800:  H2r! = 0
           l1810:  H3r! = 0
           l1820:  C6r! = 1
           n1830:  IF S9r! = 1 THEN C6r! = .5 + .5 * rnd ( 1 )
           n1840:  A3r! = 0
           n1850:  FOR Lr! = 1 TO K3r!
           n1860:      IF K6_r! ( Lr! ) < 0 THEN GOTO L_2310_
           n1870:      A3r! = 1
           n1880:      D6r! = .8 + .05 * rnd ( 1 )
           n1890:      H4r! = K6_r! ( Lr! ) * D6r! ^ K8_r! ( Lr! )
           n1900:      IF ( S4r! = 0 ) AND ( S9r! = 0 ) THEN GOTO L_1980_
           n1910:      P3r! = .1
           l1920:      IF P2r! * S3r! > P3r! THEN P3r! = P2r! * S3r!
           n1930:      H5r! = P3r! * C6r! * H4r! + 1
           n1940:      IF H5r! > S3r! THEN H5r! = S3r!
           n1950:      S3r! = S3r! - H5r!
           n1960:      H4r! = H4r! - H5r!
           n1970:      IF ( P3r! > .1 ) AND ( H4r! < .005 * E1r! ) THEN GOTO L_2310_
         L_1980_:      J5r! = 1
           n1990:      print Fktr ( H4r! ) ; "UNIT HIT ON THE " ; S5s$ ; " FROM " ;
           n2000:      J6r! = K4_r! ( Lr! )
           l2010:      J7 = K5_r! ( Lr! )
           n2020:      IF Q_s$ ( J6r! , J7 ) = "K" THEN print "KLINGON AT" ;
           n2030:      IF Q_s$ ( J6r! , J7 ) = "C" THEN print "COMMANDER AT" ;
           n2040:      print J6r! ; "-" ; J7
           n2050:      IF H4r! > H2r! THEN H2r! = H4r!
           n2060:      H3r! = H3r! + H4r!
           n2070:      IF H4r! < ( 275 - 25 * S8r! ) * ( 1 + .5 * rnd ( 1 ) ) THEN GOTO L_2300_
           n2080:      N4r! = 1 + int ( H4r! / ( 500 + 100 * rnd ( 1 ) ) )
           n2090:      print "***CRITICAL HIT--" ;
           n2100:      K9r! = 1
           n2110:      FOR W4r! = 1 TO N4r!
           n2120:          J9r! = int ( 12 * rnd ( 1 ) ) + 1
           n2130:          C5_r! ( W4r! ) = J9r!
           n2140:          E3r! = ( H4r! * D5r! ) / ( N4r! * ( 75 + 25 * rnd ( 1 ) ) )
           n2150:          IF J9r! = 6 THEN E3r! = E3r! / 3
           n2160:          D4_r! ( J9r! ) = D4_r! ( J9r! ) + E3r!
           n2170:          IF W4r! = 1 THEN GOTO L_2240_
           n2180:          FOR Vr! = 1 TO W4r!
           n2190:              IF J9r! = C5_r! ( Vr! - 1 ) THEN GOTO L_2250_
           n2200:          NEXT Vr!
           n2210:          K9r! = K9r! + 1
           n2220:          IF K9r! = 3 THEN print
           n2230:          print " AND " ;
         L_2240_:          print D_s$ ( J9r! ) ;
         L_2250_:      NEXT W4r!
           n2260:      print " DAMAGED."
           n2270:      IF D4_r! ( 8 ) = 0 THEN GOTO L_2300_
           n2280:      IF S4r! <> 0 THEN print "*** SHIELDS KNOCKED DOWN."
           n2290:      S4r! = 0
         L_2300_:      E1r! = E1r! - H4r!
         L_2310_:  NEXT Lr!
           n2320:  IF A3r! = 0 THEN RETURN


           n2330:  IF E1r! <= 0 THEN GOTO L_2520_
           n2340:  P4r! = 100 * P2r! * S3r! + .5
           n2350:  IF J5r! <> 0 THEN GOTO L_2380_
           n2360:  print "KLINGONS ATTACK--SHIELD STRENGTH REDUCED  TO  " ;
           n2370:  GOTO L_2420_
         L_2380_:  print "ENERGY LEFT : " ; Fkts ( E1r! ) ; "   SHIELDS " ;
           n2390:  IF S4r! <> 0 THEN print "UP," ;
           n2400:  IF ( S4r! = 0 ) AND ( D4_r! ( 8 ) = 0 ) THEN print "DOWN, " ;
           n2410:  IF D4_r! ( 8 ) > 0 THEN print "DAMAGED, " ;
         L_2420_:  print int ( P4r! ) ; "%"
           n2430:  IF ( H2r! < 200 ) AND ( H3r! < 500 ) THEN GOTO L_2570_
           n2440:  J8r! = int ( H3r! * rnd ( 1 ) * .015 )
           n2450:  IF J8r! < 2 THEN GOTO L_2570_
           n2460:  print
           n2470:  print "MCCOY - 'SICKBAY  TO  BRIDGE.  WE SUFFERED " ;
           n2480:  print J8r! ; "CASUALTIES"
           n2490:  print "          IN THAT LAST ATTACK'"
           n2500:  C4r! = C4r! + J8r!
           n2510:  GOTO L_2570_
         L_2520_:  F9r! = 5
           n2530:  GOSUB SUB_7120_
           n2540:  RETURN


         L_2550_:  print "*** KLINGONS ATTACK-- STARBASE SHIELDS PROTECT " ;
           n2560:  print "THE " ; S5s$
         L_2570_:  FOR W4r! = 1 TO K3r!
           n2580:      K8_r! ( W4r! ) = K7_r! ( W4r! )
           n2590:  NEXT W4r!
           n2600:  GOSUB SUB_19810_
           n2610:  RETURN



       SUB_2620_:  REM  - AU TO VER
           n2630:  print
           n2640:  IF J4r! = 0 THEN GOTO L_2680_
           n2650:  print "*** RED ALERT!  RED ALERT!"
           n2660:  print "***THE " ; S5s$ ; " HAS S TO PPED IN A QUADRANT " ;
           n2670:  print "CONTAINING A SUPERNOVA."
         L_2680_:  print "*** EMERGENCY AU TO -OVERRIDE ATTEMPTS  TO  HURL " ;
           n2690:  print S5s$
           n2700:  print "   SAFELY OUT OF THE QUADRANT."
           n2710:  S2_r! ( Q1r! , Q2r! ) = 1
           n2720:  GOSUB SUB_12110_
           n2730:  IF D4_r! ( 6 ) = 0 THEN GOTO L_2930_
           n2740:  print
           n2750:  print "WARP ENGINES DAMAGED."
           n2760:  print
           n2770:  print "ATTEMPTING  TO  ENGAGE IMPULSE ENGINES..."
           n2780:  IF D4_r! ( 7 ) = 0 THEN GOTO L_2830_
           n2790:  print "IMPULSE ENGINES DAMAGED."
           n2800:  F9r! = 8
           n2810:  GOSUB SUB_7120_
           n2820:  RETURN


         L_2830_:  P2r! = .75 * E1r!
           n2840:  D6r! = .004 * ( P2r! - 50 )
           n2850:  D7r! = 1.4142 + 1.2 * rnd ( 1 )
           n2860:  D1r! = D6r!
           n2870:  IF D6r! > D7r! THEN D1r! = D7r!
           n2880:  T1r! = D1r! / .4
           n2890:  D2r! = 12 * rnd ( 1 )
           n2900:  J4r! = 0
           n2910:  GOSUB SUB_9440_
           n2920:  GOTO L_3040_
         L_2930_:  W1r! = 6 + 2 * rnd ( 1 )
           n2940:  W2r! = W1r! * W1r!
           n2950:  P2r! = .75 * E1r!
           n2960:  D6r! = P2r! / ( W1r! * W1r! * W1r! * ( S4r! + 1 ) )
           n2970:  D7r! = 1.4142 + 2 * rnd ( 1 )
           n2980:  D1r! = D6r!
           n2990:  IF D6r! > D7r! THEN D1r! = D7r!
           n3000:  T1r! = 10 * D1r! / W2r!
           n3010:  D2r! = 12 * rnd ( 1 )
           n3020:  J4r! = 0
           n3030:  GOSUB SUB_23190_
         L_3040_:  IF J4r! <> 0 THEN GOTO L_3080_
           n3050:  F9r! = 8
           n3060:  GOSUB SUB_7120_
           n3070:  RETURN


         L_3080_:  IF R1r! <> 0 THEN RETURN


           n3090:  F9r! = 1
           n3100:  GOSUB SUB_7120_
           n3110:  RETURN



       SUB_3120_:  REM  - CHART
           n3130:  print
           l3140:  print "      1   2   3   4   5   6   7   8"
           n3150:  print "     --- --- --- --- --- --- --- ---"
           n3160:  FOR Ir! = 1 TO 8
           n3170:      print Ir! ; " " ;
           n3180:      FOR Jr! = 1 TO 8
           n3190:          ON sgn ( S2_r! ( Ir! , Jr! ) ) + 2 GOTO L_3220_ , L_3240_ , L_3260_
           n3200:          print "ERR AT 3065"
           l3210:          STOP
         L_3220_:          print " .1." ;
           n3230:          GOTO L_3310_
         L_3240_:          print " ..." ;
           n3250:          GOTO L_3310_
         L_3260_:          IF S2_r! ( Ir! , Jr! ) > 1000 THEN GOTO L_3300_
           n3270:          IF G_r! ( Ir! , Jr! ) < 1000 THEN print S7_s$ ( len ( str$ ( G_r! ( Ir! , Jr! ) ) ) ) ; str$ ( G_r! ( Ir! , Jr! ) ) ;
           n3280:          IF G_r! ( Ir! , Jr! ) = 1000 THEN print " ***" ;
           n3290:          GOTO L_3310_
         L_3300_:          print S2_r! ( Ir! , Jr! ) - 1000 ;
         L_3310_:      NEXT Jr!
           n3320:      print
           n3330:  NEXT Ir!
           l3340:  GOSUB SUB_12790_
           n3350:  print
           n3360:  print "THE " ; S5s$ ; " IS CURRENTLY IN " ; G2s$ ; " (" ; Q1r! ; "-" ; Q2r! ; ")"
           n3370:  RETURN



       SUB_3380_:  REM  - CHOOSE
           n3390:  FOR Ir! = 1 TO 10
           l3400:      print
           l3410:  NEXT
           l3420:  FOR Ir! = 1 TO 41
           l3430:      print "*" ;
           l3440:  NEXT
           l3450:  print
           n3460:  print "**" ; tab ( 39 ) ; "**"
           n3470:  print "**  WELCOME  TO  THE WORLD OF STAR TREK  **"
           n3480:  print "**" ; tab ( 39 ) ; "**"
           l3490:  FOR Ir! = 1 TO 41
           l3500:      print "*" ;
           l3510:  NEXT
           l3520:  print
           n3530:  print
           l3540:  print
           n3550:  S8r! = 0
           l3560:  L2r! = 0
           n3570:  print "HOW LONG A GAME WOULD YOU LIKE" ;
         L_3580_:  INPUT BT_As$
           n3590:  FOR Ir! = 1 TO 3
           n3600:      IF BT_As$ = left$ ( T_s$ ( Ir! ) , len ( BT_As$ ) ) THEN GOTO L_3640_
           n3610:  NEXT Ir!
           n3620:  print "WOULD YOU LIKE A SHORT, MEDIUM OR LONG GAME" ;
           n3630:  GOTO L_3580_
         L_3640_:  L2r! = Ir!
         L_3650_:  print "ARE YOU A BEGINNER, NOVICE, SENIOR OR EXPERT PLAYER" ;
           n3660:  INPUT BT_As$
           n3670:  FOR Ir! = 1 TO 4
           n3680:      IF BT_As$ = left$ ( S_s$ ( Ir! ) , len ( BT_As$ ) ) THEN GOTO L_3710_
           n3690:  NEXT Ir!
           n3700:  GOTO L_3650_
         L_3710_:  S8r! = Ir!
           n3720:  INPUT "ENTER YOUR MISSION PASSWORD..." ; Xs$
           n3730:  print
           n3740:  print "....SETTING UP THE GALAXY...."
           n3750:  Jr! = rnd ( 1 )
           n3760:  REM  - INITIALIZE
           n3770:  D5r! = .5 * S8r!
           n3780:  I2r! = int ( L2r! + 1 + rnd ( 1 ) * 3 )
           n3790:  IF I2r! > 5 THEN I2r! = 5
           n3800:  R3r! = I2r!
           n3810:  I5r! = 7 * L2r!
           n3820:  R5r! = I5r!
           n3830:  R7r! = ( S8r! - 2 * rnd ( 1 ) + 1 ) * S8r! * .1 + .1
           n3840:  IF R7r! < .2 THEN R7r! = R7r! + .1
           n3850:  I1r! = int ( 2 * R7r! * I5r! )
           n3860:  R1r! = I1r!
           n3870:  I4r! = int ( S8r! + .0625 * I1r! * rnd ( 1 ) )
           n3880:  R2r! = I4r!
           n3890:  I3r! = ( I1r! + 4 * I4r! ) * I5r!
           n3900:  R4r! = I3r!
           n3910:  RETURN



       SUB_3920_:  REM  - COMPUTE
           n3930:  IF D4_r! ( 11 ) = 0 THEN GOTO L_3960_
           n3940:  print "LIBRARY COMPUTER DISABLED"
           n3950:  RETURN


         L_3960_:  print "----LIBRARY COMPUTER ACTIVE----"
         L_3970_:  INPUT "PROGRAM NAME" ; Bs$
           n3980:  FOR Ir! = 1 TO 6
           n3990:      IF Bs$ = left$ ( C2_s$ ( Ir! ) , len ( Bs$ ) ) THEN GOTO L_4050_
           n4000:  NEXT
           n4010:  print "VALID PROGRAMS ARE : "
           n4020:  print "  COURSE    WCOST   ICOST"
           n4030:  print "  PEFFECT   SCORE   END"
           n4040:  GOTO L_3970_
         L_4050_:  ON Ir! GOTO L_4060_ , L_4390_ , L_4470_ , L_4550_ , L_4620_ , L_4650_
         L_4060_:  REM  - COURSE&DIRECTION
           n4070:  INPUT "ENTER QUADRANT AND SECTOR - " ; A3r! , A4r!
           n4080:  IF ( A3r! <> int ( A3r! ) ) OR ( A4r! <> int ( A4r! ) ) THEN GOTO L_4660_
           n4090:  IF A3r! < 0 THEN GOTO L_3970_
           n4100:  IF A3r! = 0 THEN A3r! = 10 * Q1r! + Q2r!
           n4110:  A3r! = A3r! + .5
           n4120:  Kr! = int ( A3r! / 10 )
           n4130:  IF ( Kr! < 1 ) OR ( Kr! > 8 ) THEN GOTO L_4660_
           n4140:  C6_r! ( 1 ) = Kr!
           l4150:  Kr! = int ( A3r! - C6_r! ( 1 ) * 10 )
           n4160:  IF ( Kr! < 1 ) OR ( Kr! > 8 ) THEN GOTO L_4660_
           n4170:  C6_r! ( 2 ) = Kr!
           l4180:  A4r! = A4r! + .5
           n4190:  Kr! = int ( A4r! / 100 )
           n4200:  IF ( Kr! < 1 ) OR ( Kr! > 10 ) THEN GOTO L_4660_
           n4210:  C6_r! ( 1 ) = C6_r! ( 1 ) + ( Kr! - 1 ) / 10
           l4220:  Kr! = int ( A4r! - Kr! * 100 )
           n4230:  IF ( Kr! < 1 ) OR ( Kr! > 10 ) THEN GOTO L_4660_
           n4240:  C6_r! ( 2 ) = C6_r! ( 2 ) + ( Kr! - 1 ) / 10
           n4250:  Xr! = Q1r! + ( ( S6r! - 1 ) / 10 ) - C6_r! ( 1 )
           l4260:  Yr! = Q2r! + ( ( S7r! - 1 ) / 10 ) - C6_r! ( 2 )
           n4270:  D1r! = 0
           l4280:  D2r! = 0
           l4290:  IF ( Xr! = 0 ) AND ( Yr! = 0 ) THEN GOTO L_4360_
           n4300:  D1r! = sqr ( Xr! * Xr! + Yr! * Yr! )
           n4310:  IF Xr! < 0 THEN Z7r! = sgn ( Yr! ) * ( 3.1416 - atn ( abs ( Yr! / Xr! ) ) )
           n4320:  IF Xr! = 0 THEN Z7r! = sgn ( Yr! ) * 1.5708
           n4330:  IF Xr! > 0 THEN Z7r! = atn ( Yr! / Xr! )
           n4340:  D2r! = 12 - Z7r! * 1.9098593
           l4350:  IF D2r! > 12 THEN D2r! = D2r! - 12
         L_4360_:  print "COURSE IS" ; Fkts ( D2r! ) ; " FOR  A DISTANCE OF" ;
           n4370:  print Fkts ( D1r! ) ; "QUADRANTS."
           l4380:  GOTO L_3970_
         L_4390_:  REM  - COST FOR WARP DRIVE
           n4400:  INPUT "ENTER DISTANCE AND WARP FACTOR" ; D1r! , A4r!
           n4410:  IF ( D1r! < 0 ) THEN GOTO L_3970_
           n4420:  C7r! = D1r! * A4r! * A4r! * A4r!
           n4430:  T1r! = ( 10 * D1r! ) / ( A4r! * A4r! )
           n4440:  print "IT WOULD TAKE" ; Fkts ( T1r! ) ; "STARDATES AND USE"
           n4450:  print Fktr ( C7r! ) ; "UNITS OF ENERGY  (" ; Fktr ( C7r! + C7r! ) ; "IF SHIELDS ARE UP)"
           n4460:  GOTO L_3970_
         L_4470_:  REM  - COST FOR IMPULSE POWER
           n4480:  INPUT "ENTER DISTANCE..." ; D1r!
           n4490:  IF D1r! < 0 THEN GOTO L_3970_
           n4500:  C7r! = 250 * D1r! + 50
           l4510:  T1r! = D1r! / .4
           n4520:  print "IT WOULD TAKE" ; Fktr ( T1r! ) ; "STARDATES AND USE"
           n4530:  print C7r! ; "UNITS OF ENERGY"
           n4540:  GOTO L_3970_
         L_4550_:  REM  - PHASER EFFECTIVENESS
           n4560:  INPUT "ENTER PHASER RANGE IN QUADRANTS" ; A3r!
           n4570:  IF A3r! < 0 THEN GOTO L_3970_
           n4580:  A3r! = A3r! * 10
           l4590:  C7r! = ( .9 ^ A3r! ) * 100
           n4600:  print "PHASERS ARE " ; left$ ( str$ ( C7r! ) , 5 ) ; "% EFFECTIVE AT THAT RANGE"
           n4610:  GOTO L_3970_
         L_4620_:  REM  - SCORE
           n4630:  GOSUB SUB_16650_
           n4640:  GOTO L_3970_
         L_4650_:  RETURN


         L_4660_:  print "FORMAT IS MN,XXYY...WHERE MN IS THE QUADRANT"
           n4670:  print "AND XXYY IS THE SECTOR...E.G. 64,0307 REFERS"
           n4680:  print " TO  QUADRANT 6-4, SECTOR 3-7."
           n4690:  print "NOTE :  SECTOR COORDINATES MUST BE 4 DIGITS."
           n4700:  GOTO L_3970_

       SUB_4710_:  REM - DEADKL
           n4720:  IF T2s$ <> "C" THEN GOTO L_4870_
           n4730:  C3r! = 0
           l4740:  print "***COMMANDER AT" ;
           n4750:  FOR Fr! = 1 TO R2r!
           n4760:      IF ( C1_r! ( Fr! ) = Q1r! ) AND ( C2_r! ( Fr! ) = Q2r! ) THEN GOTO L_4780_
           n4770:  NEXT Fr!
         L_4780_:  C1_r! ( Fr! ) = C1_r! ( R2r! )
           l4790:  C2_r! ( Fr! ) = C2_r! ( R2r! )
           l4800:  C1_r! ( R2r! ) = 0
           l4810:  C2_r! ( R2r! ) = 0
           n4820:  R2r! = R2r! - 1
           l4830:  F1_r! ( 2 ) = 1E + 30
           n4840:  IF R2r! <> 0 THEN F1_r! ( 2 ) = D0r! - ( I4r! / R2r! ) * log ( rnd ( 1 ) )
           n4850:  K2r! = K2r! + 1
           n4860:  GOTO L_4890_
         L_4870_:  print "***KLINGON AT" ;
           n4880:  K1r! = K1r! + 1
         L_4890_:  print A5r! ; "-" ; A6r! ; "DESTROYED."
           n4900:  Q_s$ ( A5r! , A6r! ) = "."
           l4910:  R1r! = R1r! - 1
           n4920:  IF R1r! = 0 THEN RETURN


           n4930:  R5r! = R4r! / ( R1r! + 4 * R2r! )
           n4940:  G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 100
           n4950:  FOR Fr! = 1 TO K3r!
           n4960:      IF ( K4_r! ( Fr! ) = A5r! ) AND ( K5_r! ( Fr! ) = A6r! ) THEN GOTO L_4980_
           n4970:  NEXT Fr!
         L_4980_:  K3r! = K3r! - 1
           n4990:  IF Fr! > K3r! THEN GOTO L_5070_
           n5000:  FOR Gr! = Fr! TO K3r!
           n5010:      K4_r! ( Gr! ) = K4_r! ( Gr! + 1 )
           l5020:      K5_r! ( Gr! ) = K5_r! ( Gr! + 1 )
           l5030:      K6_r! ( Gr! ) = K6_r! ( Gr! + 1 )
           n5040:      K7_r! ( Gr! ) = K7_r! ( Gr! + 1 )
           l5050:      K8_r! ( Gr! ) = K7_r! ( Gr! )
           n5060:  NEXT Gr!
         L_5070_:  K4_r! ( K3r! + 1 ) = 0
           l5080:  K5_r! ( K3r! + 1 ) = 0
           l5090:  K7_r! ( K3r! + 1 ) = 0
           l5100:  K8_r! ( K3r! + 1 ) = 0
           l5110:  K6_r! ( K3r! + 1 ) = 0
           n5120:  RETURN



       SUB_5130_:  REM  - DOCK
           n5140:  IF C5s$ = "DOCKED" THEN GOTO L_5260_
           n5150:  IF B6r! = 0 THEN GOTO L_5170_
           n5160:  IF ( abs ( S6r! - B6r! ) <= 1 ) AND ( abs ( S7r! - B7 ) <= 1 ) THEN GOTO L_5190_
         L_5170_:  print S5s$ ; " NOT ADJACENT  TO  A BASE."
           n5180:  RETURN


         L_5190_:  C5s$ = "DOCKED"
           n5200:  print "HELMSMAN SULU - 'DOCKING MANEUVER COMPLETED.'"
           n5210:  E1r! = I7r!
           l5220:  S3r! = I8
           l5230:  T4r! = I9
           l5240:  L1r! = J1
           n5250:  RETURN


         L_5260_:  print "MR. SULU - 'BUT CAPTAIN, WE'RE ALREADY DOCKED!'"
           n5270:  RETURN



       SUB_5280_:  REM  - DREPORT
           n5290:  Jr! = 0
           n5300:  print
           n5310:  FOR Ir! = 1 TO 12
           n5320:      IF D4_r! ( Ir! ) <= 0 THEN GOTO L_5380_
           n5330:      IF Jr! <> 0 THEN GOTO L_5370_
           n5340:      print "     DEVICE" ; spc ( 12 ) ; "-REPAIR TIMES-"
           n5350:      print spc ( 21 ) ; "IN FLIGHT    DOCKED"
           n5360:      Jr! = 1
         L_5370_:      print "  " ; D_s$ ( Ir! ) ; tab ( 23 ) ; Fkts ( D4_r! ( Ir! ) ) ; tab ( 33 ) ; Fkts ( D3 * D4_r! ( Ir! ) )
         L_5380_:  NEXT Ir!
           n5390:  IF Jr! = 0 THEN print "MR. SPOCK - 'ALL DEVICES FUNCTIONAL, CAPTAIN'"
           n5400:  RETURN



       SUB_5410_:  REM  - EVENTS
         L_5420_:  Mr! = 0
           l5430:  D7r! = D0r! + T1r!
           n5440:  FOR Lr! = 1 TO 5
           n5450:      IF F1_r! ( Lr! ) > D7r! THEN GOTO L_5480_
           n5460:      Mr! = Lr!
           l5470:      D7r! = F1_r! ( Lr! )
         L_5480_:  NEXT Lr!
           n5490:  X6r! = D7r! - D0r!
           l5500:  D0r! = D7r!
           n5510:  R4r! = R4r! - ( R1r! + 4 * R2r! ) * X6r!
           n5520:  R5r! = R4r! / ( R1r! + 4 * R2r! )
           n5530:  IF R5r! > 0 THEN GOTO L_5570_
           n5540:  F9r! = 2
           n5550:  GOSUB SUB_7120_
           n5560:  RETURN


         L_5570_:  IF ( D4_r! ( 5 ) = 0 ) OR ( C5s$ = "DOCKED" ) THEN GOTO L_5640_
           n5580:  IF ( L1r! >= X6r! ) OR ( D4_r! ( 5 ) <= L1r! ) THEN GOTO L_5620_
           n5590:  F9r! = 3
           l5600:  GOSUB SUB_7120_
           n5610:  RETURN


         L_5620_:  L1r! = L1r! - X6r!
           n5630:  IF D4_r! ( 5 ) <= X6r! THEN L1r! = J1
         L_5640_:  Rr! = X6r!
           n5650:  IF C5s$ = "DOCKED" THEN Rr! = X6r! / D3
           n5660:  FOR Lr! = 1 TO 12
           n5670:      IF D4_r! ( Lr! ) <= 0 THEN GOTO L_5730_
           n5680:      D4_r! ( Lr! ) = D4_r! ( Lr! ) - Rr!
           n5690:      IF D4_r! ( Lr! ) < 0 THEN D4_r! ( Lr! ) = 0
           n5700:      IF D4_r! ( Lr! ) <> 0 THEN GOTO L_5730_
           n5710:      print
           l5720:      print "DAMAGE CONTROL-  '" ; D_s$ ( Lr! ) ; " NOW OPERATIONAL.'"
         L_5730_:  NEXT Lr!
           n5740:  IF Mr! = 0 THEN RETURN


           n5750:  T1r! = T1r! - X6r!
           n5760:  ON Mr! GOTO L_5770_ , L_5840_ , L_6120_ , L_6440_ , L_6720_
         L_5770_:  REM  - SUPERNOVA
           n5780:  X2r! = 0
           l5790:  Y2 = 0
           l5800:  GOSUB SUB_18950_
           n5810:  F1_r! ( 1 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
           n5820:  IF G_r! ( Q1r! , Q2r! ) = 1000 THEN RETURN


           n5830:  GOTO L_5420_
         L_5840_:  REM  - TRACTOR BEAM
           n5850:  IF R2r! = 0 THEN GOTO L_6100_
           n5860:  IF C5s$ = "DOCKED" THEN GOTO L_6080_
           n5870:  Ir! = int ( rnd ( 1 ) * R2r! ) + 1
           n5880:  Y6r! = ( C1_r! ( Ir! ) - Q1r! ) ^ 2 + ( C2_r! ( Ir! ) - Q2r! ) ^ 2
           n5890:  IF Y6r! = 0 THEN GOTO L_6080_
           n5900:  Y6r! = sqr ( Y6r! )
           l5910:  T1r! = .17778 * Y6r!
           n5920:  print
           l5930:  print "***" ; S5s$ ; " CAUGHT IN LONG-RANGE TRACTOR BEAM--"
           n5940:  Q1r! = C1_r! ( Ir! )
           l5950:  Q2r! = C2_r! ( Ir! )
           n5960:  S6r! = Fktb ( 1 )
           l5970:  S7r! = Fktb ( 1 )
           n5980:  print "   PULLED  TO  QUADRANT" ; Q1r! ; "-" ; Q2r! ; ", SECTOR" ; S6r! ; "-" ; S7r!
           n5990:  IF R6r! <> 0 THEN print "(REMAINDER OF IDLE PERIOD CANCELLED)"
           n6000:  R6r! = 0
           n6010:  IF S4r! <> 0 THEN GOTO L_6070_
           n6020:  IF ( D4_r! ( 8 ) = 0 ) AND ( S3r! > 0 ) THEN GOTO L_6050_
           n6030:  print "(SHIELDS NOT CURRENTLY USABLE.)"
           n6040:  GOTO L_6070_
         L_6050_:  GOSUB SUB_18700_
           n6060:  S9r! = 0
         L_6070_:  GOSUB SUB_12110_
         L_6080_:  F1_r! ( 2 ) = D0r! + T1r! - 1.5 * ( I5r! / R2r! ) * log ( rnd ( 1 ) )
           n6090:  GOTO L_5420_
         L_6100_:  F1_r! ( 2 ) = 1E + 30
           l6110:  GOTO L_5420_
         L_6120_:  D9_r! ( 1 ) = D0r!
           l6130:  D9_r! ( 2 ) = R1r!
           l6140:  D9_r! ( 3 ) = R2r!
           l6150:  D9_r! ( 4 ) = R3r!
           l6160:  D9_r! ( 5 ) = R4r!
           l6170:  D9_r! ( 6 ) = R5r!
           n6180:  D9_r! ( 7 ) = S1r!
           l6190:  D9_r! ( 8 ) = B1r!
           l6200:  D9_r! ( 9 ) = K1r!
           l6210:  D9_r! ( 10 ) = K2r!
           n6220:  FOR Ir! = 1 TO 8
           l6230:      FOR Jr! = 1 TO 8
           l6240:          D9_r! ( Ir! - 1 + 8 * ( Jr! - 1 ) + 11 ) = G_r! ( Ir! , Jr! )
           l6250:      NEXT Jr!
           l6260:  NEXT Ir!
           n6270:  FOR Ir! = 75 TO 84
           l6280:      D9_r! ( Ir! ) = C1_r! ( Ir! - 74 )
           l6290:  NEXT
           n6300:  FOR Ir! = 85 TO 94
           l6310:      D9_r! ( Ir! ) = C2_r! ( Ir! - 84 )
           l6320:  NEXT
           n6330:  FOR Ir! = 95 TO 99
           l6340:      D9_r! ( Ir! ) = B2_r! ( Ir! - 94 )
           l6350:  NEXT
           n6360:  FOR Ir! = 100 TO 104
           l6370:      D9_r! ( Ir! ) = B3_r! ( Ir! - 99 )
           l6380:  NEXT
           n6390:  D9_r! ( 105 ) = B4r!
           l6400:  D9_r! ( 106 ) = B5
           n6410:  S0r! = 1
           l6420:  F1_r! ( 3 ) = D0r! - .3 * I5r! * log ( rnd ( 1 ) )
           l6430:  GOTO L_5420_
         L_6440_:  REM - STARBASE ATTACK
           n6450:  IF ( R2r! = 0 ) OR ( R3r! = 0 ) THEN GOTO L_6540_
           n6460:  FOR Ir! = 1 TO R3r!
           l6470:      FOR Jr! = 1 TO R2r!
           l6480:          IF ( B2_r! ( Ir! ) = C1_r! ( Jr! ) ) AND ( B3_r! ( Ir! ) = C2_r! ( Jr! ) ) THEN GOTO L_6570_
           n6490:      NEXT Jr!
           l6500:  NEXT Ir!
         L_6510_:  F1_r! ( 4 ) = D0r! + .5 + 3 * rnd ( 1 )
           n6520:  F1_r! ( 5 ) = 1E + 30
           l6530:  GOTO L_5420_
         L_6540_:  F1_r! ( 4 ) = 1E + 30
           l6550:  F1_r! ( 5 ) = 1E + 30
           l6560:  GOTO L_5420_
         L_6570_:  B4r! = B2_r! ( Ir! )
           l6580:  B5 = B3_r! ( Ir! )
           n6590:  IF ( B4r! = Q1r! ) AND ( B5 = Q2r! ) THEN GOTO L_6510_
           n6600:  F1_r! ( 5 ) = D0r! + .5 + 3 * rnd ( 1 )
           n6610:  F1_r! ( 4 ) = F1_r! ( 5 ) - .3 * I5r! * log ( rnd ( 1 ) )
           n6620:  IF D4_r! ( 9 ) > 0 THEN GOTO L_5420_
           n6630:  print
           n6640:  print "LT. UHURA-  'CAPTAIN, THE STARBASE IN" ; B4r! ; "-" ; B5
           n6650:  print "  REPORTS THAT IT IS UNDER ATTACK AND CAN HOLD OUT"
           n6660:  print "  ONLY UNTIL STARDATE" ; Fktr ( F1_r! ( 5 ) ) ; "'"
           n6670:  IF R6r! = 0 THEN GOTO L_5420_
           n6680:  print
           n6690:  INPUT "MR. SPOCK-  'CAPTAIN, SHALL WE CANCEL THE IDLE PERIOD" ; Bs$
           n6700:  IF left$ ( Bs$ , 1 ) = "Y" THEN R6r! = 0
           n6710:  GOTO L_5420_
         L_6720_:  REM - STARBASE DESTROYED
           n6730:  F1_r! ( 5 ) = 1E + 30
           l6740:  IF ( R2r! = 0 ) OR ( R3r! = 0 ) THEN GOTO L_5420_
           n6750:  Kr! = int ( G_r! ( B4r! , B5 ) / 100 )
           l6760:  IF G_r! ( B4r! , B5 ) - Kr! * 100 < 10 THEN GOTO L_5420_
           n6770:  FOR Ir! = 1 TO R2r!
           l6780:      IF ( C1_r! ( Ir! ) = B4r! ) AND ( C2_r! ( Ir! ) = B5 ) THEN GOTO L_6810_
           n6790:  NEXT
           l6800:  GOTO L_5420_
         L_6810_:  IF S2_r! ( B4r! , B5 ) = - 1 THEN S2_r! ( B4r! , B5 ) = 0
           n6820:  IF S2_r! ( B4r! , B5 ) > 999 THEN S2_r! ( B4r! , B5 ) = S2_r! ( B4r! , B5 ) - 10
           n6830:  IF ( B4r! <> Q1r! ) OR ( B5 <> Q2r! ) THEN GOTO L_6980_
           n6840:  FOR Ir! = 1 TO K3r!
           l6850:      Kr! = K4_r! ( Ir! )
           l6860:      Lr! = K5_r! ( Ir! )
           n6870:      IF Q_s$ ( Kr! , Lr! ) = "C" THEN GOTO L_6890_
           n6880:  NEXT
         L_6890_:  IF K6_r! ( Ir! ) < 25 + 50 * rnd ( 1 ) THEN GOTO L_5420_
           n6900:  Q_s$ ( B6r! , B7 ) = "."
           l6910:  B6r! = 0
           l6920:  B7 = 0
           n6930:  GOSUB SUB_12060_
           n6940:  print
           l6950:  print "MR. SPOCK-  'CAPTAIN, I BELIEVE THE STARBASE HAS" ;
           n6960:  print " BEEN DESTROYED.'"
           n6970:  GOTO L_7030_
         L_6980_:  IF ( R3r! = 1 ) OR ( D4_r! ( 9 ) > 0 ) THEN GOTO L_7030_
           n6990:  print
           n7000:  print "LT. UHURA-  'CAPTAIN, STARFLEET COMMAND REPORTS THAT"
           n7010:  print "  THE STARBASE IN QUADRANT" ; B4r! ; "-" ; B5 ; "HAS BEEN"
           n7020:  print "  DESTROYED BY A KLINGON COMMANDER.'"
         L_7030_:  G_r! ( B4r! , B5 ) = G_r! ( B4r! , B5 ) - 10
           n7040:  IF R3r! <= 1 THEN GOTO L_7100_
           n7050:  FOR Ir! = 1 TO R3r!
           l7060:      IF ( B2_r! ( Ir! ) = B4r! ) AND ( B3_r! ( Ir! ) = B5 ) THEN GOTO L_7080_
           n7070:  NEXT
         L_7080_:  B2_r! ( Ir! ) = B2_r! ( R3r! )
           l7090:  B3_r! ( Ir! ) = B3_r! ( R3r! )
         L_7100_:  R3r! = R3r! - 1
           n7110:  GOTO L_5420_

       SUB_7120_:  REM  - FINISH
           n7130:  A2r! = 1
           l7140:  print
           l7150:  print "IT IS STARDATE" ; Fktr ( D0r! )
           l7160:  print
           n7170:  ON F9r! GOTO L_7190_ , L_7440_ , L_7580_ , L_7640_ , L_7670_ , L_7700_ , L_7720_ , L_7760_
           n7180:  ON F9r! - 8 GOTO L_7790_ , L_7850_ , L_7900_
         L_7190_:  REM  - THE GAME HAS BEEN WON
           n7200:  print "YOU HAVE DESTROYED THE KLINGON INVASION FLEET"
           n7210:  print
           n7220:  print "     ***THE FEDERATION IS SAVED***"
           l7230:  G1r! = 1
           n7240:  IF ( A1r! = 0 ) OR ( B1r! <> 0 ) THEN GOTO L_7420_
           n7250:  IF left$ ( S5s$ , 1 ) <> "E" THEN GOTO L_7420_
           n7260:  IF 3 * S1r! + 35 * N1r! + C4r! >= 100 THEN GOTO L_7420_
           n7270:  IF D0r! - J2r! <= 6 THEN GOTO L_7300_
           n7280:  R8r! = .1 * S8r! * ( S8r! + 1 ) + .1
           n7290:  IF ( K1r! + K2r! ) / ( D0r! - J2r! ) < R8r! THEN GOTO L_7420_
         L_7300_:  print
           n7310:  print "IN FACT, YOU HAVE DONE SO WELL THAT STARFLEET COMMAND"
           n7320:  IF S8r! = 4 THEN GOTO L_7390_
           n7330:  print "PROMOTES YOU ONE STEP IN RANK, " ;
           n7340:  IF S8r! = 1 THEN print "FROM BEGINNER  TO  NOVICE CLASS!"
           n7350:  IF S8r! = 2 THEN print "FROM NOVICE  TO  SENIOR CLASS!"
           n7360:  IF S8r! = 3 THEN print "FROM SENIOR  TO  EXPERT CLASS!"
           n7370:  print "   ***CONGRATULATIONS***"
           l7380:  GOTO L_7420_
         L_7390_:  print "PROMOTES YOU  TO  'COMMODORE EMERITUS'."
           n7400:  print
           n7410:  print "NOW YOU CAN RETIRE AND WRITE YOUR OWN STAR TREK GAME!"
         L_7420_:  GOSUB SUB_16650_
           n7430:  RETURN


         L_7440_:  REM  - FED RESOURCES DEPLETED
           n7450:  print "YOUR TIME HAS RUN OUT, AND THE"
           n7460:  print "FEDERATION HAS BEEN CONQUERED."
           l7470:  print
           n7480:  print "YOUR STARSHIP IS NOW KLINGON PROPERY, AND YOU ARE PUT"
           n7490:  print "ON TRIAL AS A WAR CRIMINAL.  ON THE BASIS OF YOUR RECORD,"
           n7500:  IF R1r! * 3 > I1r! THEN GOTO L_7550_
           n7510:  print "YOU ARE FOUND GUILTY AND SENTENCED  TO  DEATH!"
           n7520:  A1r! = 0
           l7530:  GOSUB SUB_16650_
           l7540:  RETURN


         L_7550_:  print "YOU ARE ACQUITTED"
           l7560:  GOSUB SUB_16650_
           l7570:  RETURN


         L_7580_:  REM  - L.S. FAILURE
           n7590:  print "YOUR LIFE SUPPORT RESERVES HAVE RUN OUT, AND"
           n7600:  print "YOU WILL SOON DIE OF ASPHYXIATION"
         L_7610_:  print
           n7620:  print "YOUR STARSHIP IS A DERELICT IN SPACE."
           n7630:  GOTO L_7920_
         L_7640_:  REM  - ENERGY GONE
           n7650:  print "YOUR ENERGY SUPPLY IS EXHAUSTED."
           l7660:  GOTO L_7610_
         L_7670_:  REM  - BATTLE DEFEAT
           n7680:  print "THE " ; S5s$ ; " HAS BEEN DESTROYED IN BATTLE."
           n7690:  GOTO L_7920_
         L_7700_:  print "F9=6 INVALID"
           l7710:  RETURN


         L_7720_:  REM  - NOVA
           n7730:  print "YOUR STARSHIP HAS BEEN DESTROYED BY A NOVA."
           n7740:  print "NICE SHOT, YOU HOCKEY PUCK!"
           l7750:  GOTO L_7920_
         L_7760_:  REM  - SUPERNOVA
           n7770:  print "THE " ; S5s$ ; " HAS BEEN INCINERATED BY A SUPERNOVA."
           n7780:  GOTO L_7920_
         L_7790_:  REM  - ABANDON ( NO BASES )
           n7800:  print "YOU HAVE BEEN CAPTURED BY THE KLINGONS.  if  YOU STILL"
           n7810:  print "HAD A STARBASE  TO  BE RETURNED  TO , YOU WOULD HAVE BEEN"
           n7820:  print "REPATRIATED AND GIVEN ANOTHER CHANCE.  SINCE YOU HAVE"
           n7830:  print "NO STARBASES, YOU WILL BE MERCILESSLY TORTURED  TO  DEATH!"
           n7840:  GOTO L_7920_
         L_7850_:  REM - SELF-DESTRUCT
           n7860:  print
           l7870:  print "THE " ; S5s$ ; " IS NOW AN EXPANDING CLOUD"
           n7880:  print "OF SUB-A TO MIC PARTICLES..."
           l7890:  GOTO L_7920_
         L_7900_:  REM  - NOT REMATERIALIZED
           n7910:  print "STARBASE WAS UNABLE  TO  RE-MATERIALIZE YOUR STARSHIP."
         L_7920_:  print
           n7930:  IF left$ ( S5s$ , 1 ) = "F" THEN S5s$ = ""
           n7940:  IF left$ ( S5s$ , 1 ) = "E" THEN S5s$ = "FAERIE QUEENE"
           n7950:  A1r! = 0
           n7960:  IF R1r! = 0 THEN GOTO L_8130_
           n7970:  G3r! = R4r! / I3r!
           l7980:  B8r! = ( R1r! + 2 * R2r! ) / ( I1r! + 2 * I4r! )
           n7990:  A3r! = G3r! / B8r!
           n8000:  IF A3r! < 1 + .5 + rnd ( 1 ) THEN GOTO L_8100_
           n8010:  print "AS A RESULT OF YOUR ACTIONS, A TREATY WITH THE KLINGON"
           n8020:  print "EMPIRE HAS BEEN SIGNED.  THE TERMS OF THE TREATY ARE"
           n8030:  IF A3r! < 3 * rnd ( 1 ) THEN GOTO L_8080_
           n8040:  print "FAVORABLE  TO  THE FEDERATION."
           l8050:  print
           n8060:  print "CONGRATULATIONS."
           l8070:  GOTO L_8110_
         L_8080_:  print "HIGHLY UNFAVORABLE  TO  THE FEDERATION."
           l8090:  GOTO L_8110_
         L_8100_:  print "THE FEDERATION WILL BE DESTROYED!"
         L_8110_:  GOSUB SUB_16650_
           l8120:  RETURN


         L_8130_:  print "SINCE YOU  TO OK THE LAST KLINGON WITH YOU, YOU ARE"
           n8140:  print "A MARTYR AND A HERO.  SOMEDAY MAYBE THEY'LL ERECT"
           n8150:  print "A STATUE IN YOUR MEMORY.  REST IN PEACE AND TRY NOT"
           n8160:  print " TO  THINK ABOUT PIGEONS!"
           l8170:  G1r! = 1
           l8180:  A1r! = 0
           n8190:  GOSUB SUB_16650_
           l8200:  RETURN



       SUB_8210_:  REM - HELP
           n8220:  IF C5s$ <> "DOCKED" THEN GOTO L_8250_
           n8230:  print "ENSIGN CHEKOV-  'BUT CAPTAIN, WE'RE ALREADY DOCKED!'"
           n8240:  RETURN


         L_8250_:  IF D4_r! ( 9 ) = 0 THEN GOTO L_8280_
           n8260:  print "SUBSPACE RADIO DAMAGED...CANNOT TRANSMIT."
           l8270:  RETURN


         L_8280_:  IF R3r! <> 0 THEN GOTO L_8320_
           n8290:  print "LT. UHURA-  'CAPTAIN, I'M NOT GETTING ANY RESPONSE" ;
           n8300:  print " FROM STARBASE!'"
           l8310:  RETURN


         L_8320_:  N1r! = N1r! + 1
           l8330:  IF B6r! = 0 THEN GOTO L_8350_
           n8340:  GOTO L_8450_
         L_8350_:  D1r! = 1E + 30
           n8360:  FOR Lr! = 1 TO R3r!
           l8370:      Xr! = 10 * sqr ( ( B2_r! ( Lr! ) - Q1r! ) ^ 2 + ( B3_r! ( Lr! ) - Q2r! ) ^ 2 )
           n8380:      IF Xr! > D1r! THEN GOTO L_8410_
           n8390:      D1r! = Xr!
           l8400:      Kr! = Lr!
         L_8410_:  NEXT Lr!
           n8420:  Q1r! = B2_r! ( Kr! )
           l8430:  Q2r! = B3_r! ( Kr! )
           l8440:  GOSUB SUB_12110_
         L_8450_:  Q_s$ ( S6r! , S7r! ) = "."
           n8460:  print
           n8470:  print "STARBASE IN QUADRANT" ; Q1r! ; "-" ; Q2r! ; "RESPONDS --" ;
           n8480:  print "  " ; S5s$ ; " DEMATERIALIZES."
           n8490:  P2r! = ( 1 - .98 ^ D1r! ) ^ .333333
           n8500:  FOR Lr! = 1 TO 3
           n8510:      IF Lr! = 1 THEN print "1ST " ;
           n8520:      IF Lr! = 2 THEN print "2ND " ;
           n8530:      IF Lr! = 3 THEN print "3RD " ;
           n8540:      print "ATTEMPT  TO  RE-MATERIALIZE THE " ; S5s$ ; ". . . . ." ;
           n8550:      IF rnd ( 1 ) > P2r! THEN GOTO L_8610_
           n8560:      print "FAILS."
           l8570:  NEXT Lr!
         L_8580_:  F9r! = 11
           l8590:  GOSUB SUB_7120_
           l8600:  RETURN


         L_8610_:  FOR Lr! = 1 TO 5
           l8620:      Ir! = B6r! + int ( 3 * rnd ( 1 ) ) - 1
           n8630:      IF ( Ir! < 1 ) OR ( Ir! > 10 ) THEN GOTO L_8670_
           n8640:      Jr! = B7 + int ( 3 * rnd ( 1 ) ) - 1
           n8650:      IF ( Jr! < 1 ) OR ( Jr! > 10 ) THEN GOTO L_8670_
           n8660:      IF Q_s$ ( Ir! , Jr! ) = "." THEN GOTO L_8700_
         L_8670_:  NEXT Lr!
           l8680:  print "FAILS."
           l8690:  GOTO L_8580_
         L_8700_:  print "SUCCEEDS."
           l8710:  S6r! = Ir!
           l8720:  S7r! = Jr!
           l8730:  Q_s$ ( Ir! , Jr! ) = left$ ( S5s$ , 1 )
           n8740:  GOSUB SUB_5130_
           l8750:  print "LT. UHURA-  'CAPTAIN, WE MADE IT!'"
           l8760:  RETURN



       SUB_8770_:  REM  - HITEM
           n8780:  P4r! = 2
           l8790:  L5r! = K3r!
           l8800:  Nr! = 1
           n8810:  FOR Kr! = 1 TO L5r!
           n8820:      IF H3_r! ( Kr! ) = 0 THEN GOTO L_9170_
           n8830:      D6r! = .9 + .01 * rnd ( 1 )
           l8840:      H2r! = H3_r! ( Kr! ) * D6r! ^ K7_r! ( Nr! )
           n8850:      P3r! = K6_r! ( Nr! )
           n8860:      Pr! = abs ( P3r! )
           l8870:      IF P4r! * H2r! < Pr! THEN Pr! = P4r! * H2r!
           n8880:      K6_r! ( Nr! ) = P3r! - sgn ( P3r! ) * abs ( Pr! )
           n8890:      X8r! = K4_r! ( Nr! )
           l8900:      Y8 = K5_r! ( Nr! )
           n8910:      IF H2r! > 4.99 THEN GOTO L_8940_
           n8920:      print "VERY SMALL HIT ON "
           l8930:      GOTO L_8950_
         L_8940_:      print Fktr ( H2r! ) ; "UNIT HIT ON " ;
         L_8950_:      Ms$ = Q_s$ ( X8r! , Y8 )
           n8960:      IF Ms$ = "K" THEN print "KLINGON AT" ;
           n8970:      IF Ms$ = "C" THEN print "COMMANDER AT" ;
           n8980:      print X8r! ; "-" ; Y8
           n8990:      IF K6_r! ( Nr! ) <> 0 THEN GOTO L_9080_
           n9000:      A5r! = X8r!
           l9010:      A6r! = Y8
           l9020:      T2s$ = Q_s$ ( X8r! , Y8 )
           l9030:      GOSUB SUB_4710_
           n9040:      IF R1r! <> 0 THEN GOTO L_9180_
           n9050:      F9r! = 1
           l9060:      GOSUB SUB_7120_
           l9070:      GOTO L_9180_
         L_9080_:      IF K6_r! ( Nr! ) < 0 THEN GOTO L_9170_
           n9090:      IF rnd ( 1 ) < .9 THEN GOTO L_9170_
           n9100:      IF K6_r! ( Nr! ) > ( .4 + .4 * rnd ( 1 ) ) * P3r! THEN GOTO L_9170_
           n9110:      print
           n9120:      print "***MR. SPOCK - 'CAPTAIN, THE VESSEL AT SECTOR" ;
           n9130:      print X8r! ; "-" ; Y8
           n9140:      print "   HAS JUST LOST ITS FIREPOWER.'"
           n9150:      print
           n9160:      K6_r! ( Nr! ) = - K6_r! ( Nr! )
         L_9170_:      Nr! = Nr! + 1
         L_9180_:  NEXT Kr!
           n9190:  RETURN



       SUB_9200_:  REM - IMPULSE
           n9210:  J3r! = 0
           n9220:  IF D4_r! ( 7 ) <> 0 THEN GOTO L_9520_
           n9230:  IF E1r! <= 75 THEN GOTO L_9280_
           n9240:  INPUT "ENTER COURSE AND DISTANCE" ; D2r! , D1r!
           n9250:  IF D2r! < 0 THEN RETURN


           n9260:  P3r! = 50 + 250 * D1r!
           n9270:  IF P3r! < E1r! THEN GOTO L_9380_
         L_9280_:  print
           n9290:  print "1ST OFFICER SPOCK-  'CAPTAIN, THE IMPULSE ENGINES"
           n9300:  print "REQUIRE 50 UNITS OF ENERGY  TO  ENGAGE, PLUS 250 UNITS"
           n9310:  print "PER " ;
           n9320:  IF E1r! > 75 THEN GOTO L_9350_
           n9330:  print "QUADRANT.  THEY ARE, THEREFORE, USELESS NOW.'"
           l9340:  RETURN


         L_9350_:  print "QUADRANT.  WE CAN GO, THEREFORE, A MAXIMUM OF " ;
           n9360:  print Fktr ( .004 * ( E1r! - 50 ) - .05 ) ; "QUADRANTS.'"
           l9370:  RETURN


         L_9380_:  T1r! = D1r! / .4
           n9390:  IF T1r! < R5r! THEN GOTO SUB_9440_
           n9400:  print "1ST OFFICER SPOCK-  'CAPTAIN, OUR SPEED UNDER IMPULSE"
           n9410:  print "POWER IS ONLY 4 SECTORS PER STARDATE.  ARE YOU SURE"
           n9420:  INPUT "WE DARE SPEND THE TIME'" ; Bs$
           n9430:  IF left$ ( Bs$ , 1 ) <> "Y" THEN RETURN



       SUB_9440_:  GOSUB SUB_9820_
           l9450:  J3r! = 1
           n9460:  IF A2r! <> 0 THEN RETURN


           n9470:  E1r! = E1r! - P3r!
           n9480:  IF E1r! > 0 THEN RETURN


           n9490:  F9r! = 4
           l9500:  GOSUB SUB_7120_
           l9510:  RETURN


         L_9520_:  print "IMPULSE ENGINES DAMAGED."
           l9530:  RETURN



       SUB_9540_:  REM - LRSCAN
           n9550:  Ns$ = "    #"
           n9560:  print
           n9570:  IF D4_r! ( 2 ) <> 0 THEN GOTO L_9800_
           n9580:  print "L.R. SCAN FOR  QUADRANT" ; Q1r! ; "-" ; Q2r!
           l9590:  print
           n9600:  Ir! = Q1r! - 1
           l9610:  Jr! = Q1r! + 1
           l9620:  Kr! = Q2r! - 1
           l9630:  Lr! = Q2r! + 1
           n9640:  FOR Mr! = Ir! TO Jr!
           l9650:      FOR Nr! = Kr! TO Lr!
           n9660:          IF ( Mr! <= 0 ) OR ( Mr! > 8 ) THEN GOTO L_9720_
           n9670:          IF ( Nr! <= 0 ) OR ( Nr! > 8 ) THEN GOTO L_9720_
           n9680:          IF D4_r! ( 11 ) = 0 THEN S2_r! ( Mr! , Nr! ) = 1
           n9690:          IF G_r! ( Mr! , Nr! ) >= 1000 THEN print "  ***" ;
           n9700:          IF G_r! ( Mr! , Nr! ) < 1000 THEN print spc ( 5 - len ( str$ ( G_r! ( Mr! , Nr! ) ) ) ) ; G_r! ( Mr! , Nr! ) ;
           n9710:          GOTO L_9730_
         L_9720_:          print Ns$ ;
         L_9730_:      NEXT Nr!
           n9740:      print
           n9750:  NEXT Mr!
           n9760:  IF D4_r! ( 11 ) = 0 THEN RETURN


           n9770:  print
           n9780:  print "***WARNING*** - COMPUTER DISABLED - SCAN NOT RECORDED."
           n9790:  RETURN


         L_9800_:  print "LONG RANGE SENSORS DAMAGED."
           l9810:  RETURN



       SUB_9820_:  REM - MOVE
           n9830:  A5r! = ( 15 - D2r! ) * .5235988
           n9840:  D4r! = - sin ( A5r! )
           l9850:  D6r! = cos ( A5r! )
           n9860:  B8r! = abs ( D4r! )
           n9870:  IF abs ( D6r! ) > B8r! THEN B8r! = abs ( D6r! )
           n9880:  D4r! = D4r! / B8r!
           l9890:  D6r! = D6r! / B8r!
           l9900:  T5r! = 0
           l9910:  T6r! = 0
           n9920:  IF D0r! + T1r! < F1_r! ( 2 ) THEN GOTO L_9970_
           n9930:  T5r! = 1
           l9940:  C5s$ = "RED"
           l9950:  D1r! = D1r! * ( F1_r! ( 2 ) - D0r! ) / T1r! + .1
           n9960:  T1r! = F1_r! ( 2 ) - D0r! + .00001
         L_9970_:  Q_s$ ( S6r! , S7r! ) = "."
           l9980:  X7r! = S6r!
           l9990:  Y7 = S7r!
          l10000:  H9r! = int ( 10 * D1r! * B8r! + .5 )
          n10010:  IF H9r! = 0 THEN GOTO L_10150_
          n10020:  FOR Lr! = 1 TO H9r!
          n10030:      X7r! = X7r! + D4r!
          l10040:      X1r! = int ( X7r! + .5 )
          l10050:      Y7 = Y7 + D6r!
          l10060:      Y1r! = int ( Y7 + .5 )
          n10070:      IF ( X1r! < 1 ) OR ( X1r! > 10 ) THEN GOTO L_10520_
          n10080:      IF ( Y1r! < 1 ) OR ( Y1r! > 10 ) THEN GOTO L_10520_
          n10090:      IF Q_s$ ( X1r! , Y1r! ) = "O" THEN GOTO L_10120_
          n10100:      IF Q_s$ ( X1r! , Y1r! ) <> "." THEN GOTO L_10270_
          n10110:  NEXT Lr!
        L_10120_:  D1r! = .1 * sqr ( ( S6r! - X1r! ) ^ 2 + ( S7r! - Y1r! ) ^ 2 )
          n10130:  S6r! = X1r!
          l10140:  S7r! = Y1r!
        L_10150_:  F4r! = S6r!
          l10160:  F5 = S7r!
          n10170:  IF Q_s$ ( X1r! , Y1r! ) <> "O" THEN GOTO L_11050_
          n10180:  T2r! = Fkta ( 1 )
          l10190:  T3 = Fkta ( 1 )
          n10200:  Q1r! = Fkta ( 1 )
          l10210:  Q2r! = Fkta ( 1 )
          l10220:  S6r! = Fktb ( 1 )
          l10230:  S7r! = Fktb ( 1 )
          l10240:  print
          n10250:  print "*** SPACE PORTAL ENTERED ***"
          l10260:  GOTO L_10990_
        L_10270_:  T6r! = 1
          l10280:  Kr! = 50 * D1r! / T1r!
          l10290:  D1r! = .1 * sqr ( ( S6r! - X1r! ) ^ 2 + ( S7r! - Y1r! ) ^ 2 )
          n10300:  IF ( Q_s$ ( X1r! , Y1r! ) = "K" ) OR ( Q_s$ ( X1r! , Y1r! ) = "C" ) THEN GOTO L_10460_
          n10310:  print
          l10320:  print S5s$ ; " BLOCKED BY " ;
          n10330:  IF Q_s$ ( X1r! , Y1r! ) = "*" THEN print "STAR AT" ;
          n10340:  IF Q_s$ ( X1r! , Y1r! ) = "B" THEN print "STARBASE AT" ;
          n10350:  print " SECTOR" ; X1r! ; "-" ; Y1r! ; "...."
          n10360:  print "EMERGENCY S TO P REQUIRED" ; Fktr ( Kr! ) ; "UNITS OF ENERGY."
          n10370:  E1r! = E1r! - Kr!
          n10380:  S6r! = int ( X7r! - D4r! + .5 )
          l10390:  F4r! = S6r!
          l10400:  S7r! = int ( Y7 - D6r! + .5 )
          l10410:  F5 = S7r!
          n10420:  IF E1r! > 0 THEN GOTO L_11050_
          n10430:  F9r! = 4
          l10440:  GOSUB SUB_7120_
          l10450:  RETURN


        L_10460_:  S6r! = X1r!
          l10470:  S7r! = Y1r!
          l10480:  GOSUB SUB_16320_
          l10490:  F4r! = S6r!
          l10500:  F5 = S7r!
          l10510:  GOTO L_11050_
        L_10520_:  IF K3r! = 0 THEN GOTO L_10590_
          n10530:  FOR Lr! = 1 TO K3r!
          n10540:      F3r! = sqr ( ( X1r! - K4_r! ( Lr! ) ) ^ 2 + ( Y1r! - K5_r! ( Lr! ) ) ^ 2 )
          n10550:      K8_r! ( Lr! ) = .5 * ( F3r! + K7_r! ( Lr! ) )
          l10560:  NEXT Lr!
          n10570:  IF G_r! ( Q1r! , Q2r! ) <> 1000 THEN GOSUB SUB_1720_
          n10580:  IF A2r! <> 0 THEN RETURN


        L_10590_:  X7r! = 10 * ( Q1r! - 1 ) + S6r!
          l10600:  Y7 = 10 * ( Q2r! - 1 ) + S7r!
          n10610:  X1r! = int ( X7r! + 10 * D1r! * B8r! * D4r! + .5 )
          n10620:  Y1r! = int ( Y7 + 10 * D1r! * B8r! * D6r! + .5 )
          l10630:  L6r! = 0
        L_10640_:  L5r! = 0
          n10650:  IF X1r! > 0 THEN GOTO L_10680_
          n10660:  X1r! = - X1r! + 1
          l10670:  L5r! = 1
        L_10680_:  IF Y1r! > 0 THEN GOTO L_10710_
          n10690:  Y1r! = - Y1r! + 1
          l10700:  L5r! = 1
        L_10710_:  IF X1r! <= 80 THEN GOTO L_10740_
          n10720:  X1r! = 161 - X1r!
          l10730:  L5r! = 1
        L_10740_:  IF Y1r! <= 80 THEN GOTO L_10770_
          n10750:  Y1r! = 161 - Y1r!
          l10760:  L5r! = 1
        L_10770_:  IF L5r! = 0 THEN GOTO L_10800_
          n10780:  L6r! = 1
          l10790:  GOTO L_10640_
        L_10800_:  IF L6r! = 0 THEN GOTO L_10940_
          n10810:  print
          l10820:  print "*** MESSAGE FROM STARFLEET COMMAND.....STARDATE" ;
          n10830:  print Fktr ( D0r! )
          l10840:  print
          l10850:  print "'PERMISSION  TO  CROSS GALACTIC " ;
          n10860:  print "PERIMETER IS HEREBY DENIED.'"
          n10870:  print "        'SHUT DOWN ENGINES IMMMEDIATELY!'"
          n10880:  print
          n10890:  print "SCOTT HERE - 'ENGINES SHUT DOWN AT " ;
          n10900:  Z1r! = int ( ( X1r! + 9 ) / 10 )
          l10910:  Z2 = int ( ( Y1r! + 9 ) / 10 )
          n10920:  print "QUADRANT" ; Z1r! ; "-" ; Z2 ; ",  " ;
          n10930:  print "SECTOR" ; X1r! - 10 * ( Z1r! - 1 ) ; "-" ; Y1r! - 10 * ( Z2 - 1 ) ; "'"
        L_10940_:  IF T5r! <> 0 THEN RETURN


          n10950:  Q1r! = int ( ( X1r! + 9 ) / 10 )
          l10960:  Q2r! = int ( ( Y1r! + 9 ) / 10 )
          n10970:  S6r! = X1r! - 10 * ( Q1r! - 1 )
          l10980:  S7r! = Y1r! - 10 * ( Q2r! - 1 )
        L_10990_:  GOSUB SUB_12790_
          n11000:  print
          l11010:  print "ENTERING THE " ; G2s$ ; " QUADRANT  (" ; Q1r! ; "-" ; Q2r! ; ")"
          n11020:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          l11030:  GOSUB SUB_12110_
          l11040:  RETURN


        L_11050_:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          n11060:  IF L6r! = 1 THEN RETURN


          n11070:  IF K3r! = 0 THEN GOTO L_11140_
          n11080:  FOR Lr! = 1 TO K3r!
          n11090:      F3r! = sqr ( ( F4r! - K4_r! ( Lr! ) ) ^ 2 + ( F5 - K5_r! ( Lr! ) ) ^ 2 )
          n11100:      K8_r! ( Lr! ) = .5 * ( K7_r! ( Lr! ) + F3r! )
          n11110:      K7_r! ( Lr! ) = F3r!
          n11120:  NEXT Lr!
          n11130:  GOSUB SUB_19810_
        L_11140_:  GOSUB SUB_12060_
          l11150:  RETURN



      SUB_11160_:  REM  - MOVECOM
          n11170:  Ar! = 1
          l11180:  Br! = 1
          n11190:  FOR Kr! = 1 TO K3r!
          n11200:      Cr! = K4_r! ( Kr! )
          l11210:      Dr! = K5_r! ( Kr! )
          n11220:      IF Q_s$ ( Cr! , Dr! ) = "C" THEN GOTO L_11240_
          n11230:  NEXT Kr!
        L_11240_:  Nr! = 0
          l11250:  Fr! = K6_r! ( Kr! ) + 100 * K3r!
          n11260:  IF Fr! > 1000 THEN Nr! = int ( rnd ( 1 ) * K7_r! ( Kr! ) + 1 )
          n11270:  IF ( ( C5s$ = "DOCKED" ) AND ( ( B4r! <> Q1r! ) OR ( B5 <> Q2r! ) ) ) THEN Nr! = - S8r!
          n11280:  IF Nr! = 0 THEN Nr! = int ( ( ( Fr! + 200 * rnd ( 1 ) ) / 150 ) - 5 )
          n11290:  IF Nr! = 0 THEN RETURN


          n11300:  IF ( Nr! > 0 ) AND ( K7_r! ( Kr! ) < 1.5 ) THEN RETURN


          n11310:  IF abs ( Nr! ) > S8r! THEN Nr! = sgn ( Nr! ) * abs ( S8r! )
          n11320:  Tr! = abs ( Nr! )
          l11330:  Pr! = S6r! - Cr!
          l11340:  Qr! = S7r! - Dr!
          n11350:  IF 2 * abs ( Pr! ) < abs ( Qr! ) THEN Pr! = 0
          n11360:  IF 2 * abs ( Qr! ) < abs ( Pr! ) THEN Qr! = 0
          n11370:  IF Pr! <> 0 THEN Pr! = sgn ( Pr! * Nr! )
          n11380:  IF Qr! <> 0 THEN Qr! = sgn ( Qr! * Nr! )
          n11390:  Rr! = Cr!
          l11400:  Sr! = Dr!
          l11410:  Q_s$ ( Cr! , Dr! ) = "."
          n11420:  FOR L2r! = 1 TO Tr!
          l11430:      Lr! = Rr! + Pr!
          l11440:      Mr! = Sr! + Qr!
          n11450:      IF ( Lr! > 0 ) AND ( Lr! <= 10 ) THEN GOTO L_11470_
          n11460:      ON sgn ( Nr! ) + 2 GOTO L_11770_ , L_11560_ , L_11560_
        L_11470_:      IF ( Mr! > 0 ) AND ( Mr! <= 10 ) THEN GOTO L_11490_
          n11480:      ON sgn ( Nr! ) + 2 GOTO L_11770_ , L_11500_ , L_11500_
        L_11490_:      IF Q_s$ ( Lr! , Mr! ) = "." THEN GOTO L_11630_
        L_11500_:      IF ( Qr! = Br! ) OR ( Pr! = 0 ) THEN GOTO L_11560_
          n11510:      Mr! = Sr! + Br!
          n11520:      IF ( Mr! > 0 ) AND ( Mr! <= 10 ) THEN GOTO L_11540_
          n11530:      ON sgn ( Nr! ) + 2 GOTO L_11770_ , L_11550_ , L_11550_
        L_11540_:      IF Q_s$ ( Lr! , Mr! ) = "." THEN GOTO L_11630_
        L_11550_:      Br! = - Br!
        L_11560_:      IF ( Pr! = Ar! ) OR ( Qr! = 0 ) THEN GOTO L_11650_
          n11570:      Lr! = Rr! + Ar!
          n11580:      IF ( Lr! > 0 ) AND ( Lr! <= 10 ) THEN GOTO L_11600_
          n11590:      ON sgn ( Nr! ) + 2 GOTO L_11770_ , L_11610_ , L_11610_
        L_11600_:      IF Q_s$ ( Lr! , Mr! ) = "." THEN GOTO L_11630_
        L_11610_:      Ar! = - Ar!
          l11620:      GOTO L_11650_
        L_11630_:      Rr! = Lr!
          l11640:      Sr! = Mr!
        L_11650_:  NEXT L2r!
          n11660:  Q_s$ ( Rr! , Sr! ) = "C"
          n11670:  IF ( Rr! = Cr! ) AND ( Sr! = Dr! ) THEN RETURN


          n11680:  K4_r! ( Kr! ) = Rr!
          l11690:  K5_r! ( Kr! ) = Sr!
          l11700:  K7_r! ( Kr! ) = sqr ( ( S6r! - Rr! ) ^ 2 + ( S7r! - Sr! ) ^ 2 )
          n11710:  K8_r! ( Kr! ) = K7_r! ( Kr! )
          l11720:  IF Nr! > 0 THEN print "***COMMANDER ADVANCES  TO " ;
          n11730:  IF Nr! < 0 THEN print "***COMMANDER RETREATS  TO " ;
          n11740:  print " SECTOR" ; Rr! ; "-" ; Sr!
          l11750:  GOSUB SUB_19810_
          l11760:  RETURN


        L_11770_:  Ir! = Q1r! + int ( ( Lr! + 9 ) / 10 ) - 1
          l11780:  Jr! = Q2r! + int ( ( Mr! + 9 ) / 10 ) - 1
          n11790:  IF ( Ir! < 1 ) OR ( Ir! > 8 ) THEN GOTO L_12030_
          n11800:  IF ( Jr! < 1 ) OR ( Jr! > 8 ) THEN GOTO L_12030_
          n11810:  FOR L3r! = 1 TO R2r!
          n11820:      IF ( C1_r! ( L3r! ) = Ir! ) AND ( C2_r! ( L3r! ) = Jr! ) THEN GOTO L_12030_
          n11830:  NEXT L3r!
          l11840:  print "***COMMANDER ESCAPES  TO  " ;
          n11850:  print "QUADRANT" ; Ir! ; "-" ; Jr! ; "  (AND REGAINS STRENGTH)"
          n11860:  K4_r! ( Kr! ) = K4_r! ( K3r! )
          l11870:  K5_r! ( Kr! ) = K5_r! ( K3r! )
          l11880:  K7_r! ( Kr! ) = K7_r! ( K3r! )
          l11890:  K8_r! ( Kr! ) = K8_r! ( K3r! )
          n11900:  K6_r! ( Kr! ) = K6_r! ( K3r! )
          l11910:  K3r! = K3r! - 1
          l11920:  C3r! = 0
          n11930:  IF C5s$ <> "DOCKED" THEN GOSUB SUB_12060_
          n11940:  GOSUB SUB_19810_
          n11950:  G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 100
          l11960:  G_r! ( Ir! , Jr! ) = G_r! ( Ir! , Jr! ) + 100
          n11970:  FOR L3r! = 1 TO R2r!
          n11980:      IF ( C1_r! ( L3r! ) = Q1r! ) AND ( C2_r! ( L3r! ) = Q2r! ) THEN GOTO L_12000_
          n11990:  NEXT L3r!
        L_12000_:  C1_r! ( L3r! ) = Ir!
          l12010:  C2_r! ( L3r! ) = Jr!
          l12020:  RETURN


        L_12030_:  Ar! = - Ar!
          l12040:  Br! = - Br!
          l12050:  GOTO L_11650_

      SUB_12060_:  REM - NEWCOND
          n12070:  C5s$ = "GREEN"
          n12080:  IF E1r! < 1000 THEN C5s$ = "YELLOW"
          n12090:  IF G_r! ( Q1r! , Q2r! ) > 99 THEN C5s$ = "RED"
          n12100:  RETURN



      SUB_12110_:  REM  - NEW QUAD
          n12120:  J4r! = 1
          l12130:  B6r! = 0
          l12140:  B7 = 0
          l12150:  K3r! = 0
          l12160:  C3r! = 0
          n12170:  Ur! = G_r! ( Q1r! , Q2r! )
          n12180:  IF Ur! > 999 THEN GOTO L_12720_
          n12190:  K3r! = int ( .01 * Ur! )
          l12200:  FOR Ar! = 1 TO 10
          l12210:      FOR Br! = 1 TO 10
          l12220:          Q_s$ ( Ar! , Br! ) = "."
          l12230:      NEXT Br!
          l12240:  NEXT Ar!
          n12250:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          l12260:  Ur! = G_r! ( Q1r! , Q2r! )
          l12270:  IF Ur! < 100 THEN GOTO L_12490_
          n12280:  Ur! = Ur! - 100 * K3r!
          l12290:  FOR Ar! = 1 TO K3r!
        L_12300_:      Sr! = Fktb ( 1 )
          l12310:      K4_r! ( Ar! ) = Sr!
          l12320:      Tr! = Fktb ( 1 )
          l12330:      K5_r! ( Ar! ) = Tr!
          n12340:      IF Q_s$ ( Sr! , Tr! ) <> "." THEN GOTO L_12300_
          n12350:      Q_s$ ( Sr! , Tr! ) = "K"
          l12360:      K7_r! ( Ar! ) = sqr ( ( S6r! - Sr! ) ^ 2 + ( S7r! - Tr! ) ^ 2 )
          l12370:      K8_r! ( Ar! ) = K7_r! ( Ar! )
          n12380:      K6_r! ( Ar! ) = rnd ( 1 ) * 150 + 325
          l12390:  NEXT Ar!
          n12400:  IF R2r! = 0 THEN GOTO L_12480_
          n12410:  FOR Ar! = 1 TO R2r!
          n12420:      IF ( C1_r! ( Ar! ) = Q1r! ) AND ( C2_r! ( Ar! ) = Q2r! ) THEN GOTO L_12450_
          n12430:  NEXT Ar!
          l12440:  GOTO L_12480_
        L_12450_:  Q_s$ ( Sr! , Tr! ) = "C"
          l12460:  K6_r! ( K3r! ) = 1000 + 400 * rnd ( 1 )
          l12470:  C3r! = 1
        L_12480_:  GOSUB SUB_19810_
        L_12490_:  IF Ur! < 10 THEN GOTO L_12550_
          n12500:  Ur! = Ur! - 10
        L_12510_:  B6r! = Fktb ( 1 )
          l12520:  B7 = Fktb ( 1 )
          l12530:  IF Q_s$ ( B6r! , B7 ) <> "." THEN GOTO L_12510_
          n12540:  Q_s$ ( B6r! , B7 ) = "B"
        L_12550_:  GOSUB SUB_12060_
          l12560:  IF Ur! < 1 THEN RETURN


          n12570:  FOR Ar! = 1 TO Ur!
        L_12580_:      Sr! = Fktb ( 1 )
          l12590:      Tr! = Fktb ( 1 )
          l12600:      IF Q_s$ ( Sr! , Tr! ) <> "." THEN GOTO L_12580_
          n12610:      Q_s$ ( Sr! , Tr! ) = "*"
          l12620:  NEXT Ar!
          n12630:  IF ( T2r! <> Q1r! ) OR ( T3 <> Q2r! ) THEN RETURN


        L_12640_:  Sr! = Fktb ( 1 )
          l12650:  Tr! = Fktb ( 1 )
          l12660:  IF Q_s$ ( Sr! , Tr! ) <> "." THEN GOTO L_12640_
          n12670:  Q_s$ ( Sr! , Tr! ) = "O"
          l12680:  print
          n12690:  print "MR. SPOCK - 'CAPTAIN, THE SHORT-RANGE SENSORS DETECT A"
          n12700:  print "SPACE WARP SOMEWHERE IN THIS QUADRANT.'"
          n12710:  RETURN


        L_12720_:  FOR Ar! = 1 TO 10
          l12730:      FOR Br! = 1 TO 10
          l12740:          Q_s$ ( Ar! , Br! ) = "."
          l12750:      NEXT Br!
          l12760:  NEXT Ar!
          n12770:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          l12780:  RETURN



      SUB_12790_:  G4s$ = "III"
          l12800:  Lr! = 2
          l12810:  IF Q2r! >= 5 THEN GOTO L_12830_
          n12820:  Lr! = 1
        L_12830_:  G2s$ = G1_s$ ( 2 * ( Q1r! - 1 ) + Lr! )
          l12840:  Lr! = Q2r!
          n12850:  IF Lr! <= 4 THEN GOTO L_12870_
          n12860:  Lr! = Q2r! - 4
        L_12870_:  G3s$ = "IV"
          l12880:  IF Lr! = 4 THEN GOTO L_12900_
          n12890:  G3s$ = left$ ( G4s$ , Lr! )
        L_12900_:  G2s$ = G2s$ + " " + G3s$
          l12910:  RETURN



      SUB_12920_:  REM - NOVA
          n12930:  IF rnd ( 1 ) > .1 THEN GOTO L_12960_
          n12940:  GOSUB SUB_18950_
          l12950:  RETURN


        L_12960_:  Q_s$ ( A5r! , A6r! ) = "."
          l12970:  print "***STAR AT SECTOR" ; A5r! ; "-" ; A6r! ; "NOVAS."
          n12980:  G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 1
          l12990:  S1r! = S1r! + 1
          n13000:  B9r! = 1
          l13010:  T6r! = 1
          l13020:  T7r! = 1
          l13030:  Kr! = 0
          l13040:  X1r! = 0
          l13050:  Y1r! = 0
          n13060:  H4_r! ( B9r! , 1 ) = A5r!
          l13070:  H4_r! ( B9r! , 2 ) = A6r!
        L_13080_:  FOR Mr! = B9r! TO T6r!
          l13090:      FOR Qr! = 1 TO 3
          l13100:          FOR Jr! = 1 TO 3
          n13110:              IF Jr! * Qr! = 4 THEN GOTO L_13930_
          n13120:              J5r! = H4_r! ( Mr! , 1 ) + Qr! - 2
          l13130:              J6r! = H4_r! ( Mr! , 2 ) + Jr! - 2
          n13140:              IF ( J5r! < 1 ) OR ( J5r! > 10 ) THEN GOTO L_13930_
          n13150:              IF ( J6r! < 1 ) OR ( J6r! > 10 ) THEN GOTO L_13930_
          n13160:              IF Q_s$ ( J5r! , J6r! ) = "." THEN GOTO L_13930_
          n13170:              IF Q_s$ ( J5r! , J6r! ) = "O" THEN GOTO L_13930_
          n13180:              IF Q_s$ ( J5r! , J6r! ) <> "*" THEN GOTO L_13310_
          n13190:              IF rnd ( 1 ) >= .1 THEN GOTO L_13240_
          n13200:              X2r! = J5r!
          l13210:              Y2 = J6r!
          l13220:              GOSUB SUB_18950_
          l13230:              RETURN
        L_13240_:              T7r! = T7r! + 1
          l13250:              H4_r! ( T7r! , 1 ) = J5r!
          l13260:              H4_r! ( T7r! , 2 ) = J6r!
          l13270:              G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 1
          n13280:              S1r! = S1r! + 1
          l13290:              print "***STAR AT SECTOR" ; J5r! ; "-" ; J6r! ; "NOVAS."
          n13300:              GOTO L_13910_
        L_13310_:              IF Q_s$ ( J5r! , J6r! ) <> "B" THEN GOTO L_13450_
          n13320:              G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 10
          l13330:              FOR Vr! = 1 TO R3r!
          n13340:                  IF ( B2_r! ( Vr! ) <> Q1r! ) OR ( B3_r! ( Vr! ) <> Q2r! ) THEN GOTO L_13370_
          n13350:                  B2_r! ( Vr! ) = B2_r! ( R3r! )
          l13360:                  B3_r! ( Vr! ) = B3_r! ( R3r! )
        L_13370_:              NEXT Vr!
          l13380:              R3r! = R3r! - 1
          l13390:              B6r! = 0
          l13400:              B7 = 0
          l13410:              B1r! = B1r! + 1
          l13420:              GOSUB SUB_12060_
          n13430:              print "***STARBASE AT SECTOR" ; J5r! ; "-" ; J6r! ; "DESTROYED."
          n13440:              GOTO L_13910_
        L_13450_:              IF ( S6r! <> J5r! ) OR ( S7r! <> J6r! ) THEN GOTO L_13670_
          n13460:              print "***STARSHIP BUFFETED BY NOVA."
          l13470:              IF S4r! <> 0 THEN GOTO L_13500_
          n13480:              E1r! = E1r! - 1000
          l13490:              GOTO L_13580_
        L_13500_:              IF S3r! >= 1000 THEN GOTO L_13620_
          n13510:              D6r! = 1000 - S3r!
          l13520:              E1r! = E1r! - D6r!
          l13530:              GOSUB SUB_12060_
          l13540:              S3r! = 0
          l13550:              S4r! = 0
          n13560:              print "***STARSHIP SHIELDS KNOCKED OUT."
          l13570:              D4_r! ( 8 ) = .005 * D5r! * rnd ( 1 ) * D6r!
        L_13580_:              IF E1r! > 0 THEN GOTO L_13630_
          n13590:              F9r! = 7
          l13600:              GOSUB SUB_7120_
          l13610:              RETURN
        L_13620_:              S3r! = S3r! - 1000
        L_13630_:              X1r! = X1r! + S6r! - H4_r! ( Mr! , 1 )
          l13640:              Y1r! = Y1r! + S7r! - H4_r! ( Mr! , 2 )
          l13650:              Kr! = Kr! + 1
          l13660:              GOTO L_13930_
        L_13670_:              IF Q_s$ ( J5r! , J6r! ) <> "C" THEN GOTO L_13860_
          n13680:              FOR Vr! = 1 TO K3r!
          n13690:                  IF ( K4_r! ( Vr! ) = J5r! ) AND ( K5_r! ( Vr! ) = J6r! ) THEN GOTO L_13710_
          n13700:              NEXT Vr!
        L_13710_:              K6_r! ( Vr! ) = K6_r! ( Vr! ) - 800
          l13720:              IF K6_r! ( Vr! ) <= 0 THEN GOTO L_13860_
          n13730:              N5r! = J5r! + J5r! - H4_r! ( Mr! , 1 )
          l13740:              N6 = J6r! + J6r! - H4_r! ( Mr! , 2 )
          n13750:              print "***COMMANDER AT SECTOR" ; J5r! ; "-" ; J6r! ; "DAMAGED" ;
          n13760:              IF ( N5r! < 1 ) OR ( N5r! > 10 ) OR ( N6 < 1 ) OR ( N6 > 10 ) THEN GOTO L_13840_
          n13770:              print " AND BUFFETED  TO  SECTOR" ; N5r! ; "-" ; N6
          n13780:              Q_s$ ( N5r! , N6 ) = "C"
          l13790:              K4_r! ( Vr! ) = N5r!
          l13800:              K5_r! ( Vr! ) = N6
          n13810:              K7_r! ( Vr! ) = sqr ( ( S6r! - N5r! ) ^ 2 + ( S7r! - N6 ) ^ 2 )
          l13820:              K8_r! ( Vr! ) = K7_r! ( Vr! )
          n13830:              Q_s$ ( J5r! , J6r! ) = "."
        L_13840_:              print
          l13850:              GOTO L_13930_
        L_13860_:              A5r! = J5r!
          l13870:              A6r! = J6r!
          l13880:              T2s$ = Q_s$ ( J5r! , J6r! )
          l13890:              GOSUB SUB_4710_
          l13900:              GOTO L_13930_
        L_13910_:              print
          l13920:              Q_s$ ( J5r! , J6r! ) = "."
        L_13930_:          NEXT Jr!
          l13940:      NEXT Qr!
          l13950:  NEXT Mr!
          n13960:  IF T6r! = T7r! THEN GOTO L_14000_
          n13970:  B9r! = T6r! + 1
          l13980:  T6r! = T7r!
          l13990:  GOTO L_13080_
        L_14000_:  IF Kr! = 0 THEN RETURN


          n14010:  D1r! = Kr! * .1
          n14020:  IF X1r! <> 0 THEN X1r! = sgn ( X1r! )
          n14030:  IF Y1r! <> 0 THEN Y1r! = sgn ( Y1r! )
          n14040:  Ir! = 3 * ( X1r! + 1 ) + Y1r! + 2
          n14050:  D2r! = C5_r! ( Ir! )
          n14060:  IF D2r! = 0 THEN D1r! = 0
          n14070:  IF D1r! = 0 THEN RETURN


          n14080:  print
          l14090:  print "FORCE OF NOVA DISPLACES STARSHIP."
          n14100:  GOSUB SUB_9820_
          l14110:  RETURN



      SUB_14120_:  REM  - PHASERS
          n14130:  Pr! = 2
          l14140:  J3r! = 1
          n14150:  IF C5s$ <> "DOCKED" THEN GOTO L_14180_
          n14160:  print "PHASERS CAN'T BE FIRED THRU BASE SHIELDS."
          l14170:  GOTO L_14280_
        L_14180_:  IF D4_r! ( 3 ) = 0 THEN GOTO L_14210_
          n14190:  print "PHASER BANKS DAMAGED."
          l14200:  GOTO L_14280_
        L_14210_:  IF S4r! = 0 THEN GOTO L_14240_
          n14220:  print "SHIELDS MUST BE DOWN  TO  FIRE PHASERS."
          l14230:  GOTO L_14280_
        L_14240_:  IF K3r! > 0 THEN GOTO L_14300_
          n14250:  print
          n14260:  print "MR. SPOCK - 'CAPTAIN, THE SHORT-RANGE SENSORS"
          n14270:  print "    DETECT NO KLINGONS IN THIS QUADRANT.'"
        L_14280_:  J3r! = 0
          l14290:  RETURN


        L_14300_:  print "PHASERS LOCKED ON TARGET.  ENERGY AVAILABLE=" ;
        L_14310_:  print .01 * int ( 100 * E1r! )
          n14320:  INPUT "UNITS  TO  FIRE" ; P1r!
          l14330:  IF P1r! < E1r! THEN GOTO L_14360_
          n14340:  print "ENERGY AVAILABLE =" ;
          l14350:  GOTO L_14310_
        L_14360_:  IF P1r! > 0 THEN GOTO L_14390_
          n14370:  J3r! = 0
          l14380:  RETURN


        L_14390_:  E1r! = E1r! - P1r!
          n14400:  IF D4_r! ( 11 ) = 0 THEN GOTO L_14450_
          n14410:  P1r! = P1r! * ( rnd ( 1 ) * .5 + .5 )
          n14420:  print
          l14430:  print "COMPUTER MALFUNCTION HAMPERS PHASER ACCURACY."
          l14440:  print
        L_14450_:  Er! = P1r!
          l14460:  IF K3r! = 0 THEN GOTO L_14710_
          n14470:  Er! = 0
          l14480:  T5r! = ( K3r! * ( K3r! + 1 ) ) / 2
          n14490:  FOR Ir! = 1 TO K3r!
          l14500:      H3_r! ( Ir! ) = ( ( K3r! + 1 - Ir! ) / T5r! ) * P1r!
          n14510:      H5_r! ( Ir! ) = abs ( K6_r! ( Ir! ) ) / ( Pr! * .9 ^ K7_r! ( Ir! ) )
          n14520:      IF H3_r! ( Ir! ) <= H5_r! ( Ir! ) THEN GOTO L_14550_
          n14530:      Er! = Er! + ( H3_r! ( Ir! ) - H5_r! ( Ir! ) )
          l14540:      H3_r! ( Ir! ) = H5_r! ( Ir! )
        L_14550_:  NEXT Ir!
          n14560:  IF Er! = 0 THEN GOTO L_14670_
          n14570:  FOR Ir! = 1 TO K3r!
          l14580:      R7r! = H5_r! ( Ir! ) - H3_r! ( Ir! )
          n14590:      IF R7r! <= 0 THEN GOTO L_14630_
          n14600:      IF R7r! >= Er! THEN GOTO L_14650_
          n14610:      H3_r! ( Ir! ) = H5_r! ( Ir! )
          l14620:      Er! = Er! - R7r!
        L_14630_:  NEXT Ir!
          l14640:  GOTO L_14670_
        L_14650_:  H3_r! ( Ir! ) = H3_r! ( Ir! ) + Er!
          l14660:  Er! = 0
        L_14670_:  GOSUB SUB_8770_
          n14680:  IF ( Er! <> 0 ) AND ( A2r! = 0 ) THEN GOTO L_14710_
          n14690:  J3r! = 1
          l14700:  RETURN


        L_14710_:  print Fktr ( Er! ) ; "EXPENDED ON EMPTY SPACE."
          l14720:  J3r! = 1
          l14730:  RETURN



      SUB_14740_:  REM - PHOTONS
          n14750:  J3r! = 1
          l14760:  IF D4_r! ( 4 ) = 0 THEN GOTO L_14790_
          n14770:  print "PHOTON TUBES DAMAGED."
          l14780:  GOTO L_14840_
        L_14790_:  IF T4r! <> 0 THEN GOTO L_14820_
          n14800:  print "NO TORPEDOS LEFT."
          l14810:  GOTO L_14840_
        L_14820_:  INPUT " TORPEDO COURSE" ; C6r!
          n14830:  IF C6r! >= 0 THEN GOTO L_14860_
        L_14840_:  J3r! = 0
          l14850:  RETURN


        L_14860_:  INPUT "BURST OF 3" ; Bs$
          l14870:  Nr! = 1
          n14880:  IF left$ ( Bs$ , 1 ) = "N" THEN GOTO L_14980_
          n14890:  IF left$ ( Bs$ , 1 ) <> "Y" THEN GOTO L_14860_
          n14900:  IF T4r! > 2 THEN GOTO L_14930_
          n14910:  print "NO BURST.  ONLY" ; T4r! ; " TORPEDOS LEFT."
          l14920:  GOTO L_14840_
        L_14930_:  INPUT "SPREAD ANGLE (3 - 30 DEG)" ; G2r!
          n14940:  IF G2r! < 0 THEN GOTO L_14840_
          n14950:  IF ( G2r! < 3 ) OR ( G2r! > 30 ) THEN GOTO L_14930_
          n14960:  G2r! = Fktd ( G2r! )
          n14970:  Nr! = 3
        L_14980_:  REM - CONTINUE
          n14990:  FOR Z6r! = 1 TO Nr!
          n15000:      IF C5s$ <> "DOCKED" THEN T4r! = T4r! - 1
          n15010:      Z7r! = Z6r!
          l15020:      Rr! = rnd ( 1 )
          n15030:      Rr! = ( Rr! + rnd ( 1 ) ) * .5 - .5
          n15040:      IF ( Rr! >= - .4 ) AND ( Rr! <= .4 ) THEN GOTO L_15140_
          n15050:      Rr! = ( rnd ( 1 ) + 1.2 ) * Rr!
          l15060:      IF Nr! = 3 THEN GOTO L_15090_
          n15070:      print "*** TORPEDO MISFIRES..."
          l15080:      GOTO L_15100_
        L_15090_:      print "*** TORPEDO NUMBER" ; Z6r! ; "MISFIRES..."
        L_15100_:      IF rnd ( 1 ) > .2 THEN GOTO L_15140_
          n15110:      print "***PHOTON TUBES DAMAGED BY MISFIRE."
          n15120:      D4_r! ( 4 ) = D5r! * ( 1 + 2 * rnd ( 1 ) )
          l15130:      GOTO L_16280_
        L_15140_:      IF ( S4r! <> 0 ) OR ( C5s$ = "DOCKED" ) THEN Rr! = Rr! + .001 * S3r! * Rr!
          n15150:      A3r! = C6r! + .25 * Rr!
          l15160:      IF Nr! = 1 THEN GOTO L_15210_
          n15170:      A8r! = ( 15 - A3r! + ( 2 - Z6r! ) * G2r! ) * .5235988
          l15180:      print
          n15190:      print "TRACK FOR TORPEDO NUMBER" ; Z7r! ; "--"
          l15200:      GOTO L_15240_
        L_15210_:      print
          l15220:      print " TORPEDO TRACK --"
          l15230:      A8r! = ( 15 - A3r! ) * .5235988
        L_15240_:      X4r! = - sin ( A8r! )
          l15250:      Y4 = cos ( A8r! )
          l15260:      B8r! = abs ( X4r! )
          n15270:      IF abs ( Y4 ) > abs ( X4r! ) THEN B8r! = abs ( Y4 )
          n15280:      X4r! = X4r! / B8r!
          l15290:      Y4 = Y4 / B8r!
          l15300:      X5 = S6r!
          l15310:      Y5r! = S7r!
          n15320:      FOR L9r! = 1 TO 15
          l15330:          X5 = X5 + X4r!
          l15340:          A5r! = int ( X5 + .5 )
          n15350:          IF ( A5r! < 1 ) OR ( A5r! > 10 ) THEN GOTO L_16250_
          n15360:          Y5r! = Y5r! + Y4
          l15370:          A6r! = int ( Y5r! + .5 )
          n15380:          IF ( A6r! < 1 ) OR ( A6r! > 10 ) THEN GOTO L_16250_
          n15390:          IF ( L9r! = 5 ) OR ( L9r! = 9 ) THEN print
          n15400:          print Fktr ( X5 ) ; "-" ; Fktr ( Y5r! ) ; ", " ;
          n15410:          IF Q_s$ ( A5r! , A6r! ) <> "." THEN GOTO L_15430_
          n15420:          GOTO L_16240_
        L_15430_:          print
          l15440:          IF Q_s$ ( A5r! , A6r! ) = "K" THEN GOTO L_15510_
          n15450:          IF Q_s$ ( A5r! , A6r! ) <> "C" THEN GOTO L_15860_
          n15460:          IF rnd ( 1 ) > .1 THEN GOTO L_15510_
          n15470:          print "***COMMANDER AT SECTOR" ; A5r! ; "-" ; A6r! ; "USES ANTI-PHOTON" ;
          n15480:          print " DEVICE!"
          l15490:          print "   TORPEDO NEUTRALIZED."
          l15500:          GOTO L_16270_
        L_15510_:          FOR Vr! = 1 TO K3r!
          n15520:              IF ( A5r! = K4_r! ( Vr! ) ) AND ( A6r! = K5_r! ( Vr! ) ) THEN GOTO L_15540_
          n15530:          NEXT Vr!
        L_15540_:          Kr! = K6_r! ( Vr! )
          l15550:          W3r! = 200 + 800 * rnd ( 1 )
          n15560:          IF abs ( Kr! ) < W3r! THEN W3r! = abs ( Kr! )
          n15570:          K6_r! ( Vr! ) = Kr! - sgn ( Kr! ) * abs ( W3r! )
          l15580:          IF K6_r! ( Vr! ) <> 0 THEN GOTO L_15620_
          n15590:          T2s$ = Q_s$ ( A5r! , A6r! )
          l15600:          GOSUB SUB_4710_
          l15610:          GOTO L_16270_
        L_15620_:          IF Q_s$ ( A5r! , A6r! ) = "K" THEN print "***KLINGON AT" ;
          n15630:          IF Q_s$ ( A5r! , A6r! ) = "C" THEN print "***COMMANDER AT" ;
          n15640:          print A5r! ; "-" ; A6r! ;
          n15650:          A7r! = A8r! + 2.5 * ( rnd ( 1 ) - .5 )
          n15660:          W3r! = abs ( - sin ( A7r! ) )
          l15670:          IF abs ( cos ( A7r! ) ) > W3r! THEN W3r! = abs ( cos ( A7r! ) )
          n15680:          X7r! = - sin ( A7r! ) / W3r!
          l15690:          Y7 = cos ( A7r! ) / W3r!
          n15700:          Pr! = int ( A5r! + X7r! + .5 )
          l15710:          Qr! = int ( A6r! + Y7 + .5 )
          n15720:          IF ( Pr! < 1 ) OR ( Pr! > 10 ) OR ( Qr! < 1 ) OR ( Qr! > 10 ) THEN GOTO L_15840_
          n15730:          IF Q_s$ ( Pr! , Qr! ) <> "." THEN GOTO L_15840_
          n15740:          Q_s$ ( Pr! , Qr! ) = Q_s$ ( A5r! , A6r! )
          l15750:          Q_s$ ( A5r! , A6r! ) = "."
          l15760:          print "DAMAGED--"
          n15770:          print "   DISPLACED BY BLAST  TO  SECTOR" ; Pr! ; "-" ; Qr!
          n15780:          K4_r! ( Vr! ) = Pr!
          l15790:          K5_r! ( Vr! ) = Qr!
          l15800:          K7_r! ( Vr! ) = sqr ( ( S6r! - Pr! ) ^ 2 + ( S7r! - Qr! ) ^ 2 )
          n15810:          K8_r! ( Vr! ) = K7_r! ( Vr! )
          n15820:          GOSUB SUB_19810_
          l15830:          GOTO L_16270_
        L_15840_:          print "DAMAGED, BUT NOT DESTROYED."
          l15850:          GOTO L_16270_
        L_15860_:          IF Q_s$ ( A5r! , A6r! ) <> "B" THEN GOTO L_16020_
          n15870:          print "***STARBASE DESTROYED...CONGRATULATIONS...YOU TURKEY!"
          n15880:          IF S2_r! ( Q1r! , Q2r! ) < 0 THEN S2_r! ( Q1r! , Q2r! ) = 0
          n15890:          FOR Wr! = 1 TO R3r!
          n15900:              IF ( B2_r! ( Wr! ) <> Q1r! ) OR ( B3_r! ( Wr! ) <> Q2r! ) THEN GOTO L_15930_
          n15910:              B2_r! ( Wr! ) = B2_r! ( R3r! )
          l15920:              B3_r! ( Wr! ) = B3_r! ( R3r! )
        L_15930_:          NEXT Wr!
          l15940:          Q_s$ ( A5r! , A6r! ) = "."
          l15950:          R3r! = R3r! - 1
          l15960:          B6r! = 0
          l15970:          B7 = 0
          n15980:          G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 10
          l15990:          B1r! = B1r! + 1
          l16000:          GOSUB SUB_12060_
          l16010:          GOTO L_16270_
        L_16020_:          IF Q_s$ ( A5r! , A6r! ) <> "*" THEN GOTO L_16140_
          n16030:          IF rnd ( 1 ) > .15 THEN GOTO L_16060_
          n16040:          print "***STAR AT SECTOR" ; A5r! ; "-" ; A6r! ; "UNAFFECTED BY PHOTON BLAST"
          n16050:          GOTO L_16270_
        L_16060_:          X2r! = A5r!
          l16070:          Y2 = A6r!
          l16080:          GOSUB SUB_12920_
          l16090:          A5r! = X2r!
          l16100:          A6r! = Y2
          n16110:          IF G_r! ( Q1r! , Q2r! ) = 1000 THEN RETURN
          n16120:          IF A2r! <> 0 THEN RETURN
          n16130:          GOTO L_16270_
        L_16140_:
          l16150:          print
          l16160:          print "AAAAAIIIIIIIEEEEEEEAAAAAAAUUUUUUGGGGGGGHHHHHHHHHH!!!"
          n16170:          print "    HACK!     HACK!    COUGH!      *CHOKE!*"
          n16180:          print
          l16190:          print "MR. SPOCK-  'FASCINATING!'"
          l16200:          Q_s$ ( A5r! , A6r! ) = "."
          n16210:          T2r! = 0
          l16220:          T3 = 0
          l16230:          GOTO L_16270_
        L_16240_:      NEXT L9r!
        L_16250_:      print
          l16260:      print TORPEDO ; MISSED! ; ""
        L_16270_:  NEXT Z6r!
        L_16280_:  IF R1r! <> 0 THEN RETURN


          n16290:  F9r! = 1
          l16300:  GOSUB SUB_7120_
          l16310:  RETURN



      SUB_16320_:  REM - RAM
          n16330:  print
          l16340:  print "*** RED ALERT!!   RED ALERT!! ***"
          l16350:  print
          n16360:  print "*** COLLISION IMMINENT!!"
          l16370:  print
          n16380:  print "*** " ; S5s$ ; " RAMS " ;
          l16390:  W7r! = 1
          l16400:  IF Q_s$ ( S6r! , S7r! ) = "C" THEN W7r! = 2
          n16410:  IF W7r! = 1 THEN print "KLINGON AT " ;
          n16420:  IF W7r! = 2 THEN print "COMMANDER AT " ;
          n16430:  print "SECTOR" ; S6r! ; "-" ; S7r!
          l16440:  A5r! = S6r!
          l16450:  A6r! = S7r!
          l16460:  T2s$ = Q_s$ ( S6r! , S7r! )
          n16470:  GOSUB SUB_4710_
          l16480:  print "***" ; S5s$ ; " HEAVILY DAMAGED."
          n16490:  Kr! = int ( 5 + rnd ( 1 ) * 20 )
          l16500:  print "***SICKBAY REPORTS" ; Kr! ; "CASUALTIES!"
          n16510:  C4r! = C4r! + Kr!
          l16520:  FOR Lr! = 1 TO 12
          l16530:      Ir! = rnd ( 1 )
          n16540:      Jr! = ( 3.5 * W7r! * ( rnd ( 1 ) + Ir! ) + 1 ) * D5r!
          n16550:      IF Lr! = 6 THEN Jr! = Jr! / 3
          n16560:      D4_r! ( Lr! ) = D4_r! ( Lr! ) + T1r! + Jr!
          l16570:  NEXT Lr!
          l16580:  D4_r! ( 6 ) = D4_r! ( 6 ) - 3
          n16590:  IF D4_r! ( 6 ) < 0 THEN D4_r! ( 6 ) = 0
          n16600:  S4r! = 0
          l16610:  IF R1r! <> 0 THEN RETURN


          n16620:  F9r! = 1
          l16630:  GOSUB SUB_7120_
          l16640:  RETURN



      SUB_16650_:  REM - SCORE
          n16660:  Pr! = D0r! - J2r!
          l16670:  IF ( Pr! <> 0 ) AND ( R1r! = 0 ) THEN GOTO L_16690_
          n16680:  IF Pr! < 5 THEN Pr! = 5
        L_16690_:  Nr! = ( K2r! + K1r! ) / Pr!
          l16700:  Kr! = int ( 500 * Nr! + .5 )
          l16710:  Lr! = 0
          n16720:  IF G1r! <> 0 THEN Lr! = 100 * S8r!
          n16730:  Ir! = 0
          n16740:  IF left$ ( S5s$ , 1 ) = "E" THEN Mr! = 0
          n16750:  IF left$ ( S5s$ , 1 ) = "F" THEN Mr! = 1
          n16760:  IF left$ ( S5s$ , 1 ) = "" THEN Mr! = 2
          n16770:  IF A1r! = 0 THEN Ir! = 200
          n16780:  Jr! = 10 * K1r! + 50 * K2r! + Kr! + Lr! - Ir! - 100 * B1r! - 100 * Mr! - 35 * N1r! - 3 * S1r! - C4r!
          n16790:  print
          l16800:  IF Jr! <> 0 THEN GOTO L_16830_
          n16810:  print "AS YET, YOU HAVE NO SCORE."
          l16820:  RETURN


        L_16830_:  print "YOUR SCORE --"
          l16840:  print
          l16850:  IF K1r! = 0 THEN GOTO L_16870_
          n16860:  print K1r! ; tab ( 5 ) ; "ORDINARY KLINGON(S) DESTROYED" ; tab ( 36 ) ; 10 * K1r!
        L_16870_:  IF K2r! = 0 THEN GOTO L_16890_
          n16880:  print K2r! ; tab ( 5 ) ; "KLINGON COMMANDER(S) DESTROYED" ; tab ( 36 ) ; 50 * K2r!
        L_16890_:  IF Kr! = 0 THEN GOTO L_16920_
          n16900:  print Fktr ( Nr! ) ; tab ( 5 ) ; "KLINGONS PER STARDATE, AVERAGE" ;
          n16910:  print tab ( 36 ) ; Kr!
        L_16920_:  IF S1r! = 0 THEN GOTO L_16940_
          n16930:  print S1r! ; tab ( 5 ) ; "STAR(S) DESTROYED" ; tab ( 36 ) ; - 3 * S1r!
        L_16940_:  IF B1r! = 0 THEN GOTO L_16960_
          n16950:  print B1r! ; tab ( 5 ) ; "STARBASES DESTROYED" ; tab ( 36 ) ; - 100 * B1r!
        L_16960_:  IF N1r! = 0 THEN GOTO L_16980_
          n16970:  print N1r! ; tab ( 5 ) ; "SOS CALL(S)  TO  A STARBASE" ; tab ( 36 ) ; - 35 * N1r!
        L_16980_:  IF C4r! = 0 THEN GOTO L_17000_
          n16990:  print C4r! ; tab ( 5 ) ; "CASUALTIES INCURRED" ; tab ( 36 ) ; - C4r!
        L_17000_:  IF Mr! = 0 THEN GOTO L_17020_
          n17010:  print Mr! ; tab ( 5 ) ; "SHIP(S) LOST OR DESTROYED" ; tab ( 36 ) ; - 100 * Mr!
        L_17020_:  IF A1r! <> 0 THEN GOTO L_17040_
          n17030:  print "PENALTY FOR  GETTING YOURSELF KILLED" ; tab ( 36 ) ; - 200
        L_17040_:  IF G1r! = 0 THEN GOTO L_17060_
          n17050:  print tab ( 5 ) ; "BONUS FOR  WINNING " ; S_s$ ( S8r! ) ; " GAME" ; tab ( 36 ) ; Lr!
        L_17060_:  print tab ( 5 ) ; "-------------------------------------"
          n17070:  print tab ( 28 ) ; " TO TAL" ; tab ( 36 ) ; Jr! ; "**"
          l17080:  RETURN



      SUB_17090_:  REM  - SETUP
          n17100:  A2r! = 0
          l17110:  G1r! = 0
          l17120:  GOSUB SUB_3380_
          l17130:  S5s$ = "ENTERPRISE"
          n17140:  I7r! = 5000
          l17150:  E1r! = I7r!
          l17160:  I8 = 2500
          l17170:  S3r! = I8
          l17180:  S4r! = 0
          l17190:  S9r! = S4r!
          l17200:  J1 = 4
          l17210:  L1r! = J1
          n17220:  Q1r! = Fkta ( 1 )
          l17230:  Q2r! = Fkta ( 1 )
          l17240:  S6r! = Fktb ( 1 )
          l17250:  S7r! = Fktb ( 1 )
          l17260:  I9 = 10
          l17270:  T4r! = I9
          n17280:  W1r! = 5
          l17290:  W2r! = 25
          l17300:  FOR Ir! = 1 TO 12
          l17310:      D4_r! ( Ir! ) = 0
          l17320:  NEXT
          n17330:  J2r! = 100 * int ( 31 * rnd ( 1 ) + 20 )
          l17340:  D0r! = J2r!
          l17350:  K1r! = 0
          l17360:  K2r! = 0
          l17370:  N1r! = 0
          l17380:  N2 = 0
          l17390:  R6r! = 0
          l17400:  C4r! = 0
          n17410:  A1r! = 1
          l17420:  D3 = .25
          l17430:  FOR Ir! = 1 TO 8
          l17440:      FOR Jr! = 1 TO 8
          l17450:          S2_r! ( Ir! , Jr! ) = 0
          l17460:      NEXT Jr!
          l17470:  NEXT Ir!
          n17480:  F1_r! ( 1 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
          l17490:  F1_r! ( 5 ) = 1E + 30
          n17500:  F1_r! ( 2 ) = D0r! - 1.5 * ( I5r! / R2r! ) * log ( rnd ( 1 ) )
          l17510:  I6 = 0
          n17520:  F1_r! ( 3 ) = D0r! - .3 * I5r! * log ( rnd ( 1 ) )
          l17530:  F1_r! ( 4 ) = D0r! - .3 * I5r! * log ( rnd ( 1 ) )
          n17540:  FOR Ir! = 1 TO 8
          l17550:      FOR Jr! = 1 TO 8
          l17560:          Kr! = int ( rnd ( 1 ) * 9 + 1 )
          l17570:          I6 = I6 + Kr!
          n17580:          G_r! ( Ir! , Jr! ) = Kr!
          l17590:      NEXT Jr!
          l17600:  NEXT Ir!
          l17610:  S1r! = 0
          n17620:  FOR Ir! = 1 TO I2r!
        L_17630_:      Xr! = int ( rnd ( 1 ) * 6 + 2 )
          l17640:      Yr! = int ( rnd ( 1 ) * 6 + 2 )
          n17650:      IF G_r! ( Xr! , Yr! ) >= 10 THEN GOTO L_17630_
          n17660:      IF Ir! < 2 THEN GOTO L_17720_
          n17670:      Kr! = Ir! - 1
          l17680:      FOR Jr! = 1 TO Kr!
          l17690:          D1r! = sqr ( ( B2_r! ( Jr! ) - Xr! ) ^ 2 + ( B3_r! ( Jr! ) - Yr! ) ^ 2 )
          n17700:          IF D1r! < 2 THEN GOTO L_17630_
          n17710:      NEXT Jr!
        L_17720_:      B2_r! ( Ir! ) = Xr!
          l17730:      B3_r! ( Ir! ) = Yr!
          l17740:      S2_r! ( Xr! , Yr! ) = - 1
          l17750:      G_r! ( Xr! , Yr! ) = G_r! ( Xr! , Yr! ) + 10
          l17760:  NEXT Ir!
          n17770:  B1r! = 0
          l17780:  Kr! = I1r! - I4r!
          l17790:  Lr! = int ( .25 * S8r! * ( 9 - L2r! ) + 1 )
        L_17800_:  Mr! = int ( ( 1 - rnd ( 1 ) ^ 2 ) * Lr! )
          l17810:  IF Mr! > Kr! THEN Mr! = Kr!
          n17820:  Nr! = 100 * Mr!
        L_17830_:  Xr! = Fkta ( 1 )
          l17840:  Yr! = Fkta ( 1 )
          l17850:  IF G_r! ( Xr! , Yr! ) + Nr! > 999 THEN GOTO L_17830_
          n17860:  G_r! ( Xr! , Yr! ) = G_r! ( Xr! , Yr! ) + Nr!
          l17870:  Kr! = Kr! - Mr!
          l17880:  IF Kr! <> 0 THEN GOTO L_17800_
          n17890:  FOR Ir! = 1 TO I4r!
        L_17900_:      Xr! = Fkta ( 1 )
          l17910:      Yr! = Fkta ( 1 )
          l17920:      IF ( G_r! ( Xr! , Yr! ) < 99 ) AND ( rnd ( 1 ) < .75 ) THEN GOTO L_17900_
          n17930:      IF G_r! ( Xr! , Yr! ) > 899 THEN GOTO L_17900_
          n17940:      IF Ir! = 1 THEN GOTO L_17990_
          n17950:      Mr! = Ir! - 1
          l17960:      FOR Jr! = 1 TO Mr!
          l17970:          IF ( C1_r! ( Jr! ) = Xr! ) AND ( C2_r! ( Jr! ) = Yr! ) THEN GOTO L_17900_
          n17980:      NEXT Jr!
        L_17990_:      G_r! ( Xr! , Yr! ) = G_r! ( Xr! , Yr! ) + 100
          l18000:      C1_r! ( Ir! ) = Xr!
          l18010:      C2_r! ( Ir! ) = Yr!
          l18020:  NEXT Ir!
          n18030:  Ir! = int ( D0r! )
          l18040:  print
          l18050:  S0r! = 0
        L_18060_:  T2r! = Fkta ( 1 )
          l18070:  T3 = Fkta ( 1 )
          l18080:  IF G_r! ( T2r! , T3 ) < 100 THEN GOTO L_18060_
          n18090:  IF S8r! <> 1 THEN GOTO L_18250_
          n18100:  print "IT IS STARDATE" ; Ir! ; "...THE ORGANIAN PEACE TREATY BETWEEN"
          n18110:  print "THE UNITED FEDERATION OF PLANETS AND THE KLINGON EMPIRE"
          n18120:  print "HAS COLLAPSED AND THE FEDERATION IS BEING ATTACKED BY A"
          n18130:  print "DEADLY KLINGON INVASION FLEET.  AS CAPTAIN OF THE STARSHIP"
          n18140:  print "U.S.S. ENTERPRISE, IT IS YOUR MISSION  TO  SEEK OUT AND"
          n18150:  print "DESTROY THIS INVASION FOR CE OF" ; I1r! ; "BATTLE CRUISERS."
          n18160:  print
          l18170:  print "YOU HAVE AN INITIAL ALLOTMENT OF" ; int ( I5r! ) ;
          n18180:  print "STARDATES"
          l18190:  print " TO  COMPLETE YOUR MISSION."
          n18200:  print "AS THE MISSION PROCEEDS, YOU MAY BE GIVEN MORE TIME."
          n18210:  print
          l18220:  print "YOU WILL HAVE" ; I2r! ; "SUPPORTING STARBASE(S)."
          l18230:  print
          n18240:  GOTO L_18360_
        L_18250_:  print "STARDATE.............." ; Ir!
          n18260:  print "NUMBER OF KLINGONS...." ; I1r!
          n18270:  print "NUMBER OF STARDATES..." ; int ( I5r! )
          n18280:  print "NUMBER OF STARBASES..." ; I2r!
          n18290:  print "STARBASE LOCATIONS...." ;
          n18300:  FOR Ir! = 1 TO I2r!
          l18310:      print B2_r! ( Ir! ) ; "-" ; B3_r! ( Ir! ) ;
          n18320:      IF Ir! <> I2r! THEN print ", " ;
          n18330:  NEXT Ir!
          l18340:  print
          l18350:  print
        L_18360_:  GOSUB SUB_12790_
          n18370:  print "THE " ; S5s$ ; " IS CURRENTLY IN THE " ; G2s$ ; " QUADRANT."
          n18380:  GOSUB SUB_12110_
          l18390:  RETURN



      SUB_18400_:  REM - SETWARP
          n18410:  INPUT "WARP FACTOR" ; Kr!
          n18420:  print
          n18430:  IF Kr! < 1 THEN GOTO L_18620_
          n18440:  IF Kr! > 10 THEN GOTO L_18640_
          n18450:  Jr! = W1r!
          l18460:  W1r! = Kr!
          l18470:  W2r! = W1r! * W1r!
          n18480:  IF ( W1r! <= Jr! ) OR ( W1r! <= 6 ) THEN GOTO L_18510_
          n18490:  IF W1r! <= 8 THEN GOTO L_18530_
          n18500:  IF W1r! > 8 THEN GOTO L_18560_
        L_18510_:  print "ENSIGN CHEKOV - 'WARP FACTOR" ; W1r! ; "CAPTAIN'"
          l18520:  RETURN


        L_18530_:  print "ENGINEER SCOTT - 'AYE, BUT OUR MAXIMUM SAFE SPEED" ;
          n18540:  print " IS WARP 6.'"
          l18550:  RETURN


        L_18560_:  IF W1r! = 10 THEN GOTO L_18600_
          n18570:  print "ENGINEER SCOTT-'AYE, CAPTAIN, BUT OUR ENGINES MAY NOT " ;
          n18580:  print "TAKE IT.'"
          l18590:  RETURN


        L_18600_:  print "ENGINEER SCOTT-'AYE, CAPTAIN, WE'LL GIVE IT A TRY.'"
          l18610:  RETURN


        L_18620_:  print "ENSIGN CHEKOV-'WE CAN'T GO BELOW WARP 1, CAPTAIN.'"
          l18630:  RETURN


        L_18640_:  print "ENSIGN CHEKOV-'OUR  TO P SPEED IS WARP 10, CAPTAIN.'"
          n18650:  RETURN



      SUB_18660_:  REM - SHIELDS
          n18670:  J3r! = 0
          l18680:  IF D4_r! ( 8 ) <> 0 THEN GOTO L_18880_
          n18690:  IF S4r! <> 0 THEN GOTO L_18730_

      SUB_18700_:  INPUT "SHIELDS ARE DOWN.  DO YOU WANT THEM UP" ; Bs$
          n18710:  IF left$ ( Bs$ , 1 ) = "Y" THEN GOTO L_18760_
          n18720:  RETURN


        L_18730_:  INPUT "SHIELDS ARE UP.  DO YOU WANT THEM DOWN" ; Bs$
          n18740:  IF left$ ( Bs$ , 1 ) = "Y" THEN GOTO L_18830_
          n18750:  RETURN


        L_18760_:  S4r! = 1
          l18770:  S9r! = 1
          l18780:  IF C5s$ <> "DOCKED" THEN E1r! = E1r! - 50
          n18790:  print "SHIELDS RAISED."
          l18800:  IF E1r! <= 0 THEN GOTO L_18900_
          n18810:  J3r! = 1
          l18820:  RETURN


        L_18830_:  S4r! = 0
          l18840:  S9r! = 1
          l18850:  print "SHIELDS LOWERED."
          l18860:  J3r! = 1
          l18870:  RETURN


        L_18880_:  print "SHIELDS DAMAGED AND DOWN."
          l18890:  RETURN


        L_18900_:  print
          l18910:  print "SHIELDS USE UP LAST OF THE ENERGY."
          n18920:  F9r! = 4
          l18930:  GOSUB SUB_7120_
          l18940:  RETURN



      SUB_18950_:  REM - SUPERNOVA
          n18960:  IF X2r! <> 0 THEN GOTO L_19150_
          n18970:  Nr! = int ( rnd ( 1 ) * I6 + 1 )
          l18980:  FOR Xr! = 1 TO 8
          l18990:      FOR Yr! = 1 TO 8
          n19000:          Nr! = Nr! - ( G_r! ( Xr! , Yr! ) - int ( G_r! ( Xr! , Yr! ) / 10 ) * 10 )
          l19010:          IF Nr! <= 0 THEN GOTO L_19050_
          n19020:      NEXT Yr!
          l19030:  NEXT Xr!
          l19040:  RETURN


        L_19050_:  IF ( Xr! <> Q1r! ) OR ( Yr! <> Q2r! ) THEN GOTO L_19270_
          n19060:  IF J4r! <> 0 THEN GOTO L_19270_
          n19070:  Nr! = int ( rnd ( 1 ) * ( G_r! ( Xr! , Yr! ) - int ( G_r! ( Xr! , Yr! ) / 10 ) * 10 ) ) + 1
          n19080:  FOR X3r! = 1 TO 10
          l19090:      FOR Y3r! = 1 TO 10
          l19100:          IF Q_s$ ( X3r! , Y3r! ) <> "*" THEN GOTO L_19130_
          n19110:          Nr! = Nr! - 1
          l19120:          IF Nr! = 0 THEN GOTO L_19150_
        L_19130_:      NEXT Y3r!
          l19140:  NEXT X3r!
        L_19150_:  print
          l19160:  print "*** RED ALERT!!  RED ALERT!! ***"
          n19170:  X3r! = X2r!
          l19180:  Y3r! = Y2
          n19190:  print "*** INCIPIENT SUPERNOVA DETECTED AT SECTOR" ; X3r! ; "-" ; Y3r!
          n19200:  Xr! = Q1r!
          l19210:  Yr! = Q2r!
          l19220:  Kr! = ( X2r! - S6r! ) ^ 2 + ( Y2 - S7r! ) ^ 2
          n19230:  IF Kr! > 1.5 THEN GOTO L_19320_
          n19240:  print "*** EMERGENCY AU TO -OVERRIDE JAMMED ***"
          l19250:  A2r! = 1
          l19260:  GOTO L_19320_
        L_19270_:  IF D4_r! ( 9 ) <> 0 THEN GOTO L_19320_
          n19280:  print
          l19290:  print "MESSAGE FROM STARFLEET COMMAND...STARDATE" ; int ( D0r! )
          n19300:  print "'SUPERNOVA IN QUADRANT" ; Xr! ; "-" ; Yr! ;
          n19310:  print "....CAUTION ADVISED'"
        L_19320_:  Nr! = G_r! ( Xr! , Yr! )
          l19330:  Rr! = int ( Nr! / 100 )
          l19340:  Qr! = 0
          n19350:  IF ( Xr! <> Q1r! ) OR ( Yr! <> Q2r! ) THEN GOTO L_19380_
          n19360:  K3r! = 0
          l19370:  C3r! = 0
        L_19380_:  IF Rr! = 0 THEN GOTO L_19520_
          n19390:  R1r! = R1r! - Rr!
          l19400:  IF R2r! = 0 THEN GOTO L_19520_
          n19410:  FOR Lr! = 1 TO R2r!
          l19420:      IF ( C1_r! ( Lr! ) <> Xr! ) OR ( C2_r! ( Lr! ) <> Yr! ) THEN GOTO L_19510_
          n19430:      C1_r! ( Lr! ) = C1_r! ( R2r! )
          l19440:      C2_r! ( Lr! ) = C2_r! ( R2r! )
          l19450:      C1_r! ( R2r! ) = 0
          l19460:      C2_r! ( R2r! ) = 0
          n19470:      R2r! = R2r! - 1
          l19480:      Rr! = Rr! - 1
          l19490:      Qr! = 1
          l19500:      IF R2r! = 0 THEN F1_r! ( 2 ) = 1E + 30
        L_19510_:  NEXT Lr!
        L_19520_:  IF R3r! = 0 THEN GOTO L_19610_
          n19530:  FOR Lr! = 1 TO R3r!
          l19540:      IF ( B2_r! ( Lr! ) <> Xr! ) OR ( B3_r! ( Lr! ) <> Yr! ) THEN GOTO L_19600_
          n19550:      B2_r! ( Lr! ) = B2_r! ( R3r! )
          l19560:      B3_r! ( Lr! ) = B3_r! ( R3r! )
          l19570:      B2_r! ( R3r! ) = 0
          l19580:      B3_r! ( R3r! ) = 0
          l19590:      R3r! = R3r! - 1
        L_19600_:  NEXT Lr!
        L_19610_:  IF X2r! = 0 THEN GOTO L_19670_
          n19620:  Nr! = G_r! ( Xr! , Yr! ) - int ( G_r! ( Xr! , Yr! ) / 100 ) * 100
          n19630:  S1r! = S1r! + ( Nr! - int ( Nr! / 10 ) * 10 )
          l19640:  B1r! = B1r! + int ( Nr! / 10 )
          n19650:  K1r! = K1r! + Rr!
          l19660:  K2r! = K2r! + Qr!
        L_19670_:  IF ( S2_r! ( Xr! , Yr! ) <> 0 ) AND ( D4_r! ( 9 ) <> 0 ) THEN S2_r! ( Xr! , Yr! ) = 1000 + G_r! ( Xr! , Yr! )
          n19680:  IF ( D4_r! ( 9 ) = 0 ) OR ( ( Q1r! = Xr! ) AND ( Q2r! = Yr! ) ) THEN S2_r! ( Xr! , Yr! ) = 1
          n19690:  G_r! ( Xr! , Yr! ) = 1000
          n19700:  IF ( R1r! <> 0 ) OR ( ( Xr! = Q1r! ) AND ( Yr! = Q2r! ) ) THEN GOTO L_19770_
          n19710:  print
          l19720:  print "MR. SPOCK-  'CAPTAIN, A SUPERNOVA IN QUADRANT" ;
          n19730:  print Xr! ; "-" ; Yr! ; "HAS JUST DESTROYED THE LAST OF THE KLINGONS.'"
          n19740:  F9r! = 1
          l19750:  GOSUB SUB_7120_
          l19760:  RETURN


        L_19770_:  IF A2r! = 0 THEN RETURN


          n19780:  F9r! = 8
          l19790:  GOSUB SUB_7120_
          l19800:  RETURN



      SUB_19810_:  REM - SORTKL
          n19820:  IF K3r! <= 1 THEN RETURN


        L_19830_:  Z4r! = 0
          n19840:  FOR BT_Or! = 1 TO K3r! - 1
          l19850:      IF K7_r! ( BT_Or! ) <= K7_r! ( BT_Or! + 1 ) THEN GOTO L_20020_
          n19860:      Kr! = K7_r! ( BT_Or! )
          l19870:      K7_r! ( BT_Or! ) = K7_r! ( BT_Or! + 1 )
          l19880:      K7_r! ( BT_Or! + 1 ) = Kr!
          n19890:      Kr! = K8_r! ( BT_Or! )
          l19900:      K8_r! ( BT_Or! ) = K8_r! ( BT_Or! + 1 )
          l19910:      K8_r! ( BT_Or! + 1 ) = Kr!
          n19920:      Kr! = K4_r! ( BT_Or! )
          l19930:      K4_r! ( BT_Or! ) = K4_r! ( BT_Or! + 1 )
          l19940:      K4_r! ( BT_Or! + 1 ) = Kr!
          n19950:      Kr! = K5_r! ( BT_Or! )
          l19960:      K5_r! ( BT_Or! ) = K5_r! ( BT_Or! + 1 )
          l19970:      K5_r! ( BT_Or! + 1 ) = Kr!
          n19980:      Kr! = K6_r! ( BT_Or! )
          l19990:      K6_r! ( BT_Or! ) = K6_r! ( BT_Or! + 1 )
          l20000:      K6_r! ( BT_Or! + 1 ) = Kr!
          n20010:      Z4r! = 1
        L_20020_:  NEXT BT_Or!
          n20030:  IF Z4r! <> 0 THEN GOTO L_19830_
          n20040:  RETURN



      SUB_20050_:  REM  - SRSCAN
          n20060:  IF D4_r! ( 1 ) <> 0 THEN GOTO L_20500_ REM D(1) like in the original was never initiated D4=Dameges ??? Thomas
          n20070:  print
          l20080:  print "    1 2 3 4 5 6 7 8 9 10"
          n20090:  FOR Ir! = 1 TO 10
          l20100:      IF Ir! < 10 THEN print " " ;
          n20110:      print Ir! ;
          l20120:      FOR Jr! = 1 TO 10
          l20130:          print Q_s$ ( Ir! , Jr! ) ; " " ;
          l20140:      NEXT Jr!
        L_20150_:      ON Ir! GOTO L_20170_ , L_20190_ , L_20220_ , L_20240_ , L_20330_
          n20160:      ON Ir! - 5 GOTO L_20350_ , L_20370_ , L_20390_ , L_20450_ , L_20470_
        L_20170_:      print " STARDATE      " ; Fktr ( D0r! )
          l20180:      GOTO L_20480_
        L_20190_:      IF C5s$ <> "DOCKED" THEN GOSUB SUB_12060_
          n20200:      print " CONDITION      " ; C5s$
          l20210:      GOTO L_20480_
        L_20220_:      print " POSITION      " ; Q1r! ; "-" ; Q2r! ; ", " ; S6r! ; "-" ; S7r!
          l20230:      GOTO L_20480_
        L_20240_:      print " LIFE SUPPORT   " ;
          l20250:      IF D4_r! ( 5 ) <> 0 THEN GOTO L_20280_
          n20260:      print "ACTIVE"
          l20270:      GOTO L_20480_
        L_20280_:      IF C5s$ <> "DOCKED" THEN GOTO L_20310_
          n20290:      print "DAMAGED, SUPPORTED BY STARBASE"
          l20300:      GOTO L_20480_
        L_20310_:      print "DAMAGED, RESERVES=" ; Fkts ( L1r! )
          l20320:      GOTO L_20480_
        L_20330_:      print " WARP FACTOR   " ; Fktr ( W1r! )
          l20340:      GOTO L_20480_
        L_20350_:      print " ENERGY" ; spc ( 8 ) ; .01 * int ( 100 * E1r! )
          l20360:      GOTO L_20480_
        L_20370_:      print " TORPEDOS      " ; T4r!
          l20380:      GOTO L_20480_
        L_20390_:      print " SHIELDS        " ;
          l20400:      Bs$ = "DOWN,"
          l20410:      IF S4r! <> 0 THEN Bs$ = "UP,"
          n20420:      IF D4_r! ( 8 ) > 0 THEN Bs$ = "DAMAGED,"
          n20430:      print Bs$ ; int ( 100 * S3r! / I8 + .5 ) ; "%"
          l20440:      GOTO L_20480_
        L_20450_:      print " KLINGONS LEFT " ; R1r!
          l20460:      GOTO L_20480_
        L_20470_:      print " TIME LEFT     " ; Fkts ( R5r! )
        L_20480_:  NEXT Ir!
          l20490:  RETURN


        L_20500_:  print "SHORT RANGE SENSORS DAMAGED."
          l20510:  RETURN



      SUB_20520_:  REM - TIMEWARP
          n20530:  print
          l20540:  print "*** TIME WARP ENTERED ***"
          l20550:  print "YOU ARE TRAVELING" ;
          n20560:  IF S0r! <> 0 THEN GOTO L_20610_
          n20570:  T1r! = - .5 * I5r! * log ( rnd ( 1 ) )
          n20580:  print "FORWARD IN TIME" ; Fktr ( T1r! ) ; "STARDATES."
          n20590:  F1_r! ( 2 ) = F1_r! ( 2 ) + T1r!
          l20600:  GOTO L_21030_
        L_20610_:  Mr! = D0r!
          l20620:  D0r! = D9_r! ( 1 )
          n20630:  print "BACKWARD IN TIME" ; Fktr ( Mr! - D0r! ) ; "STARDATES."
          l20640:  S0r! = 0
          n20650:  R1r! = D9_r! ( 2 )
          l20660:  R2r! = D9_r! ( 3 )
          l20670:  R3r! = D9_r! ( 4 )
          l20680:  R4r! = D9_r! ( 5 )
          l20690:  R5r! = D9_r! ( 6 )
          n20700:  S1r! = D9_r! ( 7 )
          l20710:  B1r! = D9_r! ( 8 )
          l20720:  K1r! = D9_r! ( 9 )
          l20730:  K2r! = D9_r! ( 10 )
          n20740:  FOR Ir! = 1 TO 8
          l20750:      FOR Jr! = 1 TO 8
          l20760:          G_r! ( Ir! , Jr! ) = D9_r! ( Ir! - 1 + 8 * ( Jr! - 1 ) + 11 )
          l20770:      NEXT Jr!
          l20780:  NEXT Ir!
          n20790:  FOR Ir! = 75 TO 84
          l20800:      C1_r! ( Ir! - 74 ) = D9_r! ( Ir! )
          l20810:  NEXT
          n20820:  FOR Ir! = 85 TO 94
          l20830:      C2_r! ( Ir! - 84 ) = D9_r! ( Ir! )
          l20840:  NEXT
          n20850:  FOR Ir! = 95 TO 99
          l20860:      B2_r! ( Ir! - 94 ) = D9_r! ( Ir! )
          l20870:  NEXT
          n20880:  FOR Ir! = 100 TO 104
          l20890:      B3_r! ( Ir! - 99 ) = D9_r! ( Ir! )
          l20900:  NEXT
          l20910:  B4r! = D9_r! ( 105 )
          l20920:  B5 = D9_r! ( 106 )
          n20930:  F1_r! ( 1 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
          n20940:  IF R2r! <> 0 THEN F1_r! ( 2 ) = D0r! - ( I5r! / R2r! ) * log ( rnd ( 1 ) )
          n20950:  F1_r! ( 3 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
          n20960:  FOR Ir! = 1 TO 8
          l20970:      FOR Jr! = 1 TO 8
          l20980:          IF 1 < S2_r! ( Ir! , Jr! ) THEN S2_r! ( Ir! , Jr! ) = 1
          n20990:      NEXT Jr!
          l21000:  NEXT Ir!
          n21010:  print
          n21020:  print "SPOCK HAS RECONSTRUCTED A CORRECT STAR CHART FROM MEMORY."
        L_21030_:  GOSUB SUB_12110_
          l21040:  RETURN



      SUB_21050_:  REM - TRANSFER
          n21060:  J3r! = 0
          n21070:  IF D4_r! ( 12 ) <> 0 THEN GOTO L_21250_
          n21080:  INPUT "NUMBER OF UNITS  TO  SHIELDS" ; Z3r!
          n21090:  IF Z3r! < 0 THEN RETURN


          n21100:  IF E1r! + S3r! - Z3r! > 0 THEN GOTO L_21130_
          n21110:  print "SCOTT HERE-  'WE ONLY HAVE" ; Fktr ( E1r! + S3r! ) ; "UNITS LEFT.'"
          n21120:  RETURN


        L_21130_:  E1r! = E1r! + S3r! - Z3r!
          l21140:  S3r! = Z3r!
          l21150:  print "--ENERGY TRANSFER COMPLETE--"
          n21160:  print "(SHIP ENERGY=" ; Fktr ( E1r! ) ; "    SHIELD ENERGY=" ; Fktr ( S3r! ) ; ")"
          n21170:  J3r! = 1
          n21180:  T1r! = .1
          l21190:  P5r! = ( K3r! + 4 * C3r! ) / 48
          l21200:  IF P5r! < .1 THEN P5r! = .1
          n21210:  IF P5r! > rnd ( 1 ) THEN GOSUB SUB_1720_
          n21220:  IF A2r! <> 0 THEN RETURN


          n21230:  GOSUB SUB_5410_
          l21240:  RETURN


        L_21250_:  print "TRANSFER PANEL DAMAGED."
          l21260:  RETURN



      SUB_21270_:  REM - VISUAL
        L_21280_:  INPUT "WHICH DIRECTION" ; Zr!
          n21290:  print
          n21300:  J3r! = 0
          l21310:  IF Zr! < 0 THEN RETURN


          n21320:  IF Zr! <= 12 THEN GOTO L_21350_
          n21330:  print "DIRECTIONS ARE FROM 0  TO  12 ONLY"
          l21340:  GOTO L_21280_
        L_21350_:  T1r! = .05
          l21360:  Pr! = ( K3r! + 4 * C3r! ) / 48
          l21370:  IF Pr! < .05 THEN Pr! = .05
          n21380:  IF Pr! > rnd ( 1 ) THEN GOSUB SUB_1720_
          n21390:  IF A2r! <> 0 THEN RETURN


          n21400:  GOSUB SUB_5410_
          l21410:  J3r! = 1
          l21420:  IF A2r! <> 0 THEN RETURN


          n21430:  D5r! = int ( ( Zr! / 12 ) * 8 + 1.5 )
          l21440:  IF D5r! > 8 THEN D5r! = 1
          n21450:  FOR Ir! = 1 TO 5
          l21460:      FOR Jr! = 1 TO 5
          l21470:          V_s$ ( Ir! , Jr! ) = " "
          l21480:      NEXT Jr!
          l21490:  NEXT Ir!
          l21500:  Nr! = 0
          n21510:  V_s$ ( 3 , 3 ) = left$ ( S5s$ , 1 )
          n21520:  ON D5r! GOTO L_21530_ , L_21660_ , L_21780_ , L_21910_ , L_22030_ , L_22160_ , L_22280_ , L_22410_
        L_21530_:  Ir! = S6r! - 2
          l21540:  Jr! = S7r! - 2
          l21550:  V_s$ ( 1 , 1 ) = Q$
          l21560:  IF ( Jr! > 0 ) AND ( Ir! > 0 ) THEN V_s$ ( 1 , 1 ) = Q_s$ ( Ir! , Jr! )
          n21570:  Ir! = S6r! - 1
          l21580:  Jr! = S7r! - 1
          l21590:  V_s$ ( 2 , 2 ) = Q$
          l21600:  IF ( Ir! > 0 ) AND ( Jr! > 0 ) THEN V_s$ ( 2 , 2 ) = Q_s$ ( Ir! , Jr! )
          n21610:  Nr! = Nr! + 1
          l21620:  IF Nr! = 3 THEN GOTO L_22540_
          n21630:  Ir! = S6r! - 2
          l21640:  V_s$ ( 1 , 2 ) = Q$
          l21650:  IF ( Ir! > 0 ) AND ( Jr! > 0 ) THEN V_s$ ( 1 , 2 ) = Q_s$ ( Ir! , Jr! )
        L_21660_:  Ir! = S6r! - 2
          l21670:  V_s$ ( 1 , 3 ) = Q$
          l21680:  IF Ir! > 0 THEN V_s$ ( 1 , 3 ) = Q_s$ ( Ir! , S7r! )
          n21690:  Ir! = S6r! - 1
          l21700:  V_s$ ( 2 , 3 ) = Q$
          l21710:  IF Ir! > 0 THEN V_s$ ( 2 , 3 ) = Q_s$ ( Ir! , S7r! )
          n21720:  Nr! = Nr! + 1
          l21730:  IF Nr! = 3 THEN GOTO L_22540_
          n21740:  Ir! = S6r! - 2
          l21750:  Jr! = S7r! + 1
          l21760:  V_s$ ( 1 , 4 ) = Q$
          l21770:  IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN V_s$ ( 1 , 4 ) = Q_s$ ( Ir! , Jr! )
        L_21780_:  Ir! = S6r! - 2
          l21790:  Jr! = S7r! + 2
          l21800:  V_s$ ( 1 , 5 ) = Q$
          l21810:  IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN V_s$ ( 1 , 5 ) = Q_s$ ( Ir! , Jr! )
          n21820:  Ir! = S6r! - 1
          l21830:  Jr! = S7r! + 1
          l21840:  V_s$ ( 2 , 4 ) = Q$
          l21850:  IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN V_s$ ( 2 , 4 ) = Q_s$ ( Ir! , Jr! )
          n21860:  Nr! = Nr! + 1
          l21870:  IF Nr! = 3 THEN GOTO L_22540_
          n21880:  Jr! = S7r! + 2
          l21890:  V_s$ ( 2 , 5 ) = Q$
          l21900:  IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN V_s$ ( 2 , 5 ) = Q_s$ ( Ir! , Jr! )
        L_21910_:  Jr! = S7r! + 2
          l21920:  V_s$ ( 3 , 5 ) = Q$
          l21930:  IF Jr! < 11 THEN V_s$ ( 3 , 5 ) = Q_s$ ( S6r! , Jr! )
          n21940:  Jr! = S7r! + 1
          l21950:  V_s$ ( 3 , 4 ) = Q$
          l21960:  IF Jr! < 11 THEN V_s$ ( 3 , 4 ) = Q_s$ ( S6r! , Jr! )
          n21970:  Nr! = Nr! + 1
          l21980:  IF Nr! = 3 THEN GOTO L_22540_
          n21990:  Ir! = S6r! + 1
          l22000:  Jr! = S7r! + 2
          l22010:  V_s$ ( 4 , 5 ) = Q$
          l22020:  IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN V_s$ ( 4 , 5 ) = Q_s$ ( Ir! , Jr! )
        L_22030_:  Ir! = S6r! + 2
          l22040:  Jr! = S7r! + 2
          l22050:  V_s$ ( 5 , 5 ) = Q$
          l22060:  IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN V_s$ ( 5 , 5 ) = Q_s$ ( Ir! , Jr! )
          n22070:  Ir! = S6r! + 1
          l22080:  Jr! = S7r! + 1
          l22090:  V_s$ ( 4 , 4 ) = Q$
          l22100:  IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN V_s$ ( 4 , 4 ) = Q_s$ ( Ir! , Jr! )
          n22110:  Nr! = Nr! + 1
          l22120:  IF Nr! = 3 THEN GOTO L_22540_
          n22130:  Ir! = S6r! + 2
          l22140:  V_s$ ( 5 , 4 ) = Q$
          l22150:  IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN V_s$ ( 5 , 4 ) = Q_s$ ( Ir! , Jr! )
        L_22160_:  Ir! = S6r! + 2
          l22170:  V_s$ ( 5 , 3 ) = Q$
          l22180:  IF Ir! < 11 THEN V_s$ ( 5 , 3 ) = Q_s$ ( Ir! , S7r! )
          n22190:  Ir! = S6r! + 1
          l22200:  V_s$ ( 4 , 3 ) = Q$
          l22210:  IF Ir! < 11 THEN V_s$ ( 4 , 3 ) = Q_s$ ( Ir! , S7r! )
          n22220:  Nr! = Nr! + 1
          l22230:  IF Nr! = 3 THEN GOTO L_22540_
          n22240:  Ir! = S6r! + 2
          l22250:  Jr! = S7r! - 1
          l22260:  V_s$ ( 5 , 2 ) = Q$
          l22270:  IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN V_s$ ( 5 , 2 ) = Q_s$ ( Ir! , Jr! )
        L_22280_:  Ir! = S6r! + 2
          l22290:  Jr! = S7r! - 2
          l22300:  V_s$ ( 5 , 1 ) = Q$
          l22310:  IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN V_s$ ( 5 , 1 ) = Q_s$ ( Ir! , Jr! )
          n22320:  Ir! = S6r! + 1
          l22330:  Jr! = S7r! - 1
          l22340:  V_s$ ( 4 , 2 ) = Q$
          l22350:  IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN V_s$ ( 4 , 2 ) = Q_s$ ( Ir! , Jr! )
          n22360:  Nr! = Nr! + 1
          l22370:  IF Nr! = 3 THEN GOTO L_22540_
          n22380:  Jr! = S7r! - 2
          l22390:  V_s$ ( 4 , 1 ) = Q$
          l22400:  IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN V_s$ ( 4 , 1 ) = Q_s$ ( Ir! , Jr! )
        L_22410_:  Jr! = S7r! - 2
          l22420:  V_s$ ( 3 , 1 ) = Q$
          l22430:  IF Jr! > 0 THEN V_s$ ( 3 , 1 ) = Q_s$ ( S6r! , Jr! )
          n22440:  Jr! = S7r! - 1
          l22450:  V_s$ ( 3 , 2 ) = Q$
          l22460:  IF Jr! > 0 THEN V_s$ ( 3 , 2 ) = Q_s$ ( S6r! , Jr! )
          n22470:  Nr! = Nr! + 1
          l22480:  IF Nr! = 3 THEN GOTO L_22540_
          n22490:  Ir! = S6r! - 1
          l22500:  Jr! = S7r! - 2
          l22510:  V_s$ ( 2 , 1 ) = Q$
          l22520:  IF ( Ir! > 0 ) AND ( Jr! > 0 ) THEN V_s$ ( 2 , 1 ) = Q_s$ ( Ir! , Jr! )
          n22530:  GOTO L_21530_
        L_22540_:  FOR Ir! = 1 TO 5
          n22550:      IF ( V_s$ ( Ir! , 1 ) = " " ) AND ( V_s$ ( Ir! , 3 ) = " " ) AND ( V_s$ ( Ir! , 5 ) = " " ) THEN GOTO L_22610_
          n22560:      print "  " ;
          n22570:      FOR Jr! = 1 TO 5
          l22580:          print V_s$ ( Ir! , Jr! ) ; " " ;
          l22590:      NEXT Jr!
          l22600:      print
        L_22610_:  NEXT Ir!
          l22620:  RETURN



      SUB_22630_:  REM - WAIT
          n22640:  J3r! = 0
          l22650:  INPUT "HOW MANY STARDATES" ; Z5r!
          n22660:  IF ( Z5r! < R5r! ) AND ( K3r! = 0 ) THEN GOTO L_22690_
          n22670:  INPUT "ARE YOU SURE" ; Bs$
          l22680:  IF left$ ( Bs$ , 1 ) <> "Y" THEN RETURN


        L_22690_:  R6r! = 1
        L_22700_:  IF Z5r! <= 0 THEN R6r! = 0
          n22710:  IF R6r! = 0 THEN RETURN


          n22720:  T1r! = Z5r!
          l22730:  Z6r! = Z5r!
          n22740:  IF K3r! = 0 THEN GOTO L_22780_
          n22750:  T1r! = 1 + rnd ( 1 )
          l22760:  IF Z5r! < T1r! THEN T1r! = Z5r!
          n22770:  Z6r! = T1r!
        L_22780_:  IF T1r! < Z5r! THEN GOSUB SUB_1720_
          n22790:  IF A2r! <> 0 THEN RETURN


          n22800:  GOSUB SUB_5410_
          l22810:  J3r! = 1
          l22820:  IF A2r! <> 0 THEN RETURN


          n22830:  Z5r! = Z5r! - Z6r!
          l22840:  GOTO L_22700_

      SUB_22850_:  REM  : WARP
          n22860:  J3r! = 0
          l22870:  IF D4_r! ( 6 ) <> 0 THEN GOTO L_23690_
          n22880:  INPUT "ENTER COURSE AND DISTANCE" ; D2r! , D1r!
          n22890:  IF D2r! < 0 THEN RETURN


          n22900:  Pr! = ( D1r! + .05 ) * W1r! * W1r! * W1r! * ( S4r! + 1 )
          l22910:  IF Pr! < E1r! THEN GOTO L_23080_
          n22920:  J3r! = 0
          l22930:  print
          l22940:  print "ENGINEERING  TO  BRIDGE--"
          n22950:  IF ( S4r! = 0 ) OR ( .5 * Pr! > E1r! ) THEN GOTO L_22990_
          n22960:  print "  WE HAVEN'T THE ENERGY  TO  GO THAT FAR WITH" ;
          n22970:  print " THE SHIELDS UP."
          l22980:  RETURN


        L_22990_:  Wr! = int ( ( E1r! / ( D1r! + .05 ) ) ^ .333333 )
          l23000:  IF Wr! <= 0 THEN GOTO L_23060_
          n23010:  print "  WE HAVEN'T THE ENERGY.  BUT WE COULD DO IT AT WARP" ; Wr!
          n23020:  IF S4r! <> 0 THEN GOTO L_23040_
          n23030:  RETURN


        L_23040_:  print "  if  YOU'LL LOWER THE SHIELDS."
          l23050:  RETURN


        L_23060_:  print "  WE CAN'T DO IT, CAPTAIN.  WE HAVEN'T GOT THE ENERGY."
          n23070:  RETURN


        L_23080_:  T1r! = 10 * D1r! / W2r!
          l23090:  IF T1r! < .8 * R5r! THEN GOSUB SUB_23190_
          n23100:  print
          l23110:  print "MR. SPOCK - 'CAPTAIN, I COMPUTE THAT SUCH A TRIP"
          n23120:  print " WILL REQUIRE APPROXIMATELY" ; Fktr ( 100 * T1r! / R5r! ) ;
          n23130:  print "PERCENT"
          l23140:  print "   OF OUR REMAINING TIME.  ARE YOU SURE " ;
          n23150:  INPUT "THIS IS WISE" ; Bs$
          l23160:  IF left$ ( Bs$ , 1 ) = "Y" THEN GOSUB SUB_23190_
          n23170:  J3r! = 0
          l23180:  RETURN



      SUB_23190_:  Q4r! = 0
          l23200:  Wr! = 0
          l23210:  IF W1r! <= 6 THEN GOTO L_23510_
          n23220:  Pr! = D1r! * ( 6 - W1r! ) ^ 2 / 66.66666
          l23230:  IF Pr! > rnd ( 1 ) THEN Q4r! = 1
          n23240:  IF Q4r! <> 0 THEN D1r! = rnd ( 1 ) * D1r!
          n23250:  Wr! = 0
          l23260:  IF W1r! < 10 THEN GOTO L_23280_
          n23270:  IF .25 * D1r! > rnd ( 1 ) THEN Wr! = 1
        L_23280_:  IF ( Q4r! = 0 ) AND ( Wr! = 0 ) THEN GOTO L_23510_
          n23290:  Ar! = ( 15 - D2r! ) * .5235998
          l23300:  X1r! = - sin ( Ar! )
          l23310:  X2r! = cos ( Ar! )
          n23320:  B8r! = abs ( X1r! )
          l23330:  IF abs ( X2r! ) > abs ( X1r! ) THEN B8r! = abs ( X2r! )
          n23340:  X1r! = X1r! / B8r!
          l23350:  Y1r! = Y1r! / B8r!
          l23360:  Nr! = int ( 10 * D1r! * B8r! + .5 )
          l23370:  Xr! = S6r!
          l23380:  Yr! = S7r!
          n23390:  IF Nr! = 0 THEN GOTO L_23510_
          n23400:  FOR Lr! = 1 TO Nr!
          n23410:      Xr! = Xr! + X1r!
          l23420:      Qr! = int ( Xr! + .5 )
          l23430:      IF ( Qr! < 1 ) OR ( Qr! > 10 ) THEN GOTO L_23510_
          n23440:      Yr! = Yr! + Y1r!
          l23450:      Rr! = int ( Yr! + .5 )
          l23460:      IF ( Rr! < 1 ) OR ( Rr! > 10 ) THEN GOTO L_23510_
          n23470:      IF Q_s$ ( Qr! , Rr! ) = "." THEN GOTO L_23500_
          n23480:      Q4r! = 0
          l23490:      Wr! = 0
        L_23500_:  NEXT Lr!
        L_23510_:  GOSUB SUB_9820_
          l23520:  IF A2r! <> 0 THEN RETURN


          n23530:  E1r! = E1r! - D1r! * W1r! * W1r! * W1r! * ( S4r! + 1 )
          l23540:  IF E1r! > 0 THEN GOTO L_23580_
          n23550:  F9r! = 4
          l23560:  GOSUB SUB_7120_
          l23570:  RETURN


        L_23580_:  T1r! = 10 * D1r! / W2r!
          l23590:  IF Wr! <> 0 THEN GOSUB SUB_20520_
          n23600:  IF Q4r! = 0 THEN GOTO L_23670_
          n23610:  print
          l23620:  print "ENGINEERING  TO  BRIDGE--"
          l23630:  print "   SCOTT HERE-  " ;
          n23640:  print "'WE'VE JUST BLOWN THE WARP ENGINES."
          n23650:  print "   WE'LL HAVE  TO  SHUT 'ER DOWN HERE, CAPTAIN.'"
          n23660:  D4_r! ( 6 ) = D5r! * ( 3 * rnd ( 1 ) + 1 )
        L_23670_:  J3r! = 1
          l23680:  RETURN


        L_23690_:  print "WARP ENGINES DAMAGED."
          l23700:  RETURN



      SUB_23710_:  REM - ABANDON
          n23720:  ON sgn ( D4_r! ( 10 ) ) + 2 GOTO L_23730_ , L_23770_ , L_23750_
        L_23730_:  print "YE FAERIE QUEENE HAS NO SHUTTLE CRAFT."
          l23740:  RETURN


        L_23750_:  print "SHUTTLE CRAFT DAMAGED."
          l23760:  RETURN


        L_23770_:  print
          l23780:  print "***ABANDON SHIP!  ABANDON SHIP!"
          n23790:  print "***ALL HANDS ABANDON SHIP!"
          l23800:  print
          n23810:  print "YOU AND THE BRIDGE CREW ESCAPE IN THE GALILEO."
          n23820:  print "THE REMAINDER OF THE CREW BEAMS DOWN"
          n23830:  print " TO  THE NEAREST HABITABLE PLANET."
          l23840:  IF R3r! <> 0 THEN GOTO L_23880_
          n23850:  F9r! = 9
          l23860:  GOSUB SUB_7120_
          l23870:  RETURN


        L_23880_:  print
          l23890:  print "YOU ARE CAPTURED BY KLINGONS AND RELEASED  TO "
          n23900:  print "THE FEDERATION IN A PRISONER-OF-WAR EXCHANGE."
          n23910:  print "STARFLEET PUTS YOU IN COMMAND OF ANOTHER SHIP,"
          n23920:  print "THE FAERIE QUEENE WHICH IS ANTIQUATED, BUT"
          n23930:  print "STILL USABLE."
          l23940:  Nr! = int ( rnd ( 1 ) * R3r! + 1 )
          l23950:  Q1r! = B2_r! ( Nr! )
          l23960:  Q2r! = B3_r! ( Nr! )
        L_23970_:  S6r! = 5
          l23980:  S7r! = 5
          l23990:  GOSUB SUB_12110_
          l24000:  Q_s$ ( S6r! , S7r! ) = "."
          n24010:  FOR Lr! = 1 TO 3
          l24020:      S6r! = int ( 3 * rnd ( 1 ) - 1 + B6r! )
          n24030:      IF ( S6r! < 1 ) OR ( S7r! > 10 ) THEN GOTO L_24070_
          n24040:      S7r! = int ( 3 * rnd ( 1 ) - 1 + B7 )
          l24050:      IF ( S7r! < 1 ) OR ( S7r! > 10 ) THEN GOTO L_24070_
          n24060:      IF Q_s$ ( S6r! , S7r! ) = "." THEN GOTO L_24090_
        L_24070_:  NEXT Lr!
          l24080:  GOTO L_23970_
        L_24090_:  S5s$ = "FAERIE QUEENE"
          l24100:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          l24110:  C5s$ = "DOCKED"
          n24120:  FOR Lr! = 1 TO 12
          l24130:      D4_r! ( Lr! ) = 0
          l24140:  NEXT
          l24150:  D4_r! ( 10 ) = - 1
          l24160:  E1r! = 3000
          l24170:  I7r! = E1r!
          n24180:  S3r! = 1500
          l24190:  I8 = S3r!
          l24200:  T4r! = 6
          l24210:  I9 = T4r!
          l24220:  L1r! = 3
          l24230:  J1 = L1r!
          l24240:  S4r! = 0
          l24250:  W1r! = 5
          l24260:  W2r! = 25
          n24270:  RETURN



      SUB_24280_:  REM - DESTRUCT
          n24290:  IF D4_r! ( 11 ) = 0 THEN GOTO L_24320_
          n24300:  print "COMPUTER DAMAGED - CANNOT EXECUTE DESTRUCT SEQUENCE"
          n24310:  RETURN


        L_24320_:  print
          l24330:  print "    ---WORKING---"
          n24340:  print "IDENTIFICATION-POSITIVE"
          n24350:  print "SELF-DESTRUCT-SEQUENCE-ACTIVATED"
          l24360:  Jr! = 3
          n24370:  FOR Ir! = 10 TO 6 STEP - 1
          l24380:      print spc ( Jr! ) ; Ir!
          l24390:      GOSUB SUB_24730_
          l24400:      Jr! = Jr! + 3
          l24410:  NEXT
          n24420:  print "ENTER-YOUR-MISSION-PASSWORD- TO -CONTINUE"
          n24430:  print "SELF-DESTRUCT-SEQUENCE-OTHERWISE-DESTRUCT"
          n24440:  print "SEQUENCE-WILL-BE-ABORTED"
          n24450:  INPUT Bs$
          l24460:  IF Bs$ <> Xs$ THEN GOTO L_24690_
          n24470:  print "PASSWORD-ACCEPTED"
          l24480:  Jr! = 10
          n24490:  FOR Ir! = 5 TO 1 STEP - 1
          l24500:      print spc ( Jr! ) ; Ir!
          l24510:      GOSUB SUB_24730_
          l24520:      Jr! = Jr! + 3
          l24530:  NEXT
          n24540:  print
          l24550:  print "*****ENTROPY OF " ; S5s$ ; " MAXIMIZED*****"
          n24560:  print
          l24570:  IF K3r! = 0 THEN GOTO L_24660_
          n24580:  Wr! = 20 * E1r!
          l24590:  FOR Lr! = 1 TO K3r!
          l24600:      IF K6_r! ( Lr! ) * K7_r! ( Lr! ) > Wr! THEN GOTO L_24650_
          n24610:      A5r! = K4_r! ( Lr! )
          l24620:      A6r! = K5_r! ( Lr! )
          l24630:      T2s$ = Q_s$ ( A5r! , A6r! )
          l24640:      GOSUB SUB_4710_
        L_24650_:  NEXT Lr!
        L_24660_:  F9r! = 10
          l24670:  GOSUB SUB_7120_
          l24680:  RETURN


        L_24690_:  print "PASSWORD-REJECTED"
          n24700:  print "CONTINUITY-EFFECTED"
          l24710:  print
          l24720:  RETURN



      SUB_24730_:  Kr! = 12345
          l24740:  FOR Mr! = 1 TO 90
          l24750:      Kr! = Kr! + 1
          l24760:  NEXT Mr!
          l24770:  RETURN



      SUB_24780_:  REM - STATUS
          n24790:  FOR Ir! = 1 TO 10
          l24800:  NEXT Ir!
          l24810:  GOTO L_20150_
          l24820:  RETURN


        L_24830_:  END
