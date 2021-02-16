/'
NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE

 		 DONT USE IT FOR PRODUCTION WORK !!!

 	      THE PROGRAM IS DELIVERED WITHOUT WARRENTY !!!
 	     USE IT ON YOUR OWN RISK !!!

 	DONT REDISTRIBUTE WITHOUT THIS TEXT
  ALL RIGHTS RESERVED


NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE

Hello and welcome to bastool

bastool ins mainigly intend to help you
port old or stonehenge old basic programs to free basic
or to a other more modern basic dialect

As you will see in the code, this is work progress !!!
usually it will do most of the job but currently not perfect
and some parts a bit strange at this stage :)
(BTW: usability is a unknown word at this point)
it is currently also only tested in a LINUX Environment
dont cry for a dos version its not really intend for...
(may work but i never checked that out)
for my opinion are over 20 years of 64k limits enough !


INSTALLATION:
-------------

put the source in a subdirectory
bastool also needs a subdirectory which contains the reserved word files
its hardcodet at the moment
look below to the fiddle settings how to make it
then

fbc -exx bastool.bas
and in linux ./bastool basicfile (with path in front if source is located elsewhere)


ALGORITHM
----------

Very simple ;) it looks for the reserved words of the originally
used basic interpreter / compiler
all things which are not a special char or a reserved word
must be a var or label

then do some magic with renumbering etc
and care for the words which are used by the TARGET interpreter
or compiler to avoid conflicts

HOW TO WORK WITH
----------------

Labels:
The renamed labels are ready for simple renaming later to
more meaningful ones by you thats why they contain some extra chars
unused labels can also be simple removed later by a single
replace with a regular expression.
Thats useful if your code contains jumps to not existing labels

Ident:
Often old code contains never founded bugs
so if the indent doesnt go back to the starting (zero)
something in the code usually has to be reworked
it will not fix this ! (would you give some extra lessions in debugging ;)  )

Var:
Bastool looks for the USED vars.
so if a var never got a value then this var will not renamed
if that happens you has found a bug in the old code usually
thats why it not will fix it !
your compiler will show you the disaster with a nice line numbers


What it does:
-------------

it works on correct clean GW-BASIC styled source
It currently makes some nice syntax highlighting
trys to detect variable definitions
and makes some code indentations
it renames numeric labels to non numric ones
(if you whish)
detects used and unused Labels
clean up the code (just a bit)
split up lines
(if you whish)
gives braces a colorful meaning of the owner
trys to repair broken strings
and broken print statements
trys to rewrite def fn statemenst on a primitive manner
(you has too look at the new code !!! )
renumbering  (most parts are prepared for that ;) right now)
(if you whish)
it will renumber your code also if line numbers arent there
partielly


What it NOT does:
-----------------

handles big files (you have to redefine the dim statemnsts if you has a need for)
handles crippled code (SHARP Basic)
make perfect results on  Stonenge old Basic
makes valid DEF FN statements
(but it helps you a bit - you has to look at the type definitions)
cares about all forbidden or obsolete Words
(trys to do its best but...)
cares about DEFINT and colegues

redesign the program optimice and poilish it or correct failures ;)
it works not on freebasic source (not designed for until multiline comments are handled correctly)
it works not on all qbasic source  (may have strange results)
works completely correct ;)

Planned featured:
-----------------

crossreferencing (most parts are prepared for that ;) right now)
detokenize old gw basic code  (most parts are prepared for that ;) right now)
full commandline interface for all possible settings
work on any basic... ()
reduce memory consumption
code cleanup
printig output
code to html
handling libs
write out and reinsert
vars and strings
read kate syntax files
write kate syntax files


Hints
-----
You can rediret the output to a file
the console color is only shown on he console
so you could gives the dumped file
a try with freebasic

Most of the Reserved Words can be changed
in the words.txt file
but things like IF THEN FOR NEXT ect are hardcoded
right now


comments, suggestions, gifts, postcards,
beer and MONEY *rofl* (whats that ?) are welcome

have some fun :)

Thomas
Sept.-Oct. 2007, Hildesheim
'/


'DYNAMIC


#INCLUDE "file.bi"
#INCLUDE "dir.bi"

#INCLUDE "bastool_vars.bas"
#INCLUDE "bastool_bisec.bas"
#INCLUDE "bastool_file.bas"
#INCLUDE "bastool_funcs.bas"



'#########################################################################################
' Fiddle here with some settings

Wordfile      ="words/words_qbasic_ms.txt"	'MICROSOFT BASIC SYNTAX DEFINITION
Forbiddenfile ="words/words_freebasic.txt"	'DONT USE THIS RESERVED WORDS FOR RENAMING
Symbolfile    ="words/words_symbol.txt"	        'ALWAYS ON USED BY BRUTE FORCE TOKENIZER
Outfile       ="reseq.new" 			'not yet used !!!



cfgbft		=0  'brute force tokenizer only in rare situataions needed

cfgrenum 	=1  ' new line numbers ?
cfgrenumdelta 	=10 ' ommit these numbers - most code will use 10
cfglinesplit 	=1  'split lines which are glued with : chars

cfgindent 	=4  'how much spaces for indent 0= no indent

cfgrenvars 	=1  'rename vars
cfgvardump	=1  'make a var dump with redim statements
cfgrenlabs 	=1  'rename labels to nonumeric ones
cfgdroplabs 	=0  'forget unused labels


cfgcolorize 	=1  'if set to 1 it will put some fancy colors to the output
cfgrepair 	=1  'always on for debuggin

'dont touch the rest if you dont know what you are doing ;)
'###########################################################################################




DEBUG	      =0
MAXWORDS      =128
CODESTART     = 4

if trim(COMMAND)="" then
color 15: Print "------------------------------------------------------------------"
color 14: Print "BASTOOL - USE AT YOUR OWN RISK !"
color 15: Print "------------------------------------------------------------------"
color 13: Print "How to use:"
color 13: Print ""
color 13: Print "bastool <file.bas> [list from this line] [list from to this line]"
color 13: Print ""
color 13: Print "EXAMPLE"
color 13: Print "bastool eliza.bas 10 50"
color 13: Print "bastool eliza.bas 10 50 > test.bas"
color 13: Print "------------------------------------------------------------------"
color 13: Print ""
color 13: Print "Sent comments to"
color 13: Print ""
color 13: Print " Thomas Ludewig, Dipl.-Ing. (FH) Bauwesen"
color 13: Print " GERMANY"
color 13: Print " Daimlerring 37"
color 13: Print " 31135 Hildesheim"
color 13: Print ""
color 13: Print " reitall@gmx.de"
color 15: Print "-------------------------------------------------------------------"

end

Infile  ="./basic/6FGL-STB.BAS"
Infile  ="./basic/fem1.gw"
Infile  ="./basic/startrek.bas"
Infile  ="./basic/reseq.bas"
Infile  ="./basic/fem1.gw"
Infile  ="./basic/reseq.bas"
Infile  ="./basic/startrek.qb"
Infile  ="./basic/startrek.bas"
Infile  ="./bastool.bas"
Infile  ="./basic/renum.bas"
Infile  ="./basic/eliza.bas"
Infile  ="./basic/6FGL-STB.BAS"
Infile  ="./basic/fem1.gw"
Infile  ="./basic/MATHE.BAS"
Infile  ="./basic/startrek.bas"
Infile  ="./basic/WETZELL.BAS"

Infile  ="./basic/fem1.sbx"
Infile  ="./bastool.bas"
Infile  ="./basic/startrek.bas"
else




Infile=CURDIR+"/"+command(1)
print "' BASTOOL .01 (c) Dipl.-Ing. Thomas Ludewig 2007"
print "' using at your own risk- no warrenty"
print "' CURRENT DIR:"+CURDIR
print "' PROCESS    :"+infile
print "CLS"
print "COLOR 10 'an old Program should live on a green monochrome screen ;)"
end if

'-------------------------------------------------------------------------------------------
'READ IN THE RESERVED WORDS FROM THE FORMALY USED INTERPRETER
'-------------------------------------------------------------------------------------------
'otherwise you wont will find the originally used vars
i= bi_load_file_unsorted(RESERVEDWORDS(),Wordfile)
i= bi_load_file_unsorted(RESERVEDWORDS(),Symbolfile)
'bi_dump(DATAS(),0)

'-------------------------------------------------------------------------------------------
'READ IN THE RESERVED WORDS FOR THE TARGET INTERPRETER
'-------------------------------------------------------------------------------------------
'we need this to prevent the renamed new vars to have a collision with reserved words
i= bt_load_file(FORBIDDENWORDS(),Forbiddenfile)
'bi_dump(FORBIDDENWORDS(),0)

i= bi_load_file_unsorted(SOURCELINES(),Infile)
for i=1 to val(SOURCELINES(0,0))
		SOURCELINES(i,1)=SOURCELINES(i,0)
		'SOURCELINES(i,0)=" "+SOURCELINES(i,0)
next
print "'DYNAMIC"
print "'Lines read: "+SOURCELINES(0,0)
'-------------------------------------------------------------------------------------------
'SEPARATE LABELS STRINGS AND COMMENTS !!! URGENT HAS TO BE DONE FIRST !!!
'-------------------------------------------------------------------------------------------
' all attemts to do this in separate steps has failed, these steps has to be done in one rush
' otherwise you will get hssle with strings and comments - multiline statements not yet
' supported (tested) until other routines have learned to ignore these statements inside
' themselves
if 1=1 then
textmark=0
textswitch=0
commentmark=0
commentswitch=0
commentlevel=0

FOR I =1 to val(SOURCELINES(0,0))
	C=0
	D=0
	l=0
	SOURCE=""
	LITERAL=""
	COMMENT=""
	LITERALmark=0
	SOURCELINES(I,0)=trim(SOURCELINES(I,0))
	Q=len(SOURCELINES(I,0))


	'seperate labels first
	labeltest="nolabel"
	l=1
	H= (mid(SOURCELINES(I,0),1,1))  'look for numeric label even on wired old code
	if instr("0123456789",h)>0 then
		labeltest="numlabel"
		'print SOURCELINES(I,0)
		do while instr("0123456789",mid(SOURCELINES(I,0),l,1))>0 and l<=q
			l=l+1
		loop
		l=l-1

		source=left(SOURCELINES(I,0),l)


		if isinteger(source)=0 then labeltest="nolabel"

	elseif instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ",ucase(h))>0 then 'look for textbased labels
		labeltest="textlabel"

		do while instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",mid(SOURCELINES(I,0),l,1))>0 and l<>q
			l=l+1
		loop
		l=l-1
		source=left(SOURCELINES(I,0),l)

		if mid(SOURCELINES(I,0),l+1,1)<>":" then labeltest="nolabel"


	else

		source=trim(source)

	endif


	'some have a : sign in the labels some not..
	if mid(SOURCELINES(I,0),l,1)=":" then l=l+1
	'check for collision with reserved words - labels has to be different for the reserved words of
	'the used interpreater (usually)
	if labeltest<>"nolabel" then
		IF bt_search_idx ( RESERVEDWORDS(), UCASE(SOURCE)  )<>-1 THEN
			labeltest="nolabel"
		ELSE
			n=bt_insert( LABELS() , SOURCE )
		END IF
	END IF
	'all try to find a valid lable fails - so rest of code must be pure code ;)

	if labeltest="nolabel" then 'full range scan for tokenizer
		l=0
		source=chr(255)+" "
	end if



if cfgironrem=1 then
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "rem" ," rem " )
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "REM" ," rem " )
end if





	do until  L=q 'we got a startpoint from the labelsearch...
		l=l+1
		m=l
		if l>1 then w=mid(SOURCELINES(I,0),L-1,1) 'char bevore needed for multiline comments

		H= mid(SOURCELINES(I,0),L,1)
		testword=""
		delmark=delmark+1
		select case h

			case CHR(34) 							'string ?

				if commentmark=0 then 					'only if not inside a comment block
					H=""
					LITERALMARK=1+LITERALMARK 			'detect start and end of a string
					if LITERALMARK=2 then				'
	 					SOURCE=SOURCE+" {"+STR(bt_insert_unsorted(STRINGS(),LITERAL))+"} "
						LITERALMARK=0
						LITERAL=""
					end if

				end if



			case "+","-","*","/","\","^","(",")","<",">","=",">=","<=","<>",",",";"
				if literalmark=0 and COMMENTLEVEL=0 then
					testword=mid(SOURCELINES(I,0),L+1,1)
					if instr("<>=",testword)>0 then
					H=H+TESTWORD	'we have to overjump next char cause already processed

					l=l+1
					end if
					testword=mid(SOURCELINES(I,0),L+1,1) 'check for next delimiter
					if instr(" :",testword)=0 then 'make new delimiter
						h=h+" "
					end if
					if delmark>1 then 'no space at the beginning make delimiter
						h=" "+H
						delmark=0
					endif
				end if

			case  " " , ":"
				delmark=0
				c=0 'counter for first char
				if literalmark=0 and COMMENTLEVEL=0 then 		'only valid if we are not in textmode or multiline comment

					testword=ucase(mid(SOURCELINES(I,0),l+1,4)) 	'start a new test
					if testword=":REM" or testword="REM " then 	'got we a remark ?
										 	'we are in a comment
						l=l+5	 				'jump 4 chars further
						COMMENT=MID( SOURCELINES(I,0) , l , len(SOURCELINES(I,0))-l+1)
						SOURCE=SOURCE+" '"+str(bt_insert_unsorted(COMMENTS(),COMMENT))+"' "
						l=q
					end if
				end if

			case "'"
				if literalmark=0 then 					'only when not in stringmode
					w=mid(SOURCELINES(I,0),L+1,1)
					H=""

					if W<>"/" then 					'no multiline commend detected

						if COMMENTLEVEL=0 then 		 	'comment til end of line
											'no need for further investigations
							l=l+1	 				'jump 1 chars further
							COMMENT=MID( SOURCELINES(I,0) , l , len(SOURCELINES(I,0))-l+1)
							SOURCE=SOURCE+" '"+str(bt_insert_unsorted(COMMENTS(),COMMENT))+"' "

							l=q					'line done
						else						'multiline end of comment detected
							l=l+1 					'jump one char further
								 				'could be started again this line
							commentlevel=commentlevel-1 		'decrease multilinelvel
							if commentlevel=0 then
								SOURCE=SOURCE+" `"+str(bt_insert_unsorted(COMMENTS(),COMMENT))+"` "
								comment=""
							end if
							 'we are out of a multiline comment if this is zero!
							 'multiline comments got a special bracement
							 'because they could stay inside valid code
							 'and have to be ignored during further processing'
							 'TODO'
						end if
					end if
				end if

			case "/"
				w=mid(SOURCELINES(I,0),L+1,1)

				if literalmark=0 then 					'has to be ignored if in  string mode
					if W="'" then 					'we start a multiline comment
						H=""
						l=l+1 					'jump over one char
											'multiline comment started
						commentlevel=commentlevel+1 		'increase multiline level
						'COMMENTSWITCH=1
					end if
				end if
		end select
		if COMMENTLEVEL>0 then
			COMMENT=COMMENT+h
		elseif LITERALMARK=1  then
			LITERAL=LITERAL+H
		else
		'the following code is inspired by SHARP basic which does things like :if i =9000then
			c=c+1

			if c=1 then
				if instr("01234567890.",h)>0 then
					F=1 'word start as number
				else
					f=0 'word start as text
				end if
			end if

			if f=1 then ' a number
				if instr("01234567890.",h)=0 then
					SOURCE=SOURCE+" "+h
					c=0
				end if

			else
					SOURCE=SOURCE+H
			end if


		end if


	loop
		STRINGMARK=0
		if COMMENTLEVEL>0 then
		COMMENT=COMMENT+chr(10) 'multiline got separator
		end if

SOURCELINES(I,0)=SOURCE

next
COMMENTS(0,0)=str(VAL(COMMENTS(0,0))+2)

end if


'-------------------------------------------------------------------------------------------
' REORGANIZE AND SORT THE RESERVED WORDS BY THE LENGTH OF THE WORDS FOR REPLACEMENTS
'-------------------------------------------------------------------------------------------
for i = 1 to val(RESERVEDWORDS(0,0))
	 H=trim(RESERVEDWORDS(i,0))
	 if H <> "" then
		 HH="000"
		 rset HH,str(len(h))
		 RESERVEDWORDS(i,0)=replace(HH," ","0")+" "+RESERVEDWORDS(i,0)
	end if
NEXT
bi_sort(RESERVEDWORDS(),0)

'-------------------------------------------------------------------------------------------
' REWORK THE SOURCE FOR EASY TOKENIZING
'-------------------------------------------------------------------------------------------

FOR I =1 to val(SOURCELINES(0,0))
	SOURCELINES(I,0)=ucase(SOURCELINES(I,0))+" "
	SOURCELINES(I,0)=replace(SOURCELINES(I,0),chr(9)," ")
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "ELSE IF" ,"ELSEIF" )

	'REPAIR SOME STRANGE CONSTRUCTS FOUND IN VERY OLD CODE
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "=>" ,">=" )
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "= >" ,">=" )
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "=<" ,"<=" )
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "= <" ,"<=" )
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "$" ,"$ " )
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "#" ," # " )
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "]" ," ) " )
	SOURCELINES(I,0)=replace(SOURCELINES(I,0), "[" ,"(" )
	'CODE SHOULD NOW BE SEPARATED EACH TOKEN BY EXACTLY ONE SPACE
next



FOR I =1 to val(SOURCELINES(0,0))
/'This is the Brute Force Tokemizer
he is useful if very old basic code is glued together without spaces or double dots between the reserved words
the oppposite to the other tokenizer is that i look here active for the reserved words
so THENGOSUB will found by THEN and GOSUB you will become something like THEN  GOSUB
This is ment as a last fall back for those OLD code. Dont use it with newer code
it will propably destroy variables if they contain a reserved word as a stringpart
in their names. (Old code var names are also often limited to a length of 2 chars ;) )
'/

		FOR J=val(RESERVEDWORDS(0,0)) TO 0 step -1 'CONTROL CHARS HAS TO REPLACED AS FIRST OTHERWISE NEXT BLOCK WILL FAIL
			if instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ$",ucase( mid(RESERVEDWORDS(j,0),5,1)))=0 then
				SOURCELINES(I,0)=replace(SOURCELINES(I,0),""+ right(RESERVEDWORDS(j,0),len(RESERVEDWORDS(j,0))-4)+""," `"+STR(j)+"` ")
			end if
		NEXT
		FOR J=val(RESERVEDWORDS(0,0)) TO 0 step -1 'RESERVED WORDS
			if instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ$",ucase( mid(RESERVEDWORDS(j,0),5,1)))>0 then
if cfgbft=1 then				SOURCELINES(I,0)=replace(SOURCELINES(I,0)," "+ right(RESERVEDWORDS(j,0),len(RESERVEDWORDS(j,0))-4)+" "," `"+STR(j)+"` ")
			end if
		NEXt
		SOURCELINES(I,0)=" "+trim (replace(SOURCELINES(I,0), "  " ," " ))+" " 'REMOVE DOUBLE SPACE CHARS AND ADD EXTRA SPACES AT START AND END !
		FOR J=val(RESERVEDWORDS(0,0)) TO 0 step -1 'NOW WE MARK RESERVED WORDS AND DECRYPT AGAIN
			if instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ$",ucase( mid(RESERVEDWORDS(j,0),5,1)))>0 then
		if cfgbft=1 then		SOURCELINES(I,0)=replace(SOURCELINES(I,0),"`"+STR(j)+"`","["+right(RESERVEDWORDS(j,0),len(RESERVEDWORDS(j,0))-4)+"]")
			else
				SOURCELINES(I,0)=replace(SOURCELINES(I,0),"`"+STR(j)+"`",""+right(RESERVEDWORDS(j,0),len(RESERVEDWORDS(j,0))-4)+"")
			end if
		NEXt


next






'-------------------------------------------------------------------------------------------
' REORGANIZE THE RESERVED WORDS NOW SORT ALPHABETICALLY FOR FAST FINDING BY BISEC SORT
'-------------------------------------------------------------------------------------------
FOR J=val(RESERVEDWORDS(0,0)) TO 1 step -1
	RESERVEDWORDS(j,0)=right(RESERVEDWORDS(j,0),len(RESERVEDWORDS(j,0))-4)
	'RESERVEDWORDS(j,0)=TRIM(replace(RESERVEDWORDS(j,0),"$",""))

NEXt
bi_sort(RESERVEDWORDS(),0)


'-------------------------------------------------------------------------------------------
'TOKENIZE THE SOURCE (A URGEND PART) SPLITS THE LINE INTO THE WORD ARRAY (Array of Token)
'-------------------------------------------------------------------------------------------
M=1
FOR I =1 to val(SOURCELINES(0,0))
	SOURCELINES(i,0)=trim(SOURCELINES(i,0))
	if left(SOURCELINES(i,0),1)=chr(255) then
		HHH=" "+trim( mid(SOURCELINES(I,0),2,len(SOURCELINES(I,0))-1) )
	else
		HHH=SOURCELINES(I,0)
	end if
	HHH=space(CODESTART-2)+HHH+" "
	HH=""
	N=0
	IFFLAG=0

	REDiM PRESERVE SOURCEWORDS(m,MAXWORDS,1)
	j=0
	do while J< len(HHH)+1
		j=j+1
		H= mid(HHH,J,1)
		SELECT CASE H
			CASE ":"
			if cfglinesplit=1 then
				SOURCEWORDS(m,0,0)=STR(N)
				m=m+1
				n=CODESTART-2
				HH=""
				if ubound(SOURCEWORDS,1) < m+1 then
					REDiM PRESERVE SOURCEWORDS(m+1,MAXWORDS,1)
				end if
				else
					HH=HH+":"
				end if
			CASE " "
				HH=trim(HH)

				if cfgbft=0 then
					if instr(":=()-+-*/<>',`;\^#._|°{}[]01234567890"+chr(34),left(HH,1))=0 then 'start with not a delimiter
						q=bt_search_idx(RESERVEDWORDS(),ucase(hh)) 'in reserved words ?
						if q>-1 then
 							hh="["+ucase(hh)+"]" 'currently needed ucase shoud go....
						end if
					end if
				end if



				if HH="[ELSE]" then
					SOURCEWORDS(m,0,0)=STR(N)
					if J=0 = len(HHH) then IFFLAG=0 'single line IF
					N=CODESTART-1
					m=m+1
					if ubound(SOURCEWORDS,1) < m+1 then
						REDiM PRESERVE SOURCEWORDS(m+1,MAXWORDS,1)
					end if
				end if

				if HH="[REM]" then
					'if here found then rest of line has to got to a comment'
					'this happens if rem was glued without space which work in some basic dialects
					COMMENT= mid(HHH,j,len(HHH)-j)
					HH="'"+str(bt_insert_unsorted(COMMENTS(),COMMENT))+"'"
					J= len(HHH)+1'we are finished with this line

				end if

				N=N+1
				SOURCEWORDS(m,n,0)=HH
				SOURCEWORDS(m,N,1)=STR(13)



				if HH="[ELSE]" then
					SOURCEWORDS(m,0,0)=STR(N)
					if J=0 = len(HHH) then IFFLAG=0 'single line IF
					N=CODESTART-1
					m=m+1
					if ubound(SOURCEWORDS,1) < m+1 then
						REDiM PRESERVE SOURCEWORDS(m+1,MAXWORDS,1)
					end if
				end if


				if HH="[IF]" and  SOURCEWORDS(m,n-1,0) <>"[END]" then
					IFFLAG=IFFLAG+1
				end if

				if HH="[END]" and  SOURCEWORDS(m,n-1,0) = "[IF]" then
					IFFLAG=IFFLAG-1
				end if



				if HH="[THEN]" then
					SOURCEWORDS(m,0,0)=STR(N)
					if J=0 = len(HHH) then IFFLAG=0 'single line IF
					N=CODESTART-1
					m=m+1
					if ubound(SOURCEWORDS,1) < m+1 then
						REDiM PRESERVE SOURCEWORDS(m+1,MAXWORDS,1)
					end if
				end if


				if N>CODESTART and HH="" then
					N=N-1 'empty line...
				end if
				HH=""

			CASE ELSE
				HH=HH+H
		END SELECT
	loop
	SOURCEWORDS(m,0,0)=STR(N)
	if IFFLAG>0 then
		for q=1 to IFFLAG
			N=CODESTART-1
			m=m+1
			if ubound(SOURCEWORDS,1) < m+1 then
				REDiM PRESERVE SOURCEWORDS(m+1,MAXWORDS,1)
			end if
			SOURCEWORDS(m,N+1,0)="[END]"
			SOURCEWORDS(m,N+2,0)="[IF]"
			n=n+2
			SOURCEWORDS(m,0,0)=STR(N)
		next
	end if



	IFFLAG=0

	M=M+1
next ' LINE OF CODE
'bi_dump(SOURCELINES(),0)
SOURCEWORDS(0,0,0)=str(M-1)

'-------------------------------------------------------------------------------------------
'CREATE NEW LABES TO FOR RENUMBERING
'-------------------------------------------------------------------------------------------
if cfgrenum=1 then
L=0
FOR I =1 to val(SOURCEWORDS(0,0,0))
	L=l+cfgrenumdelta
	SOURCEWORDS(i,CODESTART-2,0)=STR(L)
	if SOURCEWORDS(i,CODESTART-1,0)<>"" then
		n= bt_search_idx ( LABELS(), SOURCEWORDS(i,CODESTART-1,0)  )
		if n <> -1 then
			LABELS(n,1)=SOURCEWORDS(i,CODESTART-2,0)
			SOURCEWORDS(i,CODESTART-2,1)=SOURCEWORDS(i,CODESTART-1,1)

		else
			print "' ERROR: LABEL NOT GET:("+ SOURCEWORDS(i,CODESTART-1,0)
			SOURCEWORDS(i,CODESTART-2,1)=str(4)

		end if
	end if

NEXT
else

FOR I =1 to val(SOURCEWORDS(0,0,0))
SOURCEWORDS(i,CODESTART-2,0)=SOURCEWORDS(i,CODESTART-1,0)
SOURCEWORDS(i,CODESTART-2,1)=SOURCEWORDS(i,CODESTART-1,1)
NEXT
end if


'bi_dump(LABELS(),1,1)


'#################################
'RAWDUMP (SOURCEWORDS(), 1,val(SOURCEWORDS(0,0,0)))
'end
'use this to debug the tokenizer
'################################
'NOW WE SHOULD HAVE ONLY SOURCE WITH KEYWORDS AND VALUES



'-----------------------------------------------------------------
'SCAN FOR DEF FN AND DO SOME REPAIRS needs enhancements
'-----------------------------------------------------------------
for i =1 to val(SOURCEWORDS(0,0,0))
	k=VAL(SOURCEWORDS(i,0,0))
	for j=CODESTART to k

				if instr("[[DEF]] ","["+SOURCEWORDS(i,j,0)+"]") > 0 then
					SOURCEWORDS(i,J,0)= "[FUNCTION]"
					SOURCEWORDS(i,J,1)= STR(15)
					q=bt_insert(REPLACEMENTS(),SOURCEWORDS(i,J+1,0) )
					SOURCEWORDS(i,J+1,0)  ="FKT"+ucase(Right(SOURCEWORDS(i,J+1,0),len(SOURCEWORDS(i,J+1,0))-2)) 'qbasic hates "FN" at begin of statements

					REPLACEMENTS(q,1)="~"+SOURCEWORDS(i,J+1,0)+"~"

					SOURCEWORDS(i,J+1,1) = STR(7)
					m= endofstatement(SOURCEWORDS(),i,j)
					l=0
					q=2
					for n=j to m

						if SOURCEWORDS(i,n,0) = ")" then
							if l=0 then

							'print SOURCEWORDS(i,n-1,0)
								if instr("!$%#",right(SOURCEWORDS(i,n-1,0),1))+1 =0 then
									q=q+2
									addword(SOURCEWORDS(),i,n)
									SOURCEWORDS(i,n,0) = "[AS]"
									SOURCEWORDS(i,n,1) = STR(9)
									n=n+1

									addword(SOURCEWORDS(),i,n)
									SOURCEWORDS(i,n,0) = "[SINGLE]"
									SOURCEWORDS(i,n,1) = STR(4)
									n=n+1

								end if

								addword(SOURCEWORDS(),i,n)
								SOURCEWORDS(i,n,0) = ")"
								SOURCEWORDS(i,n,1) = STR(5)
								n=n+1

								if instr("!$%#",right(SOURCEWORDS(i,n-1,0),1))+1 =0 then
								q=q+2
								addword(SOURCEWORDS(),i,n)
								SOURCEWORDS(i,n,0) = "[AS]"
								SOURCEWORDS(i,n,1) = STR(9)
								n=n+1

								addword(SOURCEWORDS(),i,n)
									SOURCEWORDS(i,n,0) = "[SINGLE]"
								SOURCEWORDS(i,n,1) = STR(4)
								n=n+1
								end if
								'addword(SOURCEWORDS(),i,n)
								SOURCEWORDS(i,n,0) = ":"
								SOURCEWORDS(i,n,1) = STR(6)
								n=n+1

								addword(SOURCEWORDS(),i,n+1)
								dummy=bt_insert( USERFUNCS() ,SOURCEWORDS(i,j+1,0) )
								SOURCEWORDS(i,n,0) = "~"+SOURCEWORDS(i,j+1,0)+"~"
								SOURCEWORDS(i,n,1) = STR(7)


' 								addword(SOURCEWORDS(),i,n)
' 								SOURCEWORDS(i,n,0) = "="
								end if
								l=1


							end if
						next


						m=m+q
						addword(SOURCEWORDS(),i,m+1)
						SOURCEWORDS(i,m+1,0) = ":"
						addword(SOURCEWORDS(),i,m+2)
						SOURCEWORDS(i,m+2,0) = "[END]"
						SOURCEWORDS(i,m+2,1) = STR(15)
						addword(SOURCEWORDS(),i,m+3)
						SOURCEWORDS(i,m+3,0) = "[FUNCTION]"
						SOURCEWORDS(i,m+3,1) = STR(15)

					end if
	NEXT
NEXT

' bi_dump(REPLACEMENTS(),0,1)
' bi_dump(REPLACEMENTS(),1,1)
'
' end
'-------------------------------------------------------------------------------------------
'FIND DEFINITIONS OF SUBS AND FUNCTIONS DEFINED BY THE USER
'-------------------------------------------------------------------------------------------
For I=1 to val(SOURCEWORDS(0,0,0))
	for J=CODESTART+1 to CODESTART+2'should be only the third token

		if INSTR(" [[SUB]] [[PROCEDURE]] ","["+SOURCEWORDS(i,j-1,0)+"]")>0 then
			 n=bt_insert( USERSUBS() ,SOURCEWORDS(i,j,0))
		end if
		if INSTR(" [[FUNCTON]] ","["+SOURCEWORDS(i,j-1,0)+"]")>0 then
			 n=bt_insert( USERFUNCS() ,SOURCEWORDS(i,j,0) )
		end if
	next
NEXT

'-------------------------------------------------------------------------------------------
'FIND AND PROCESS USED SUBS AND FUNCTIONS IN THE SOURCE
'-------------------------------------------------------------------------------------------
For I=1 to val(SOURCEWORDS(0,0,0))
	for J=CODESTART to val(SOURCEWORDS(I,0,0))
		H=UCASE(left(SOURCEWORDS(i,j,0),1))
		if instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ",ucase(H)) <>0 then 'funcs and procs should start with a letter
			m=0
			n= bt_search_idx ( USERSUBS(), SOURCEWORDS(i,j,0) )
			if n <> -1 then
				m=1
				SOURCEWORDS(i,j,0)="|"+SOURCEWORDS(i,j,0)+"|"
				SOURCEWORDS(i,j,1)=STR(7)
			end if
			n= bt_search_idx ( USERFUNCS(), SOURCEWORDS(i,j,0))
			if n <> -1 then
				m=1
				SOURCEWORDS(i,j,0)="~"+SOURCEWORDS(i,j,0)+"~"
				SOURCEWORDS(i,j,1)=STR(7)
			end if
		end if
	next
NEXT

'-----------------------------------------------------------------
' 'SCAN FOR THE USED VARS BY SOME KEYWORDS AND THE = TOKEN
'-----------------------------------------------------------------
FOR I=1 to val(SOURCEWORDS(0,0,0))
	FOR J=CODESTART TO val(SOURCEWORDS(i,0,0))
		START=0
		TARGET=0
			if instr(SOURCEWORDS(i,J,0),"=") > 0 then 'Maybee also todo to look for < and >

				if len(SOURCEWORDS(i,J,0))>1 then 'BOOLEAN ROLE
					SOURCEWORDS(i,J,1)=STR(12)
				else 'BOOLEAN ROLE BY KEYWORD
					k=J
					DO
						K=k-1
					loop until SOURCEWORDS(i,k,0)=":" or K=CODESTART or SOURCEWORDS(i,k,0)="[THEN]"
					if instr("[[IF]] [[WHILE]] [[UNTIL]] [[ON]]","["+SOURCEWORDS(i,k,0)+"]") > 0 then
						SOURCEWORDS(i,J,1)=STR(12)
					end if
				end if
				H=""
				k=J
				TARGET= J - 1
				DO			'look for the start of the value...
					K=k-1
					H=SOURCEWORDS(i,k,0)+" "+H
				Loop until left(SOURCEWORDS(i,k-1,0),1)="[" or K=CODESTART or SOURCEWORDS(i,k-1,0)=":"
				START=K
				M=parse(SOURCEWORDS(),I,start,target)
			end if

			if instr("[[INPUT]] [[INKEY]] [[GET]]  [[PEEK]] [[READ]] ","["+SOURCEWORDS(i,J,0)+"]") > 0 then 'the other way to fill a var
				 m=endofstatement(SOURCEWORDS(),i,j)
				 k=j
				 do while k<m
				 	k=k+1
					if SOURCEWORDS(i,k,1)=STR(13) then

					start=k
						target=start
						if SOURCEWORDS(i,k+1,0)="(" then
							TARGET=findarrayclosingbrace(SOURCEWORDS(),i,k+1)
						end if
						for l=start to target
						'print SOURCEWORDS(i,l,0);
						next
						'print
						n=parse(SOURCEWORDS(),I,start,target)

					end if
				loop

			end if
	NEXT

NEXT
'bi_dump(VARS(),0)
'bi_dump(OLDVARS(),0)
'-------------------------------------------------------------------------------------------
'COLORIZE AND MARK SOME THINGS NOT JUST EYES CANDY DONT CHANGE THE COLORS THEY ARE USED !!!
'-------------------------------------------------------------------------------------------

FOR I =1 to val(SOURCEWORDS(0,0,0))
	for j = CODESTART to val(SOURCEWORDS(i,0,0))
			H=left(SOURCEWORDS(i,j,0),1)


			if INSTR("(",H)>0 then
				'COLORIZE  BRACES
				k=findarrayclosingbrace(SOURCEWORDS(),i,j)
    				SOURCEWORDS(i,j,1)=STR(5)
				SOURCEWORDS(i,k,1)=STR(5)

				if H = "(" and  INSTR("[~|",left(SOURCEWORDS(i,J-1,0),1))>0 then
					SOURCEWORDS(i,j,1)=STR(9)
					SOURCEWORDS(i,k,1)=STR(9)
				end if

				if H = "(" and  INSTR(" [[IF]] [[AND]] [[NOT]] [[OR]] [[XAND]] [[XOR]] [[UNTIL]] [[WHILE]] [[CASE]]   ","["+SOURCEWORDS(i,j-1,0)+"]")>0 then
					SOURCEWORDS(i,j,1)=STR(12)
					SOURCEWORDS(i,k,1)=STR(12)
				end if




				if (H = "(" and  INSTR(" [+] [^] [-] [=] [*] [/] [[SQR]] ","["+SOURCEWORDS(i,j-1,0)+"]")>0) then
					'k=findarrayclosingbrace(SOURCEWORDS(),i,j)
					SOURCEWORDS(i,j,1)=STR(15)
					SOURCEWORDS(i,k,1)=STR(15)
				end if

				if H = "(" and  SOURCEWORDS(i,j-1,0)="(" then
					k=findarrayclosingbrace(SOURCEWORDS(),i,j)
					SOURCEWORDS(i,j,1)=SOURCEWORDS(i,j-1,1)
					SOURCEWORDS(i,k,1)=SOURCEWORDS(i,j-1,1)
				end if


			end if


			if H="[" then 'keyword
				SOURCEWORDS(i,j,1)=STR(9)
			end if

			if H="{" then	'string
				SOURCEWORDS(i,j,1)=STR(10)
			end if

			if H="'" then	'comment
				SOURCEWORDS(i,j,1)=STR(2)
			end if

			if INSTR("+-*^/=",H)>0 then
				SOURCEWORDS(i,j,1)=STR(7)
			end if


			if INSTR("<>",H)>0 then
				SOURCEWORDS(i,j,1)=STR(12)
			end if

			if INSTR(":",H)>0 then
				SOURCEWORDS(i,j,1)=STR(1)
			end if

			if INSTR(",",H)>0 then
				SOURCEWORDS(i,j,1)=STR(5)
			end if

			if INSTR("#;",H)>0 then
				SOURCEWORDS(i,j,1)=STR(7)
			end if

			if INSTR(".0123456789",H)>0 and SOURCEWORDS(i,j,1)=STR(13) then
				SOURCEWORDS(i,j,1)=STR(6)
				if INSTR(SOURCEWORDS(i,j,1),".")>0 then
					if left(SOURCEWORDS(i,j,0),1)="." then
						SOURCEWORDS(i,j,0)="0"+SOURCEWORDS(i,j,0) 'i dislike sloppy reals ;)
					end if
					SOURCEWORDS(i,j,1)=STR(7)
				end if
			end if

	NEXT ' WORD OF CODE
next ' LINE OF CODE




'-----------------------------------------------------------------
'MAKE THEN GOTO RESUME GOTO STATEMENTS... (non numweric Labels forces that)
'has to be done bevore scan for used labels
'-----------------------------------------------------------------
for i =1 to val(SOURCEWORDS(0,0,0))
	k=VAL(SOURCEWORDS(i,0,0))
	n=0
	j=CODESTART



	if K=CODESTART and i>1 then
		testword=""
		q=VAL(SOURCEWORDS(i-1,0,0))
		testword=SOURCEWORDS(i-1,q,0)


		if instr("[[ELSE]] [[THEN]] [[RESUME]]","["+TESTWORD+"]") >0 then
'print i,q,testword,SOURCEWORDS(i-1,q,0)
			q= bt_search_idx ( LABELS(), SOURCEWORDS(i,CODESTART,0)  )
			if q<>-1 then
					SOURCEWORDS(i,j,1)=STR(3)

					addword(SOURCEWORDS(),i,j)
					SOURCEWORDS(i,j,0)="[GOTO]"
					SOURCEWORDS(i,j,1)=STR(3)
			end if
		end if
	end if


/'

	do until j>k
		if instr("[[ELSE]] [[THEN]] [[RESUME]]","["+SOURCEWORDS(i,j,0)+"]") >0 then
			'flag=1
			if SOURCEWORDS(i,j+1,1)=STR(3) then
				if instr("[[GOTO]] [[GOSUB]] [[NEXT]]","["+SOURCEWORDS(i,j+1,0)+"]") =0 and SOURCEWORDS(i,k,0)<>"[THEN]" then
					addword(SOURCEWORDS(),i,j+1)
					SOURCEWORDS(i,j+1,0)="[GOTO]"
					SOURCEWORDS(i,j+1,1)=STR(3)
					j=j+1
					k=VAL(SOURCEWORDS(i,0,0))
				end if
			end if
		end if
	j=j+1
	loop

	'/



next

'-----------------------------------------------------------------
'LOOK FOR USED LABELS (the cross referencing part need investigation)
'-----------------------------------------------------------------
k=0
For I=1 to val(SOURCEWORDS(0,0,0))



	for J=CODESTART to val(SOURCEWORDS(I,0,0))

		if instr("[[THEN]]  [[ELSE]] [[RESUME]] [[GOTO]] [[GOSUB]] [[RETURN]] [[RESUME]]","["+SOURCEWORDS(i,j,0)+"]")>0 then

			if instr("[[THEN]]  [[ELSE]] [[RESUME]]","["+SOURCEWORDS(i,j,0)+"]")>0 then
				SOURCEWORDS(i,j,1)=str(11)
				if trim( SOURCEWORDS(i,j+1,0))<>"" then

					n= bt_search_idx ( LABELS(), SOURCEWORDS(i,j+1,0)  )

					'print n

					if n <> -1 then
						'### RENUMBER
						SOURCEWORDS(i,j+1,0) = LABELS(n,1)
						'print LABELS(n,1)
						LABELS(n,2)=LABELS(n,2)+" "+str(i)
						'print LABELS(n,1)
						n =     bt_insert( GOTOLABELS(), SOURCEWORDS(i,j+1,0))

						'n= bt_search_idx ( GOTOLABELS(), SOURCEWORDS(i,j+1,0) )
						'print n
						'if n <> -1 then
							'GOTOLABELS(n,1)=GOTOLABELS(n,1)+" "+SOURCEWORDS(i,2,0)
							'str(i)
							SOURCEWORDS(i,j+1,1)=str(3)
						'end if
					else
						SOURCEWORDS(i,j,1)=str(15)
						if isinteger( SOURCEWORDS(i,j+1,0)) then
						'## needs work to check vor variables
						print "' ERROR : THEN ELSE RESUME - LINE "+SOURCEWORDS(i,CODESTART-2,0)+" - LABEL NOT FOUND "+SOURCEWORDS(i,j+1,0)

						end if
					end if
				end if

			end if

			if instr("[[GOTO]] [[GOSUB]] [[RETURN]] [[RESUME]]","["+SOURCEWORDS(i,j,0)+"]") > 0 then


				m= endofstatement2(SOURCEWORDS(),i,j+1)
				for k=j+1 to m
					if SOURCEWORDS(i,k,0)<>"," then
					'color 11
						'print k,m, SOURCEWORDS(i,k,0)

						n= bt_search_idx ( LABELS(), SOURCEWORDS(i,k,0)  )
						if n <> -1 then
							'### RENUMBER
							SOURCEWORDS(i,k,0) = LABELS(n,1)
							LABELS(n,2)=LABELS(n,2)+" "+str(i)
							SOURCEWORDS(i,k,1)=str(11)
						else
							SOURCEWORDS(i,k,1)=str(15)

							print "' ERROR : GOTO GOSUB  - LINE "+SOURCEWORDS(i,CODESTART-1,0)+" - LABEL NOT FOUND "+SOURCEWORDS(i,k,0)
						end if
					END IF
				next


				if "["+SOURCEWORDS(i,j,0)+"]"="[[GOTO]]" then

					SOURCEWORDS(i,j,1)=str(3)
					for k=j+1 to m
						if SOURCEWORDS(i,k,0)<>"," then

							n =     bt_insert( GOTOLABELS(), SOURCEWORDS(i,k,0) )

							'n= bt_search_idx ( GOTOLABELS(), SOURCEWORDS(i,k,0) )
							'if n <> -1 then
								'GOTOLABELS(n,1)=GOTOLABELS(n,1)+" "+str(i)
								SOURCEWORDS(i,k,1)=str(3)
							'end if
						end if
					next
				END IF



				if "["+SOURCEWORDS(i,j,0)+"]"="[[GOSUB]]" then

				SOURCEWORDS(i,j,1)=str(11)
					for k=j+1 to m
						if SOURCEWORDS(i,k,0)<>"," then

							n=    bt_insert( GOSUBLABELS(), SOURCEWORDS(i,k,0) )
							'n= bt_search_idx ( GOSUBLABELS(), SOURCEWORDS(i,k,0) )
							'if n <> -1 then
								'GOSUBLABELS(n,1)=GOSUBLABELS(n,1)+" "+str(i)
								SOURCEWORDS(i,k,1)=str(11)
							'end if
						end if
					next
				END IF



				if "["+SOURCEWORDS(i,j,0)+"]"="[[RETURN]]" then
				SOURCEWORDS(i,j,1)=str(11)

					for k=j+1 to m

						if SOURCEWORDS(i,k,0)<>"," then
							n =     bt_insert( RETURNLABELS(), SOURCEWORDS(i,k,0) )
							'n= bt_search_idx ( RETURNLABELS(), SOURCEWORDS(i,k,0)  	)
							'if n <> -1 then
								'RETURNLABELS(n,1)=RETURNLABELS(n,1)+" "+str(i)
								SOURCEWORDS(i,k,1)=str(11)
							'end if
						END IF
					next
				end if




			end if
		end if
	NEXT

NEXT

'bi_dump(gotolabels(),0,1)
'bi_dump(gosublabels(),0,1)


'-----------------------------------------------------------------
'COLORIZE USED LABELS
'-----------------------------------------------------------------
For I=1 to val(SOURCEWORDS(0,0,0))
	SOURCEWORDS(I,CODESTART-1,1)=STR(8)

	n= bt_search_idx ( LABELS(), SOURCEWORDS(i,CODESTART-1,0)  ) 'labels list was created with the old labels

	if n <> -1 then
		if LABELS(n,1) <>"" then
			SOURCEWORDS(I,CODESTART-1,1)=STR(1)

		end if
		n= bt_search_idx ( GOTOLABELS(), SOURCEWORDS(i,CODESTART-2,0) ) 'gotolabels was created with then new labels
		if n <> -1 then
			SOURCEWORDS(I,CODESTART-1,1)=STR(3) 'then + goto

		end if
		n= bt_search_idx ( GOSUBLABELS(), SOURCEWORDS(i,CODESTART-2,0) ) 'gosub labels was created with the new labels
		if n <> -1 then
			SOURCEWORDS(I,CODESTART-1,1)=STR(11)

		end if
	end if
	SOURCEWORDS(i,CODESTART-1,0)=SOURCEWORDS(i,CODESTART-2,0) 'insert new line numbers

NEXT

'#################################
'bi_dump(labels(),0)


'RAWDUMP (SOURCEWORDS(), 1,val(SOURCEWORDS(0,0,0)))
'end
'use this to debug the tokenizer
'################################


'-----------------------------------------------------------------
'SCAN FOR DIMS AND DEFS needs some work
'-----------------------------------------------------------------
for i =1 to val(SOURCEWORDS(0,0,0))
	k=VAL(SOURCEWORDS(i,0,0))
	for j=CODESTART to k

		if instr("[[DIM]] [[DEFINT]]  [[DEFDBL]]  [[DEFSTR]]  [[DEFSNG]] [[DEFUSR]] ","["+SOURCEWORDS(i,j,0)+"]") > 0 then
			SOURCEWORDS(i,J,1)=STR(15)
			if SOURCEWORDS(i,J,0)="[DIM]" then SOURCEWORDS(i,J,0)="[REDIM]"
			m= endofstatement(SOURCEWORDS(),i,j)
			for n=j to m
				'print SOURCEWORDS(i,n,0);
			next

		end if

	NEXT
NEXT


'-----------------------------------------------------------------
'SCAN FOR DATASTATEMENTS
'-----------------------------------------------------------------
if 1=1 then
testword=""

for i =1 to val(SOURCEWORDS(0,0,0))
	k=VAL(SOURCEWORDS(i,0,0))
	for j=CODESTART to k

		if instr("[[DATA]] ","["+SOURCEWORDS(i,j,0)+"]") > 0 then
			SOURCEWORDS(i,J,1)=STR(15)
			m= endofstatement(SOURCEWORDS(),i,j)

			for n=j to m
				if left(SOURCEWORDS(i,n,0),1)<>"{" and SOURCEWORDS(i,n,0) <> "," and n<>j then
					'i try to let the structure intact so i save also the dataword as a indicator ( .. and n<>j)
					H=SOURCEWORDS(i,n,0)
					'print h
					if left(SOURCEWORDS(i,n,0),1)="[" then
						testword=mid(SOURCEWORDS(i,n,0),2,len(SOURCEWORDS(i,n,0))-2) 'maybee a reserved word is inside datas
						q= bt_search_idx ( RESERVEDWORDS(), testword  )

						if q <> -1 then
							H=testword
						end if

					end if

					if isreal(SOURCEWORDS(i,n,0))=0 then 'sloppy string data strings are separated bevore...
						SOURCEWORDS(i,n,0)="{"+STR(bt_insert_unsorted(STRINGS(),H))+"}"

					end if
				end if
				if SOURCEWORDS(i,n,0) <> "," then
					bt_insert_unsorted(DATAS(),SOURCEWORDS(i,n,0))
				end if
			next

		end if


	NEXT
NEXT
'RAWDUMP (SOURCEWORDS(), 1,val(SOURCEWORDS(0,0,0)))
'end
end if
'-----------------------------------------------------------------
'MAKE CLOSING ENDIFS (not yet used need investigation)
'-----------------------------------------------------------------
if 1=2 then
for i =CODESTART to val(SOURCEWORDS(0,0,0))
	m=0
	k=VAL(SOURCEWORDS(i,0,0))

	for j=3 to k
		if instr("[[IF]]","["+SOURCEWORDS(i,j,0)+"]") > 0 then
			m=m+1
		end if
	NEXT


	if m > 0 then
		n=0
		for j=1 to m
			n=n+1

			SOURCEWORDS(i,k+n,0)=":"
			n=n+1

			SOURCEWORDS(i,k+n,0)="[ENDIF]"
		next
		n=n+1
	end if
	SOURCEWORDS(i,0,0)=STR(n+k)

NEXT
end if


'-----------------------------------------------------------------
'COLORIZE SOME CONTROL STATEMENTS
'-----------------------------------------------------------------
FOR I=1 to val(SOURCEWORDS(0,0,0))

	FOR J=CODESTART TO val(SOURCEWORDS(i,0,0))

		if instr("[[DO]] [[LOOP]] [[WHILE]] [[UNTIL]] [[WEND]] [[FOR]]  [[NEXT]]  [[STEP]]  [[TO]]","["+SOURCEWORDS(i,j,0)+"]") > 0 then
			SOURCEWORDS(i,J,1)=STR(14)
		end if

		if instr("[[SYSTEM]] [[STOP]] [[EXIT]] [[LEAVE]]","["+SOURCEWORDS(i,j,0)+"]") > 0 then
			SOURCEWORDS(i,J,1)=STR(11)
		end if
		if instr("[[ON]] [[INPUT]]","["+SOURCEWORDS(i,j,0)+"]") > 0 then
			SOURCEWORDS(i,J,1)=STR(15)
		end if

		if instr("[[IF]] [[THEN]] [[ELSE]] [[ELSEIF]] [[AND]] [[NOT]] [[OR]] [[XAND]] [[XOR]] [[END]]  [[SELECT]]  [[CASE]] ","["+SOURCEWORDS(i,j,0)+"]") > 0 then
			SOURCEWORDS(i,J,1)=STR(12)
		end if




		if instr("[[SUB]] [[FUNCTION]] [[PROCEDURE]]","["+SOURCEWORDS(i,j,0)+"]") > 0 then
			if instr("[[END]] [[EXIT]] [[LEAVE]]","["+SOURCEWORDS(i,j-1,0)+"]") = 0 then
				SOURCEWORDS(i,J,1)=STR(15)
			else
				if instr("[[END]] [[EXIT]]","["+SOURCEWORDS(i,j-1,0)+"]") > 0 then
					SOURCEWORDS(i,J,1)=STR(12)
				end	if
			end if

		end if


	NEXT
NEXT



'-----------------------------------------------------------------
' 'SCAN AND REPAIR BROKEN PRINT STATEMENTS
'-----------------------------------------------------------------
if cfgrepair=1 then

for i =1 to val(SOURCEWORDS(0,0,0))
	j=CODESTART
	do until j>= VAL(SOURCEWORDS(i,0,0))
'print VAL(SOURCEWORDS(i,0,0)), j
		if instr("[[PRINT]] [[LPRINT]] ","["+SOURCEWORDS(i,j,0)+"]") > 0 then
			color 11
			'print SOURCELINES(i,1)
			l=j+1
			v=""
			Q=endofstatement2(SOURCEWORDS(),i,j)
			do until l>q
				h=ucase(left(SOURCEWORDS(i,l,0),1))
				testword=SOURCEWORDS(i,l,0)
				if instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ",h)>0 then
					v="VAR"

				elseif instr("0123456789.",h)>0 then
					V="NUM"

				elseif instr("-*/\^,;&#+",h)>0 then
					V="DEL"

				elseif instr("(",h)>0 then
					l=findarrayclosingbrace(SOURCEWORDS(),i,l)
					testword="(BLK)"
					V="BLK"

				elseif instr("[~|",h)>0 then
					V="RES"
					if SOURCEWORDS(i,l,0)="[USING]" then
						V="USG"
					end if

				elseif instr("{",h)>0 then
					V="STR"

REM  				elseif instr("`",h)>0 then
REM     					V="DEL"

REM  				elseif instr(",;&#+",h)>0 then
REM  					V="DEL"
  				end if


				p=0
				if v="BLK" or v="NUM" or v="DEL" or w="DEL" or l=j+1 or w="USG" then
					if (V="RES" and W="BLK")  then
						p=1
					end if
					if (V="NUM" and W="BLK")  then
						p=1
					end if



				else
					p=1
				end if
				color val(SOURCEWORDS(i,l,1))
				if p=0 then
					'print TESTWORD;
				else
					'print "°"+TESTWORD;
					addword(SOURCEWORDS(),i,l)
					SOURCEWORDS(i,l,0)=";"
					SOURCEWORDS(i,l,1)=STR(15)
					l=l+1
					q=q+1
				end if

REM  				if v="BLK" or v="DEL" or w="DEL" or l=j+1 or w="USG" then
REM  					print TESTWORD;
REM  				else
REM
REM  					if v<>W then
REM  							print "°"+TESTWORD;
REM
REM  					elseif 1=1 then
REM  							print "\"+TESTWORD;
REM  					end if
REM  				end if
				w=v
				l=l+1

			loop



		end if
	j=j+1

	loop

next

end if
'-----------------------------------------------------------------
' OUTPUT OF FOUND VARS + REINSERTION OF THE RENAMED ONES
'-----------------------------------------------------------------

if cfgvardump=1 then
PRINT "'VARS FOUND:"
for J=1 to val(VARS(0,0))


if cfgrenvars=0 then
	if right(VARS(j,3),1)="(" then
		VARS(j,0)=left(VARS(j,3),len(VARS(j,3))-1)
	else
		VARS(j,0)=VARS(j,3)
	end if
end if


	if val(VARS(j,1))>0 then
 		VARS(j,0)=VARS(j,0)+"("
		for i=1 to val(VARS(j,1)) 'to dimension
			VARS(j,0)=VARS(j,0)+"10," 'older basic usually got the first 10 for free ;)
		next
		VARS(j,0)=left(VARS(j,0),len(VARS(j,0))-1)
		VARS(j,0)=VARS(j,0)+")"
	end if
	print space(19);
	if val(VARS(j,1))>0 then
	PRINT "REDIM  SHARED  ",VARS(j,0),"'AS  "+VARS(j,2);" :REM "+VARS(j,3)
	else
	PRINT "              '",VARS(j,0)," REM "+VARS(j,2);" :REM "+VARS(j,3) 'this is prepared for documentation
	end if


NEXT
end if
'-----------------------------------------------------------------
' 'REPLACE THE USED VARS WITH NEW NAMES
'-----------------------------------------------------------------
if cfgrenvars=1 then
For I=1 to val(SOURCEWORDS(0,0,0))
	for J=CODESTART to val(SOURCEWORDS(I,0,0))
		if val(SOURCEWORDS(I,J,1))=13 then
			TESTWORD= SOURCEWORDS(I,J,0)
			if SOURCEWORDS(I,J+1,0)="(" then
				TESTWORD=TESTWORD+SOURCEWORDS(I,J+1,0)
			end if
			n= bt_search_idx ( OLDVARS(), TESTWORD  )
			if n > -1 then
				SOURCEWORDS(I,J,0)=OLDVARS(n,1)
			else
			end if
		end if

	NEXT
NEXT
end if

'-----------------------------------------------------------------
' 'REPLACE OTHER REPLACEMENTS
'-----------------------------------------------------------------

For I=1 to val(SOURCEWORDS(0,0,0))
	for J=CODESTART to val(SOURCEWORDS(I,0,0))
		if val(SOURCEWORDS(I,J,1))=13 then
			TESTWORD= SOURCEWORDS(I,J,0)
			n= bt_search_idx ( REPLACEMENTS(), TESTWORD  )
			if n > -1 then
				SOURCEWORDS(I,J,0)=REPLACEMENTS(n,1)
			else
			end if
		end if

	NEXT
NEXT



'-----------------------------------------------------------------
'INDENT + OUTPUT
'-----------------------------------------------------------------

if 1=1 then


if COMMAND(2)="" then
	n=1
	m=val(SOURCEWORDS(0,0,0))
end if

if COMMAND(2)<>"" then
	m=val(COMMAND(2))
end if

if COMMAND(3)<>"" and COMMAND(2)<>"" then
	n=val(COMMAND(2))
	m=val(COMMAND(3))
end if

if n>m then
	i=m
	m=n
	n=i
end if



	INDENTCURRENTLINE=0
	FOR i = n to m

		if DEBUG=1 then
			print
			color 14
			print "'ORGINAL "+SOURCELINES(I,1)
		end if

		if SOURCEWORDS(i,CODESTART-1,0)<>"" then
			if cfgrenlabs 	=1 then
			if isinteger(SOURCEWORDS(i,CODESTART-1,0))=1 then
				H="     l"+SOURCEWORDS(i,CODESTART-2,0)+""+":"

				if SOURCEWORDS(i,CODESTART-1,1)=str(3) then
					H="  L_"+SOURCEWORDS(i,CODESTART-2,0)+"_"+":"
				end if

				if SOURCEWORDS(i,CODESTART-1,1)=str(1) then
					H="     n"+SOURCEWORDS(i,CODESTART-2,0)+""+":"
				end if


				if SOURCEWORDS(i,CODESTART-1,1)=str(11) then
					H="SUB_"+SOURCEWORDS(i,CODESTART-2,0)+"_"+":"
					print
				end if
			else
				H=SOURCEWORDS(i,CODESTART-2,0)+":"
			end if
			else

			H=SOURCEWORDS(i,CODESTART-2,0)+":"
			end if
		else
			H="      "
		end if




		WHILE LEN(H)<=16
                	H=" "+H
		WEND
		H=H+" "




		'if SOURCEWORDS(i+1,CODESTART-1,  1)=str(11) and SOURCEWORDS(i  ,CODESTART-1,1)   ="[REM]" then print
		if SOURCEWORDS(i  ,1,  1)=str(11) then print 'separate subs
		if cfgcolorize=1 then color VAL(SOURCEWORDS(i,CODESTART-1,1))

		if SOURCEWORDS(i,CODESTART-1,1)=str(11) or SOURCEWORDS(i,CODESTART-1,1)=str(3) then
			print H;
		else
			if cfgdroplabs=1 then
				print space(18);
			else
				print H;
			end if
		end if



		INDENT=0
		INDENTFLAG=0
		j=VAL(SOURCEWORDS(i,0,0))
		FOR k = CODESTART to j '+ 1 cause THEN GOTO INSERTION

			if trim(SOURCEWORDS(i,k,0))<>"" then

				if SOURCEWORDS(i,k,1)=str(3) then
					if instr("[[GOTO]] [[ELSE]] [[THEN]]","["+SOURCEWORDS(i,k,0)+"]") =0 then
					if cfgrenlabs 	=1 then
						if isinteger(SOURCEWORDS(i,k,0))=1 then
							n= bt_search_idx ( GOSUBLABELS(), SOURCEWORDS(i,k,0) )
							if n <> -1 then
								SOURCEWORDS(i,k,0)="SUB_"+SOURCEWORDS(i,k,0)+"_"
								SOURCEWORDS(i,k,1)=STR(15)
							else
								SOURCEWORDS(i,k,0)="  L_"+SOURCEWORDS(i,k,0)+"_"
							end if
						end if

					end if
					end if


				end if



				if SOURCEWORDS(i,k,1)=str(11) and trim(SOURCEWORDS(i,k,0))<>"" then
					if instr("[[GOTO]] [[ELSE]] [[THEN]] [[GOSUB]] [[RETURN]] [[STOP]] [[SYSTEM]]","["+SOURCEWORDS(i,k,0)+"]") =0 then
						if isinteger(SOURCEWORDS(i,k,0))=1 then
						if cfgrenlabs 	=1 then
							SOURCEWORDS(i,k,0)="SUB_"+SOURCEWORDS(i,k,0)+"_"
						end if
						end if
					end if
				end if



				IF  INSTR("[[EXIT]]  ","["+SOURCEWORDS(i,k,0)+"]") >0  THEN
					INDENT=INDENT - cfgindent
					INDENTFLAG = INDENTFLAG + cfgindent

				end if

				IF  INSTR("[[SELECT]]  ","["+SOURCEWORDS(i,k,0)+"]") >0  THEN
					INDENT=INDENT +cfgindent +cfgindent
					INDENTFLAG = INDENTFLAG -cfgindent  -cfgindent


				end if


				IF  INSTR("[[CASE]]  ","["+SOURCEWORDS(i,k,0)+"]") >0  THEN
					IF  INSTR("[[SELECT]]  ","["+SOURCEWORDS(i,k-1,0)+"]") =0  THEN
					INDENTFLAG = INDENTFLAG  -cfgindent

					end if

				end if





				IF  INSTR("[[FOR]]  ","["+SOURCEWORDS(i,k,0)+"]") >0  THEN
					INDENT = INDENT + cfgindent
					INDENTFLAG = INDENTFLAG - cfgindent' in single statement mode
					n=0
					if INSTR(" [[FOR]]  ","["+SOURCEWORDS(i,k,0)+"]") >0 then

						for m=3 to val( SOURCEWORDS(i,0,0))

							if SOURCEWORDS(i,m,0)="[FOR]" then n=n+1
							if SOURCEWORDS(i,m,0)="[NEXT]" then n=n-1
						next

					end if
					if n<>0 then
						'INDENTFLAG = INDENTFLAG - cfgindent 'in multistatemnet mode
					end if
				end if


				IF  INSTR("[[DO]]","["+SOURCEWORDS(i,k,0)+"]") >0  THEN
					INDENT = INDENT + cfgindent
					INDENTFLAG = INDENTFLAG - cfgindent

				end if



				IF  INSTR("[[WHILE]]","["+SOURCEWORDS(i,k,0)+"]") >0  THEN
					if INSTR(" [[LOOP]] [[DO]] ","["+SOURCEWORDS(i,k-1,0)+"]") =0 then
					INDENT = INDENT + cfgindent
					INDENTFLAG = INDENTFLAG - cfgindent
					end if
				end if


				IF  INSTR("[UNTIL]","["+SOURCEWORDS(i,k,0)+"]") >0  THEN
					if INSTR(" [[LOOP]] [[DO]] ","["+SOURCEWORDS(i,k-1,0)+"]") =0 then
					INDENT = INDENT + cfgindent
					INDENTFLAG = INDENTFLAG - cfgindent
					end if
				end if




				IF  INSTR("[[SUB]] [[FUNCTION]]  ","["+SOURCEWORDS(i,k,0)+"]") >0 THEN
				if k=CODESTART then
				'print
				'PRINT SPACE(INDENTCURRENTLINE + INDENTFLAG+12);
					INDENT = INDENT + cfgindent
					INDENTFLAG = INDENTFLAG - cfgindent
				end if
				end if


				IF  INSTR("[[THEN]] ","["+SOURCEWORDS(i,k,0)+"]") >0 then
					n=0
					if  k=VAL(SOURCEWORDS(i,0,0)) then n=1
					if  k=VAL(SOURCEWORDS(i,0,0))-1 and left(SOURCEWORDS(i,k+1,0),1)="'"  THEN
					 n=1
					 end if
					if n=1 then
					INDENT = INDENT + cfgindent
					INDENTFLAG = INDENTFLAG - cfgindent
					end if
				end if

				IF  INSTR("[[ELSE]] ","["+SOURCEWORDS(i,k,0)+"]") >0 then
					IF  INSTR("[[CASE]]  ","["+SOURCEWORDS(i,k-1,0)+"]") =0  THEN
						n=0
						if  k=VAL(SOURCEWORDS(i,0,0)) then n=1
						if  k=VAL(SOURCEWORDS(i,0,0))-1 and left(SOURCEWORDS(i,k+1,0),1)="'"  THEN
							 n=1
						end if
						if n=1 then
							INDENTFLAG = INDENTFLAG - cfgindent
						end if
					end if

				end if

				IF  INSTR("[[ELSEIF]] ","["+SOURCEWORDS(i,k,0)+"]") >0 then
					'INDENTFLAG = INDENTFLAG - cfgindent
					INDENT = INDENT - cfgindent
				end if



				if  INSTR("[[NEXT]] [[CLOSE]] [[LOOP]] [[WEND]] [[END]] ","["+SOURCEWORDS(i,k,0)+"]") >0 then
					INDENT=INDENT - cfgindent
					L=k
					M=1
					if INSTR("[[NEXT]]","["+SOURCEWORDS(i,k,0)+"]") >0 then
						WHILE L < VAL(SOURCEWORDS(i,0,0)) and SOURCEWORDS(i,l,0)<>":"
							if SOURCEWORDS(i,l,0)="," then
								INDENT=INDENT - cfgindent
							END IF
							L=L+1
						WEND
					end if

					IF  INSTR("[[END]] ","["+SOURCEWORDS(i,k,0)+"]") >0 and INSTR("[[IF]] [[SUB]] [[FUNCTION]]  ","["+ucase(SOURCEWORDS(i,k+1,0))+"]") =0 then
						INDENT=INDENT + cfgindent
					end if
					IF  INSTR("[[END]] ","["+SOURCEWORDS(i,k,0)+"]") >0 and INSTR("[[SELECT]]  ","["+ucase(SOURCEWORDS(i,k+1,0))+"]") >0 then
						INDENT=INDENT - cfgindent -cfgindent -cfgindent -cfgindent
						INDENTFLAG=INDENTFLAG 	+cfgindent +cfgindent
					end if


				end if
			end if
		NEXt


if INDENTCURRENTLINE<0 then
color 15
print " 'WARNING: Something may wrong with the code structure indent was negative"
print space(18);
INDENTCURRENTLINE=0
end if

		INDENTCURRENTLINE=INDENTCURRENTLINE + INDENT
		PRINT SPACE(INDENTCURRENTLINE + INDENTFLAG);
		CURRENTLINELENGTH=INDENTCURRENTLINE + INDENTFLAG
		INDENTFLAG=0
'print str(INDENTCURRENTLINE+INDENTFLAG)+" "+str(INDENTFLAG);

		LABELFOUND=0
		RETURNFOUND=0
		J=VAL(SOURCEWORDS(i,0,0))

		FOR k = CODESTART to J
			if SOURCEWORDS(i,k,0)<>"" then
			if k>3 and left(SOURCEWORDS(i,k,0),1)="'" then
				'M=120 - CURRENTLINELENGTH - 1 -LEN(SOURCEWORDS(i,k,0))
				IF M > 0 THEN
					'print SPACE(m);'+ str( CURRENTLINELENGTH + 1 + LEN(SOURCEWORDS(i,k,0))+ m) +" " ;
				end if
			end if
			SOURCEWORDS(i,k,0)=TRIM(SOURCEWORDS(i,k,0))


			if left(SOURCEWORDS(i,k,0),1)="[" then
				SOURCEWORDS(i,k,0)=replace(SOURCEWORDS(i,k,0),"]","")
				SOURCEWORDS(i,k,0)=replace(SOURCEWORDS(i,k,0),"[","")
				if SOURCEWORDS(i,k,1)=str(9) then
					SOURCEWORDS(i,k,0)=lcase(SOURCEWORDS(i,k,0))
				end if
			end if

			if left(SOURCEWORDS(i,k,0),1)="|" then
				SOURCEWORDS(i,k,0)=lcase(SOURCEWORDS(i,k,0))
				SOURCEWORDS(i,k,0)=( mid (SOURCEWORDS(i,k,0), 2, len(SOURCEWORDS(i,k,0))-2))
				'SOURCEWORDS(i,k,0)=replace(SOURCEWORDS(i,k,0),"|","")
				SOURCEWORDS(i,k,0)=ucase(left(SOURCEWORDS(i,k,0),1))+lcase(mid(SOURCEWORDS(i,k,0),2,len(SOURCEWORDS(i,k,0))-1))
				if SOURCEWORDS(i,k-1,1)<>STR(15) then  SOURCEWORDS(i,k,1)=str(15)
				 SOURCEWORDS(i,k,1)=str(15)
			end if

			if left(SOURCEWORDS(i,k,0),1)="~" then
				SOURCEWORDS(i,k,0)=lcase(SOURCEWORDS(i,k,0))
				'SOURCEWORDS(i,k,0)=replace(SOURCEWORDS(i,k,0),"~","")
				SOURCEWORDS(i,k,0)=( mid (SOURCEWORDS(i,k,0), 2, len(SOURCEWORDS(i,k,0))-2))
				SOURCEWORDS(i,k,0)=ucase(left(SOURCEWORDS(i,k,0),1))+lcase(mid(SOURCEWORDS(i,k,0),2,len(SOURCEWORDS(i,k,0))-1))
				if SOURCEWORDS(i,k-1,1)<>STR(15) then  SOURCEWORDS(i,k,1)=str(15)
				 SOURCEWORDS(i,k,1)=str(15)
			end if




			if left(SOURCEWORDS(i,k,0),1)="{" then
				m=val( mid (SOURCEWORDS(i,k,0), 2, len(SOURCEWORDS(i,k,0))-2))
				SOURCEWORDS(i,k,0)=chr(34)+STRINGS(m,0)+chr(34)

			end if
			if left(SOURCEWORDS(i,k,0),1)="'" then
				m=val( mid (SOURCEWORDS(i,k,0), 2, len(SOURCEWORDS(i,k,0))-2))
				SOURCEWORDS(i,k,0)="REM "+COMMENTS(m,0)

			end if

				if cfgcolorize=1 then color VAL(SOURCEWORDS(i,k,1))
				if SOURCEWORDS(i,k,0)<>"$" then
				PRINT " "+SOURCEWORDS(i,k,0);
				end if
			CURRENTLINELENGTH=CURRENTLINELENGTH+LEN(" "+SOURCEWORDS(i,k,0))

			IF  INSTR("[[RETURN]]","["+SOURCEWORDS(i,k,0)+"]") >0 and INDENTCURRENTLINE=0 THEN
			RETURNFOUND=1
			END IF

			end if
		NEXt

		IF RETURNFOUND=1 then
				PRINT
				PRINT
		end if


	PRINT

	NEXT


end if


if INDENTCURRENTLINE<>0 then
if cfgcolorize=1 then color 15
print " 'WARNING: Something may wrong with the code structure indent was not zero"
print space(18);
INDENTCURRENTLINE=0
end if
print
print "' Color Table :";
FOR i = 1 to 15
	color i
	PRINT STR(i)+" | ";
NEXT
print
'################
end 'STOP MARKER
'################

