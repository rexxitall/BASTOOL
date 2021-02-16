'*****************************************************************************
' GW2TXT i checked out two different versions of the problem solvers for
' old tokenized MS Basic programs even or because ;) this one was shorter and
' more cryptic then his colegue it runs better. I used Herman Wiegmans gw2qb
' tool to reformat the code and does all the work to make it run
' with the free basic compiler. The benefit of this work ? Grin you now has
' a file which will work under a lot of operating systems just with the same
' unchanged file and access to tons of cryptic mind blowing basic games ;)
' [compile with fbc -lang qb bas2txt.bas]
'
' Porting notes: (the REAL CHANGES not the beautify)
'
' 	Small changes to the File IO parts
' 	Put all Datas in " chars
' 	remove FIELD statement
' 	rename some vars to uique names which represent no reserved words
' 	rewrite the part which will get the filenames
' 	   - comandline tools should live on the comandline ;)
'
' 				ENJOY the 8 Bit TIMES !!!
' 				Thomas Ludewig, Dipl.-Ing.(FH) CIVIL
' 				Germany, Elze (Han) A.D. 15.9.2007
' 				Mail: rexxitall@gmx.de
'
'
'		Thanks to Herman Wiegman for reporting bugs and corrections
'
'****************************************************************************
' GW2ASCII.BAS = Converts GW-BASIC source files to ASCII text
' ============
' Problem:  You have some GWBASIC source code which has been saved in
' tokenized format, and you don't have a copy of GWBASIC to use to
' convert it into an ASCII file for use under QBASIC or whatever.  This
' is a common problem as GWBASIC is not distributed with MS-DOS 5.0 and
' up.
'
' Solution:  This old program which run fine under QBASIC):
'' (c) Frank Cox, 10 Jul 93
'****************************************************************************
'        READBAS 1.1 -  READS BASIC PROGRAMS SAVED IN BINARY
'        NELSON FORD (713) 960-1300   (713) 721-6104    APRIL 11,1985
' PUBLIC DOMAIN.  The idea is to compile this program and use it while in
' DOS to look at BASIC programs that have been saved in binary format.  The
' compiled version of this is not being uploaded due to the inordinate
' amount of difficulty and expense required to make a go



FI$=trim(command(1))
FO$=trim(command(2))

if FI$="" then
	PRINT "--------------------------------------------------------"
	PRINT "GW2TXT a old MS Basic detokenizer"
	PRINT "USAGE  : gw2txt <infile> [<outfile>]"
	PRINT "EXAMPLE: gw2txt tokenized.bas textbas.bas"
	PRINT "if outfile is left out then console output is engaged"
	PRINT ""
	PRINT "ported after 23 years by Thomas Ludewig in SEPT. 15,2007"
	PRINT "original Versiom      by Nelson Ford    in APRIL 11,1985"
	PRINT "Enjoy the 8 bit 80ies...'
	PRINT "                        ...the time as we where young ;)"
	PRINT "--------------------------------------------------------"
	end
end if

if FO$="" then
	FO$="SCRN:"
end if


     DEFINT A-Z
     DIM XX(8),T$(11¬), T3$(6), T4$(30), T5$(37)

'     CLS
'      INPUT "FILE NAME"; FI$
' 20
'      INPUT "TO (1)SCREEN (2)PRINTER (3)DISK"; D
'      IF D=1 THEN
'          F2$="SCRN:"
'      ELSE
'          IF D=2 THEN
'              F2$="LPT1:"
'          ELSE
'              IF D=3 THEN
'                  INPUT "OUTPUT FILENAME"; F2$
'              ELSE
'                  goto 20
'              END IF
'          END IF
'      END IF
'      PRINT
'      PRINT "PRESS ANY KEY TO ABORT"
'      PRINT


     FOR T=129 TO 244
         READ T$(T-128)
     NEXT  'tokens 129-243
     FOR T=129 TO 134
         READ T3$(T-128)
     NEXT  'token 253 followed by 129-134
     FOR T=129 TO 158
         READ T4$(T-128)
     NEXT  'token 254 followed by 129-158
     FOR T=129 TO 165
         READ T5$(T-128)
     NEXT  'token 255 followed by 129-165



     REM
     X$= SPACE(1) 'due fbc somewhat strange ideas of file handling
     'FIELD 1, 1 AS X$ 'not needed
     IFILE=freefile 'get free handle
     OPEN FI$ FOR BINARY AS  #IFILE
     OFILE=freefile 'get next free handle
     OPEN FO$ FOR OUTPUT AS  #OFILE

     GET #IFILE, ,X$
     IF ASC(X$) <>255 THEN
         PRINT "NOT A BASIC PROGRAM SAVED IN BINARY"
         END
     END IF


    '----get, print line number:
130
     'GET #IFILE, ,X$
     GET #IFILE,  ,X$[0] , 1

     X=ASC(X$)
     GET #IFILE, ,X$[0],1
     IF X=0 AND ASC(X$)=0 THEN
         STOP
     END IF
     GET #IFILE, ,X$
     N$=STR$(ASC(X$))
     GET #IFILE, ,X$
     X=ASC(X$)
     IF X>0 THEN
         N$=STR$(X*256+VAL(N$))
     END IF
     PRINT #OFILE, RIGHT$(N$,LEN(N$)-1)+ " ";


    '----get a hex character and translate:
200
     GET #IFILE, ,X$
     X= ASC(X$)
     U$=INKEY$
     IF U$<>"" THEN
         END
     END IF
     IF X=58 THEN
         GET #IFILE, ,X$
         X=ASC(X$)
         IF X=143 THEN
             GOSUB 910
             GOTO 130
         ELSE
             IF  X<>161 THEN
                 PRINT #OFILE, ":";
             END IF
         END IF
     END IF
     IF X=0 THEN
         PRINT #OFILE,""
         GOTO 130   'ascii 0 marks end of BASIC line
     END IF

     ' *** GW2QB ***
     'IF X>31 THEN goto 300  ELSE IF X <11 THEN STOP
     ' above line is split into the following lines
     IF X>31 THEN
         goto 300
     END IF
     IF X <11 THEN
         STOP
     END IF

     ON X-10 GOSUB 400,440,480,500,540,580,600,600,600,600,600,600,600,600,600,600,640,660,720,815,820
     GOTO 200
     RETURN
    '------

300
     IF X <128 THEN
         PRINT #OFILE, X$;
         GOTO 200
     END IF
     IF X >128 AND X <245 THEN
         PRINT #OFILE, T$(X-128);
         GOTO 200
     END IF
     IF X >252 AND X <256 THEN
         GET #IFILE, ,X$
         Y=ASC(X$)
     ELSE
         GOTO 200
     END IF
     IF Y <129 THEN
         PRINT "ERROR IN FILE"
         STOP
     END IF
     ON X-252 GOTO 350,360,370
     GOTO 200
350
     PRINT #OFILE, T3$(Y-128);
     GOTO 200
360
     PRINT #OFILE, T4$(Y-128);
     GOTO 200
370
     PRINT #OFILE, T5$(Y-128);
     GOTO 200

400
     GET #IFILE, ,X$
     N=X
     GET #IFILE, ,X$
     N=X*256 +N   '11  =  OCTAL
     PRINT #OFILE, "&O"+ OCT$(N);
     RETURN


440
     GET #IFILE, ,X$
     N=X
     GET #IFILE, ,X$
     N=X*256 +N   '12  =  HEX
     PRINT #OFILE, "&H" +HEX$(N);
     RETURN
     REM

480
     STOP                            '13  NOT USED


500
     GET #IFILE, ,X$
     N$=STR$(ASC(X$))         '14  INTEGERS
     GET #IFILE, ,X$
     X=ASC(X$)
     IF X>0 THEN
         N$=STR$(X*256+VAL(N$))
     END IF
     PRINT #OFILE, RIGHT$(N$,LEN(N$)-1);
     RETURN


540
     GET #IFILE, ,X$
     N$=STR$(ASC(X$))         '15  =  NUMBERS 10 TO 255
     PRINT #OFILE, RIGHT$(N$,LEN(N$)-1);
     RETURN


580
     STOP                            '16  NOT USED

600
     N$=STR$(X-17)                   '17 - 26 = NUMBERS 0 TO 9
     PRINT #OFILE, RIGHT$(N$,LEN(N$)-1);
     RETURN


640
     STOP                            '27  NOT USED
     REM
660
     GET #IFILE, ,X$
     N=ASC(X$)
     GET #IFILE, ,X$         '28  =  NUMBERS > 255 AND <32267
     N$= STR$(256*ASC(X$) +N)
     PRINT #OFILE, RIGHT$(N$,LEN(N$)-1);
     RETURN

     '29  =  NUMBERS >32267 AND < ?

720
     FOR I=1 TO 4
         GET #IFILE, ,X$
         XX(I)=ASC(X$)
     NEXT
     Z$=""
     FOR J=3 TO 1 STEP -1
         Y#=XX(J)
         FOR I= 7 TO 0 STEP-1
             IF Y# > 2^I-1 THEN
                 Z$=Z$+"1"
                 Y#=Y#-2^I
             ELSE
                 Z$=Z$+"0"
             END IF
         NEXT
     NEXT
     N#=1
     Z$=RIGHT$(Z$,23)
     FOR I=1 TO 23
         N#= N# + VAL(MID$(Z$,I,1)) * .5^I
     NEXT
     N$=STR$(N# * 2^(XX(4)-129))
     PRINT #OFILE, RIGHT$(N$,LEN(N$)-1); "!";
     RETURN

815
    '        30  NOT USED
    '        31  =  DOUBLE PRECISION
820
     FOR I=1 TO 8
         GET #IFILE, ,X$
         XX(I)=ASC(X$)
     NEXT
     Z$=""
     FOR J=7 TO 1 STEP -1
         Y#=XX(J)
         FOR I= 7 TO 0 STEP-1
             IF Y# > 2^I-1 THEN
                 Z$=Z$+"1"
                 Y#=Y#-2^I
             ELSE
                 Z$=Z$+"0"
             END IF
         NEXT
     NEXT
     N#=1
     Z$=RIGHT$(Z$,55)
     FOR I=1 TO 55
         N#= N# + VAL(MID$(Z$,I,1)) * .5^I
     NEXT
     N$=STR$(N# * 2^(XX(8)-129))
     PRINT #OFILE, RIGHT$(N$,LEN(N$)-1); "#";
     RETURN
    ' read from' to end of line:

910
     PRINT #OFILE, "REM ";
     GET #IFILE, ,X$
920
     GET #IFILE, ,X$
     IF ASC(X$) >0 THEN
         PRINT #OFILE, X$;
         GOTO 920
     END IF
     PRINT #OFILE, ""
     RETURN

     REM
     '  tokens 129-244:
     DATA "END","FOR","NEXT","DATA","INPUT","DIM","READ","LET","GOTO","RUN","IF","RESTORE","GOSUB","RETURN"
     DATA "REM","STOP","PRINT","CLEAR","LIST","NEW","ON","WAIT","DEF","POKE","CONT","NU","NU","OUT","LPRINT"
     DATA "LLIST","NU","WIDTH","ELSE","TRON","TROFF","SWAP","ERASE","EDIT","ERROR","RESUME","DELETE"
     DATA "AUTO","RENUM","DEFSTR","DEFINT","DEFSNG","DEFDBL","LINE","WHILE","WEND","CALL","NU","NU","NU"
     DATA "WRITE","OPTION","RANDOMIZE","OPEN","CLOSE","LOAD","MERGE","SAVE","COLOR","CLS","MOTOR"
     DATA "BSAVE","BLOAD","SOUND","BEEP","PSET","PRESET","SCREEN","KEY","LOCATE","NU","TO","THEN","TAB("
     DATA "STEP","USR","FN","SPC","NOT","ERL","ERR","STRING$","USING","INSTR","REM ","VARPTR","CSRLIN"
     DATA "POINT"," OFF","INKEY$","NU","NU","NU","NU","NU","NU","NU",">","=","<","+","-","*","/","^","AND","OR","XOR","EQV"
     DATA "IMP","MOD","\"
     ' pre-token 253, tokens 129-134:
     DATA "CVI","CVS","CVD","MKI$","MKS$","MKD$"
     ' pre-token 254 , tokens 129-158:
     DATA "FILES","FIELD","SYSTEM","NAME","LSET","RSET","KILL","PUT","GET","RESET","COMMON","CHAIN"
     DATA "DATE$","TIME$","PAINT","COM","CIRCLE","DRAW","PLAY","TIMER","ERDEV","IOCTL","CHDIR","MKDIR"
     DATA "RMDIR","SHELL","ENVIRON","VIEW","WINDOW","PMAP"
     '  pre-token 255"," tokens 129-165:
     DATA "LEFT$","RIGHT$","MID$","SGN","INT","ABS","SQR","RND","SIN","LOG","EXP","COS","TAN","ATN","FRE"
     DATA "INP","POS","LEN","STR$","VAL","ASC","CHR$","PEEK","SPACE$","OCT$","HEX$","LPOS","CINT","CSNG"
     DATA "CDBL","FIX","PEN","STICK","STRIG","EOF","LOC","LOF"
