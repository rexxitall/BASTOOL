' BASTOOL .01 (c) Dipl.-Ing. Thomas Ludewig 2007
' using at your own risk- no warrenty
' CURRENT DIR:/root/Desktop/FREEBASIC_TOOLS
' PROCESS    :/root/Desktop/FREEBASIC_TOOLS/converted/bigstartrek.bas
CLS
COLOR 10 'an old Program should live on a green monochrome screen ;)
'DYNAMIC
'Lines read: 1628
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
             n10:  REM  modified for Chipmunk Basic  96-feb-13  rhn
             n20:  REM  From: whirata@pixi.com (Wayne R Hirata) Newsgroups: comp.lang.basic.misc
             n30:  REM  Subject: Re: Old 1976 Star Trek in BASIC (no graphics)
             n40:  REM  Date: Sun, 17 Sep 1995 08:11:44 GMT
             n50:  REM
             n60:  REM   *** SUPER STAR TREK ***
             n70:  REM    INTELLEC MDS VERSION
             n80:  REM  WRITTEN IN BASIC BY RON WILLIAMS
             n90:  REM    INTEL CORP. - 5/15/76
            n100:  REM  ADAPTED FROM A FORTRAN VERSION WRITTEN
            n110:  REM    FOR THE CDC 6600 IN 1974.
            n120:  REM
            n130:  REDIM G1_s$ ( 16 ) , V_s$ ( 5 , 5 ) , C_s$ ( 20 ) , G_r! ( 8 , 8 ) , D_s$ ( 12 ) , Q_s$ ( 10 , 10 ) , D4_r! ( 12 ) , D9_r! ( 106 )
            n140:  REDIM S2_r! ( 8 , 8 ) , T_s$ ( 10 ) , S_s$ ( 10 ) , C2_s$ ( 10 ) , C5_r! ( 10 ) , G1 ( 10 ) , F1_r! ( 10 ) , K4_r! ( 10 ) , K5_r! ( 10 )
            n150:  REDIM K6_r! ( 10 ) , K7_r! ( 10 ) , K8_r! ( 10 ) , S7_s$ ( 10 ) , C1_r! ( 10 ) , C2_r! ( 10 ) , B2_r! ( 10 ) , B3_r! ( 10 )
            l160:  Q$ = "?"
            n170:  DATA "S.R. SENSORS" , "L.R. SENSORS" , "PHASERS" , "PHOTON TUBES" , "LIFE SUPPORT"
            n180:  DATA "WARP ENGINES" , "IMPULSE ENGINES" , "SHIELDS" , "SUBSPACE RADIO"
            n190:  DATA "SHUTTLE CRAFT" , "COMPUTER" , "TRANSFER PANEL" , "ABANDON" , "CHART" , "COMPUTER"
            n200:  DATA "DAMAGES" , "DESTRUCT" , "DOCK" , "IDLE" , "IMPULSE" , "LRSCAN" , "NAVIGATE" , "PHASERS" , "QUIT"
            n210:  DATA "SHIELDS" , "SOS" , "SRSCAN" , "STATUS" , "TORPEDO" , "TRANSFER" , "VISUAL" , "WARP" , "SHORT"
            n220:  DATA "MEDIUM" , "LONG" , "BEGINNER" , "NOVICE" , "SENIOR" , "EXPERT" , "COURSE" , "WCOST" , "ICOST"
            n230:  DATA "PEFFECT" , "SCORE" , "END" , "ANTARES" , "SIRIUS" , "RIGEL" , "MERAK" , "PROCYON" , "CAPELLA"
            n240:  DATA "VEGA" , "DENEB" , "CANOPUS" , "ALDEBARAN" , "ALTAIR" , "REGULUS" , "BELLATRIX" , "ARCTURUS"
            n250:  DATA "POLLUX" , "SPICA" , 10.5 , 12 , 1.5 , 9 , 0 , 3 , 7.5 , 6 , 4.5
            n260:  FUNCTION Fkta ( Xr! ) : Fkta = int ( 8 * rnd ( Xr! ) ) + 1 : END FUNCTION
            l270:  FUNCTION Fktb ( Xr! ) : Fktb = int ( 10 * rnd ( Xr! ) ) + 1 : END FUNCTION
            n280:  'WARNING: Something may wrong with the code structure indent was negative
                   FUNCTION Fktd ( Xr! ) : Fktd = Xr! / 60 : END FUNCTION
            n290:  FUNCTION Fktr ( Xr! ) : Fktr = int ( Xr! * 10 + .5 ) / 10 : END FUNCTION
            l300:  FUNCTION Fkts ( Xr! ) : Fkts = int ( Xr! * 100 + .5 ) / 100 : END FUNCTION
            n310:  'WARNING: Something may wrong with the code structure indent was negative
                   GOSUB SUB_34890_
            n320:  FOR Ir! = 1 TO 12
            l330:      read D_s$ ( Ir! )
            l340:  NEXT
            l350:  FOR Ir! = 1 TO 20
            l360:      read C_s$ ( Ir! )
            l370:  NEXT
            n380:  FOR Ir! = 1 TO 3
            l390:      read T_s$ ( Ir! )
            l400:  NEXT
            l410:  FOR Ir! = 1 TO 4
            l420:      read S_s$ ( Ir! )
            l430:  NEXT
            l440:  FOR Ir! = 1 TO 6
            n450:      read C2_s$ ( Ir! )
            l460:  NEXT
            l470:  FOR Ir! = 1 TO 16
            l480:      read G1_s$ ( Ir! )
            l490:  NEXT
            l500:  FOR Ir! = 1 TO 9
            l510:      read C5_r! ( Ir! )
            l520:  NEXT
          L_530_:  REM  CALL SETUP
            n540:  GOSUB SUB_24200_
            l550:  S7_s$ ( 1 ) = ""
            l560:  S7_s$ ( 2 ) = " "
            l570:  S7_s$ ( 3 ) = " "
            l580:  S7_s$ ( 4 ) = ""
          L_590_:  IF A2r! <> 0 THEN
            l600:      GOTO L_2230_
            l610:  END IF
          L_620_:  J4r! = 0
            l630:  T1r! = 0
            l640:  print
            l650:  INPUT "COMMAND " ; BT_As$
            l660:  IF len ( BT_As$ ) > 1 THEN
            l670:      GOTO L_710_
            l680:  END IF
            n690:  print "USE AT LEAST 2 LETTERS, PLEASE."
            l700:  GOTO L_620_
          L_710_:  FOR Ir! = 1 TO 20
            n720:      IF BT_As$ = left$ ( C_s$ ( Ir! ) , len ( BT_As$ ) ) THEN
            l730:          GOTO L_860_
            l740:      END IF
            n750:  NEXT
            n760:  INPUT "ILLEGAL COMMAND - DO YOU NEED A LIST " ; Bs$
            n770:  IF left$ ( Bs$ , 1 ) = "N" THEN
            l780:      GOTO L_590_
            l790:  END IF
            n800:  print
            l810:  FOR Ir! = 1 TO 20 STEP 4
            n820:      print C_s$ ( Ir! ) ; tab ( 12 ) ; C_s$ ( Ir! + 1 ) ; tab ( 22 ) ; C_s$ ( Ir! + 2 ) ; tab ( 32 ) ; C_s$ ( Ir! + 3 )
            n830:  NEXT
            l840:  print
            l850:  GOTO L_590_
          L_860_:  IF Ir! < 11 THEN
            l870:      ON Ir! GOTO L_920_ , L_950_ , L_980_ , L_1010_ , L_1040_ , L_1070_ , L_1100_ , L_1230_ , L_1290_ , L_1320_
            l880:  END IF
            n890:  ON Ir! - 10 GOTO L_1380_ , L_1450_ , L_1490_ , L_1600_ , L_1630_ , L_1660_ , L_1700_ , L_1760_ , L_1880_ , L_2000_
            n900:  print "ERROR AT 170 - SHOULD NOT BE HERE"
            n910:  STOP
          L_920_:  REM  - ABANDON
            n930:  GOSUB SUB_33590_
            n940:  GOTO L_590_
          L_950_:  REM  - CHART
            n960:  GOSUB SUB_4420_
            n970:  GOTO L_590_
          L_980_:  REM  - COMPUTER
            n990:  GOSUB SUB_5360_
           n1000:  GOTO L_590_
         L_1010_:  REM  - DAMAGES
           n1020:  GOSUB SUB_7240_
           n1030:  GOTO L_590_
         L_1040_:  REM  - DESTRUCT
           n1050:  GOSUB SUB_34240_
           l1060:  GOTO L_590_
         L_1070_:  REM  - DOCK
           n1080:  GOSUB SUB_7030_
           n1090:  GOTO L_590_
         L_1100_:  REM  - IDLE
           n1110:  GOSUB SUB_31870_
           n1120:  IF J3r! = 0 THEN
           l1130:      GOTO L_590_
           l1140:  END IF
           n1150:  IF A2r! <> 0 THEN
           l1160:      GOTO L_2230_
           l1170:  END IF
           n1180:  IF G_r! ( Q1r! , Q2r! ) = 1000 THEN
           l1190:      GOTO L_2160_
           l1200:  END IF
           n1210:  GOSUB SUB_2320_
           n1220:  GOTO L_590_
         L_1230_:  REM  - IMPULSE
           n1240:  GOSUB SUB_12660_
           n1250:  IF J3r! = 0 THEN
           l1260:      GOTO L_590_
           l1270:  END IF
           n1280:  GOTO L_2030_
         L_1290_:  REM  - LRSCAN
           n1300:  GOSUB SUB_13180_
           n1310:  GOTO L_590_
         L_1320_:  REM  - NAVIGATE
           n1330:  GOSUB SUB_32270_
           n1340:  IF J3r! = 0 THEN
           l1350:      GOTO L_590_
           l1360:  END IF
           n1370:  GOTO L_2030_
         L_1380_:  REM  - PHASERS
           n1390:  GOSUB SUB_19740_
           n1400:  IF J3r! = 0 THEN
           l1410:      GOTO L_590_
           l1420:  END IF
           n1430:  GOSUB SUB_2320_
           n1440:  GOTO L_590_
         L_1450_:  REM  - QUIT
           n1460:  GOTO L_2230_
         L_1470_:  print "TO O BAD...WE HATE TO LOSE GOOD ASTRONAUTS!"
           n1480:  GOTO L_34870_
         L_1490_:  REM  - SHIELDS
           n1500:  GOSUB SUB_26160_
           n1510:  IF J3r! = 0 THEN
           l1520:      GOTO L_590_
           l1530:  END IF
           n1540:  IF A2r! <> 0 THEN
           l1550:      GOTO L_2230_
           l1560:  END IF
           n1570:  GOSUB SUB_2320_
           n1580:  S9r! = 0
           n1590:  GOTO L_590_
         L_1600_:  REM  - SOS
           n1610:  GOSUB SUB_11230_
           n1620:  GOTO L_590_
         L_1630_:  REM  - SRSCAN
           n1640:  GOSUB SUB_28130_
           n1650:  GOTO L_590_
         L_1660_:  REM  - STATUS
           n1670:  print
           n1680:  GOSUB SUB_34820_
           l1690:  GOTO L_590_
         L_1700_:  REM  - TORPEDOS
           n1710:  GOSUB SUB_20620_
           n1720:  IF J3r! = 0 THEN
           l1730:      GOTO L_590_
           l1740:  END IF
           n1750:  GOTO L_2030_
         L_1760_:  REM  - TRANSFER
           n1770:  GOSUB SUB_29370_
           n1780:  IF J3r! = 0 THEN
           l1790:      GOTO L_590_
           l1800:  END IF
           n1810:  IF A2r! <> 0 THEN
           l1820:      GOTO L_2230_
           l1830:  END IF
           n1840:  IF G_r! ( Q1r! , Q2r! ) <> 1000 THEN
           l1850:      GOTO L_590_
           l1860:  END IF
           n1870:  GOTO L_2160_
         L_1880_:  REM  - VISUAL
           n1890:  GOSUB SUB_29710_
           n1900:  IF J3r! = 0 THEN
           l1910:      GOTO L_590_
           l1920:  END IF
           n1930:  IF A2r! <> 0 THEN
           l1940:      GOTO L_2230_
           l1950:  END IF
           n1960:  IF G_r! ( Q1r! , Q2r! ) <> 1000 THEN
           l1970:      GOTO L_590_
           l1980:  END IF
           n1990:  GOTO L_2160_
         L_2000_:  REM  - WARP
           n2010:  GOSUB SUB_25780_
           n2020:  GOTO L_590_
         L_2030_:  REM  - AFTERMOVINGSTARSHIP
           n2040:  IF A2r! <> 0 THEN
           l2050:      GOTO L_2230_
           l2060:  END IF
           n2070:  IF T1r! <> 0 THEN
           l2080:      GOSUB SUB_7430_
           l2090:  END IF
           n2100:  IF A2r! <> 0 THEN
           l2110:      GOTO L_2230_
           l2120:  END IF
         L_2130_:  IF G_r! ( Q1r! , Q2r! ) < 1000 THEN
           l2140:      GOTO L_2210_
           l2150:  END IF
         L_2160_:  GOSUB SUB_3780_
           n2170:  IF A2r! <> 0 THEN
           l2180:      GOTO L_2230_
           l2190:  END IF
           n2200:  GOTO L_2130_
         L_2210_:  GOSUB SUB_2320_
           n2220:  GOTO L_590_
         L_2230_:  REM  - WE '13'
           n2240:  print
           l2250:  print
           l2260:  INPUT "WOULD YOU LIKE TO TRY AGAIN " ; BT_As$
           n2270:  IF left$ ( BT_As$ , 1 ) = "Y" THEN
           l2280:      GOTO L_530_
           l2290:  END IF
           n2300:  GOTO L_1470_
           n2310:  REM  - BEGINSUBROUTINES

       SUB_2320_:  REM  - ATTACK
           n2330:  IF ( C3r! <> 0 ) AND ( J4r! = 0 ) THEN
           l2340:      GOSUB SUB_15420_
           l2350:  END IF
           n2360:  IF K3r! = 0 THEN
           l2370:      RETURN
           l2380:  END IF
           n2390:  IF A2r! <> 0 THEN
           l2400:      RETURN
           l2410:  END IF
           n2420:  P2r! = 1 / I8
           n2430:  J5r! = 0
           n2440:  print
           n2450:  IF C5s$ = "DOCKED" THEN
           l2460:      GOTO L_3710_
           l2470:  END IF
           n2480:  H2r! = 0
           l2490:  H3r! = 0
           l2500:  C6r! = 1
           n2510:  IF S9r! = 1 THEN
           l2520:      C6r! = .5 + .5 * rnd ( 1 )
           l2530:  END IF
           n2540:  A3r! = 0
           n2550:  FOR Lr! = 1 TO K3r!
           n2560:      IF K6_r! ( Lr! ) < 0 THEN
           l2570:          GOTO L_3310_
           l2580:      END IF
           n2590:      A3r! = 1
           n2600:      D6r! = .8 + .05 * rnd ( 1 )
           n2610:      H4r! = K6_r! ( Lr! ) * D6r! ^ K8_r! ( Lr! )
           n2620:      IF ( S4r! = 0 ) AND ( S9r! = 0 ) THEN
           l2630:          GOTO L_2780_
           l2640:      END IF
           n2650:      P3r! = .1
           l2660:      IF P2r! * S3r! > P3r! THEN
           l2670:          P3r! = P2r! * S3r!
           l2680:      END IF
           n2690:      H5r! = P3r! * C6r! * H4r! + 1
           n2700:      IF H5r! > S3r! THEN
           l2710:          H5r! = S3r!
           l2720:      END IF
           n2730:      S3r! = S3r! - H5r!
           n2740:      H4r! = H4r! - H5r!
           n2750:      IF ( P3r! > .1 ) AND ( H4r! < .005 * E1r! ) THEN
           l2760:          GOTO L_3310_
           l2770:      END IF
         L_2780_:      J5r! = 1
           n2790:      print Fktr ( H4r! ) ; "UNIT HIT ON THE " ; S5s$ ; " FROM " ;
           n2800:      J6r! = K4_r! ( Lr! )
           l2810:      J7 = K5_r! ( Lr! )
           n2820:      IF Q_s$ ( J6r! , J7 ) = "K" THEN
           l2830:          print "KLINGON AT " ;
           l2840:      END IF
           n2850:      IF Q_s$ ( J6r! , J7 ) = "C" THEN
           l2860:          print "COMMANDER AT " ;
           l2870:      END IF
           n2880:      print J6r! ; "-" ; J7
           n2890:      IF H4r! > H2r! THEN
           l2900:          H2r! = H4r!
           l2910:      END IF
           n2920:      H3r! = H3r! + H4r!
           n2930:      IF H4r! < ( 275 - 25 * S8r! ) * ( 1 + .5 * rnd ( 1 ) ) THEN
           l2940:          GOTO L_3300_
           l2950:      END IF
           n2960:      N4r! = 1 + int ( H4r! / ( 500 + 100 * rnd ( 1 ) ) )
           n2970:      print "***CRITICAL HIT--" ;
           n2980:      K9r! = 1
           n2990:      FOR W4r! = 1 TO N4r!
           n3000:          J9r! = int ( 12 * rnd ( 1 ) ) + 1
           n3010:          C5_r! ( W4r! ) = J9r!
           n3020:          E3r! = ( H4r! * D5r! ) / ( N4r! * ( 75 + 25 * rnd ( 1 ) ) )
           n3030:          IF J9r! = 6 THEN
           l3040:              E3r! = E3r! / 3
           l3050:          END IF
           n3060:          D4_r! ( J9r! ) = D4_r! ( J9r! ) + E3r!
           n3070:          IF W4r! = 1 THEN
           l3080:              GOTO L_3200_
           l3090:          END IF
           n3100:          FOR Vr! = 1 TO W4r!
           n3110:              IF J9r! = C5_r! ( Vr! - 1 ) THEN
           l3120:                  GOTO L_3210_
           l3130:              END IF
           n3140:          NEXT Vr!
           n3150:          K9r! = K9r! + 1
           n3160:          IF K9r! = 3 THEN
           l3170:              print
           l3180:          END IF
           n3190:          print " AND " ;
         L_3200_:          print D_s$ ( J9r! ) ;
         L_3210_:      NEXT W4r!
           n3220:      print " DAMAGED."
           n3230:      IF D4_r! ( 8 ) = 0 THEN
           l3240:          GOTO L_3300_
           l3250:      END IF
           n3260:      IF S4r! <> 0 THEN
           l3270:          print "*** SHIELDS KNOCKED DOWN."
           l3280:      END IF
           n3290:      S4r! = 0
         L_3300_:      E1r! = E1r! - H4r!
         L_3310_:  NEXT Lr!
           n3320:  IF A3r! = 0 THEN
           l3330:      RETURN
           l3340:  END IF
           n3350:  IF E1r! <= 0 THEN
           l3360:      GOTO L_3680_
           l3370:  END IF
           n3380:  P4r! = 100 * P2r! * S3r! + .5
           n3390:  IF J5r! <> 0 THEN
           l3400:      GOTO L_3440_
           l3410:  END IF
           n3420:  print "KLINGONS ATTACK--SHIELD STRENGTH REDUCED TO " ;
           n3430:  GOTO L_3540_
         L_3440_:  print "ENERGY LEFT : " ; Fkts ( E1r! ) ; "  SHIELDS " ;
           n3450:  IF S4r! <> 0 THEN
           l3460:      print "UP," ;
           l3470:  END IF
           n3480:  IF ( S4r! = 0 ) AND ( D4_r! ( 8 ) = 0 ) THEN
           l3490:      print "DOWN, " ;
           l3500:  END IF
           n3510:  IF D4_r! ( 8 ) > 0 THEN
           l3520:      print "DAMAGED, " ;
           l3530:  END IF
         L_3540_:  print int ( P4r! ) ; "%"
           n3550:  IF ( H2r! < 200 ) AND ( H3r! < 500 ) THEN
           l3560:      GOTO L_3730_
           l3570:  END IF
           n3580:  J8r! = int ( H3r! * rnd ( 1 ) * .015 )
           n3590:  IF J8r! < 2 THEN
           l3600:      GOTO L_3730_
           l3610:  END IF
           n3620:  print
           n3630:  print "MCCOY - 'SICKBAY TO BRIDGE. WE SUFFERED " ;
           n3640:  print J8r! ; "CASUALTIES"
           n3650:  print "     IN THAT LAST ATTACK'"
           n3660:  C4r! = C4r! + J8r!
           n3670:  GOTO L_3730_
         L_3680_:  F9r! = 5
           n3690:  GOSUB SUB_9820_
           n3700:  RETURN


         L_3710_:  print "*** KLINGONS ATTACK-- STARBASE SHIELDS PROTECT " ;
           n3720:  print "THE " ; S5s$
         L_3730_:  FOR W4r! = 1 TO K3r!
           n3740:      K8_r! ( W4r! ) = K7_r! ( W4r! )
           n3750:  NEXT W4r!
           n3760:  GOSUB SUB_27830_
           n3770:  RETURN



       SUB_3780_:  REM  - AUTO VER
           n3790:  print
           n3800:  IF J4r! = 0 THEN
           l3810:      GOTO L_3860_
           l3820:  END IF
           n3830:  print "*** RED ALERT! RED ALERT!"
           n3840:  print "***THE " ; S5s$ ; " HAS STOPPED IN A QUADRANT " ;
           n3850:  print "CONTAINING A SUPERNOVA."
         L_3860_:  print "*** EMERGENCY AUTO -OVERRIDE ATTEMPTS TO HURL " ;
           n3870:  print S5s$
           n3880:  print "  SAFELY OUT OF THE QUADRANT."
           n3890:  S2_r! ( Q1r! , Q2r! ) = 1
           n3900:  GOSUB SUB_16970_
           n3910:  IF D4_r! ( 6 ) = 0 THEN
           l3920:      GOTO L_4170_
           l3930:  END IF
           n3940:  print
           n3950:  print "WARP ENGINES DAMAGED."
           n3960:  print
           n3970:  print "ATTEMPTING TO ENGAGE IMPULSE ENGINES..."
           n3980:  IF D4_r! ( 7 ) = 0 THEN
           l3990:      GOTO L_4050_
           l4000:  END IF
           n4010:  print "IMPULSE ENGINES DAMAGED."
           n4020:  F9r! = 8
           n4030:  GOSUB SUB_9820_
           n4040:  RETURN


         L_4050_:  P2r! = .75 * E1r!
           n4060:  D6r! = .004 * ( P2r! - 50 )
           n4070:  D7r! = 1.4142 + 1.2 * rnd ( 1 )
           n4080:  D1r! = D6r!
           n4090:  IF D6r! > D7r! THEN
           l4100:      D1r! = D7r!
           l4110:  END IF
           n4120:  T1r! = D1r! / .4
           n4130:  D2r! = 12 * rnd ( 1 )
           n4140:  J4r! = 0
           n4150:  GOSUB SUB_13040_
           n4160:  GOTO L_4300_
         L_4170_:  W1r! = 6 + 2 * rnd ( 1 )
           n4180:  W2r! = W1r! * W1r!
           n4190:  P2r! = .75 * E1r!
           n4200:  D6r! = P2r! / ( W1r! * W1r! * W1r! * ( S4r! + 1 ) )
           n4210:  D7r! = 1.4142 + 2 * rnd ( 1 )
           n4220:  D1r! = D6r!
           n4230:  IF D6r! > D7r! THEN
           l4240:      D1r! = D7r!
           l4250:  END IF
           n4260:  T1r! = 10 * D1r! / W2r!
           n4270:  D2r! = 12 * rnd ( 1 )
           n4280:  J4r! = 0
           n4290:  GOSUB SUB_32770_
         L_4300_:  IF J4r! <> 0 THEN
           l4310:      GOTO L_4360_
           l4320:  END IF
           n4330:  F9r! = 8
           n4340:  GOSUB SUB_9820_
           n4350:  RETURN


         L_4360_:  IF R1r! <> 0 THEN
           l4370:      RETURN
           l4380:  END IF
           n4390:  F9r! = 1
           n4400:  GOSUB SUB_9820_
           n4410:  RETURN



       SUB_4420_:  REM  - CHART
           n4430:  print
           l4440:  print "   1  2  3  4  5  6  7  8"
           n4450:  print "   --- --- --- --- --- --- --- ---"
           n4460:  FOR Ir! = 1 TO 8
           n4470:      print Ir! ; " " ;
           n4480:      FOR Jr! = 1 TO 8
           n4490:          ON sgn ( S2_r! ( Ir! , Jr! ) ) + 2 GOTO L_4520_ , L_4540_ , L_4560_
           n4500:          print "ERR AT 3065"
           l4510:          STOP
         L_4520_:          print " .1." ;
           n4530:          GOTO L_4670_
         L_4540_:          print " ..." ;
           n4550:          GOTO L_4670_
         L_4560_:          IF S2_r! ( Ir! , Jr! ) > 1000 THEN
           l4570:              GOTO L_4660_
           l4580:          END IF
           n4590:          IF G_r! ( Ir! , Jr! ) < 1000 THEN
           l4600:              print S7_s$ ( len ( str$ ( G_r! ( Ir! , Jr! ) ) ) ) ; str$ ( G_r! ( Ir! , Jr! ) ) ;
           l4610:          END IF
           n4620:          IF G_r! ( Ir! , Jr! ) = 1000 THEN
           l4630:              print " ***" ;
           l4640:          END IF
           n4650:          GOTO L_4670_
         L_4660_:          print S2_r! ( Ir! , Jr! ) - 1000 ;
         L_4670_:      NEXT Jr!
           n4680:      print
           n4690:  NEXT Ir!
           l4700:  GOSUB SUB_17870_
           n4710:  print
           n4720:  print "THE " ; S5s$ ; " IS CURRENTLY IN " ; G2s$ ; " (" ; Q1r! ; "-" ; Q2r! ; ")"
           n4730:  RETURN



       SUB_4740_:  REM  - CHOOSE
           n4750:  FOR Ir! = 1 TO 10
           l4760:      print
           l4770:  NEXT
           l4780:  FOR Ir! = 1 TO 41
           l4790:      print "*" ;
           l4800:  NEXT
           l4810:  print
           n4820:  print "**" ; tab ( 39 ) ; "**"
           n4830:  print "** WELCOME TO THE WORLD OF STAR TREK **"
           n4840:  print "**" ; tab ( 39 ) ; "**"
           l4850:  FOR Ir! = 1 TO 41
           l4860:      print "*" ;
           l4870:  NEXT
           l4880:  print
           n4890:  print
           l4900:  print
           n4910:  S8r! = 0
           l4920:  L2r! = 0
           n4930:  print "HOW LONG A GAME WOULD YOU LIKE " ;
         L_4940_:  INPUT BT_As$
           n4950:  FOR Ir! = 1 TO 3
           n4960:      IF BT_As$ = left$ ( T_s$ ( Ir! ) , len ( BT_As$ ) ) THEN
           l4970:          GOTO L_5020_
           l4980:      END IF
           n4990:  NEXT Ir!
           n5000:  print "WOULD YOU LIKE A SHORT, MEDIUM OR LONG GAME " ;
           n5010:  GOTO L_4940_
         L_5020_:  L2r! = Ir!
         L_5030_:  print "ARE YOU A BEGINNER, NOVICE, SENIOR OR EXPERT PLAYER " ;
           n5040:  INPUT BT_As$
           n5050:  FOR Ir! = 1 TO 4
           n5060:      IF BT_As$ = left$ ( S_s$ ( Ir! ) , len ( BT_As$ ) ) THEN
           l5070:          GOTO L_5110_
           l5080:      END IF
           n5090:  NEXT Ir!
           n5100:  GOTO L_5030_
         L_5110_:  S8r! = Ir!
           n5120:  INPUT "ENTER YOUR MISSION PASSWORD... " ; Xs$
           n5130:  print
           n5140:  print "....SETTING UP THE GALAXY...."
           n5150:  Jr! = rnd ( 1 )
           n5160:  REM  - INITIALIZE
           n5170:  D5r! = .5 * S8r!
           n5180:  I2r! = int ( L2r! + 1 + rnd ( 1 ) * 3 )
           n5190:  IF I2r! > 5 THEN
           l5200:      I2r! = 5
           l5210:  END IF
           n5220:  R3r! = I2r!
           n5230:  I5r! = 7 * L2r!
           n5240:  R5r! = I5r!
           n5250:  R7r! = ( S8r! - 2 * rnd ( 1 ) + 1 ) * S8r! * .1 + .1
           n5260:  IF R7r! < .2 THEN
           l5270:      R7r! = R7r! + .1
           l5280:  END IF
           n5290:  I1r! = int ( 2 * R7r! * I5r! )
           n5300:  R1r! = I1r!
           n5310:  I4r! = int ( S8r! + .0625 * I1r! * rnd ( 1 ) )
           n5320:  R2r! = I4r!
           n5330:  I3r! = ( I1r! + 4 * I4r! ) * I5r!
           n5340:  R4r! = I3r!
           n5350:  RETURN



       SUB_5360_:  REM  - COMPUTE
           n5370:  IF D4_r! ( 11 ) = 0 THEN
           l5380:      GOTO L_5420_
           l5390:  END IF
           n5400:  print "LIBRARY COMPUTER DISABLED"
           n5410:  RETURN


         L_5420_:  print "----LIBRARY COMPUTER ACTIVE----"
         L_5430_:  INPUT "PROGRAM NAME " ; Bs$
           n5440:  FOR Ir! = 1 TO 6
           n5450:      IF Bs$ = left$ ( C2_s$ ( Ir! ) , len ( Bs$ ) ) THEN
           l5460:          GOTO L_5530_
           l5470:      END IF
           n5480:  NEXT
           n5490:  print "VALID PROGRAMS ARE : "
           n5500:  print " COURSE  WCOST  ICOST"
           n5510:  print " PEFFECT  SCORE  END"
           n5520:  GOTO L_5430_
         L_5530_:  ON Ir! GOTO L_5540_ , L_6110_ , L_6210_ , L_6310_ , L_6400_ , L_6430_
         L_5540_:  REM  - COURSE&DIRECTION
           n5550:  INPUT "ENTER QUADRANT AND SECTOR - " ; A3r! , A4r!
           n5560:  IF ( A3r! <> int ( A3r! ) ) OR ( A4r! <> int ( A4r! ) ) THEN
           l5570:      GOTO L_6440_
           l5580:  END IF
           n5590:  IF A3r! < 0 THEN
           l5600:      GOTO L_5430_
           l5610:  END IF
           n5620:  IF A3r! = 0 THEN
           l5630:      A3r! = 10 * Q1r! + Q2r!
           l5640:  END IF
           n5650:  A3r! = A3r! + .5
           n5660:  Kr! = int ( A3r! / 10 )
           n5670:  IF ( Kr! < 1 ) OR ( Kr! > 8 ) THEN
           l5680:      GOTO L_6440_
           l5690:  END IF
           n5700:  C6_r! ( 1 ) = Kr!
           l5710:  Kr! = int ( A3r! - C6_r! ( 1 ) * 10 )
           n5720:  IF ( Kr! < 1 ) OR ( Kr! > 8 ) THEN
           l5730:      GOTO L_6440_
           l5740:  END IF
           n5750:  C6_r! ( 2 ) = Kr!
           l5760:  A4r! = A4r! + .5
           n5770:  Kr! = int ( A4r! / 100 )
           n5780:  IF ( Kr! < 1 ) OR ( Kr! > 10 ) THEN
           l5790:      GOTO L_6440_
           l5800:  END IF
           n5810:  C6_r! ( 1 ) = C6_r! ( 1 ) + ( Kr! - 1 ) / 10
           l5820:  Kr! = int ( A4r! - Kr! * 100 )
           n5830:  IF ( Kr! < 1 ) OR ( Kr! > 10 ) THEN
           l5840:      GOTO L_6440_
           l5850:  END IF
           n5860:  C6_r! ( 2 ) = C6_r! ( 2 ) + ( Kr! - 1 ) / 10
           n5870:  Xr! = Q1r! + ( ( S6r! - 1 ) / 10 ) - C6_r! ( 1 )
           l5880:  Yr! = Q2r! + ( ( S7r! - 1 ) / 10 ) - C6_r! ( 2 )
           n5890:  D1r! = 0
           l5900:  D2r! = 0
           l5910:  IF ( Xr! = 0 ) AND ( Yr! = 0 ) THEN
           l5920:      GOTO L_6080_
           l5930:  END IF
           n5940:  D1r! = sqr ( Xr! * Xr! + Yr! * Yr! )
           n5950:  IF Xr! < 0 THEN
           l5960:      Z7r! = sgn ( Yr! ) * ( 3.1416 - atn ( abs ( Yr! / Xr! ) ) )
           l5970:  END IF
           n5980:  IF Xr! = 0 THEN
           l5990:      Z7r! = sgn ( Yr! ) * 1.5708
           l6000:  END IF
           n6010:  IF Xr! > 0 THEN
           l6020:      Z7r! = atn ( Yr! / Xr! )
           l6030:  END IF
           n6040:  D2r! = 12 - Z7r! * 1.909859
           l6050:  IF D2r! > 12 THEN
           l6060:      D2r! = D2r! - 12
           l6070:  END IF
         L_6080_:  print "COURSE IS " ; Fkts ( D2r! ) ; " FOR A DISTANCE OF " ;
           n6090:  print Fkts ( D1r! ) ; "QUADRANTS."
           l6100:  GOTO L_5430_
         L_6110_:  REM  - COST FOR WARP DRIVE
           n6120:  INPUT "ENTER DISTANCE AND WARP FACTOR " ; D1r! , A4r!
           n6130:  IF ( D1r! < 0 ) THEN
           l6140:      GOTO L_5430_
           l6150:  END IF
           n6160:  C7r! = D1r! * A4r! * A4r! * A4r!
           n6170:  T1r! = ( 10 * D1r! ) / ( A4r! * A4r! )
           n6180:  print "IT WOULD TAKE " ; Fkts ( T1r! ) ; "STARDATES AND USE"
           n6190:  print Fktr ( C7r! ) ; "UNITS OF ENERGY (" ; Fktr ( C7r! + C7r! ) ; " IF SHIELDS ARE UP)"
           n6200:  GOTO L_5430_
         L_6210_:  REM  - COST FOR IMPULSE POWER
           n6220:  INPUT "ENTER DISTANCE... " ; D1r!
           n6230:  IF D1r! < 0 THEN
           l6240:      GOTO L_5430_
           l6250:  END IF
           n6260:  C7r! = 250 * D1r! + 50
           l6270:  T1r! = D1r! / .4
           n6280:  print "IT WOULD TAKE " ; Fktr ( T1r! ) ; "STARDATES AND USE"
           n6290:  print C7r! ; "UNITS OF ENERGY"
           n6300:  GOTO L_5430_
         L_6310_:  REM  - PHASER EFFECTIVENESS
           n6320:  INPUT "ENTER PHASER RANGE IN QUADRANTS " ; A3r!
           n6330:  IF A3r! < 0 THEN
           l6340:      GOTO L_5430_
           l6350:  END IF
           n6360:  A3r! = A3r! * 10
           l6370:  C7r! = ( .9 ^ A3r! ) * 100
           n6380:  print "PHASERS ARE " ; left$ ( str$ ( C7r! ) , 5 ) ; "% EFFECTIVE AT THAT RANGE"
           n6390:  GOTO L_5430_
         L_6400_:  REM  - SCORE
           n6410:  GOSUB SUB_23400_
           n6420:  GOTO L_5430_
         L_6430_:  RETURN


         L_6440_:  print " FORMAT IS MN,XXYY...WHERE MN IS THE QUADRANT"
           n6450:  print "AND XXYY IS THE SECTOR...E.G. 64,0307 REFERS"
           n6460:  print "TO QUADRANT 6-4, SECTOR 3-7."
           n6470:  print "NOTE :  SECTOR COORDINATES MUST BE 4 DIGITS."
           n6480:  GOTO L_5430_

       SUB_6490_:  REM  - DEADKL
           n6500:  IF T2s$ <> "C" THEN
           l6510:      GOTO L_6710_
           l6520:  END IF
           n6530:  C3r! = 0
           l6540:  print "***COMMANDER AT " ;
           n6550:  FOR Fr! = 1 TO R2r!
           n6560:      IF ( C1_r! ( Fr! ) = Q1r! ) AND ( C2_r! ( Fr! ) = Q2r! ) THEN
           l6570:          GOTO L_6600_
           l6580:      END IF
           n6590:  NEXT Fr!
         L_6600_:  C1_r! ( Fr! ) = C1_r! ( R2r! )
           l6610:  C2_r! ( Fr! ) = C2_r! ( R2r! )
           l6620:  C1_r! ( R2r! ) = 0
           l6630:  C2_r! ( R2r! ) = 0
           n6640:  R2r! = R2r! - 1
           l6650:  F1_r! ( 2 ) = 1E + 30
           n6660:  IF R2r! <> 0 THEN
           l6670:      F1_r! ( 2 ) = D0r! - ( I4r! / R2r! ) * log ( rnd ( 1 ) )
           l6680:  END IF
           n6690:  K2r! = K2r! + 1
           n6700:  GOTO L_6730_
         L_6710_:  print "***KLINGON AT " ;
           n6720:  K1r! = K1r! + 1
         L_6730_:  print A5r! ; "-" ; A6r! ; "DESTROYED."
           n6740:  Q_s$ ( A5r! , A6r! ) = "."
           l6750:  R1r! = R1r! - 1
           n6760:  IF R1r! = 0 THEN
           l6770:      RETURN
           l6780:  END IF
           n6790:  R5r! = R4r! / ( R1r! + 4 * R2r! )
           n6800:  G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 100
           n6810:  FOR Fr! = 1 TO K3r!
           n6820:      IF ( K4_r! ( Fr! ) = A5r! ) AND ( K5_r! ( Fr! ) = A6r! ) THEN
           l6830:          GOTO L_6860_
           l6840:      END IF
           n6850:  NEXT Fr!
         L_6860_:  K3r! = K3r! - 1
           n6870:  IF Fr! > K3r! THEN
           l6880:      GOTO L_6970_
           l6890:  END IF
           n6900:  FOR Gr! = Fr! TO K3r!
           n6910:      K4_r! ( Gr! ) = K4_r! ( Gr! + 1 )
           l6920:      K5_r! ( Gr! ) = K5_r! ( Gr! + 1 )
           l6930:      K6_r! ( Gr! ) = K6_r! ( Gr! + 1 )
           n6940:      K7_r! ( Gr! ) = K7_r! ( Gr! + 1 )
           l6950:      K8_r! ( Gr! ) = K7_r! ( Gr! )
           n6960:  NEXT Gr!
         L_6970_:  K4_r! ( K3r! + 1 ) = 0
           l6980:  K5_r! ( K3r! + 1 ) = 0
           l6990:  K7_r! ( K3r! + 1 ) = 0
           l7000:  K8_r! ( K3r! + 1 ) = 0
           l7010:  K6_r! ( K3r! + 1 ) = 0
           n7020:  RETURN



       SUB_7030_:  REM  - DOCK
           n7040:  IF C5s$ = "DOCKED" THEN
           l7050:      GOTO L_7220_
           l7060:  END IF
           n7070:  IF B6r! = 0 THEN
           l7080:      GOTO L_7130_
           l7090:  END IF
           n7100:  IF ( abs ( S6r! - B6r! ) <= 1 ) AND ( abs ( S7r! - B7 ) <= 1 ) THEN
           l7110:      GOTO L_7150_
           l7120:  END IF
         L_7130_:  print S5s$ ; " NOT ADJACENT TO A BASE."
           n7140:  RETURN


         L_7150_:  C5s$ = "DOCKED"
           n7160:  print "HELMSMAN SULU - 'DOCKING MANEUVER COMPLETED.'"
           n7170:  E1r! = I7r!
           l7180:  S3r! = I8
           l7190:  T4r! = I9
           l7200:  L1r! = J1
           n7210:  RETURN


         L_7220_:  print "MR. SULU - 'BUT CAPTAIN, WE'RE AL READ Y DOCKED!'"
           n7230:  RETURN



       SUB_7240_:  REM  - DREPORT
           n7250:  Jr! = 0
           n7260:  print
           n7270:  FOR Ir! = 1 TO 12
           n7280:      IF D4_r! ( Ir! ) <= 0 THEN
           l7290:          GOTO L_7380_
           l7300:      END IF
           n7310:      IF Jr! <> 0 THEN
           l7320:          GOTO L_7370_
           l7330:      END IF
           n7340:      print "   DEVICE " ; SPC$ ( 12 ) ; "-REPAIR TIMES-"
           n7350:      print SPC$ ( 21 ) ; "IN FLIGHT  DOCKED"
           n7360:      Jr! = 1
         L_7370_:      print " " ; D_s$ ( Ir! ) ; tab ( 23 ) ; Fkts ( D4_r! ( Ir! ) ) ; tab ( 33 ) ; Fkts ( D3 * D4_r! ( Ir! ) )
         L_7380_:  NEXT Ir!
           n7390:  IF Jr! = 0 THEN
           l7400:      print "MR. SPOCK - 'ALL DEVICES FUNCTIONAL, CAPTAIN'"
           l7410:  END IF
           n7420:  RETURN



       SUB_7430_:  REM  - EVENTS
         L_7440_:  Mr! = 0
           l7450:  D7r! = D0r! + T1r!
           n7460:  FOR Lr! = 1 TO 5
           n7470:      IF F1_r! ( Lr! ) > D7r! THEN
           l7480:          GOTO L_7520_
           l7490:      END IF
           n7500:      Mr! = Lr!
           l7510:      D7r! = F1_r! ( Lr! )
         L_7520_:  NEXT Lr!
           n7530:  X6r! = D7r! - D0r!
           l7540:  D0r! = D7r!
           n7550:  R4r! = R4r! - ( R1r! + 4 * R2r! ) * X6r!
           n7560:  R5r! = R4r! / ( R1r! + 4 * R2r! )
           n7570:  IF R5r! > 0 THEN
           l7580:      GOTO L_7630_
           l7590:  END IF
           n7600:  F9r! = 2
           n7610:  GOSUB SUB_9820_
           n7620:  RETURN


         L_7630_:  IF ( D4_r! ( 5 ) = 0 ) OR ( C5s$ = "DOCKED" ) THEN
           l7640:      GOTO L_7760_
           l7650:  END IF
           n7660:  IF ( L1r! >= X6r! ) OR ( D4_r! ( 5 ) <= L1r! ) THEN
           l7670:      GOTO L_7720_
           l7680:  END IF
           n7690:  F9r! = 3
           l7700:  GOSUB SUB_9820_
           n7710:  RETURN


         L_7720_:  L1r! = L1r! - X6r!
           n7730:  IF D4_r! ( 5 ) <= X6r! THEN
           l7740:      L1r! = J1
           l7750:  END IF
         L_7760_:  Rr! = X6r!
           n7770:  IF C5s$ = "DOCKED" THEN
           l7780:      Rr! = X6r! / D3
           l7790:  END IF
           n7800:  FOR Lr! = 1 TO 12
           n7810:      IF D4_r! ( Lr! ) <= 0 THEN
           l7820:          GOTO L_7930_
           l7830:      END IF
           n7840:      D4_r! ( Lr! ) = D4_r! ( Lr! ) - Rr!
           n7850:      IF D4_r! ( Lr! ) < 0 THEN
           l7860:          D4_r! ( Lr! ) = 0
           l7870:      END IF
           n7880:      IF D4_r! ( Lr! ) <> 0 THEN
           l7890:          GOTO L_7930_
           l7900:      END IF
           n7910:      print
           l7920:      print "DAMAGE CONTROL- '" ; D_s$ ( Lr! ) ; " NOW OPERATIONAL.'"
         L_7930_:  NEXT Lr!
           n7940:  IF Mr! = 0 THEN
           l7950:      RETURN
           l7960:  END IF
           n7970:  T1r! = T1r! - X6r!
           n7980:  ON Mr! GOTO L_7990_ , L_8080_ , L_8480_ , L_8800_ , L_9200_
         L_7990_:  REM  - SUPERNOVA
           n8000:  X2r! = 0
           l8010:  Y2 = 0
           l8020:  GOSUB SUB_26570_
           n8030:  F1_r! ( 1 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
           n8040:  IF G_r! ( Q1r! , Q2r! ) = 1000 THEN
           l8050:      RETURN
           l8060:  END IF
           n8070:  GOTO L_7440_
         L_8080_:  REM  - TRACTOR BEAM
           n8090:  IF R2r! = 0 THEN
           l8100:      GOTO L_8460_
           l8110:  END IF
           n8120:  IF C5s$ = "DOCKED" THEN
           l8130:      GOTO L_8440_
           l8140:  END IF
           n8150:  Ir! = int ( rnd ( 1 ) * R2r! ) + 1
           n8160:  Y6r! = ( C1_r! ( Ir! ) - Q1r! ) ^ 2 + ( C2_r! ( Ir! ) - Q2r! ) ^ 2
           n8170:  IF Y6r! = 0 THEN
           l8180:      GOTO L_8440_
           l8190:  END IF
           n8200:  Y6r! = sqr ( Y6r! )
           l8210:  T1r! = .17778 * Y6r!
           n8220:  print
           l8230:  print "***" ; S5s$ ; " CAUGHT IN LONG-RANGE TRACTOR BEAM--"
           n8240:  Q1r! = C1_r! ( Ir! )
           l8250:  Q2r! = C2_r! ( Ir! )
           n8260:  S6r! = Fktb ( 1 )
           l8270:  S7r! = Fktb ( 1 )
           n8280:  print "  PULLED TO QUADRANT " ; Q1r! ; "-" ; Q2r! ; ", SECTOR " ; S6r! ; "-" ; S7r!
           n8290:  IF R6r! <> 0 THEN
           l8300:      print "(REM AINDER OF IDLE PERIOD CANCELLED)"
           l8310:  END IF
           n8320:  R6r! = 0
           n8330:  IF S4r! <> 0 THEN
           l8340:      GOTO L_8430_
           l8350:  END IF
           n8360:  IF ( D4_r! ( 8 ) = 0 ) AND ( S3r! > 0 ) THEN
           l8370:      GOTO L_8410_
           l8380:  END IF
           n8390:  print "(SHIELDS NOT CURRENTLY USABLE.)"
           n8400:  GOTO L_8430_
         L_8410_:  GOSUB SUB_26240_
           n8420:  S9r! = 0
         L_8430_:  GOSUB SUB_16970_
         L_8440_:  F1_r! ( 2 ) = D0r! + T1r! - 1.5 * ( I5r! / R2r! ) * log ( rnd ( 1 ) )
           n8450:  GOTO L_7440_
         L_8460_:  F1_r! ( 2 ) = 1E + 30
           l8470:  GOTO L_7440_
         L_8480_:  D9_r! ( 1 ) = D0r!
           l8490:  D9_r! ( 2 ) = R1r!
           l8500:  D9_r! ( 3 ) = R2r!
           l8510:  D9_r! ( 4 ) = R3r!
           l8520:  D9_r! ( 5 ) = R4r!
           l8530:  D9_r! ( 6 ) = R5r!
           n8540:  D9_r! ( 7 ) = S1r!
           l8550:  D9_r! ( 8 ) = B1r!
           l8560:  D9_r! ( 9 ) = K1r!
           l8570:  D9_r! ( 10 ) = K2r!
           n8580:  FOR Ir! = 1 TO 8
           l8590:      FOR Jr! = 1 TO 8
           l8600:          D9_r! ( Ir! - 1 + 8 * ( Jr! - 1 ) + 11 ) = G_r! ( Ir! , Jr! )
           l8610:      NEXT Jr!
           l8620:  NEXT Ir!
           n8630:  FOR Ir! = 75 TO 84
           l8640:      D9_r! ( Ir! ) = C1_r! ( Ir! - 74 )
           l8650:  NEXT
           n8660:  FOR Ir! = 85 TO 94
           l8670:      D9_r! ( Ir! ) = C2_r! ( Ir! - 84 )
           l8680:  NEXT
           n8690:  FOR Ir! = 95 TO 99
           l8700:      D9_r! ( Ir! ) = B2_r! ( Ir! - 94 )
           l8710:  NEXT
           n8720:  FOR Ir! = 100 TO 104
           l8730:      D9_r! ( Ir! ) = B3_r! ( Ir! - 99 )
           l8740:  NEXT
           n8750:  D9_r! ( 105 ) = B4r!
           l8760:  D9_r! ( 106 ) = B5
           n8770:  S0r! = 1
           l8780:  F1_r! ( 3 ) = D0r! - .3 * I5r! * log ( rnd ( 1 ) )
           l8790:  GOTO L_7440_
         L_8800_:  REM  - STARBASE ATTACK
           n8810:  IF ( R2r! = 0 ) OR ( R3r! = 0 ) THEN
           l8820:      GOTO L_8940_
           l8830:  END IF
           n8840:  FOR Ir! = 1 TO R3r!
           l8850:      FOR Jr! = 1 TO R2r!
           l8860:          IF ( B2_r! ( Ir! ) = C1_r! ( Jr! ) ) AND ( B3_r! ( Ir! ) = C2_r! ( Jr! ) ) THEN
           l8870:              GOTO L_8970_
           l8880:          END IF
           n8890:      NEXT Jr!
           l8900:  NEXT Ir!
         L_8910_:  F1_r! ( 4 ) = D0r! + .5 + 3 * rnd ( 1 )
           n8920:  F1_r! ( 5 ) = 1E + 30
           l8930:  GOTO L_7440_
         L_8940_:  F1_r! ( 4 ) = 1E + 30
           l8950:  F1_r! ( 5 ) = 1E + 30
           l8960:  GOTO L_7440_
         L_8970_:  B4r! = B2_r! ( Ir! )
           l8980:  B5 = B3_r! ( Ir! )
           n8990:  IF ( B4r! = Q1r! ) AND ( B5 = Q2r! ) THEN
           l9000:      GOTO L_8910_
           l9010:  END IF
           n9020:  F1_r! ( 5 ) = D0r! + .5 + 3 * rnd ( 1 )
           n9030:  F1_r! ( 4 ) = F1_r! ( 5 ) - .3 * I5r! * log ( rnd ( 1 ) )
           n9040:  IF D4_r! ( 9 ) > 0 THEN
           l9050:      GOTO L_7440_
           l9060:  END IF
           n9070:  print
           n9080:  print "LT. UHURA- 'CAPTAIN, THE STARBASE IN " ; B4r! ; "-" ; B5
           n9090:  print " REPORTS THAT IT IS UNDER ATTACK AND CAN HOLD OUT"
           n9100:  print " ONLY UNTIL STARDATE " ; Fktr ( F1_r! ( 5 ) ) ; "'"
           n9110:  IF R6r! = 0 THEN
           l9120:      GOTO L_7440_
           l9130:  END IF
           n9140:  print
           n9150:  INPUT "MR. SPOCK- 'CAPTAIN, SHALL WE CANCEL THE IDLE PERIOD " ; Bs$
           n9160:  IF left$ ( Bs$ , 1 ) = "Y" THEN
           l9170:      R6r! = 0
           l9180:  END IF
           n9190:  GOTO L_7440_
         L_9200_:  REM  - STARBASE DESTROYED
           n9210:  F1_r! ( 5 ) = 1E + 30
           l9220:  IF ( R2r! = 0 ) OR ( R3r! = 0 ) THEN
           l9230:      GOTO L_7440_
           l9240:  END IF
           n9250:  Kr! = int ( G_r! ( B4r! , B5 ) / 100 )
           l9260:  IF G_r! ( B4r! , B5 ) - Kr! * 100 < 10 THEN
           l9270:      GOTO L_7440_
           l9280:  END IF
           n9290:  FOR Ir! = 1 TO R2r!
           l9300:      IF ( C1_r! ( Ir! ) = B4r! ) AND ( C2_r! ( Ir! ) = B5 ) THEN
           l9310:          GOTO L_9350_
           l9320:      END IF
           n9330:  NEXT
           l9340:  GOTO L_7440_
         L_9350_:  IF S2_r! ( B4r! , B5 ) = - 1 THEN
           l9360:      S2_r! ( B4r! , B5 ) = 0
           l9370:  END IF
           n9380:  IF S2_r! ( B4r! , B5 ) > 999 THEN
           l9390:      S2_r! ( B4r! , B5 ) = S2_r! ( B4r! , B5 ) - 10
           l9400:  END IF
           n9410:  IF ( B4r! <> Q1r! ) OR ( B5 <> Q2r! ) THEN
           l9420:      GOTO L_9620_
           l9430:  END IF
           n9440:  FOR Ir! = 1 TO K3r!
           l9450:      Kr! = K4_r! ( Ir! )
           l9460:      Lr! = K5_r! ( Ir! )
           n9470:      IF Q_s$ ( Kr! , Lr! ) = "C" THEN
           l9480:          GOTO L_9510_
           l9490:      END IF
           n9500:  NEXT
         L_9510_:  IF K6_r! ( Ir! ) < 25 + 50 * rnd ( 1 ) THEN
           l9520:      GOTO L_7440_
           l9530:  END IF
           n9540:  Q_s$ ( B6r! , B7 ) = "."
           l9550:  B6r! = 0
           l9560:  B7 = 0
           n9570:  GOSUB SUB_16880_
           n9580:  print
           l9590:  print "MR. SPOCK- 'CAPTAIN, I BELIEVE THE STARBASE HAS " ;
           n9600:  print " BEEN DESTROYED.'"
           n9610:  GOTO L_9690_
         L_9620_:  IF ( R3r! = 1 ) OR ( D4_r! ( 9 ) > 0 ) THEN
           l9630:      GOTO L_9690_
           l9640:  END IF
           n9650:  print
           n9660:  print "LT. UHURA- 'CAPTAIN, STARFLEET COMMAND REPORTS THAT"
           n9670:  print " THE STARBASE IN QUADRANT " ; B4r! ; "-" ; B5 ; "HAS BEEN"
           n9680:  print " DESTROYED BY A KLINGON COMMANDER.'"
         L_9690_:  G_r! ( B4r! , B5 ) = G_r! ( B4r! , B5 ) - 10
           n9700:  IF R3r! <= 1 THEN
           l9710:      GOTO L_9800_
           l9720:  END IF
           n9730:  FOR Ir! = 1 TO R3r!
           l9740:      IF ( B2_r! ( Ir! ) = B4r! ) AND ( B3_r! ( Ir! ) = B5 ) THEN
           l9750:          GOTO L_9780_
           l9760:      END IF
           n9770:  NEXT
         L_9780_:  B2_r! ( Ir! ) = B2_r! ( R3r! )
           l9790:  B3_r! ( Ir! ) = B3_r! ( R3r! )
         L_9800_:  R3r! = R3r! - 1
           n9810:  GOTO L_7440_

       SUB_9820_:  REM  - FINISH
           n9830:  A2r! = 1
           l9840:  print
           l9850:  print "IT IS STARDATE " ; Fktr ( D0r! )
           l9860:  print
           n9870:  IF F9r! <= 8 THEN
           l9880:      ON F9r! GOTO L_9910_ , L_10340_ , L_10500_ , L_10560_ , L_10590_ , L_10620_ , L_10640_ , L_10680_
           l9890:  END IF
           n9900:  ON F9r! - 8 GOTO L_10710_ , L_10770_ , L_10820_
         L_9910_:  REM  - THE GAME HAS BEEN WON
           n9920:  print "YOU HAVE DESTROYED THE KLINGON INVASION FLEET"
           n9930:  print
           n9940:  print "   ***THE FEDERATION IS SAVED***"
           l9950:  G1r! = 1
           n9960:  IF ( A1r! = 0 ) OR ( B1r! <> 0 ) THEN
           l9970:      GOTO L_10320_
           l9980:  END IF
           n9990:  IF left$ ( S5s$ , 1 ) <> "E" THEN
          l10000:      GOTO L_10320_
          l10010:  END IF
          n10020:  IF 3 * S1r! + 35 * N1r! + C4r! >= 100 THEN
          l10030:      GOTO L_10320_
          l10040:  END IF
          n10050:  IF D0r! - J2r! <= 6 THEN
          l10060:      GOTO L_10120_
          l10070:  END IF
          n10080:  R8r! = .1 * S8r! * ( S8r! + 1 ) + .1
          n10090:  IF ( K1r! + K2r! ) / ( D0r! - J2r! ) < R8r! THEN
          l10100:      GOTO L_10320_
          l10110:  END IF
        L_10120_:  print
          n10130:  print "IN FACT, YOU HAVE DONE SO WELL THAT STARFLEET COMMAND"
          n10140:  IF S8r! = 4 THEN
          l10150:      GOTO L_10290_
          l10160:  END IF
          n10170:  print "PROMOTES YOU ON E STEP  IN RANK, " ;
          n10180:  IF S8r! = 1 THEN
          l10190:      print "FROM BEGINNER TO NOVICE CLASS!"
          l10200:  END IF
          n10210:  IF S8r! = 2 THEN
          l10220:      print "FROM NOVICE TO SENIOR CLASS!"
          l10230:  END IF
          n10240:  IF S8r! = 3 THEN
          l10250:      print "FROM SENIOR TO EXPERT CLASS!"
          l10260:  END IF
          n10270:  print "  ***CONGRATULATIONS***"
          l10280:  GOTO L_10320_
        L_10290_:  print "PROMOTES YOU TO 'COMMODORE EMERITUS'."
          n10300:  print
          n10310:  print "NOW YOU CAN RETIRE AND WRITE YOUR OWN STAR TREK GAME!"
        L_10320_:  GOSUB SUB_23400_
          n10330:  RETURN


        L_10340_:  REM  - FED RESOURCES DEPLETED
          n10350:  print "YOUR TIME HAS RUN OUT, AND THE"
          n10360:  print "FEDERATION HAS BEEN CONQUERED."
          l10370:  print
          n10380:  print "YOUR STARSHIP IS NOW KLINGON PROPERY, AND YOU ARE PUT"
          n10390:  print "ON TRIAL AS A WAR CRIMINAL. ON THE BASIS OF YOUR RECORD,"
          n10400:  IF R1r! * 3 > I1r! THEN
          l10410:      GOTO L_10470_
          l10420:  END IF
          n10430:  print "YOU ARE FOUND GUILTY AND SENTENCED TO DEATH!"
          n10440:  A1r! = 0
          l10450:  GOSUB SUB_23400_
          l10460:  RETURN


        L_10470_:  print "YOU ARE ACQUITTED"
          l10480:  GOSUB SUB_23400_
          l10490:  RETURN


        L_10500_:  REM  - L.S. FAILURE
          n10510:  print "YOUR LIFE SUPPORT RESERVES HAVE RUN OUT, AND"
          n10520:  print "YOU WILL SOON DIE OF ASPHYXIATION"
        L_10530_:  print
          n10540:  print "YOUR STARSHIP IS A DERELICT IN SPACE."
          n10550:  GOTO L_10840_
        L_10560_:  REM  - ENERGY GONE
          n10570:  print "YOUR ENERGY SUPPLY IS EXHAUSTED."
          l10580:  GOTO L_10530_
        L_10590_:  REM  - BATTLE DEFEAT
          n10600:  print "THE " ; S5s$ ; " HAS BEEN DESTROYED IN BATTLE."
          n10610:  GOTO L_10840_
        L_10620_:  print "F9=6 INVALID"
          l10630:  RETURN


        L_10640_:  REM  - NOVA
          n10650:  print "YOUR STARSHIP HAS BEEN DESTROYED BY A NOVA."
          n10660:  print "NICE SHOT, YOU HOCKEY PUCK!"
          l10670:  GOTO L_10840_
        L_10680_:  REM  - SUPERNOVA
          n10690:  print "THE " ; S5s$ ; " HAS BEEN INCINERATED BY A SUPERNOVA."
          n10700:  GOTO L_10840_
        L_10710_:  REM  - ABANDON ( NO BASES )
          n10720:  print "YOU HAVE BEEN CAPTURED BY THE KLINGONS.  IF YOU STILL"
          n10730:  print "HAD A STARBASE TO BE RETURNED TO , YOU WOULD HAVE BEEN"
          n10740:  print "REPATRIATED AND GIVEN ANOTHER CHANCE. SINCE YOU HAVE"
          n10750:  print "NO STARBASES, YOU WILL BE MERCILESSLY TORTURED TO DEATH!"
          n10760:  GOTO L_10840_
        L_10770_:  REM  - SELF-DESTRUCT
          n10780:  print
          l10790:  print "THE " ; S5s$ ; " IS NOW AN EXPANDING CLOUD"
          n10800:  print "OF SUB-ATO MIC PARTICLES..."
          l10810:  GOTO L_10840_
        L_10820_:  REM  - NOT '18'
          n10830:  print "STARBASE WAS UNABLE TO RE-MATERIALIZE YOUR STARSHIP."
        L_10840_:  print
          n10850:  IF left$ ( S5s$ , 1 ) = "F" THEN
          l10860:      S5s$ = ""
          l10870:  END IF
          n10880:  IF left$ ( S5s$ , 1 ) = "E" THEN
          l10890:      S5s$ = "FAERIE QUEENE"
          l10900:  END IF
          n10910:  A1r! = 0
          n10920:  IF R1r! = 0 THEN
          l10930:      GOTO L_11150_
          l10940:  END IF
          n10950:  G3r! = R4r! / I3r!
          l10960:  B8r! = ( R1r! + 2 * R2r! ) / ( I1r! + 2 * I4r! )
          n10970:  A3r! = G3r! / B8r!
          n10980:  IF A3r! < 1 + .5 + rnd ( 1 ) THEN
          l10990:      GOTO L_11120_
          l11000:  END IF
          n11010:  print "AS A RESULT OF YOUR ACTIONS, A TREATY WITH THE KLINGON"
          n11020:  print "EMPIRE HAS BEEN SIGNED. THE TERMS OF THE TREATY ARE"
          n11030:  IF A3r! < 3 * rnd ( 1 ) THEN
          l11040:      GOTO L_11100_
          l11050:  END IF
          n11060:  print "FAVORABLE TO THE FEDERATION."
          l11070:  print
          n11080:  print "CONGRATULATIONS."
          l11090:  GOTO L_11130_
        L_11100_:  print "HIGHLY UNFAVORABLE TO THE FEDERATION."
          l11110:  GOTO L_11130_
        L_11120_:  print "THE FEDERATION WILL BE DESTROYED!"
        L_11130_:  GOSUB SUB_23400_
          l11140:  RETURN


        L_11150_:  print "SINCE YOU TO OK THE LAST KLINGON WITH YOU, YOU ARE"
          n11160:  print "A MARTYR AND A HERO. SOMEDAY MAYBE THEY'LL ERECT"
          n11170:  print "A STATUE IN YOUR MEMORY. REST IN PEACE AND TRY NOT"
          n11180:  print "TO THINK ABOUT PIGEONS!"
          l11190:  G1r! = 1
          l11200:  A1r! = 0
          n11210:  GOSUB SUB_23400_
          l11220:  RETURN



      SUB_11230_:  REM  - HELP
          n11240:  IF C5s$ <> "DOCKED" THEN
          l11250:      GOTO L_11290_
          l11260:  END IF
          n11270:  print "ENSIGN CHEKOV- 'BUT CAPTAIN, WE'RE AL READ Y DOCKED!'"
          n11280:  RETURN


        L_11290_:  IF D4_r! ( 9 ) = 0 THEN
          l11300:      GOTO L_11340_
          l11310:  END IF
          n11320:  print "SUBSPACE RADIO DAMAGED...CANNOT TRANSMIT."
          l11330:  RETURN


        L_11340_:  IF R3r! <> 0 THEN
          l11350:      GOTO L_11400_
          l11360:  END IF
          n11370:  print "LT. UHURA- 'CAPTAIN, I'M NOT GETTING ANY RESPONSE" ;
          n11380:  print " FROM STARBASE!'"
          l11390:  RETURN


        L_11400_:  N1r! = N1r! + 1
          l11410:  IF B6r! = 0 THEN
          l11420:      GOTO L_11450_
          l11430:  END IF
          n11440:  GOTO L_11570_
        L_11450_:  D1r! = 1E + 30
          n11460:  FOR Lr! = 1 TO R3r!
          l11470:      Xr! = 10 * sqr ( ( B2_r! ( Lr! ) - Q1r! ) ^ 2 + ( B3_r! ( Lr! ) - Q2r! ) ^ 2 )
          n11480:      IF Xr! > D1r! THEN
          l11490:          GOTO L_11530_
          l11500:      END IF
          n11510:      D1r! = Xr!
          l11520:      Kr! = Lr!
        L_11530_:  NEXT Lr!
          n11540:  Q1r! = B2_r! ( Kr! )
          l11550:  Q2r! = B3_r! ( Kr! )
          l11560:  GOSUB SUB_16970_
        L_11570_:  Q_s$ ( S6r! , S7r! ) = "."
          n11580:  print
          n11590:  print "STARBASE IN QUADRANT " ; Q1r! ; "-" ; Q2r! ; "RESPONDS --" ;
          n11600:  print " " ; S5s$ ; " DEMATERIALIZES."
          n11610:  P2r! = ( 1 - .98 ^ D1r! ) ^ .333333
          n11620:  FOR Lr! = 1 TO 3
          n11630:      IF Lr! = 1 THEN
          l11640:          print "1ST " ;
          l11650:      END IF
          n11660:      IF Lr! = 2 THEN
          l11670:          print "2ND " ;
          l11680:      END IF
          n11690:      IF Lr! = 3 THEN
          l11700:          print "3RD " ;
          l11710:      END IF
          n11720:      print "ATTEMPT TO RE-MATERIALIZE THE " ; S5s$ ; ". . . . ." ;
          n11730:      IF rnd ( 1 ) > P2r! THEN
          l11740:          GOTO L_11810_
          l11750:      END IF
          n11760:      print "FAILS."
          l11770:  NEXT Lr!
        L_11780_:  F9r! = 11
          l11790:  GOSUB SUB_9820_
          l11800:  RETURN


        L_11810_:  FOR Lr! = 1 TO 5
          l11820:      Ir! = B6r! + int ( 3 * rnd ( 1 ) ) - 1
          n11830:      IF ( Ir! < 1 ) OR ( Ir! > 10 ) THEN
          l11840:          GOTO L_11930_
          l11850:      END IF
          n11860:      Jr! = B7 + int ( 3 * rnd ( 1 ) ) - 1
          n11870:      IF ( Jr! < 1 ) OR ( Jr! > 10 ) THEN
          l11880:          GOTO L_11930_
          l11890:      END IF
          n11900:      IF Q_s$ ( Ir! , Jr! ) = "." THEN
          l11910:          GOTO L_11960_
          l11920:      END IF
        L_11930_:  NEXT Lr!
          l11940:  print "FAILS."
          l11950:  GOTO L_11780_
        L_11960_:  print "SUCCEEDS."
          l11970:  S6r! = Ir!
          l11980:  S7r! = Jr!
          l11990:  Q_s$ ( Ir! , Jr! ) = left$ ( S5s$ , 1 )
          n12000:  GOSUB SUB_7030_
          l12010:  print "LT. UHURA- 'CAPTAIN, WE MADE IT!'"
          l12020:  RETURN



      SUB_12030_:  REM  - HITEM
          n12040:  P4r! = 2
          l12050:  L5r! = K3r!
          l12060:  Nr! = 1
          n12070:  FOR Kr! = 1 TO L5r!
          n12080:      IF H3_r! ( Kr! ) = 0 THEN
          l12090:          GOTO L_12630_
          l12100:      END IF
          n12110:      D6r! = .9 + .01 * rnd ( 1 )
          l12120:      H2r! = H3_r! ( Kr! ) * D6r! ^ K7_r! ( Nr! )
          n12130:      P3r! = K6_r! ( Nr! )
          n12140:      Pr! = abs ( P3r! )
          l12150:      IF P4r! * H2r! < Pr! THEN
          l12160:          Pr! = P4r! * H2r!
          l12170:      END IF
          n12180:      K6_r! ( Nr! ) = P3r! - sgn ( P3r! ) * abs ( Pr! )
          n12190:      X8r! = K4_r! ( Nr! )
          l12200:      Y8 = K5_r! ( Nr! )
          n12210:      IF H2r! > 4.99 THEN
          l12220:          GOTO L_12260_
          l12230:      END IF
          n12240:      print "VERY SMALL HIT ON "
          l12250:      GOTO L_12270_
        L_12260_:      print Fktr ( H2r! ) ; "UNIT HIT ON " ;
        L_12270_:      Ms$ = Q_s$ ( X8r! , Y8 )
          n12280:      IF Ms$ = "K" THEN
          l12290:          print "KLINGON AT " ;
          l12300:      END IF
          n12310:      IF Ms$ = "C" THEN
          l12320:          print "COMMANDER AT " ;
          l12330:      END IF
          n12340:      print X8r! ; "-" ; Y8
          n12350:      IF K6_r! ( Nr! ) <> 0 THEN
          l12360:          GOTO L_12480_
          l12370:      END IF
          n12380:      A5r! = X8r!
          l12390:      A6r! = Y8
          l12400:      T2s$ = Q_s$ ( X8r! , Y8 )
          l12410:      GOSUB SUB_6490_
          n12420:      IF R1r! <> 0 THEN
          l12430:          GOTO L_12640_
          l12440:      END IF
          n12450:      F9r! = 1
          l12460:      GOSUB SUB_9820_
          l12470:      GOTO L_12640_
        L_12480_:      IF K6_r! ( Nr! ) < 0 THEN
          l12490:          GOTO L_12630_
          l12500:      END IF
          n12510:      IF rnd ( 1 ) < .9 THEN
          l12520:          GOTO L_12630_
          l12530:      END IF
          n12540:      IF K6_r! ( Nr! ) > ( .4 + .4 * rnd ( 1 ) ) * P3r! THEN
          l12550:          GOTO L_12630_
          l12560:      END IF
          n12570:      print
          n12580:      print "***MR. SPOCK - 'CAPTAIN, THE VESSEL AT SECTOR " ;
          n12590:      print X8r! ; "-" ; Y8
          n12600:      print "  HAS JUST LOST ITS FIREPOWER.'"
          n12610:      print
          n12620:      K6_r! ( Nr! ) = - K6_r! ( Nr! )
        L_12630_:      Nr! = Nr! + 1
        L_12640_:  NEXT Kr!
          n12650:  RETURN



      SUB_12660_:  REM  - IMPULSE
          n12670:  J3r! = 0
          n12680:  IF D4_r! ( 7 ) <> 0 THEN
          l12690:      GOTO L_13160_
          l12700:  END IF
          n12710:  IF E1r! <= 75 THEN
          l12720:      GOTO L_12820_
          l12730:  END IF
          n12740:  INPUT "ENTER COURSE AND DISTANCE " ; D2r! , D1r!
          n12750:  IF D2r! < 0 THEN
          l12760:      RETURN
          l12770:  END IF
          n12780:  P3r! = 50 + 250 * D1r!
          n12790:  IF P3r! < E1r! THEN
          l12800:      GOTO L_12940_
          l12810:  END IF
        L_12820_:  print
          n12830:  print "1ST OFFICER SPOCK- 'CAPTAIN, THE IMPULSE ENGINES"
          n12840:  print "REQUIRE 50 UNITS OF ENERGY TO ENGAGE, PLUS 250 UNITS"
          n12850:  print "PER " ;
          n12860:  IF E1r! > 75 THEN
          l12870:      GOTO L_12910_
          l12880:  END IF
          n12890:  print "QUADRANT. THEY ARE, THEREFORE, USELESS NOW.'"
          l12900:  RETURN


        L_12910_:  print "QUADRANT. WE CAN GO, THEREFORE, A MAXIMUM OF " ;
          n12920:  print Fktr ( .004 * ( E1r! - 50 ) - .05 ) ; "QUADRANTS.'"
          l12930:  RETURN


        L_12940_:  T1r! = D1r! / .4
          n12950:  IF T1r! < R5r! THEN
          l12960:      GOTO SUB_13040_
          l12970:  END IF
          n12980:  print "1ST OFFICER SPOCK- 'CAPTAIN, OUR SPEED UNDER IMPULSE"
          n12990:  print "POWER IS ONLY 4 SECTORS PER STARDATE. ARE YOU SURE"
          n13000:  INPUT "WE DARE SPEND THE TIME' " ; Bs$
          n13010:  IF left$ ( Bs$ , 1 ) <> "Y" THEN
          l13020:      RETURN
          l13030:  END IF

      SUB_13040_:  GOSUB SUB_13600_
          l13050:  J3r! = 1
          n13060:  IF A2r! <> 0 THEN
          l13070:      RETURN
          l13080:  END IF
          n13090:  E1r! = E1r! - P3r!
          n13100:  IF E1r! > 0 THEN
          l13110:      RETURN
          l13120:  END IF
          n13130:  F9r! = 4
          l13140:  GOSUB SUB_9820_
          l13150:  RETURN


        L_13160_:  print "IMPULSE ENGINES DAMAGED."
          l13170:  RETURN



      SUB_13180_:  REM  - LRSCAN
          n13190:  Ns$ = "    # "
          n13200:  print
          n13210:  IF D4_r! ( 2 ) <> 0 THEN
          l13220:      GOTO L_13580_
          l13230:  END IF
          n13240:  print "L.R. SCAN FOR QUADRANT " ; Q1r! ; "-" ; Q2r!
          l13250:  print
          n13260:  Ir! = Q1r! - 1
          l13270:  Jr! = Q1r! + 1
          l13280:  Kr! = Q2r! - 1
          l13290:  Lr! = Q2r! + 1
          n13300:  FOR Mr! = Ir! TO Jr!
          l13310:      FOR Nr! = Kr! TO Lr!
          n13320:          IF ( Mr! <= 0 ) OR ( Mr! > 8 ) THEN
          l13330:              GOTO L_13480_
          l13340:          END IF
          n13350:          IF ( Nr! <= 0 ) OR ( Nr! > 8 ) THEN
          l13360:              GOTO L_13480_
          l13370:          END IF
          n13380:          IF D4_r! ( 11 ) = 0 THEN
          l13390:              S2_r! ( Mr! , Nr! ) = 1
          l13400:          END IF
          n13410:          IF G_r! ( Mr! , Nr! ) >= 1000 THEN
          l13420:              print " ***" ;
          l13430:          END IF
          n13440:          IF G_r! ( Mr! , Nr! ) < 1000 THEN
          l13450:              print SPC$ ( 5 - len ( str$ ( G_r! ( Mr! , Nr! ) ) ) ) ; G_r! ( Mr! , Nr! ) ;
          l13460:          END IF
          n13470:          GOTO L_13490_
        L_13480_:          print Ns$ ;
        L_13490_:      NEXT Nr!
          n13500:      print
          n13510:  NEXT Mr!
          n13520:  IF D4_r! ( 11 ) = 0 THEN
          l13530:      RETURN
          l13540:  END IF
          n13550:  print
          n13560:  print "***WARNING*** - COMPUTER DISABLED - SCAN NOT RECORDED."
          n13570:  RETURN


        L_13580_:  print "LONG RANGE SENSORS DAMAGED."
          l13590:  RETURN



      SUB_13600_:  REM  - MOVE
          n13610:  A5r! = ( 15 - D2r! ) * .523599
          n13620:  D4r! = - sin ( A5r! )
          l13630:  D6r! = cos ( A5r! )
          n13640:  B8r! = abs ( D4r! )
          n13650:  IF abs ( D6r! ) > B8r! THEN
          l13660:      B8r! = abs ( D6r! )
          l13670:  END IF
          n13680:  D4r! = D4r! / B8r!
          l13690:  D6r! = D6r! / B8r!
          l13700:  T5r! = 0
          l13710:  T6r! = 0
          n13720:  IF D0r! + T1r! < F1_r! ( 2 ) THEN
          l13730:      GOTO L_13790_
          l13740:  END IF
          n13750:  T5r! = 1
          l13760:  C5s$ = "RED"
          l13770:  D1r! = D1r! * ( F1_r! ( 2 ) - D0r! ) / T1r! + .1
          n13780:  T1r! = F1_r! ( 2 ) - D0r! + .00001
        L_13790_:  Q_s$ ( S6r! , S7r! ) = "."
          l13800:  X7r! = S6r!
          l13810:  Y7 = S7r!
          l13820:  H9r! = int ( 10 * D1r! * B8r! + .5 )
          n13830:  IF H9r! = 0 THEN
          l13840:      GOTO L_14070_
          l13850:  END IF
          n13860:  FOR Lr! = 1 TO H9r!
          n13870:      X7r! = X7r! + D4r!
          l13880:      X1r! = int ( X7r! + .5 )
          l13890:      Y7 = Y7 + D6r!
          l13900:      Y1r! = int ( Y7 + .5 )
          n13910:      IF ( X1r! < 1 ) OR ( X1r! > 10 ) THEN
          l13920:          GOTO L_14540_
          l13930:      END IF
          n13940:      IF ( Y1r! < 1 ) OR ( Y1r! > 10 ) THEN
          l13950:          GOTO L_14540_
          l13960:      END IF
          n13970:      IF Q_s$ ( X1r! , Y1r! ) = "O" THEN
          l13980:          GOTO L_14040_
          l13990:      END IF
          n14000:      IF Q_s$ ( X1r! , Y1r! ) <> "." THEN
          l14010:          GOTO L_14210_
          l14020:      END IF
          n14030:  NEXT Lr!
        L_14040_:  D1r! = .1 * sqr ( ( S6r! - X1r! ) ^ 2 + ( S7r! - Y1r! ) ^ 2 )
          n14050:  S6r! = X1r!
          l14060:  S7r! = Y1r!
        L_14070_:  F4r! = S6r!
          l14080:  F5 = S7r!
          n14090:  IF Q_s$ ( X1r! , Y1r! ) <> "O" THEN
          l14100:      GOTO L_15270_
          l14110:  END IF
          n14120:  T2r! = Fkta ( 1 )
          l14130:  T3 = Fkta ( 1 )
          n14140:  Q1r! = Fkta ( 1 )
          l14150:  Q2r! = Fkta ( 1 )
          l14160:  S6r! = Fktb ( 1 )
          l14170:  S7r! = Fktb ( 1 )
          l14180:  print
          n14190:  print "*** SPACE PORTAL ENTERED ***"
          l14200:  GOTO L_15210_
        L_14210_:  T6r! = 1
          l14220:  Kr! = 50 * D1r! / T1r!
          l14230:  D1r! = .1 * sqr ( ( S6r! - X1r! ) ^ 2 + ( S7r! - Y1r! ) ^ 2 )
          n14240:  IF ( Q_s$ ( X1r! , Y1r! ) = "K" ) OR ( Q_s$ ( X1r! , Y1r! ) = "C" ) THEN
          l14250:      GOTO L_14480_
          l14260:  END IF
          n14270:  print
          l14280:  print S5s$ ; " BLOCKED BY " ;
          n14290:  IF Q_s$ ( X1r! , Y1r! ) = "*" THEN
          l14300:      print "STAR AT " ;
          l14310:  END IF
          n14320:  IF Q_s$ ( X1r! , Y1r! ) = "B" THEN
          l14330:      print "STARBASE AT " ;
          l14340:  END IF
          n14350:  print " SECTOR " ; X1r! ; "-" ; Y1r! ; "...."
          n14360:  print "EMERGENCY STOP REQUIRED " ; Fktr ( Kr! ) ; "UNITS OF ENERGY."
          n14370:  E1r! = E1r! - Kr!
          n14380:  S6r! = int ( X7r! - D4r! + .5 )
          l14390:  F4r! = S6r!
          l14400:  S7r! = int ( Y7 - D6r! + .5 )
          l14410:  F5 = S7r!
          n14420:  IF E1r! > 0 THEN
          l14430:      GOTO L_15270_
          l14440:  END IF
          n14450:  F9r! = 4
          l14460:  GOSUB SUB_9820_
          l14470:  RETURN


        L_14480_:  S6r! = X1r!
          l14490:  S7r! = Y1r!
          l14500:  GOSUB SUB_22950_
          l14510:  F4r! = S6r!
          l14520:  F5 = S7r!
          l14530:  GOTO L_15270_
        L_14540_:  IF K3r! = 0 THEN
          l14550:      GOTO L_14670_
          l14560:  END IF
          n14570:  FOR Lr! = 1 TO K3r!
          n14580:      F3r! = sqr ( ( X1r! - K4_r! ( Lr! ) ) ^ 2 + ( Y1r! - K5_r! ( Lr! ) ) ^ 2 )
          n14590:      K8_r! ( Lr! ) = .5 * ( F3r! + K7_r! ( Lr! ) )
          l14600:  NEXT Lr!
          n14610:  IF G_r! ( Q1r! , Q2r! ) <> 1000 THEN
          l14620:      GOSUB SUB_2320_
          l14630:  END IF
          n14640:  IF A2r! <> 0 THEN
          l14650:      RETURN
          l14660:  END IF
        L_14670_:  X7r! = 10 * ( Q1r! - 1 ) + S6r!
          l14680:  Y7 = 10 * ( Q2r! - 1 ) + S7r!
          n14690:  X1r! = int ( X7r! + 10 * D1r! * B8r! * D4r! + .5 )
          n14700:  Y1r! = int ( Y7 + 10 * D1r! * B8r! * D6r! + .5 )
          l14710:  L6r! = 0
        L_14720_:  L5r! = 0
          n14730:  IF X1r! > 0 THEN
          l14740:      GOTO L_14780_
          l14750:  END IF
          n14760:  X1r! = - X1r! + 1
          l14770:  L5r! = 1
        L_14780_:  IF Y1r! > 0 THEN
          l14790:      GOTO L_14830_
          l14800:  END IF
          n14810:  Y1r! = - Y1r! + 1
          l14820:  L5r! = 1
        L_14830_:  IF X1r! <= 80 THEN
          l14840:      GOTO L_14880_
          l14850:  END IF
          n14860:  X1r! = 161 - X1r!
          l14870:  L5r! = 1
        L_14880_:  IF Y1r! <= 80 THEN
          l14890:      GOTO L_14930_
          l14900:  END IF
          n14910:  Y1r! = 161 - Y1r!
          l14920:  L5r! = 1
        L_14930_:  IF L5r! = 0 THEN
          l14940:      GOTO L_14980_
          l14950:  END IF
          n14960:  L6r! = 1
          l14970:  GOTO L_14720_
        L_14980_:  IF L6r! = 0 THEN
          l14990:      GOTO L_15140_
          l15000:  END IF
          n15010:  print
          l15020:  print "*** MESSAGE FROM STARFLEET COMMAND.....STARDATE " ;
          n15030:  print Fktr ( D0r! )
          l15040:  print
          l15050:  print "'PERMISSION TO CROSS GALACTIC " ;
          n15060:  print "PERIMETER IS HEREBY DENIED.'"
          n15070:  print "    'SHUT DOWN ENGINES IMMMEDIATELY!'"
          n15080:  print
          n15090:  print "SCOTT HERE - 'ENGINES SHUT DOWN AT " ;
          n15100:  Z1r! = int ( ( X1r! + 9 ) / 10 )
          l15110:  Z2 = int ( ( Y1r! + 9 ) / 10 )
          n15120:  print "QUADRANT " ; Z1r! ; "-" ; Z2 ; ", " ;
          n15130:  print "SECTOR " ; X1r! - 10 * ( Z1r! - 1 ) ; "-" ; Y1r! - 10 * ( Z2 - 1 ) ; "'"
        L_15140_:  IF T5r! <> 0 THEN
          l15150:      RETURN
          l15160:  END IF
          n15170:  Q1r! = int ( ( X1r! + 9 ) / 10 )
          l15180:  Q2r! = int ( ( Y1r! + 9 ) / 10 )
          n15190:  S6r! = X1r! - 10 * ( Q1r! - 1 )
          l15200:  S7r! = Y1r! - 10 * ( Q2r! - 1 )
        L_15210_:  GOSUB SUB_17870_
          n15220:  print
          l15230:  print "ENTERING THE " ; G2s$ ; " QUADRANT (" ; Q1r! ; "-" ; Q2r! ; ")"
          n15240:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          l15250:  GOSUB SUB_16970_
          l15260:  RETURN


        L_15270_:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          n15280:  IF L6r! = 1 THEN
          l15290:      RETURN
          l15300:  END IF
          n15310:  IF K3r! = 0 THEN
          l15320:      GOTO L_15400_
          l15330:  END IF
          n15340:  FOR Lr! = 1 TO K3r!
          n15350:      F3r! = sqr ( ( F4r! - K4_r! ( Lr! ) ) ^ 2 + ( F5 - K5_r! ( Lr! ) ) ^ 2 )
          n15360:      K8_r! ( Lr! ) = .5 * ( K7_r! ( Lr! ) + F3r! )
          n15370:      K7_r! ( Lr! ) = F3r!
          n15380:  NEXT Lr!
          n15390:  GOSUB SUB_27830_
        L_15400_:  GOSUB SUB_16880_
          l15410:  RETURN



      SUB_15420_:  REM  - MOVECOM
          n15430:  Ar! = 1
          l15440:  Br! = 1
          n15450:  FOR Kr! = 1 TO K3r!
          n15460:      Cr! = K4_r! ( Kr! )
          l15470:      Dr! = K5_r! ( Kr! )
          n15480:      IF Q_s$ ( Cr! , Dr! ) = "C" THEN
          l15490:          GOTO L_15520_
          l15500:      END IF
          n15510:  NEXT Kr!
        L_15520_:  Nr! = 0
          l15530:  Fr! = K6_r! ( Kr! ) + 100 * K3r!
          n15540:  IF Fr! > 1000 THEN
          l15550:      Nr! = int ( rnd ( 1 ) * K7_r! ( Kr! ) + 1 )
          l15560:  END IF
          n15570:  IF ( ( C5s$ = "DOCKED" ) AND ( ( B4r! <> Q1r! ) OR ( B5 <> Q2r! ) ) ) THEN
          l15580:      Nr! = - S8r!
          l15590:  END IF
          n15600:  IF Nr! = 0 THEN
          l15610:      Nr! = int ( ( ( Fr! + 200 * rnd ( 1 ) ) / 150 ) - 5 )
          l15620:  END IF
          n15630:  IF Nr! = 0 THEN
          l15640:      RETURN
          l15650:  END IF
          n15660:  IF ( Nr! > 0 ) AND ( K7_r! ( Kr! ) < 1.5 ) THEN
          l15670:      RETURN
          l15680:  END IF
          n15690:  IF abs ( Nr! ) > S8r! THEN
          l15700:      Nr! = sgn ( Nr! ) * abs ( S8r! )
          l15710:  END IF
          n15720:  Tr! = abs ( Nr! )
          l15730:  Pr! = S6r! - Cr!
          l15740:  Qr! = S7r! - Dr!
          n15750:  IF 2 * abs ( Pr! ) < abs ( Qr! ) THEN
          l15760:      Pr! = 0
          l15770:  END IF
          n15780:  IF 2 * abs ( Qr! ) < abs ( Pr! ) THEN
          l15790:      Qr! = 0
          l15800:  END IF
          n15810:  IF Pr! <> 0 THEN
          l15820:      Pr! = sgn ( Pr! * Nr! )
          l15830:  END IF
          n15840:  IF Qr! <> 0 THEN
          l15850:      Qr! = sgn ( Qr! * Nr! )
          l15860:  END IF
          n15870:  Rr! = Cr!
          l15880:  Sr! = Dr!
          l15890:  Q_s$ ( Cr! , Dr! ) = "."
          n15900:  FOR L2r! = 1 TO Tr!
          l15910:      Lr! = Rr! + Pr!
          l15920:      Mr! = Sr! + Qr!
          n15930:      IF ( Lr! > 0 ) AND ( Lr! <= 10 ) THEN
          l15940:          GOTO L_15970_
          l15950:      END IF
          n15960:      ON sgn ( Nr! ) + 2 GOTO L_16490_ , L_16160_ , L_16160_
        L_15970_:      IF ( Mr! > 0 ) AND ( Mr! <= 10 ) THEN
          l15980:          GOTO L_16010_
          l15990:      END IF
          n16000:      ON sgn ( Nr! ) + 2 GOTO L_16490_ , L_16040_ , L_16040_
        L_16010_:      IF Q_s$ ( Lr! , Mr! ) = "." THEN
          l16020:          GOTO L_16290_
          l16030:      END IF
        L_16040_:      IF ( Qr! = Br! ) OR ( Pr! = 0 ) THEN
          l16050:          GOTO L_16160_
          l16060:      END IF
          n16070:      Mr! = Sr! + Br!
          n16080:      IF ( Mr! > 0 ) AND ( Mr! <= 10 ) THEN
          l16090:          GOTO L_16120_
          l16100:      END IF
          n16110:      ON sgn ( Nr! ) + 2 GOTO L_16490_ , L_16150_ , L_16150_
        L_16120_:      IF Q_s$ ( Lr! , Mr! ) = "." THEN
          l16130:          GOTO L_16290_
          l16140:      END IF
        L_16150_:      Br! = - Br!
        L_16160_:      IF ( Pr! = Ar! ) OR ( Qr! = 0 ) THEN
          l16170:          GOTO L_16310_
          l16180:      END IF
          n16190:      Lr! = Rr! + Ar!
          n16200:      IF ( Lr! > 0 ) AND ( Lr! <= 10 ) THEN
          l16210:          GOTO L_16240_
          l16220:      END IF
          n16230:      ON sgn ( Nr! ) + 2 GOTO L_16490_ , L_16270_ , L_16270_
        L_16240_:      IF Q_s$ ( Lr! , Mr! ) = "." THEN
          l16250:          GOTO L_16290_
          l16260:      END IF
        L_16270_:      Ar! = - Ar!
          l16280:      GOTO L_16310_
        L_16290_:      Rr! = Lr!
          l16300:      Sr! = Mr!
        L_16310_:  NEXT L2r!
          n16320:  Q_s$ ( Rr! , Sr! ) = "C"
          n16330:  IF ( Rr! = Cr! ) AND ( Sr! = Dr! ) THEN
          l16340:      RETURN
          l16350:  END IF
          n16360:  K4_r! ( Kr! ) = Rr!
          l16370:  K5_r! ( Kr! ) = Sr!
          l16380:  K7_r! ( Kr! ) = sqr ( ( S6r! - Rr! ) ^ 2 + ( S7r! - Sr! ) ^ 2 )
          n16390:  K8_r! ( Kr! ) = K7_r! ( Kr! )
          l16400:  IF Nr! > 0 THEN
          l16410:      print "***COMMANDER ADVANCES TO " ;
          l16420:  END IF
          n16430:  IF Nr! < 0 THEN
          l16440:      print "***COMMANDER RETREATS TO " ;
          l16450:  END IF
          n16460:  print " SECTOR " ; Rr! ; "-" ; Sr!
          l16470:  GOSUB SUB_27830_
          l16480:  RETURN


        L_16490_:  Ir! = Q1r! + int ( ( Lr! + 9 ) / 10 ) - 1
          l16500:  Jr! = Q2r! + int ( ( Mr! + 9 ) / 10 ) - 1
          n16510:  IF ( Ir! < 1 ) OR ( Ir! > 8 ) THEN
          l16520:      GOTO L_16850_
          l16530:  END IF
          n16540:  IF ( Jr! < 1 ) OR ( Jr! > 8 ) THEN
          l16550:      GOTO L_16850_
          l16560:  END IF
          n16570:  FOR L3r! = 1 TO R2r!
          n16580:      IF ( C1_r! ( L3r! ) = Ir! ) AND ( C2_r! ( L3r! ) = Jr! ) THEN
          l16590:          GOTO L_16850_
          l16600:      END IF
          n16610:  NEXT L3r!
          l16620:  print "***COMMANDER ESCAPES TO " ;
          n16630:  print "QUADRANT " ; Ir! ; "-" ; Jr! ; " (AND REGAINS STRENGTH)"
          n16640:  K4_r! ( Kr! ) = K4_r! ( K3r! )
          l16650:  K5_r! ( Kr! ) = K5_r! ( K3r! )
          l16660:  K7_r! ( Kr! ) = K7_r! ( K3r! )
          l16670:  K8_r! ( Kr! ) = K8_r! ( K3r! )
          n16680:  K6_r! ( Kr! ) = K6_r! ( K3r! )
          l16690:  K3r! = K3r! - 1
          l16700:  C3r! = 0
          n16710:  IF C5s$ <> "DOCKED" THEN
          l16720:      GOSUB SUB_16880_
          l16730:  END IF
          n16740:  GOSUB SUB_27830_
          n16750:  G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 100
          l16760:  G_r! ( Ir! , Jr! ) = G_r! ( Ir! , Jr! ) + 100
          n16770:  FOR L3r! = 1 TO R2r!
          n16780:      IF ( C1_r! ( L3r! ) = Q1r! ) AND ( C2_r! ( L3r! ) = Q2r! ) THEN
          l16790:          GOTO L_16820_
          l16800:      END IF
          n16810:  NEXT L3r!
        L_16820_:  C1_r! ( L3r! ) = Ir!
          l16830:  C2_r! ( L3r! ) = Jr!
          l16840:  RETURN


        L_16850_:  Ar! = - Ar!
          l16860:  Br! = - Br!
          l16870:  GOTO L_16310_

      SUB_16880_:  REM  - NEWCOND
          n16890:  C5s$ = "GREEN"
          n16900:  IF E1r! < 1000 THEN
          l16910:      C5s$ = "YELLOW"
          l16920:  END IF
          n16930:  IF G_r! ( Q1r! , Q2r! ) > 99 THEN
          l16940:      C5s$ = "RED"
          l16950:  END IF
          n16960:  RETURN



      SUB_16970_:  REM  - NEW QUAD
          n16980:  J4r! = 1
          l16990:  B6r! = 0
          l17000:  B7 = 0
          l17010:  K3r! = 0
          l17020:  C3r! = 0
          n17030:  Ur! = G_r! ( Q1r! , Q2r! )
          n17040:  IF Ur! > 999 THEN
          l17050:      GOTO L_17800_
          l17060:  END IF
          n17070:  K3r! = int ( .01 * Ur! )
          l17080:  FOR Ar! = 1 TO 10
          l17090:      FOR Br! = 1 TO 10
          l17100:          Q_s$ ( Ar! , Br! ) = "."
          l17110:      NEXT Br!
          l17120:  NEXT Ar!
          n17130:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          l17140:  Ur! = G_r! ( Q1r! , Q2r! )
          l17150:  IF Ur! < 100 THEN
          l17160:      GOTO L_17450_
          l17170:  END IF
          n17180:  Ur! = Ur! - 100 * K3r!
          l17190:  FOR Ar! = 1 TO K3r!
        L_17200_:      Sr! = Fktb ( 1 )
          l17210:      K4_r! ( Ar! ) = Sr!
          l17220:      Tr! = Fktb ( 1 )
          l17230:      K5_r! ( Ar! ) = Tr!
          n17240:      IF Q_s$ ( Sr! , Tr! ) <> "." THEN
          l17250:          GOTO L_17200_
          l17260:      END IF
          n17270:      Q_s$ ( Sr! , Tr! ) = "K"
          l17280:      K7_r! ( Ar! ) = sqr ( ( S6r! - Sr! ) ^ 2 + ( S7r! - Tr! ) ^ 2 )
          l17290:      K8_r! ( Ar! ) = K7_r! ( Ar! )
          n17300:      K6_r! ( Ar! ) = rnd ( 1 ) * 150 + 325
          l17310:  NEXT Ar!
          n17320:  IF R2r! = 0 THEN
          l17330:      GOTO L_17440_
          l17340:  END IF
          n17350:  FOR Ar! = 1 TO R2r!
          n17360:      IF ( C1_r! ( Ar! ) = Q1r! ) AND ( C2_r! ( Ar! ) = Q2r! ) THEN
          l17370:          GOTO L_17410_
          l17380:      END IF
          n17390:  NEXT Ar!
          l17400:  GOTO L_17440_
        L_17410_:  Q_s$ ( Sr! , Tr! ) = "C"
          l17420:  K6_r! ( K3r! ) = 1000 + 400 * rnd ( 1 )
          l17430:  C3r! = 1
        L_17440_:  GOSUB SUB_27830_
        L_17450_:  IF Ur! < 10 THEN
          l17460:      GOTO L_17550_
          l17470:  END IF
          n17480:  Ur! = Ur! - 10
        L_17490_:  B6r! = Fktb ( 1 )
          l17500:  B7 = Fktb ( 1 )
          l17510:  IF Q_s$ ( B6r! , B7 ) <> "." THEN
          l17520:      GOTO L_17490_
          l17530:  END IF
          n17540:  Q_s$ ( B6r! , B7 ) = "B"
        L_17550_:  GOSUB SUB_16880_
          l17560:  IF Ur! < 1 THEN
          l17570:      RETURN
          l17580:  END IF
          n17590:  FOR Ar! = 1 TO Ur!
        L_17600_:      Sr! = Fktb ( 1 )
          l17610:      Tr! = Fktb ( 1 )
          l17620:      IF Q_s$ ( Sr! , Tr! ) <> "." THEN
          l17630:          GOTO L_17600_
          l17640:      END IF
          n17650:      Q_s$ ( Sr! , Tr! ) = "*"
          l17660:  NEXT Ar!
          n17670:  IF ( T2r! <> Q1r! ) OR ( T3 <> Q2r! ) THEN
          l17680:      RETURN
          l17690:  END IF
        L_17700_:  Sr! = Fktb ( 1 )
          l17710:  Tr! = Fktb ( 1 )
          l17720:  IF Q_s$ ( Sr! , Tr! ) <> "." THEN
          l17730:      GOTO L_17700_
          l17740:  END IF
          n17750:  Q_s$ ( Sr! , Tr! ) = "O"
          l17760:  print
          n17770:  print "MR. SPOCK - 'CAPTAIN, THE SHORT-RANGE SENSORS DETECT A"
          n17780:  print "SPACE WARP SOMEWHERE IN THIS QUADRANT.'"
          n17790:  RETURN


        L_17800_:  FOR Ar! = 1 TO 10
          l17810:      FOR Br! = 1 TO 10
          l17820:          Q_s$ ( Ar! , Br! ) = "."
          l17830:      NEXT Br!
          l17840:  NEXT Ar!
          n17850:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          l17860:  RETURN



      SUB_17870_:  G4s$ = "III"
          l17880:  Lr! = 2
          l17890:  IF Q2r! >= 5 THEN
          l17900:      GOTO L_17930_
          l17910:  END IF
          n17920:  Lr! = 1
        L_17930_:  G2s$ = G1_s$ ( 2 * ( Q1r! - 1 ) + Lr! )
          l17940:  Lr! = Q2r!
          n17950:  IF Lr! <= 4 THEN
          l17960:      GOTO L_17990_
          l17970:  END IF
          n17980:  Lr! = Q2r! - 4
        L_17990_:  G3s$ = "IV"
          l18000:  IF Lr! = 4 THEN
          l18010:      GOTO L_18040_
          l18020:  END IF
          n18030:  G3s$ = left$ ( G4s$ , Lr! )
        L_18040_:  G2s$ = G2s$ + " " + G3s$
          l18050:  RETURN



      SUB_18060_:  REM  - NOVA
          n18070:  IF rnd ( 1 ) > .1 THEN
          l18080:      GOTO L_18120_
          l18090:  END IF
          n18100:  GOSUB SUB_26570_
          l18110:  RETURN


        L_18120_:  Q_s$ ( A5r! , A6r! ) = "."
          l18130:  print "***STAR AT SECTOR " ; A5r! ; "-" ; A6r! ; "NOVAS."
          n18140:  G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 1
          l18150:  S1r! = S1r! + 1
          n18160:  B9r! = 1
          l18170:  T6r! = 1
          l18180:  T7r! = 1
          l18190:  Kr! = 0
          l18200:  X1r! = 0
          l18210:  Y1r! = 0
          n18220:  H4_r! ( B9r! , 1 ) = A5r!
          l18230:  H4_r! ( B9r! , 2 ) = A6r!
        L_18240_:  FOR Mr! = B9r! TO T6r!
          l18250:      FOR Qr! = 1 TO 3
          l18260:          FOR Jr! = 1 TO 3
          n18270:              IF Jr! * Qr! = 4 THEN
          l18280:                  GOTO L_19430_
          l18290:              END IF
          n18300:              J5r! = H4_r! ( Mr! , 1 ) + Qr! - 2
          l18310:              J6r! = H4_r! ( Mr! , 2 ) + Jr! - 2
          n18320:              IF ( J5r! < 1 ) OR ( J5r! > 10 ) THEN
          l18330:                  GOTO L_19430_
          l18340:              END IF
          n18350:              IF ( J6r! < 1 ) OR ( J6r! > 10 ) THEN
          l18360:                  GOTO L_19430_
          l18370:              END IF
          n18380:              IF Q_s$ ( J5r! , J6r! ) = "." THEN
          l18390:                  GOTO L_19430_
          l18400:              END IF
          n18410:              IF Q_s$ ( J5r! , J6r! ) = "O" THEN
          l18420:                  GOTO L_19430_
          l18430:              END IF
          n18440:              IF Q_s$ ( J5r! , J6r! ) <> "*" THEN
          l18450:                  GOTO L_18610_
          l18460:              END IF
          n18470:              IF rnd ( 1 ) >= .1 THEN
          l18480:                  GOTO L_18540_
          l18490:              END IF
          n18500:              X2r! = J5r!
          l18510:              Y2 = J6r!
          l18520:              GOSUB SUB_26570_
          l18530:              RETURN
        L_18540_:              T7r! = T7r! + 1
          l18550:              H4_r! ( T7r! , 1 ) = J5r!
          l18560:              H4_r! ( T7r! , 2 ) = J6r!
          l18570:              G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 1
          n18580:              S1r! = S1r! + 1
          l18590:              print "***STAR AT SECTOR " ; J5r! ; "-" ; J6r! ; "NOVAS."
          n18600:              GOTO L_19410_
        L_18610_:              IF Q_s$ ( J5r! , J6r! ) <> "B" THEN
          l18620:                  GOTO L_18790_
          l18630:              END IF
          n18640:              G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 10
          l18650:              FOR Vr! = 1 TO R3r!
          n18660:                  IF ( B2_r! ( Vr! ) <> Q1r! ) OR ( B3_r! ( Vr! ) <> Q2r! ) THEN
          l18670:                      GOTO L_18710_
          l18680:                  END IF
          n18690:                  B2_r! ( Vr! ) = B2_r! ( R3r! )
          l18700:                  B3_r! ( Vr! ) = B3_r! ( R3r! )
        L_18710_:              NEXT Vr!
          l18720:              R3r! = R3r! - 1
          l18730:              B6r! = 0
          l18740:              B7 = 0
          l18750:              B1r! = B1r! + 1
          l18760:              GOSUB SUB_16880_
          n18770:              print "***STARBASE AT SECTOR " ; J5r! ; "-" ; J6r! ; "DESTROYED."
          n18780:              GOTO L_19410_
        L_18790_:              IF ( S6r! <> J5r! ) OR ( S7r! <> J6r! ) THEN
          l18800:                  GOTO L_19090_
          l18810:              END IF
          n18820:              print "***STARSHIP BUFFETED BY NOVA."
          l18830:              IF S4r! <> 0 THEN
          l18840:                  GOTO L_18880_
          l18850:              END IF
          n18860:              E1r! = E1r! - 1000
          l18870:              GOTO L_18980_
        L_18880_:              IF S3r! >= 1000 THEN
          l18890:                  GOTO L_19040_
          l18900:              END IF
          n18910:              D6r! = 1000 - S3r!
          l18920:              E1r! = E1r! - D6r!
          l18930:              GOSUB SUB_16880_
          l18940:              S3r! = 0
          l18950:              S4r! = 0
          n18960:              print "***STARSHIP SHIELDS KNOCKED OUT."
          l18970:              D4_r! ( 8 ) = .005 * D5r! * rnd ( 1 ) * D6r!
        L_18980_:              IF E1r! > 0 THEN
          l18990:                  GOTO L_19050_
          l19000:              END IF
          n19010:              F9r! = 7
          l19020:              GOSUB SUB_9820_
          l19030:              RETURN
        L_19040_:              S3r! = S3r! - 1000
        L_19050_:              X1r! = X1r! + S6r! - H4_r! ( Mr! , 1 )
          l19060:              Y1r! = Y1r! + S7r! - H4_r! ( Mr! , 2 )
          l19070:              Kr! = Kr! + 1
          l19080:              GOTO L_19430_
        L_19090_:              IF Q_s$ ( J5r! , J6r! ) <> "C" THEN
          l19100:                  GOTO L_19360_
          l19110:              END IF
          n19120:              FOR Vr! = 1 TO K3r!
          n19130:                  IF ( K4_r! ( Vr! ) = J5r! ) AND ( K5_r! ( Vr! ) = J6r! ) THEN
          l19140:                      GOTO L_19170_
          l19150:                  END IF
          n19160:              NEXT Vr!
        L_19170_:              K6_r! ( Vr! ) = K6_r! ( Vr! ) - 800
          l19180:              IF K6_r! ( Vr! ) <= 0 THEN
          l19190:                  GOTO L_19360_
          l19200:              END IF
          n19210:              N5r! = J5r! + J5r! - H4_r! ( Mr! , 1 )
          l19220:              N6 = J6r! + J6r! - H4_r! ( Mr! , 2 )
          n19230:              print "***COMMANDER AT SECTOR " ; J5r! ; "-" ; J6r! ; "DAMAGED" ;
          n19240:              IF ( N5r! < 1 ) OR ( N5r! > 10 ) OR ( N6 < 1 ) OR ( N6 > 10 ) THEN
          l19250:                  GOTO L_19340_
          l19260:              END IF
          n19270:              print " AND BUFFETED TO SECTOR " ; N5r! ; "-" ; N6
          n19280:              Q_s$ ( N5r! , N6 ) = "C"
          l19290:              K4_r! ( Vr! ) = N5r!
          l19300:              K5_r! ( Vr! ) = N6
          n19310:              K7_r! ( Vr! ) = sqr ( ( S6r! - N5r! ) ^ 2 + ( S7r! - N6 ) ^ 2 )
          l19320:              K8_r! ( Vr! ) = K7_r! ( Vr! )
          n19330:              Q_s$ ( J5r! , J6r! ) = "."
        L_19340_:              print
          l19350:              GOTO L_19430_
        L_19360_:              A5r! = J5r!
          l19370:              A6r! = J6r!
          l19380:              T2s$ = Q_s$ ( J5r! , J6r! )
          l19390:              GOSUB SUB_6490_
          l19400:              GOTO L_19430_
        L_19410_:              print
          l19420:              Q_s$ ( J5r! , J6r! ) = "."
        L_19430_:          NEXT Jr!
          l19440:      NEXT Qr!
          l19450:  NEXT Mr!
          n19460:  IF T6r! = T7r! THEN
          l19470:      GOTO L_19520_
          l19480:  END IF
          n19490:  B9r! = T6r! + 1
          l19500:  T6r! = T7r!
          l19510:  GOTO L_18240_
        L_19520_:  IF Kr! = 0 THEN
          l19530:      RETURN
          l19540:  END IF
          n19550:  D1r! = Kr! * .1
          n19560:  IF X1r! <> 0 THEN
          l19570:      X1r! = sgn ( X1r! )
          l19580:  END IF
          n19590:  IF Y1r! <> 0 THEN
          l19600:      Y1r! = sgn ( Y1r! )
          l19610:  END IF
          n19620:  Ir! = 3 * ( X1r! + 1 ) + Y1r! + 2
          n19630:  D2r! = C5_r! ( Ir! )
          n19640:  IF D2r! = 0 THEN
          l19650:      D1r! = 0
          l19660:  END IF
          n19670:  IF D1r! = 0 THEN
          l19680:      RETURN
          l19690:  END IF
          n19700:  print
          l19710:  print " FOR CE OF NOVA DISPLACES STARSHIP."
          n19720:  GOSUB SUB_13600_
          l19730:  RETURN



      SUB_19740_:  REM  - PHASERS
          n19750:  Pr! = 2
          l19760:  J3r! = 1
          n19770:  IF C5s$ <> "DOCKED" THEN
          l19780:      GOTO L_19820_
          l19790:  END IF
          n19800:  print "PHASERS CAN'T BE FIRED THRU BASE SHIELDS."
          l19810:  GOTO L_19980_
        L_19820_:  IF D4_r! ( 3 ) = 0 THEN
          l19830:      GOTO L_19870_
          l19840:  END IF
          n19850:  print "PHASER BANKS DAMAGED."
          l19860:  GOTO L_19980_
        L_19870_:  IF S4r! = 0 THEN
          l19880:      GOTO L_19920_
          l19890:  END IF
          n19900:  print "SHIELDS MUST BE DOWN TO FIRE PHASERS."
          l19910:  GOTO L_19980_
        L_19920_:  IF K3r! > 0 THEN
          l19930:      GOTO L_20000_
          l19940:  END IF
          n19950:  print
          n19960:  print "MR. SPOCK - 'CAPTAIN, THE SHORT-RANGE SENSORS"
          n19970:  print "  DETECT NO KLINGONS IN THIS QUADRANT.'"
        L_19980_:  J3r! = 0
          l19990:  RETURN


        L_20000_:  print "PHASERS LOCKED ON TARGET. ENERGY AVAILABLE=" ;
        L_20010_:  print .01 * int ( 100 * E1r! )
          n20020:  INPUT "UNITS TO FIRE " ; P1r!
          l20030:  IF P1r! < E1r! THEN
          l20040:      GOTO L_20080_
          l20050:  END IF
          n20060:  print "ENERGY AVAILABLE =" ;
          l20070:  GOTO L_20010_
        L_20080_:  IF P1r! > 0 THEN
          l20090:      GOTO L_20130_
          l20100:  END IF
          n20110:  J3r! = 0
          l20120:  RETURN


        L_20130_:  E1r! = E1r! - P1r!
          n20140:  IF D4_r! ( 11 ) = 0 THEN
          l20150:      GOTO L_20210_
          l20160:  END IF
          n20170:  P1r! = P1r! * ( rnd ( 1 ) * .5 + .5 )
          n20180:  print
          l20190:  print "COMPUTER MALFUNCTION HAMPERS PHASER ACCURACY."
          l20200:  print
        L_20210_:  Er! = P1r!
          l20220:  IF K3r! = 0 THEN
          l20230:      GOTO L_20590_
          l20240:  END IF
          n20250:  Er! = 0
          l20260:  T5r! = ( K3r! * ( K3r! + 1 ) ) / 2
          n20270:  FOR Ir! = 1 TO K3r!
          l20280:      H3_r! ( Ir! ) = ( ( K3r! + 1 - Ir! ) / T5r! ) * P1r!
          n20290:      H5_r! ( Ir! ) = abs ( K6_r! ( Ir! ) ) / ( Pr! * .9 ^ K7_r! ( Ir! ) )
          n20300:      IF H3_r! ( Ir! ) <= H5_r! ( Ir! ) THEN
          l20310:          GOTO L_20350_
          l20320:      END IF
          n20330:      Er! = Er! + ( H3_r! ( Ir! ) - H5_r! ( Ir! ) )
          l20340:      H3_r! ( Ir! ) = H5_r! ( Ir! )
        L_20350_:  NEXT Ir!
          n20360:  IF Er! = 0 THEN
          l20370:      GOTO L_20530_
          l20380:  END IF
          n20390:  FOR Ir! = 1 TO K3r!
          l20400:      R7r! = H5_r! ( Ir! ) - H3_r! ( Ir! )
          n20410:      IF R7r! <= 0 THEN
          l20420:          GOTO L_20490_
          l20430:      END IF
          n20440:      IF R7r! >= Er! THEN
          l20450:          GOTO L_20510_
          l20460:      END IF
          n20470:      H3_r! ( Ir! ) = H5_r! ( Ir! )
          l20480:      Er! = Er! - R7r!
        L_20490_:  NEXT Ir!
          l20500:  GOTO L_20530_
        L_20510_:  H3_r! ( Ir! ) = H3_r! ( Ir! ) + Er!
          l20520:  Er! = 0
        L_20530_:  GOSUB SUB_12030_
          n20540:  IF ( Er! <> 0 ) AND ( A2r! = 0 ) THEN
          l20550:      GOTO L_20590_
          l20560:  END IF
          n20570:  J3r! = 1
          l20580:  RETURN


        L_20590_:  print Fktr ( Er! ) ; "EXPENDED ON EMPTY SPACE."
          l20600:  J3r! = 1
          l20610:  RETURN



      SUB_20620_:  REM  - PHOTONS
          n20630:  J3r! = 1
          l20640:  IF D4_r! ( 4 ) = 0 THEN
          l20650:      GOTO L_20690_
          l20660:  END IF
          n20670:  print "PHOTON TUBES DAMAGED."
          l20680:  GOTO L_20780_
        L_20690_:  IF T4r! <> 0 THEN
          l20700:      GOTO L_20740_
          l20710:  END IF
          n20720:  print "NO TORPEDOS LEFT."
          l20730:  GOTO L_20780_
        L_20740_:  INPUT "TORPEDO COURSE " ; C6r!
          n20750:  IF C6r! >= 0 THEN
          l20760:      GOTO L_20800_
          l20770:  END IF
        L_20780_:  J3r! = 0
          l20790:  RETURN


        L_20800_:  INPUT "BURST OF 3 " ; Bs$
          l20810:  Nr! = 1
          n20820:  IF left$ ( Bs$ , 1 ) = "N" THEN
          l20830:      GOTO L_21020_
          l20840:  END IF
          n20850:  IF left$ ( Bs$ , 1 ) <> "Y" THEN
          l20860:      GOTO L_20800_
          l20870:  END IF
          n20880:  IF T4r! > 2 THEN
          l20890:      GOTO L_20930_
          l20900:  END IF
          n20910:  print "NO BURST. ONLY " ; T4r! ; "TORPEDOS LEFT."
          l20920:  GOTO L_20780_
        L_20930_:  INPUT "SPREAD ANGLE (3 - 30 DEG) " ; G2r!
          n20940:  IF G2r! < 0 THEN
          l20950:      GOTO L_20780_
          l20960:  END IF
          n20970:  IF ( G2r! < 3 ) OR ( G2r! > 30 ) THEN
          l20980:      GOTO L_20930_
          l20990:  END IF
          n21000:  G2r! = Fktd ( G2r! )
          n21010:  Nr! = 3
        L_21020_:  REM  - CONTINUE
          n21030:  FOR Z6r! = 1 TO Nr!
          n21040:      IF C5s$ <> "DOCKED" THEN
          l21050:          T4r! = T4r! - 1
          l21060:      END IF
          n21070:      Z7r! = Z6r!
          l21080:      Rr! = rnd ( 1 )
          n21090:      Rr! = ( Rr! + rnd ( 1 ) ) * .5 - .5
          n21100:      IF ( Rr! >= - .4 ) AND ( Rr! <= .4 ) THEN
          l21110:          GOTO L_21260_
          l21120:      END IF
          n21130:      Rr! = ( rnd ( 1 ) + 1.2 ) * Rr!
          l21140:      IF Nr! = 3 THEN
          l21150:          GOTO L_21190_
          l21160:      END IF
          n21170:      print "***TORPEDO MISFIRES..."
          l21180:      GOTO L_21200_
        L_21190_:      print "***TORPEDO NUMBER " ; Z6r! ; "MISFIRES..."
        L_21200_:      IF rnd ( 1 ) > .2 THEN
          l21210:          GOTO L_21260_
          l21220:      END IF
          n21230:      print "***PHOTO N TUBES DAMAGED BY MISFIRE."
          n21240:      D4_r! ( 4 ) = D5r! * ( 1 + 2 * rnd ( 1 ) )
          l21250:      GOTO L_22890_
        L_21260_:      IF ( S4r! <> 0 ) OR ( C5s$ = "DOCKED" ) THEN
          l21270:          Rr! = Rr! + .001 * S3r! * Rr!
          l21280:      END IF
          n21290:      A3r! = C6r! + .25 * Rr!
          l21300:      IF Nr! = 1 THEN
          l21310:          GOTO L_21370_
          l21320:      END IF
          n21330:      A8r! = ( 15 - A3r! + ( 2 - Z6r! ) * G2r! ) * .523599
          l21340:      print
          n21350:      print "TRACK FOR TORPEDO NUMBER " ; Z7r! ; "--"
          l21360:      GOTO L_21400_
        L_21370_:      print
          l21380:      print "TORPEDO TRACK --"
          l21390:      A8r! = ( 15 - A3r! ) * .523599
        L_21400_:      X4r! = - sin ( A8r! )
          l21410:      Y4 = cos ( A8r! )
          l21420:      B8r! = abs ( X4r! )
          n21430:      IF abs ( Y4 ) > abs ( X4r! ) THEN
          l21440:          B8r! = abs ( Y4 )
          l21450:      END IF
          n21460:      X4r! = X4r! / B8r!
          l21470:      Y4 = Y4 / B8r!
          l21480:      X5 = S6r!
          l21490:      Y5r! = S7r!
          n21500:      FOR L9r! = 1 TO 15
          l21510:          X5 = X5 + X4r!
          l21520:          A5r! = int ( X5 + .5 )
          n21530:          IF ( A5r! < 1 ) OR ( A5r! > 10 ) THEN
          l21540:              GOTO L_22860_
          l21550:          END IF
          n21560:          Y5r! = Y5r! + Y4
          l21570:          A6r! = int ( Y5r! + .5 )
          n21580:          IF ( A6r! < 1 ) OR ( A6r! > 10 ) THEN
          l21590:              GOTO L_22860_
          l21600:          END IF
          n21610:          IF ( L9r! = 5 ) OR ( L9r! = 9 ) THEN
          l21620:              print
          l21630:          END IF
          n21640:          print Fktr ( X5 ) ; "-" ; Fktr ( Y5r! ) ; ", " ;
          n21650:          IF Q_s$ ( A5r! , A6r! ) <> "." THEN
          l21660:              GOTO L_21690_
          l21670:          END IF
          n21680:          GOTO L_22850_
        L_21690_:          print
          l21700:          IF Q_s$ ( A5r! , A6r! ) = "K" THEN
          l21710:              GOTO L_21830_
          l21720:          END IF
          n21730:          IF Q_s$ ( A5r! , A6r! ) <> "C" THEN
          l21740:              GOTO L_22340_
          l21750:          END IF
          n21760:          IF rnd ( 1 ) > .1 THEN
          l21770:              GOTO L_21830_
          l21780:          END IF
          n21790:          print "***COMMANDER AT SECTOR " ; A5r! ; "-" ; A6r! ; "USES ANTI-PHOTON " ;
          n21800:          print " DEVICE!"
          l21810:          print "  TORPEDO NEUTRALIZED."
          l21820:          GOTO L_22880_
        L_21830_:          FOR Vr! = 1 TO K3r!
          n21840:              IF ( A5r! = K4_r! ( Vr! ) ) AND ( A6r! = K5_r! ( Vr! ) ) THEN
          l21850:                  GOTO L_21880_
          l21860:              END IF
          n21870:          NEXT Vr!
        L_21880_:          Kr! = K6_r! ( Vr! )
          l21890:          W3r! = 200 + 800 * rnd ( 1 )
          n21900:          IF abs ( Kr! ) < W3r! THEN
          l21910:              W3r! = abs ( Kr! )
          l21920:          END IF
          n21930:          K6_r! ( Vr! ) = Kr! - sgn ( Kr! ) * abs ( W3r! )
          l21940:          IF K6_r! ( Vr! ) <> 0 THEN
          l21950:              GOTO L_22000_
          l21960:          END IF
          n21970:          T2s$ = Q_s$ ( A5r! , A6r! )
          l21980:          GOSUB SUB_6490_
          l21990:          GOTO L_22880_
        L_22000_:          IF Q_s$ ( A5r! , A6r! ) = "K" THEN
          l22010:              print "***KLINGON AT " ;
          l22020:          END IF
          n22030:          IF Q_s$ ( A5r! , A6r! ) = "C" THEN
          l22040:              print "***COMMANDER AT " ;
          l22050:          END IF
          n22060:          print A5r! ; "-" ; A6r! ;
          n22070:          A7r! = A8r! + 2.5 * ( rnd ( 1 ) - .5 )
          n22080:          W3r! = abs ( - sin ( A7r! ) )
          l22090:          IF abs ( cos ( A7r! ) ) > W3r! THEN
          l22100:              W3r! = abs ( cos ( A7r! ) )
          l22110:          END IF
          n22120:          X7r! = - sin ( A7r! ) / W3r!
          l22130:          Y7 = cos ( A7r! ) / W3r!
          n22140:          Pr! = int ( A5r! + X7r! + .5 )
          l22150:          Qr! = int ( A6r! + Y7 + .5 )
          n22160:          IF ( Pr! < 1 ) OR ( Pr! > 10 ) OR ( Qr! < 1 ) OR ( Qr! > 10 ) THEN
          l22170:              GOTO L_22320_
          l22180:          END IF
          n22190:          IF Q_s$ ( Pr! , Qr! ) <> "." THEN
          l22200:              GOTO L_22320_
          l22210:          END IF
          n22220:          Q_s$ ( Pr! , Qr! ) = Q_s$ ( A5r! , A6r! )
          l22230:          Q_s$ ( A5r! , A6r! ) = "."
          l22240:          print "DAMAGED--"
          n22250:          print "  DISPLACED BY BLAST TO SECTOR " ; Pr! ; "-" ; Qr!
          n22260:          K4_r! ( Vr! ) = Pr!
          l22270:          K5_r! ( Vr! ) = Qr!
          l22280:          K7_r! ( Vr! ) = sqr ( ( S6r! - Pr! ) ^ 2 + ( S7r! - Qr! ) ^ 2 )
          n22290:          K8_r! ( Vr! ) = K7_r! ( Vr! )
          n22300:          GOSUB SUB_27830_
          l22310:          GOTO L_22880_
        L_22320_:          print "DAMAGED, BUT NOT DESTROYED."
          l22330:          GOTO L_22880_
        L_22340_:          IF Q_s$ ( A5r! , A6r! ) <> "B" THEN
          l22350:              GOTO L_22560_
          l22360:          END IF
          n22370:          print "***STARBASE DESTROYED...CONGRATULATIONS...YOU TURKEY!"
          n22380:          IF S2_r! ( Q1r! , Q2r! ) < 0 THEN
          l22390:              S2_r! ( Q1r! , Q2r! ) = 0
          l22400:          END IF
          n22410:          FOR Wr! = 1 TO R3r!
          n22420:              IF ( B2_r! ( Wr! ) <> Q1r! ) OR ( B3_r! ( Wr! ) <> Q2r! ) THEN
          l22430:                  GOTO L_22470_
          l22440:              END IF
          n22450:              B2_r! ( Wr! ) = B2_r! ( R3r! )
          l22460:              B3_r! ( Wr! ) = B3_r! ( R3r! )
        L_22470_:          NEXT Wr!
          l22480:          Q_s$ ( A5r! , A6r! ) = "."
          l22490:          R3r! = R3r! - 1
          l22500:          B6r! = 0
          l22510:          B7 = 0
          n22520:          G_r! ( Q1r! , Q2r! ) = G_r! ( Q1r! , Q2r! ) - 10
          l22530:          B1r! = B1r! + 1
          l22540:          GOSUB SUB_16880_
          l22550:          GOTO L_22880_
        L_22560_:          IF Q_s$ ( A5r! , A6r! ) <> "*" THEN
          l22570:              GOTO L_22760_
          l22580:          END IF
          n22590:          IF rnd ( 1 ) > .15 THEN
          l22600:              GOTO L_22640_
          l22610:          END IF
          n22620:          print "***STAR AT SECTOR " ; A5r! ; "-" ; A6r! ; "UNAFFECTED BY PHOTON BLAST"
          n22630:          GOTO L_22880_
        L_22640_:          X2r! = A5r!
          l22650:          Y2 = A6r!
          l22660:          GOSUB SUB_18060_
          l22670:          A5r! = X2r!
          l22680:          A6r! = Y2
          n22690:          IF G_r! ( Q1r! , Q2r! ) = 1000 THEN
          l22700:              RETURN
          l22710:          END IF
          n22720:          IF A2r! <> 0 THEN
          l22730:              RETURN
          l22740:          END IF
          n22750:          GOTO L_22880_
        L_22760_:          print
          l22770:          print "AAAAAIIIIIIIEEEEEEEAAAAAAAUUUUUUGGGGGGGHHHHHHHHHH!!!"
          n22780:          print "  HACK!   HACK!  COUGH!   *CHOKE!*"
          n22790:          print
          l22800:          print "MR. SPOCK- 'FASCINATING!'"
          l22810:          Q_s$ ( A5r! , A6r! ) = "."
          n22820:          T2r! = 0
          l22830:          T3 = 0
          l22840:          GOTO L_22880_
        L_22850_:      NEXT L9r!
        L_22860_:      print
          l22870:      print "TORPEDO MISSED!"
        L_22880_:  NEXT Z6r!
        L_22890_:  IF R1r! <> 0 THEN
          l22900:      RETURN
          l22910:  END IF
          n22920:  F9r! = 1
          l22930:  GOSUB SUB_9820_
          l22940:  RETURN



      SUB_22950_:  REM  - RAM
          n22960:  print
          l22970:  print "*** RED ALERT!!  RED ALERT!! ***"
          l22980:  print
          n22990:  print "*** COLLISION IMMINENT!!"
          l23000:  print
          n23010:  print "*** " ; S5s$ ; " RAMS " ;
          l23020:  W7r! = 1
          l23030:  IF Q_s$ ( S6r! , S7r! ) = "C" THEN
          l23040:      W7r! = 2
          l23050:  END IF
          n23060:  IF W7r! = 1 THEN
          l23070:      print "KLINGON AT " ;
          l23080:  END IF
          n23090:  IF W7r! = 2 THEN
          l23100:      print "COMMANDER AT " ;
          l23110:  END IF
          n23120:  print "SECTOR " ; S6r! ; "-" ; S7r!
          l23130:  A5r! = S6r!
          l23140:  A6r! = S7r!
          l23150:  T2s$ = Q_s$ ( S6r! , S7r! )
          n23160:  GOSUB SUB_6490_
          l23170:  print "***" ; S5s$ ; " HEAVILY DAMAGED."
          n23180:  Kr! = int ( 5 + rnd ( 1 ) * 20 )
          l23190:  print "***SICKBAY REPORTS " ; Kr! ; "CASUALTIES!"
          n23200:  C4r! = C4r! + Kr!
          l23210:  FOR Lr! = 1 TO 12
          l23220:      Ir! = rnd ( 1 )
          n23230:      Jr! = ( 3.5 * W7r! * ( rnd ( 1 ) + Ir! ) + 1 ) * D5r!
          n23240:      IF Lr! = 6 THEN
          l23250:          Jr! = Jr! / 3
          l23260:      END IF
          n23270:      D4_r! ( Lr! ) = D4_r! ( Lr! ) + T1r! + Jr!
          l23280:  NEXT Lr!
          l23290:  D4_r! ( 6 ) = D4_r! ( 6 ) - 3
          n23300:  IF D4_r! ( 6 ) < 0 THEN
          l23310:      D4_r! ( 6 ) = 0
          l23320:  END IF
          n23330:  S4r! = 0
          l23340:  IF R1r! <> 0 THEN
          l23350:      RETURN
          l23360:  END IF
          n23370:  F9r! = 1
          l23380:  GOSUB SUB_9820_
          l23390:  RETURN



      SUB_23400_:  REM  - SCORE
          n23410:  Pr! = D0r! - J2r!
          l23420:  IF ( Pr! <> 0 ) AND ( R1r! = 0 ) THEN
          l23430:      GOTO L_23480_
          l23440:  END IF
          n23450:  IF Pr! < 5 THEN
          l23460:      Pr! = 5
          l23470:  END IF
        L_23480_:  Nr! = ( K2r! + K1r! ) / Pr!
          l23490:  Kr! = int ( 500 * Nr! + .5 )
          l23500:  Lr! = 0
          n23510:  IF G1r! <> 0 THEN
          l23520:      Lr! = 100 * S8r!
          l23530:  END IF
          n23540:  Ir! = 0
          n23550:  IF left$ ( S5s$ , 1 ) = "E" THEN
          l23560:      Mr! = 0
          l23570:  END IF
          n23580:  IF left$ ( S5s$ , 1 ) = "F" THEN
          l23590:      Mr! = 1
          l23600:  END IF
          n23610:  IF left$ ( S5s$ , 1 ) = "" THEN
          l23620:      Mr! = 2
          l23630:  END IF
          n23640:  IF A1r! = 0 THEN
          l23650:      Ir! = 200
          l23660:  END IF
          n23670:  Jr! = 10 * K1r! + 50 * K2r! + Kr! + Lr! - Ir! - 100 * B1r! - 100 * Mr! - 35 * N1r! - 3 * S1r! - C4r!
          n23680:  print
          l23690:  IF Jr! <> 0 THEN
          l23700:      GOTO L_23740_
          l23710:  END IF
          n23720:  print "AS YET, YOU HAVE NO SCORE."
          l23730:  RETURN


        L_23740_:  print "YOUR SCORE --"
          l23750:  print
          l23760:  IF K1r! = 0 THEN
          l23770:      GOTO L_23800_
          l23780:  END IF
          n23790:  print K1r! ; tab ( 5 ) ; "ORDINARY KLINGON(S) DESTROYED" ; tab ( 36 ) ; 10 * K1r!
        L_23800_:  IF K2r! = 0 THEN
          l23810:      GOTO L_23840_
          l23820:  END IF
          n23830:  print K2r! ; tab ( 5 ) ; "KLINGON COMMANDER(S) DESTROYED" ; tab ( 36 ) ; 50 * K2r!
        L_23840_:  IF Kr! = 0 THEN
          l23850:      GOTO L_23890_
          l23860:  END IF
          n23870:  print Fktr ( Nr! ) ; tab ( 5 ) ; "KLINGONS PER STARDATE, AVERAGE" ;
          n23880:  print tab ( 36 ) ; Kr!
        L_23890_:  IF S1r! = 0 THEN
          l23900:      GOTO L_23930_
          l23910:  END IF
          n23920:  print S1r! ; tab ( 5 ) ; "STAR(S) DESTROYED" ; tab ( 36 ) ; - 3 * S1r!
        L_23930_:  IF B1r! = 0 THEN
          l23940:      GOTO L_23970_
          l23950:  END IF
          n23960:  print B1r! ; tab ( 5 ) ; "STARBASES DESTROYED" ; tab ( 36 ) ; - 100 * B1r!
        L_23970_:  IF N1r! = 0 THEN
          l23980:      GOTO L_24010_
          l23990:  END IF
          n24000:  print N1r! ; tab ( 5 ) ; "SOS CALL(S) TO A STARBASE" ; tab ( 36 ) ; - 35 * N1r!
        L_24010_:  IF C4r! = 0 THEN
          l24020:      GOTO L_24050_
          l24030:  END IF
          n24040:  print C4r! ; tab ( 5 ) ; "CASUALTIES INCURRED" ; tab ( 36 ) ; - C4r!
        L_24050_:  IF Mr! = 0 THEN
          l24060:      GOTO L_24090_
          l24070:  END IF
          n24080:  print Mr! ; tab ( 5 ) ; "SHIP(S) LOST OR DESTROYED" ; tab ( 36 ) ; - 100 * Mr!
        L_24090_:  IF A1r! <> 0 THEN
          l24100:      GOTO L_24130_
          l24110:  END IF
          n24120:  print "PENALTY FOR GETTING YOURSELF KILLED" ; tab ( 36 ) ; - 200
        L_24130_:  IF G1r! = 0 THEN
          l24140:      GOTO L_24170_
          l24150:  END IF
          n24160:  print tab ( 5 ) ; "BONUS FOR WINNING " ; S_s$ ( S8r! ) ; " GAME" ; tab ( 36 ) ; Lr!
        L_24170_:  print tab ( 5 ) ; "-------------------------------------"
          n24180:  print tab ( 28 ) ; "TOTAL" ; tab ( 36 ) ; Jr! ; "**"
          l24190:  RETURN



      SUB_24200_:  REM  - SETUP
          n24210:  A2r! = 0
          l24220:  G1r! = 0
          l24230:  GOSUB SUB_4740_
          l24240:  S5s$ = "ENTERPRISE"
          n24250:  I7r! = 5000
          l24260:  E1r! = I7r!
          l24270:  I8 = 2500
          l24280:  S3r! = I8
          l24290:  S4r! = 0
          l24300:  S9r! = S4r!
          l24310:  J1 = 4
          l24320:  L1r! = J1
          n24330:  Q1r! = Fkta ( 1 )
          l24340:  Q2r! = Fkta ( 1 )
          l24350:  S6r! = Fktb ( 1 )
          l24360:  S7r! = Fktb ( 1 )
          l24370:  I9 = 10
          l24380:  T4r! = I9
          n24390:  W1r! = 5
          l24400:  W2r! = 25
          l24410:  FOR Ir! = 1 TO 12
          l24420:      D4_r! ( Ir! ) = 0
          l24430:  NEXT
          n24440:  J2r! = 100 * int ( 31 * rnd ( 1 ) + 20 )
          l24450:  D0r! = J2r!
          l24460:  K1r! = 0
          l24470:  K2r! = 0
          l24480:  N1r! = 0
          l24490:  N2 = 0
          l24500:  R6r! = 0
          l24510:  C4r! = 0
          n24520:  A1r! = 1
          l24530:  D3 = .25
          l24540:  FOR Ir! = 1 TO 8
          l24550:      FOR Jr! = 1 TO 8
          l24560:          S2_r! ( Ir! , Jr! ) = 0
          l24570:      NEXT Jr!
          l24580:  NEXT Ir!
          n24590:  F1_r! ( 1 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
          l24600:  F1_r! ( 5 ) = 1E + 30
          n24610:  F1_r! ( 2 ) = D0r! - 1.5 * ( I5r! / R2r! ) * log ( rnd ( 1 ) )
          l24620:  I6 = 0
          n24630:  F1_r! ( 3 ) = D0r! - .3 * I5r! * log ( rnd ( 1 ) )
          l24640:  F1_r! ( 4 ) = D0r! - .3 * I5r! * log ( rnd ( 1 ) )
          n24650:  FOR Ir! = 1 TO 8
          l24660:      FOR Jr! = 1 TO 8
          l24670:          Kr! = int ( rnd ( 1 ) * 9 + 1 )
          l24680:          I6 = I6 + Kr!
          n24690:          G_r! ( Ir! , Jr! ) = Kr!
          l24700:      NEXT Jr!
          l24710:  NEXT Ir!
          l24720:  S1r! = 0
          n24730:  FOR Ir! = 1 TO I2r!
        L_24740_:      Xr! = int ( rnd ( 1 ) * 6 + 2 )
          l24750:      Yr! = int ( rnd ( 1 ) * 6 + 2 )
          n24760:      IF G_r! ( Xr! , Yr! ) >= 10 THEN
          l24770:          GOTO L_24740_
          l24780:      END IF
          n24790:      IF Ir! < 2 THEN
          l24800:          GOTO L_24890_
          l24810:      END IF
          n24820:      Kr! = Ir! - 1
          l24830:      FOR Jr! = 1 TO Kr!
          l24840:          D1r! = sqr ( ( B2_r! ( Jr! ) - Xr! ) ^ 2 + ( B3_r! ( Jr! ) - Yr! ) ^ 2 )
          n24850:          IF D1r! < 2 THEN
          l24860:              GOTO L_24740_
          l24870:          END IF
          n24880:      NEXT Jr!
        L_24890_:      B2_r! ( Ir! ) = Xr!
          l24900:      B3_r! ( Ir! ) = Yr!
          l24910:      S2_r! ( Xr! , Yr! ) = - 1
          l24920:      G_r! ( Xr! , Yr! ) = G_r! ( Xr! , Yr! ) + 10
          l24930:  NEXT Ir!
          n24940:  B1r! = 0
          l24950:  Kr! = I1r! - I4r!
          l24960:  Lr! = int ( .25 * S8r! * ( 9 - L2r! ) + 1 )
        L_24970_:  Mr! = int ( ( 1 - rnd ( 1 ) ^ 2 ) * Lr! )
          l24980:  IF Mr! > Kr! THEN
          l24990:      Mr! = Kr!
          l25000:  END IF
          n25010:  Nr! = 100 * Mr!
        L_25020_:  Xr! = Fkta ( 1 )
          l25030:  Yr! = Fkta ( 1 )
          l25040:  IF G_r! ( Xr! , Yr! ) + Nr! > 999 THEN
          l25050:      GOTO L_25020_
          l25060:  END IF
          n25070:  G_r! ( Xr! , Yr! ) = G_r! ( Xr! , Yr! ) + Nr!
          l25080:  Kr! = Kr! - Mr!
          l25090:  IF Kr! <> 0 THEN
          l25100:      GOTO L_24970_
          l25110:  END IF
          n25120:  FOR Ir! = 1 TO I4r!
        L_25130_:      Xr! = Fkta ( 1 )
          l25140:      Yr! = Fkta ( 1 )
          l25150:      IF ( G_r! ( Xr! , Yr! ) < 99 ) AND ( rnd ( 1 ) < .75 ) THEN
          l25160:          GOTO L_25130_
          l25170:      END IF
          n25180:      IF G_r! ( Xr! , Yr! ) > 899 THEN
          l25190:          GOTO L_25130_
          l25200:      END IF
          n25210:      IF Ir! = 1 THEN
          l25220:          GOTO L_25300_
          l25230:      END IF
          n25240:      Mr! = Ir! - 1
          l25250:      FOR Jr! = 1 TO Mr!
          l25260:          IF ( C1_r! ( Jr! ) = Xr! ) AND ( C2_r! ( Jr! ) = Yr! ) THEN
          l25270:              GOTO L_25130_
          l25280:          END IF
          n25290:      NEXT Jr!
        L_25300_:      G_r! ( Xr! , Yr! ) = G_r! ( Xr! , Yr! ) + 100
          l25310:      C1_r! ( Ir! ) = Xr!
          l25320:      C2_r! ( Ir! ) = Yr!
          l25330:  NEXT Ir!
          n25340:  Ir! = int ( D0r! )
          l25350:  print
          l25360:  S0r! = 0
        L_25370_:  T2r! = Fkta ( 1 )
          l25380:  T3 = Fkta ( 1 )
          l25390:  IF G_r! ( T2r! , T3 ) < 100 THEN
          l25400:      GOTO L_25370_
          l25410:  END IF
          n25420:  IF S8r! <> 1 THEN
          l25430:      GOTO L_25610_
          l25440:  END IF
          n25450:  print "IT IS STARDATE " ; Ir! ; "...THE ORGANIAN PEACE TREATY BETWEEN"
          n25460:  print "THE UNITED FEDERATION OF PLANETS AND THE KLINGON EMPIRE"
          n25470:  print "HAS COLLAPSED AND THE FEDERATION IS BEING ATTACKED BY A"
          n25480:  print "DEADLY KLINGON INVASION FLEET. AS CAPTAIN OF THE STARSHIP"
          n25490:
          n25500:  print "U.S.S. ENTERPRISE, IT IS YOUR MISSION TO SEEK OUT AND"
          n25510:  print "DESTROY THIS INVASION FOR CE OF " ; I1r! ; "BATTLE CRUISERS."
          n25520:  print
          l25530:  print "YOU HAVE AN INITIAL ALLOTMENT OF " ; int ( I5r! ) ;
          n25540:  print "STARDATES"
          l25550:  print "TO COMPLETE YOUR MISSION."
          n25560:  print "AS THE MISSION PROCEEDS, YOU MAY BE GIVEN MORE TIME."
          n25570:  print
          l25580:  print "YOU WILL HAVE " ; I2r! ; "SUPPORTING STARBASE(S)."
          l25590:  print
          n25600:  GOTO L_25740_
        L_25610_:  print "STARDATE.............." ; Ir!
          n25620:  print "NUMBER OF KLINGONS...." ; I1r!
          n25630:  print "NUMBER OF STARDATES..." ; int ( I5r! )
          n25640:  print "NUMBER OF STARBASES..." ; I2r!
          n25650:  print "STARBASE LOCATIONS...." ;
          n25660:  FOR Ir! = 1 TO I2r!
          l25670:      print B2_r! ( Ir! ) ; "-" ; B3_r! ( Ir! ) ;
          n25680:      IF Ir! <> I2r! THEN
          l25690:          print ", " ;
          l25700:      END IF
          n25710:  NEXT Ir!
          l25720:  print
          l25730:  print
        L_25740_:  GOSUB SUB_17870_
          n25750:  print "THE " ; S5s$ ; " IS CURRENTLY IN THE " ; G2s$ ; " QUADRANT."
          n25760:  GOSUB SUB_16970_
          l25770:  RETURN



      SUB_25780_:  REM  - SETWARP
          n25790:  INPUT "WARP FACTOR " ; Kr!
          n25800:  print
          n25810:  IF Kr! < 1 THEN
          l25820:      GOTO L_26120_
          l25830:  END IF
          n25840:  IF Kr! > 10 THEN
          l25850:      GOTO L_26140_
          l25860:  END IF
          n25870:  Jr! = W1r!
          l25880:  W1r! = Kr!
          l25890:  W2r! = W1r! * W1r!
          n25900:  IF ( W1r! <= Jr! ) OR ( W1r! <= 6 ) THEN
          l25910:      GOTO L_25990_
          l25920:  END IF
          n25930:  IF W1r! <= 8 THEN
          l25940:      GOTO L_26010_
          l25950:  END IF
          n25960:  IF W1r! > 8 THEN
          l25970:      GOTO L_26040_
          l25980:  END IF
        L_25990_:  print "ENSIGN CHEKOV - 'WARP FACTOR " ; W1r! ; "CAPTAIN'"
          l26000:  RETURN


        L_26010_:  print "ENGINEER SCOTT - 'AYE, BUT OUR MAXIMUM SAFE SPEED" ;
          n26020:  print " IS WARP 6.'"
          l26030:  RETURN


        L_26040_:  IF W1r! = 10 THEN
          l26050:      GOTO L_26100_
          l26060:  END IF
          n26070:  print "ENGINEER SCOTT-'AYE, CAPTAIN, BUT OUR ENGINES MAY NOT " ;
          n26080:  print "TAKE IT.'"
          l26090:  RETURN


        L_26100_:  print "ENGINEER SCOTT-'AYE, CAPTAIN, WE'LL GIVE IT A TRY."
          l26110:  RETURN


        L_26120_:  print "ENSIGN CHEKOV-'WE CAN'T GO BELOW WARP 1, CAPTAIN.'"
          l26130:  RETURN


        L_26140_:  print "ENSIGN CHEKOV-'OUR TO P SPEED IS WARP 10, CAPTAIN.'"
          n26150:  RETURN



      SUB_26160_:  REM  - SHIELDS
          n26170:  J3r! = 0
          l26180:  IF D4_r! ( 8 ) <> 0 THEN
          l26190:      GOTO L_26500_
          l26200:  END IF
          n26210:  IF S4r! <> 0 THEN
          l26220:      GOTO L_26290_
          l26230:  END IF

      SUB_26240_:  INPUT "SHIELDS ARE DOWN. DO YOU WANT THEM UP " ; Bs$
          n26250:  IF left$ ( Bs$ , 1 ) = "Y" THEN
          l26260:      GOTO L_26340_
          l26270:  END IF
          n26280:  RETURN


        L_26290_:  INPUT "SHIELDS ARE UP. DO YOU WANT THEM DOWN " ; Bs$
          n26300:  IF left$ ( Bs$ , 1 ) = "Y" THEN
          l26310:      GOTO L_26450_
          l26320:  END IF
          n26330:  RETURN


        L_26340_:  S4r! = 1
          l26350:  S9r! = 1
          l26360:  IF C5s$ <> "DOCKED" THEN
          l26370:      E1r! = E1r! - 50
          l26380:  END IF
          n26390:  print "SHIELDS RAISED."
          l26400:  IF E1r! <= 0 THEN
          l26410:      GOTO L_26520_
          l26420:  END IF
          n26430:  J3r! = 1
          l26440:  RETURN


        L_26450_:  S4r! = 0
          l26460:  S9r! = 1
          l26470:  print "SHIELDS LOWERED."
          l26480:  J3r! = 1
          l26490:  RETURN


        L_26500_:  print "SHIELDS DAMAGED AND DOWN."
          l26510:  RETURN


        L_26520_:  print
          l26530:  print "SHIELDS USE UP LAST OF THE ENERGY."
          n26540:  F9r! = 4
          l26550:  GOSUB SUB_9820_
          l26560:  RETURN



      SUB_26570_:  REM  - SUPERNOVA
          n26580:  IF X2r! <> 0 THEN
          l26590:      GOTO L_26890_
          l26600:  END IF
          n26610:  Nr! = int ( rnd ( 1 ) * I6 + 1 )
          l26620:  FOR Xr! = 1 TO 8
          l26630:      FOR Yr! = 1 TO 8
          n26640:          Nr! = Nr! - ( G_r! ( Xr! , Yr! ) - int ( G_r! ( Xr! , Yr! ) / 10 ) * 10 )
          l26650:          IF Nr! <= 0 THEN
          l26660:              GOTO L_26710_
          l26670:          END IF
          n26680:      NEXT Yr!
          l26690:  NEXT Xr!
          l26700:  RETURN


        L_26710_:  IF ( Xr! <> Q1r! ) OR ( Yr! <> Q2r! ) THEN
          l26720:      GOTO L_27030_
          l26730:  END IF
          n26740:  IF J4r! <> 0 THEN
          l26750:      GOTO L_27030_
          l26760:  END IF
          n26770:  Nr! = int ( rnd ( 1 ) * ( G_r! ( Xr! , Yr! ) - int ( G_r! ( Xr! , Yr! ) / 10 ) * 10 ) ) + 1
          n26780:  FOR X3r! = 1 TO 10
          l26790:      FOR Y3r! = 1 TO 10
          l26800:          IF Q_s$ ( X3r! , Y3r! ) <> "*" THEN
          l26810:              GOTO L_26870_
          l26820:          END IF
          n26830:          Nr! = Nr! - 1
          l26840:          IF Nr! = 0 THEN
          l26850:              GOTO L_26890_
          l26860:          END IF
        L_26870_:      NEXT Y3r!
          l26880:  NEXT X3r!
        L_26890_:  print
          l26900:  print "*** RED ALERT!! RED ALERT!! ***"
          n26910:  X3r! = X2r!
          l26920:  Y3r! = Y2
          n26930:  print "*** INCIPIENT SUPERNOVA DETECTED AT SECTOR " ; X3r! ; "-" ; Y3r!
          n26940:  Xr! = Q1r!
          l26950:  Yr! = Q2r!
          l26960:  Kr! = ( X2r! - S6r! ) ^ 2 + ( Y2 - S7r! ) ^ 2
          n26970:  IF Kr! > 1.5 THEN
          l26980:      GOTO L_27100_
          l26990:  END IF
          n27000:  print "*** EMERGENCY AUTO -OVERRIDE JAMMED ***"
          l27010:  A2r! = 1
          l27020:  GOTO L_27100_
        L_27030_:  IF D4_r! ( 9 ) <> 0 THEN
          l27040:      GOTO L_27100_
          l27050:  END IF
          n27060:  print
          l27070:  print "MESSAGE FROM STARFLEET COMMAND...STARDATE " ; int ( D0r! )
          n27080:  print "'SUPERNOVA IN QUADRANT " ; Xr! ; "-" ; Yr! ;
          n27090:  print "....CAUTION ADVISED'"
        L_27100_:  Nr! = G_r! ( Xr! , Yr! )
          l27110:  Rr! = int ( Nr! / 100 )
          l27120:  Qr! = 0
          n27130:  IF ( Xr! <> Q1r! ) OR ( Yr! <> Q2r! ) THEN
          l27140:      GOTO L_27180_
          l27150:  END IF
          n27160:  K3r! = 0
          l27170:  C3r! = 0
        L_27180_:  IF Rr! = 0 THEN
          l27190:      GOTO L_27400_
          l27200:  END IF
          n27210:  R1r! = R1r! - Rr!
          l27220:  IF R2r! = 0 THEN
          l27230:      GOTO L_27400_
          l27240:  END IF
          n27250:  FOR Lr! = 1 TO R2r!
          l27260:      IF ( C1_r! ( Lr! ) <> Xr! ) OR ( C2_r! ( Lr! ) <> Yr! ) THEN
          l27270:          GOTO L_27390_
          l27280:      END IF
          n27290:      C1_r! ( Lr! ) = C1_r! ( R2r! )
          l27300:      C2_r! ( Lr! ) = C2_r! ( R2r! )
          l27310:      C1_r! ( R2r! ) = 0
          l27320:      C2_r! ( R2r! ) = 0
          n27330:      R2r! = R2r! - 1
          l27340:      Rr! = Rr! - 1
          l27350:      Qr! = 1
          l27360:      IF R2r! = 0 THEN
          l27370:          F1_r! ( 2 ) = 1E + 30
          l27380:      END IF
        L_27390_:  NEXT Lr!
        L_27400_:  IF R3r! = 0 THEN
          l27410:      GOTO L_27530_
          l27420:  END IF
          n27430:  FOR Lr! = 1 TO R3r!
          l27440:      IF ( B2_r! ( Lr! ) <> Xr! ) OR ( B3_r! ( Lr! ) <> Yr! ) THEN
          l27450:          GOTO L_27520_
          l27460:      END IF
          n27470:      B2_r! ( Lr! ) = B2_r! ( R3r! )
          l27480:      B3_r! ( Lr! ) = B3_r! ( R3r! )
          l27490:      B2_r! ( R3r! ) = 0
          l27500:      B3_r! ( R3r! ) = 0
          l27510:      R3r! = R3r! - 1
        L_27520_:  NEXT Lr!
        L_27530_:  IF X2r! = 0 THEN
          l27540:      GOTO L_27610_
          l27550:  END IF
          n27560:  Nr! = G_r! ( Xr! , Yr! ) - int ( G_r! ( Xr! , Yr! ) / 100 ) * 100
          n27570:  S1r! = S1r! + ( Nr! - int ( Nr! / 10 ) * 10 )
          l27580:  B1r! = B1r! + int ( Nr! / 10 )
          n27590:  K1r! = K1r! + Rr!
          l27600:  K2r! = K2r! + Qr!
        L_27610_:  IF ( S2_r! ( Xr! , Yr! ) <> 0 ) AND ( D4_r! ( 9 ) <> 0 ) THEN
          l27620:      S2_r! ( Xr! , Yr! ) = 1000 + G_r! ( Xr! , Yr! )
          l27630:  END IF
          n27640:  IF ( D4_r! ( 9 ) = 0 ) OR ( ( Q1r! = Xr! ) AND ( Q2r! = Yr! ) ) THEN
          l27650:      S2_r! ( Xr! , Yr! ) = 1
          l27660:  END IF
          n27670:  G_r! ( Xr! , Yr! ) = 1000
          n27680:  IF ( R1r! <> 0 ) OR ( ( Xr! = Q1r! ) AND ( Yr! = Q2r! ) ) THEN
          l27690:      GOTO L_27770_
          l27700:  END IF
          n27710:  print
          l27720:  print "MR. SPOCK- 'CAPTAIN, A SUPERNOVA IN QUADRANT " ;
          n27730:  print Xr! ; "-" ; Yr! ; "HAS JUST DESTROYED THE LAST OF THE KLINGONS.'"
          n27740:  F9r! = 1
          l27750:  GOSUB SUB_9820_
          l27760:  RETURN


        L_27770_:  IF A2r! = 0 THEN
          l27780:      RETURN
          l27790:  END IF
          n27800:  F9r! = 8
          l27810:  GOSUB SUB_9820_
          l27820:  RETURN



      SUB_27830_:  REM  - SORTKL
          n27840:  IF K3r! <= 1 THEN
          l27850:      RETURN
          l27860:  END IF
        L_27870_:  Z4r! = 0
          n27880:  FOR BT_Or! = 1 TO K3r! - 1
          l27890:      IF K7_r! ( BT_Or! ) <= K7_r! ( BT_Or! + 1 ) THEN
          l27900:          GOTO L_28080_
          l27910:      END IF
          n27920:      Kr! = K7_r! ( BT_Or! )
          l27930:      K7_r! ( BT_Or! ) = K7_r! ( BT_Or! + 1 )
          l27940:      K7_r! ( BT_Or! + 1 ) = Kr!
          n27950:      Kr! = K8_r! ( BT_Or! )
          l27960:      K8_r! ( BT_Or! ) = K8_r! ( BT_Or! + 1 )
          l27970:      K8_r! ( BT_Or! + 1 ) = Kr!
          n27980:      Kr! = K4_r! ( BT_Or! )
          l27990:      K4_r! ( BT_Or! ) = K4_r! ( BT_Or! + 1 )
          l28000:      K4_r! ( BT_Or! + 1 ) = Kr!
          n28010:      Kr! = K5_r! ( BT_Or! )
          l28020:      K5_r! ( BT_Or! ) = K5_r! ( BT_Or! + 1 )
          l28030:      K5_r! ( BT_Or! + 1 ) = Kr!
          n28040:      Kr! = K6_r! ( BT_Or! )
          l28050:      K6_r! ( BT_Or! ) = K6_r! ( BT_Or! + 1 )
          l28060:      K6_r! ( BT_Or! + 1 ) = Kr!
          n28070:      Z4r! = 1
        L_28080_:  NEXT BT_Or!
          n28090:  IF Z4r! <> 0 THEN
          l28100:      GOTO L_27870_
          l28110:  END IF
          n28120:  RETURN



      SUB_28130_:  REM  - SRSCAN
          n28140:  IF D4_r! ( 1 ) <> 0 THEN
          l28150:      GOTO L_28750_
          l28160:      REM  damage ? rhn
          l28170:  END IF
          n28180:  print
          l28190:  print "  1 2 3 4 5 6 7 8 9 10"
          n28200:  FOR Ir! = 1 TO 10
          l28210:      IF Ir! < 10 THEN
          l28220:          print " " ;
          l28230:      END IF
          n28240:      print Ir! ;
          l28250:      FOR Jr! = 1 TO 10
          l28260:          print Q_s$ ( Ir! , Jr! ) ; " " ;
          l28270:      NEXT Jr!
        L_28280_:      IF Ir! <= 5 THEN
          l28290:          ON Ir! GOTO L_28320_ , L_28340_ , L_28390_ , L_28410_ , L_28540_
          l28300:      END IF
          n28310:      ON Ir! GOTO L_28560_ , L_28580_ , L_28600_ , L_28700_ , L_28720_
        L_28320_:      print " STARDATE    " ; Fktr ( D0r! )
          l28330:      GOTO L_28730_
        L_28340_:      IF C5s$ <> "DOCKED" THEN
          l28350:          GOSUB SUB_16880_
          l28360:      END IF
          n28370:      print " CONDITION   " ; C5s$
          l28380:      GOTO L_28730_
        L_28390_:      print " POSITION    " ; Q1r! ; "-" ; Q2r! ; ", " ; S6r! ; "-" ; S7r!
          l28400:      GOTO L_28730_
        L_28410_:      print " LIFE SUPPORT  " ;
          l28420:      IF D4_r! ( 5 ) <> 0 THEN
          l28430:          GOTO L_28470_
          l28440:      END IF
          n28450:      print "ACTIVE"
          l28460:      GOTO L_28730_
        L_28470_:      IF C5s$ <> "DOCKED" THEN
          l28480:          GOTO L_28520_
          l28490:      END IF
          n28500:      print "DAMAGED, SUPPORTED BY STARBASE"
          l28510:      GOTO L_28730_
        L_28520_:      print "DAMAGED, RESERVES=" ; Fkts ( L1r! )
          l28530:      GOTO L_28730_
        L_28540_:      print " WARP FACTOR  " ; Fktr ( W1r! )
          l28550:      GOTO L_28730_
        L_28560_:      print " ENERGY " ; SPC$ ( 8 ) ; .01 * int ( 100 * E1r! )
          l28570:      GOTO L_28730_
        L_28580_:      print " TORPEDOS     " ; T4r!
          l28590:      GOTO L_28730_
        L_28600_:      print " SHIELDS      " ;
          l28610:      Bs$ = "DOWN,"
          l28620:      IF S4r! <> 0 THEN
          l28630:          Bs$ = "UP,"
          l28640:      END IF
          n28650:      IF D4_r! ( 8 ) > 0 THEN
          l28660:          Bs$ = "DAMAGED,"
          l28670:      END IF
          n28680:      print Bs$ ; int ( 100 * S3r! / I8 + .5 ) ; "%"
          l28690:      GOTO L_28730_
        L_28700_:      print " KLINGONS LEFT " ; R1r!
          l28710:      GOTO L_28730_
        L_28720_:      print " TIME LEFT    " ; Fkts ( R5r! )
        L_28730_:  NEXT Ir!
          l28740:  RETURN


        L_28750_:  prit "SHORT RANGE SENSORS DAMAGED."
          l28760:  RETURN



      SUB_28770_:  REM  - TIMEWARP
          n28780:  print
          l28790:  print "*** TIME WARP ENTERED ***"
          l28800:  print "YOU ARE TRAVELING" ;
          n28810:
          n28820:  IF S0r! <> 0 THEN
          l28830:      GOTO L_28890_
          l28840:  END IF
          n28850:  T1r! = - .5 * I5r! * log ( rnd ( 1 ) )
          n28860:  print " FOR WARD IN TIME " ; Fktr ( T1r! ) ; "STARDATES."
          n28870:  F1_r! ( 2 ) = F1_r! ( 2 ) + T1r!
          l28880:  GOTO L_29350_
        L_28890_:  Mr! = D0r!
          l28900:  D0r! = D9_r! ( 1 )
          n28910:  print "BACKWARD IN TIME " ; Fktr ( Mr! - D0r! ) ; "STARDATES."
          l28920:  S0r! = 0
          n28930:  R1r! = D9_r! ( 2 )
          l28940:  R2r! = D9_r! ( 3 )
          l28950:  R3r! = D9_r! ( 4 )
          l28960:  R4r! = D9_r! ( 5 )
          l28970:  R5r! = D9_r! ( 6 )
          n28980:  S1r! = D9_r! ( 7 )
          l28990:  B1r! = D9_r! ( 8 )
          l29000:  K1r! = D9_r! ( 9 )
          l29010:  K2r! = D9_r! ( 10 )
          n29020:  FOR Ir! = 1 TO 8
          l29030:      FOR Jr! = 1 TO 8
          l29040:          G_r! ( Ir! , Jr! ) = D9_r! ( Ir! - 1 + 8 * ( Jr! - 1 ) + 11 )
          l29050:      NEXT Jr!
          l29060:  NEXT Ir!
          n29070:  FOR Ir! = 75 TO 84
          l29080:      C1_r! ( Ir! - 74 ) = D9_r! ( Ir! )
          l29090:  NEXT
          n29100:  FOR Ir! = 85 TO 94
          l29110:      C2_r! ( Ir! - 84 ) = D9_r! ( Ir! )
          l29120:  NEXT
          n29130:  FOR Ir! = 95 TO 99
          l29140:      B2_r! ( Ir! - 94 ) = D9_r! ( Ir! )
          l29150:  NEXT
          n29160:  FOR Ir! = 100 TO 104
          l29170:      B3_r! ( Ir! - 99 ) = D9_r! ( Ir! )
          l29180:  NEXT
          l29190:  B4r! = D9_r! ( 105 )
          l29200:  B5 = D9_r! ( 106 )
          n29210:  F1_r! ( 1 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
          n29220:  IF R2r! <> 0 THEN
          l29230:      F1_r! ( 2 ) = D0r! - ( I5r! / R2r! ) * log ( rnd ( 1 ) )
          l29240:  END IF
          n29250:  F1_r! ( 3 ) = D0r! - .5 * I5r! * log ( rnd ( 1 ) )
          n29260:  FOR Ir! = 1 TO 8
          l29270:      FOR Jr! = 1 TO 8
          l29280:          IF 1 < S2_r! ( Ir! , Jr! ) THEN
          l29290:              S2_r! ( Ir! , Jr! ) = 1
          l29300:          END IF
          n29310:      NEXT Jr!
          l29320:  NEXT Ir!
          n29330:  print
          n29340:  print "SPOCK HAS RECONSTRUCTED A CORRECT STAR CHART FROM MEMORY."
        L_29350_:  GOSUB SUB_16970_
          l29360:  RETURN



      SUB_29370_:  REM  - TRANSFER
          n29380:  J3r! = 0
          n29390:  IF D4_r! ( 12 ) <> 0 THEN
          l29400:      GOTO L_29690_
          l29410:  END IF
          n29420:  INPUT "NUMBER OF UNITS TO SHIELDS " ; Z3r!
          n29430:  IF Z3r! < 0 THEN
          l29440:      RETURN
          l29450:  END IF
          n29460:  IF E1r! + S3r! - Z3r! > 0 THEN
          l29470:      GOTO L_29510_
          l29480:  END IF
          n29490:  print "SCOTT HERE- 'WE ONLY HAVE " ; Fktr ( E1r! + S3r! ) ; "UNITS LEFT.'"
          n29500:  RETURN


        L_29510_:  E1r! = E1r! + S3r! - Z3r!
          l29520:  S3r! = Z3r!
          l29530:  print "--ENERGY TRANSFER COMPLETE--"
          n29540:  print "(SHIP ENERGY=" ; Fktr ( E1r! ) ; "  SHIELD ENERGY=" ; Fktr ( S3r! ) ; ")"
          n29550:  J3r! = 1
          n29560:  T1r! = .1
          l29570:  P5r! = ( K3r! + 4 * C3r! ) / 48
          l29580:  IF P5r! < .1 THEN
          l29590:      P5r! = .1
          l29600:  END IF
          n29610:  IF P5r! > rnd ( 1 ) THEN
          l29620:      GOSUB SUB_2320_
          l29630:  END IF
          n29640:  IF A2r! <> 0 THEN
          l29650:      RETURN
          l29660:  END IF
          n29670:  GOSUB SUB_7430_
          l29680:  RETURN


        L_29690_:  print "TRANSFER PANEL DAMAGED."
          l29700:  RETURN



      SUB_29710_:  REM  - VISUAL
        L_29720_:  INPUT "WHICH DIRECTION " ; Zr!
          n29730:  print
          n29740:  J3r! = 0
          l29750:  IF Zr! < 0 THEN
          l29760:      RETURN
          l29770:  END IF
          n29780:  IF Zr! <= 12 THEN
          l29790:      GOTO L_29830_
          l29800:  END IF
          n29810:  print "DIRECTIONS ARE FROM 0 TO 12 ONLY"
          l29820:  GOTO L_29720_
        L_29830_:  T1r! = .05
          l29840:  Pr! = ( K3r! + 4 * C3r! ) / 48
          l29850:  IF Pr! < .05 THEN
          l29860:      Pr! = .05
          l29870:  END IF
          n29880:  IF Pr! > rnd ( 1 ) THEN
          l29890:      GOSUB SUB_2320_
          l29900:  END IF
          n29910:  IF A2r! <> 0 THEN
          l29920:      RETURN
          l29930:  END IF
          n29940:  GOSUB SUB_7430_
          l29950:  J3r! = 1
          l29960:  IF A2r! <> 0 THEN
          l29970:      RETURN
          l29980:  END IF
          n29990:  D5r! = int ( ( Zr! / 12 ) * 8 + 1.5 )
          l30000:  IF D5r! > 8 THEN
          l30010:      D5r! = 1
          l30020:  END IF
          n30030:  FOR Ir! = 1 TO 5
          l30040:      FOR Jr! = 1 TO 5
          l30050:          V_s$ ( Ir! , Jr! ) = " "
          l30060:      NEXT Jr!
          l30070:  NEXT Ir!
          l30080:  Nr! = 0
          n30090:  V_s$ ( 3 , 3 ) = left$ ( S5s$ , 1 )
          n30100:  ON D5r! GOTO L_30110_ , L_30320_ , L_30520_ , L_30730_ , L_30930_ , L_31140_ , L_31340_ , L_31550_
        L_30110_:  Ir! = S6r! - 2
          l30120:  Jr! = S7r! - 2
          l30130:  V_s$ ( 1 , 1 ) = Q$
          l30140:  IF ( Jr! > 0 ) AND ( Ir! > 0 ) THEN
          l30150:      V_s$ ( 1 , 1 ) = Q_s$ ( Ir! , Jr! )
          l30160:  END IF
          n30170:  Ir! = S6r! - 1
          l30180:  Jr! = S7r! - 1
          l30190:  V_s$ ( 2 , 2 ) = Q$
          l30200:  IF ( Ir! > 0 ) AND ( Jr! > 0 ) THEN
          l30210:      V_s$ ( 2 , 2 ) = Q_s$ ( Ir! , Jr! )
          l30220:  END IF
          n30230:  Nr! = Nr! + 1
          l30240:  IF Nr! = 3 THEN
          l30250:      GOTO L_31760_
          l30260:  END IF
          n30270:  Ir! = S6r! - 2
          l30280:  V_s$ ( 1 , 2 ) = Q$
          l30290:  IF ( Ir! > 0 ) AND ( Jr! > 0 ) THEN
          l30300:      V_s$ ( 1 , 2 ) = Q_s$ ( Ir! , Jr! )
          l30310:  END IF
        L_30320_:  Ir! = S6r! - 2
          l30330:  V_s$ ( 1 , 3 ) = Q$
          l30340:  IF Ir! > 0 THEN
          l30350:      V_s$ ( 1 , 3 ) = Q_s$ ( Ir! , S7r! )
          l30360:  END IF
          n30370:  Ir! = S6r! - 1
          l30380:  V_s$ ( 2 , 3 ) = Q$
          l30390:  IF Ir! > 0 THEN
          l30400:      V_s$ ( 2 , 3 ) = Q_s$ ( Ir! , S7r! )
          l30410:  END IF
          n30420:  Nr! = Nr! + 1
          l30430:  IF Nr! = 3 THEN
          l30440:      GOTO L_31760_
          l30450:  END IF
          n30460:  Ir! = S6r! - 2
          l30470:  Jr! = S7r! + 1
          l30480:  V_s$ ( 1 , 4 ) = Q$
          l30490:  IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN
          l30500:      V_s$ ( 1 , 4 ) = Q_s$ ( Ir! , Jr! )
          l30510:  END IF
        L_30520_:  Ir! = S6r! - 2
          l30530:  Jr! = S7r! + 2
          l30540:  V_s$ ( 1 , 5 ) = Q$
          l30550:  IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN
          l30560:      V_s$ ( 1 , 5 ) = Q_s$ ( Ir! , Jr! )
          l30570:  END IF
          n30580:  Ir! = S6r! - 1
          l30590:  Jr! = S7r! + 1
          l30600:  V_s$ ( 2 , 4 ) = Q$
          l30610:  IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN
          l30620:      V_s$ ( 2 , 4 ) = Q_s$ ( Ir! , Jr! )
          l30630:  END IF
          n30640:  Nr! = Nr! + 1
          l30650:  IF Nr! = 3 THEN
          l30660:      GOTO L_31760_
          l30670:  END IF
          n30680:  Jr! = S7r! + 2
          l30690:  V_s$ ( 2 , 5 ) = Q$
          l30700:  IF ( Ir! > 0 ) AND ( Jr! < 11 ) THEN
          l30710:      V_s$ ( 2 , 5 ) = Q_s$ ( Ir! , Jr! )
          l30720:  END IF
        L_30730_:  Jr! = S7r! + 2
          l30740:  V_s$ ( 3 , 5 ) = Q$
          l30750:  IF Jr! < 11 THEN
          l30760:      V_s$ ( 3 , 5 ) = Q_s$ ( S6r! , Jr! )
          l30770:  END IF
          n30780:  Jr! = S7r! + 1
          l30790:  V_s$ ( 3 , 4 ) = Q$
          l30800:  IF Jr! < 11 THEN
          l30810:      V_s$ ( 3 , 4 ) = Q_s$ ( S6r! , Jr! )
          l30820:  END IF
          n30830:  Nr! = Nr! + 1
          l30840:  IF Nr! = 3 THEN
          l30850:      GOTO L_31760_
          l30860:  END IF
          n30870:  Ir! = S6r! + 1
          l30880:  Jr! = S7r! + 2
          l30890:  V_s$ ( 4 , 5 ) = Q$
          l30900:  IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN
          l30910:      V_s$ ( 4 , 5 ) = Q_s$ ( Ir! , Jr! )
          l30920:  END IF
        L_30930_:  Ir! = S6r! + 2
          l30940:  Jr! = S7r! + 2
          l30950:  V_s$ ( 5 , 5 ) = Q$
          l30960:  IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN
          l30970:      V_s$ ( 5 , 5 ) = Q_s$ ( Ir! , Jr! )
          l30980:  END IF
          n30990:  Ir! = S6r! + 1
          l31000:  Jr! = S7r! + 1
          l31010:  V_s$ ( 4 , 4 ) = Q$
          l31020:  IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN
          l31030:      V_s$ ( 4 , 4 ) = Q_s$ ( Ir! , Jr! )
          l31040:  END IF
          n31050:  Nr! = Nr! + 1
          l31060:  IF Nr! = 3 THEN
          l31070:      GOTO L_31760_
          l31080:  END IF
          n31090:  Ir! = S6r! + 2
          l31100:  V_s$ ( 5 , 4 ) = Q$
          l31110:  IF ( Ir! < 11 ) AND ( Jr! < 11 ) THEN
          l31120:      V_s$ ( 5 , 4 ) = Q_s$ ( Ir! , Jr! )
          l31130:  END IF
        L_31140_:  Ir! = S6r! + 2
          l31150:  V_s$ ( 5 , 3 ) = Q$
          l31160:  IF Ir! < 11 THEN
          l31170:      V_s$ ( 5 , 3 ) = Q_s$ ( Ir! , S7r! )
          l31180:  END IF
          n31190:  Ir! = S6r! + 1
          l31200:  V_s$ ( 4 , 3 ) = Q$
          l31210:  IF Ir! < 11 THEN
          l31220:      V_s$ ( 4 , 3 ) = Q_s$ ( Ir! , S7r! )
          l31230:  END IF
          n31240:  Nr! = Nr! + 1
          l31250:  IF Nr! = 3 THEN
          l31260:      GOTO L_31760_
          l31270:  END IF
          n31280:  Ir! = S6r! + 2
          l31290:  Jr! = S7r! - 1
          l31300:  V_s$ ( 5 , 2 ) = Q$
          l31310:  IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN
          l31320:      V_s$ ( 5 , 2 ) = Q_s$ ( Ir! , Jr! )
          l31330:  END IF
        L_31340_:  Ir! = S6r! + 2
          l31350:  Jr! = S7r! - 2
          l31360:  V_s$ ( 5 , 1 ) = Q$
          l31370:  IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN
          l31380:      V_s$ ( 5 , 1 ) = Q_s$ ( Ir! , Jr! )
          l31390:  END IF
          n31400:  Ir! = S6r! + 1
          l31410:  Jr! = S7r! - 1
          l31420:  V_s$ ( 4 , 2 ) = Q$
          l31430:  IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN
          l31440:      V_s$ ( 4 , 2 ) = Q_s$ ( Ir! , Jr! )
          l31450:  END IF
          n31460:  Nr! = Nr! + 1
          l31470:  IF Nr! = 3 THEN
          l31480:      GOTO L_31760_
          l31490:  END IF
          n31500:  Jr! = S7r! - 2
          l31510:  V_s$ ( 4 , 1 ) = Q$
          l31520:  IF ( Ir! < 11 ) AND ( Jr! > 0 ) THEN
          l31530:      V_s$ ( 4 , 1 ) = Q_s$ ( Ir! , Jr! )
          l31540:  END IF
        L_31550_:  Jr! = S7r! - 2
          l31560:  V_s$ ( 3 , 1 ) = Q$
          l31570:  IF Jr! > 0 THEN
          l31580:      V_s$ ( 3 , 1 ) = Q_s$ ( S6r! , Jr! )
          l31590:  END IF
          n31600:  Jr! = S7r! - 1
          l31610:  V_s$ ( 3 , 2 ) = Q$
          l31620:  IF Jr! > 0 THEN
          l31630:      V_s$ ( 3 , 2 ) = Q_s$ ( S6r! , Jr! )
          l31640:  END IF
          n31650:  Nr! = Nr! + 1
          l31660:  IF Nr! = 3 THEN
          l31670:      GOTO L_31760_
          l31680:  END IF
          n31690:  Ir! = S6r! - 1
          l31700:  Jr! = S7r! - 2
          l31710:  V_s$ ( 2 , 1 ) = Q$
          l31720:  IF ( Ir! > 0 ) AND ( Jr! > 0 ) THEN
          l31730:      V_s$ ( 2 , 1 ) = Q_s$ ( Ir! , Jr! )
          l31740:  END IF
          n31750:  GOTO L_30110_
        L_31760_:  FOR Ir! = 1 TO 5
          n31770:      IF ( V_s$ ( Ir! , 1 ) = " " ) AND ( V_s$ ( Ir! , 3 ) = " " ) AND ( V_s$ ( Ir! , 5 ) = " " ) THEN
          l31780:          GOTO L_31850_
          l31790:      END IF
          n31800:      print " " ;
          n31810:      FOR Jr! = 1 TO 5
          l31820:          print V_s$ ( Ir! , Jr! ) ; " " ;
          l31830:      NEXT Jr!
          l31840:      print
        L_31850_:  NEXT Ir!
          l31860:  RETURN



      SUB_31870_:  REM  - WAIT
          n31880:  J3r! = 0
          l31890:  INPUT "HOW MANY STARDATES " ; Z5r!
          n31900:  IF ( Z5r! < R5r! ) AND ( K3r! = 0 ) THEN
          l31910:      GOTO L_31970_
          l31920:  END IF
          n31930:  INPUT "ARE YOU SURE? " ; Bs$
          l31940:  IF left$ ( Bs$ , 1 ) <> "Y" THEN
          l31950:      RETURN
          l31960:  END IF
        L_31970_:  R6r! = 1
        L_31980_:  IF Z5r! <= 0 THEN
          l31990:      R6r! = 0
          l32000:  END IF
          n32010:  IF R6r! = 0 THEN
          l32020:      RETURN
          l32030:  END IF
          n32040:  T1r! = Z5r!
          l32050:  Z6r! = Z5r!
          n32060:  IF K3r! = 0 THEN
          l32070:      GOTO L_32140_
          l32080:  END IF
          n32090:  T1r! = 1 + rnd ( 1 )
          l32100:  IF Z5r! < T1r! THEN
          l32110:      T1r! = Z5r!
          l32120:  END IF
          n32130:  Z6r! = T1r!
        L_32140_:  IF T1r! < Z5r! THEN
          l32150:      GOSUB SUB_2320_
          l32160:  END IF
          n32170:  IF A2r! <> 0 THEN
          l32180:      RETURN
          l32190:  END IF
          n32200:  GOSUB SUB_7430_
          l32210:  J3r! = 1
          l32220:  IF A2r! <> 0 THEN
          l32230:      RETURN
          l32240:  END IF
          n32250:  Z5r! = Z5r! - Z6r!
          l32260:  GOTO L_31980_

      SUB_32270_:  REM :WARP
          n32280:  J3r! = 0
          l32290:  IF D4_r! ( 6 ) <> 0 THEN
          l32300:      GOTO L_33570_
          l32310:  END IF
          n32320:  INPUT "ENTER COURSE AND DISTANCE " ; D2r! , D1r!
          n32330:  IF D2r! < 0 THEN
          l32340:      RETURN
          l32350:  END IF
          n32360:  Pr! = ( D1r! + .05 ) * W1r! * W1r! * W1r! * ( S4r! + 1 )
          l32370:  IF Pr! < E1r! THEN
          l32380:      GOTO L_32620_
          l32390:  END IF
          n32400:  J3r! = 0
          l32410:  print
          l32420:  print "ENGINEERING TO BRIDGE--"
          n32430:  IF ( S4r! = 0 ) OR ( .5 * Pr! > E1r! ) THEN
          l32440:      GOTO L_32490_
          l32450:  END IF
          n32460:  print " WE HAVEN'T THE ENERGY TO GO THAT FAR WITH " ;
          n32470:  print " THE SHIELDS UP."
          l32480:  RETURN


        L_32490_:  Wr! = int ( ( E1r! / ( D1r! + .05 ) ) ^ .333333 )
          l32500:  IF Wr! <= 0 THEN
          l32510:      GOTO L_32600_
          l32520:  END IF
          n32530:  print " WE HAVEN'T THE ENERGY. BUT WE COULD DO IT AT WARP " ; Wr!
          n32540:  IF S4r! <> 0 THEN
          l32550:      GOTO L_32580_
          l32560:  END IF
          n32570:  RETURN


        L_32580_:  print "  IF YOU'LL LOWER THE SHIELDS."
          l32590:  RETURN


        L_32600_:  print " WE CAN'T DO IT, CAPTAIN. WE HAVEN'T GOT THE ENERGY."
          n32610:  RETURN


        L_32620_:  T1r! = 10 * D1r! / W2r!
          l32630:  IF T1r! < .8 * R5r! THEN
          l32640:      GOTO SUB_32770_
          l32650:  END IF
          n32660:  print
          l32670:  print "MR. SPOCK - 'CAPTAIN, I COMPUTE THAT SUCH A TRIP"
          n32680:  print " WILL REQUIRE APPROXIMATELY " ; Fktr ( 100 * T1r! / R5r! ) ;
          n32690:  print "PERCENT"
          l32700:  print "  OF OUR REM AINING TIME. ARE YOU SURE " ;
          n32710:  INPUT "THIS IS WISE " ; Bs$
          l32720:  IF left$ ( Bs$ , 1 ) = "Y" THEN
          l32730:      GOTO SUB_32770_
          l32740:  END IF
          n32750:  J3r! = 0
          l32760:  RETURN



      SUB_32770_:  Q4r! = 0
          l32780:  Wr! = 0
          l32790:  IF W1r! <= 6 THEN
          l32800:      GOTO L_33310_
          l32810:  END IF
          n32820:  Pr! = D1r! * ( 6 - W1r! ) ^ 2 / 66.66666
          l32830:  IF Pr! > rnd ( 1 ) THEN
          l32840:      Q4r! = 1
          l32850:  END IF
          n32860:  IF Q4r! <> 0 THEN
          l32870:      D1r! = rnd ( 1 ) * D1r!
          l32880:  END IF
          n32890:  Wr! = 0
          l32900:  IF W1r! < 10 THEN
          l32910:      GOTO L_32960_
          l32920:  END IF
          n32930:  IF .25 * D1r! > rnd ( 1 ) THEN
          l32940:      Wr! = 1
          l32950:  END IF
        L_32960_:  IF ( Q4r! = 0 ) AND ( Wr! = 0 ) THEN
          l32970:      GOTO L_33310_
          l32980:  END IF
          n32990:  Ar! = ( 15 - D2r! ) * .5236
          l33000:  X1r! = - sin ( Ar! )
          l33010:  X2r! = cos ( Ar! )
          n33020:  B8r! = abs ( X1r! )
          l33030:  IF abs ( X2r! ) > abs ( X1r! ) THEN
          l33040:      B8r! = abs ( X2r! )
          l33050:  END IF
          n33060:  X1r! = X1r! / B8r!
          l33070:  Y1r! = Y1r! / B8r!
          l33080:  Nr! = int ( 10 * D1r! * B8r! + .5 )
          l33090:  Xr! = S6r!
          l33100:  Yr! = S7r!
          n33110:  IF Nr! = 0 THEN
          l33120:      GOTO L_33310_
          l33130:  END IF
          n33140:  FOR Lr! = 1 TO Nr!
          n33150:      Xr! = Xr! + X1r!
          l33160:      Qr! = int ( Xr! + .5 )
          l33170:      IF ( Qr! < 1 ) OR ( Qr! > 10 ) THEN
          l33180:          GOTO L_33310_
          l33190:      END IF
          n33200:      Yr! = Yr! + Y1r!
          l33210:      Rr! = int ( Yr! + .5 )
          l33220:      IF ( Rr! < 1 ) OR ( Rr! > 10 ) THEN
          l33230:          GOTO L_33310_
          l33240:      END IF
          n33250:      IF Q_s$ ( Qr! , Rr! ) = "." THEN
          l33260:          GOTO L_33300_
          l33270:      END IF
          n33280:      Q4r! = 0
          l33290:      Wr! = 0
        L_33300_:  NEXT Lr!
        L_33310_:  GOSUB SUB_13600_
          l33320:  IF A2r! <> 0 THEN
          l33330:      RETURN
          l33340:  END IF
          n33350:  E1r! = E1r! - D1r! * W1r! * W1r! * W1r! * ( S4r! + 1 )
          l33360:  IF E1r! > 0 THEN
          l33370:      GOTO L_33420_
          l33380:  END IF
          n33390:  F9r! = 4
          l33400:  GOSUB SUB_9820_
          l33410:  RETURN


        L_33420_:  T1r! = 10 * D1r! / W2r!
          l33430:  IF Wr! <> 0 THEN
          l33440:      GOSUB SUB_28770_
          l33450:  END IF
          n33460:  IF Q4r! = 0 THEN
          l33470:      GOTO L_33550_
          l33480:  END IF
          n33490:  print
          l33500:  print "ENGINEERING TO BRIDGE--"
          l33510:  print "  SCOTT HERE- " ;
          n33520:  print "'WE'VE JUST BLOWN THE WARP ENGINES."
          n33530:  print "  WE'LL HAVE TO SHUT 'ER DOWN HERE, CAPTAIN.'"
          n33540:  D4_r! ( 6 ) = D5r! * ( 3 * rnd ( 1 ) + 1 )
        L_33550_:  J3r! = 1
          l33560:  RETURN


        L_33570_:  print "WARP ENGINES DAMAGED."
          l33580:  RETURN



      SUB_33590_:  REM  - ABANDON
          n33600:  ON sgn ( D4_r! ( 10 ) ) + 2 GOTO L_33610_ , L_33650_ , L_33630_
        L_33610_:  print "YE FAERIE QUEENE HAS NO SHUTTLE CRAFT."
          l33620:  RETURN


        L_33630_:  print "SHUTTLE CRAFT DAMAGED."
          l33640:  RETURN


        L_33650_:  print
          l33660:  print "***ABANDON SHIP! ABANDON SHIP!"
          n33670:  print "***ALL HANDS ABANDON SHIP!"
          l33680:  print
          n33690:  print "YOU AND THE BRIDGE CREW ESCAPE IN THE GALILEO."
          n33700:  print "THE REM AINDER OF THE CREW BEAMS DOWN"
          n33710:  print "TO THE NEAREST HABITABLE PLANET."
          l33720:  IF R3r! <> 0 THEN
          l33730:      GOTO L_33780_
          l33740:  END IF
          n33750:  F9r! = 9
          l33760:  GOSUB SUB_9820_
          l33770:  RETURN


        L_33780_:  print
          l33790:  print "YOU ARE CAPTURED BY KLINGONS AND RELEASED TO "
          n33800:  print "THE FEDERATION IN A PRISONER-OF-WAR EXCHANGE."
          n33810:  print "STARFLEET PUTS YOU IN COMMAND OF ANOTHER SHIP,"
          n33820:  print "THE FAERIE QUEENE WHICH IS ANTIQUATED, BUT"
          n33830:  print "STILL USABLE."
          l33840:  Nr! = int ( rnd ( 1 ) * R3r! + 1 )
          l33850:  Q1r! = B2_r! ( Nr! )
          l33860:  Q2r! = B3_r! ( Nr! )
        L_33870_:  S6r! = 5
          l33880:  S7r! = 5
          l33890:  GOSUB SUB_16970_
          l33900:  Q_s$ ( S6r! , S7r! ) = "."
          n33910:  FOR Lr! = 1 TO 3
          l33920:      S6r! = int ( 3 * rnd ( 1 ) - 1 + B6r! )
          n33930:      IF ( S6r! < 1 ) OR ( S7r! > 10 ) THEN
          l33940:          GOTO L_34030_
          l33950:      END IF
          n33960:      S7r! = int ( 3 * rnd ( 1 ) - 1 + B7 )
          l33970:      IF ( S7r! < 1 ) OR ( S7r! > 10 ) THEN
          l33980:          GOTO L_34030_
          l33990:      END IF
          n34000:      IF Q_s$ ( S6r! , S7r! ) = "." THEN
          l34010:          GOTO L_34050_
          l34020:      END IF
        L_34030_:  NEXT Lr!
          l34040:  GOTO L_33870_
        L_34050_:  S5s$ = "FAERIE QUEENE"
          l34060:  Q_s$ ( S6r! , S7r! ) = left$ ( S5s$ , 1 )
          l34070:  C5s$ = "DOCKED"
          n34080:  FOR Lr! = 1 TO 12
          l34090:      D4_r! ( Lr! ) = 0
          l34100:  NEXT
          l34110:  D4_r! ( 10 ) = - 1
          l34120:  E1r! = 3000
          l34130:  I7r! = E1r!
          n34140:  S3r! = 1500
          l34150:  I8 = S3r!
          l34160:  T4r! = 6
          l34170:  I9 = T4r!
          l34180:  L1r! = 3
          l34190:  J1 = L1r!
          l34200:  S4r! = 0
          l34210:  W1r! = 5
          l34220:  W2r! = 25
          n34230:  RETURN



      SUB_34240_:  REM  - DESTRUCT
          n34250:  IF D4_r! ( 11 ) = 0 THEN
          l34260:      GOTO L_34300_
          l34270:  END IF
          n34280:  print "COMPUTER DAMAGED - CANNOT EXECUTE DESTRUCT SEQUENCE"
          n34290:  RETURN


        L_34300_:  print
          l34310:  print "  ---WORKING---"
          n34320:  print "IDENT IF ICATION-POSITIVE"
          n34330:  print "SELF-DESTRUCT-SEQUENCE-ACTIVATED"
          l34340:  Jr! = 3
          n34350:  FOR Ir! = 10 TO 6 STEP - 1
          l34360:      print SPC$ ( Jr! ) ; Ir!
          l34370:      GOSUB SUB_34770_
          l34380:      Jr! = Jr! + 3
          l34390:  NEXT
          n34400:  print "ENTER-YOUR-MISSION-PASSWORD-TO -CONTINUE"
          n34410:  print "SELF-DESTRUCT-SEQUENCE-OTHERWISE-DESTRUCT"
          n34420:  print "SEQUENCE-WILL-BE-ABORTED"
          n34430:  INPUT Bs$
          l34440:  IF Bs$ <> Xs$ THEN
          l34450:      GOTO L_34730_
          l34460:  END IF
          n34470:  print "PASSWORD-ACCEPTED"
          l34480:  Jr! = 10
          n34490:  FOR Ir! = 5 TO 1 STEP - 1
          l34500:      print SPC$ ( Jr! ) ; Ir!
          l34510:      GOSUB SUB_34770_
          l34520:      Jr! = Jr! + 3
          l34530:  NEXT
          n34540:  print
          l34550:  print "*****ENTROPY OF " ; S5s$ ; " MAXIMIZED*****"
          n34560:  print
          l34570:  IF K3r! = 0 THEN
          l34580:      GOTO L_34700_
          l34590:  END IF
          n34600:  Wr! = 20 * E1r!
          l34610:  FOR Lr! = 1 TO K3r!
          l34620:      IF K6_r! ( Lr! ) * K7_r! ( Lr! ) > Wr! THEN
          l34630:          GOTO L_34690_
          l34640:      END IF
          n34650:      A5r! = K4_r! ( Lr! )
          l34660:      A6r! = K5_r! ( Lr! )
          l34670:      T2s$ = Q_s$ ( A5r! , A6r! )
          l34680:      GOSUB SUB_6490_
        L_34690_:  NEXT Lr!
        L_34700_:  F9r! = 10
          l34710:  GOSUB SUB_9820_
          l34720:  RETURN


        L_34730_:  print "PASSWORD-REJECTED"
          n34740:  print "CONTINUITY-EFFECTED"
          l34750:  print
          l34760:  RETURN



      SUB_34770_:  Kr! = 12345
          l34780:  FOR Mr! = 1 TO 90
          l34790:      Kr! = Kr! + 1
          l34800:  NEXT Mr!
          l34810:  RETURN



      SUB_34820_:  REM  - STATUS
          n34830:  FOR Ir! = 1 TO 10

          l34850:  GOTO L_28280_
          l34855:  NEXT

          l34860:  RETURN


        L_34870_:  print "BYE.."
          l34880:  END

      SUB_34890_:  REM  rhn fixup
          n34900:  REM DIM spc$(40)
          n34910:  REM FOR j = 1 TO 40: spc$(j) = ""
          n34920:  REM FOR i = 1 TO j: spc$(j) = spc$(j) + " ": NEXT i: NEXT j
          n34930:  RETURN



' Color Table :1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 |
