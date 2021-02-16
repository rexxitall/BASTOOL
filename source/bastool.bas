



#include "file.bi"
#include "dir.bi"

#include "bastool_readme.bas" 'you should read it really !
#include "bastool_vars.bas"
#include "bastool_bisec.bas"
#include "bastool_file.bas"
#include "bastool_funcs.bas"



'#########################################################################################
' Fiddle here with some settings

Wordfile      ="words/words_qbasic_ms.txt"	'MICROSOFT BASIC SYNTAX DEFINITION
Forbiddenfile ="words/words_freebasic.txt"	'DONT USE THIS RESERVED WORDS FOR RENAMING
Symbolfile    ="words/words_symbol.txt"	        'ALWAYS ON USED BY BRUTE FORCE TOKENIZER
Outfile       ="reseq.new" 			'not yet used !!!


' a value other then 0 will mean switch it on
cfgbft		=0  'brute force tokenizer only in rare situataions needed

cfgrenum 	=1  'new line numbers ?
cfgrenumdelta 	=10 'line renumbering steps - most code will use 10
cfglinesplit 	=1  'split lines which are glued with : chars

cfgindent 	=4  'how much spaces for indent 0= no indent

cfgrenvars 	=1  'rename vars
cfgvardump	=1  'make a var dump with redim statements
cfgrenlabs 	=1  'rename labels to nonumeric ones
cfgdroplabs 	=0  'forget unused labels


cfgcolorize 	=1  'fancy colors in the output
cfgrepair 	=1  'repair print statements
cfgmakeendifs   =0  'insert endifs only use if you has single line if statements like in gwbasic !
cfgcolortable   =0  'dumps out a color table at the end
cfgindentout    =0  'dump out the level of ident

cfgstringarray  =0  'put all strings in a message array for easy localisation
cfgcrossref     =0  'do cross referencing

'dont touch the rest if you dont know what you are doing ;)
'###########################################################################################
cfgdebug=0



DEBUG	      =0
MAXWORDS      =128
CODESTART     = 4

If Trim(Command)="" Then
	Cls
	Color 15: Print "------------------------------------------------------------------"
	Color 14: Print "BASTOOL - USE AT YOUR OWN RISK AND USE A BACKUP !"
	Color 15: Print "------------------------------------------------------------------"
	Color 13: Print ""
	Color 13: Print "    bastool is intend to make the porting of old basic code easy"
	Color 13: Print "    with minimal work you will be able to run old games or your"
	Color 13: Print "    favorite self written tools on your new environment."
	Color 13: Print ""
	Color 13: Print "    Of course you can not port only games"
	Color 13: Print ""
	Color 13: Print "                                            buts fun ;)"
	Color 13: Print ""
	Color 15: Print "    So aside all us serious work :"
	Print ,
	testword="#Lets blast some alien slime#hunt the wumpus#use the force #and of course make some nice klingon barbecue !"
	For i=1 To Len(testword)
		Color Int(Rnd(1)*8)+8
		h=Mid(testword,i,1)
		If H="#" Then
			Print
			Print,;
		Else
			If Int(Rnd(1)*2)=1 Then
				
				Print h;
			Else
				Print UCase(h);
				
			End If
		End If
		
	Next
	Print
	Print
	Color 15: Print "                                              have fun, Thomas"
	Color 15: Print "----------------------------------------------------------------"
	Input "HIT ENTER !";TESTWORD
	
	
	Cls
	Color 15: Print "------------------------------------------------------------------"
	Color 9: Print ""
	Color 15: Print "Bugs and comments are wellcome"
	Color 9: Print ""
	Color 9: Print " Thomas Ludewig, Dipl.-Ing. (FH)"
	Color 9: Print " GERMANY"
	Color 9: Print " Daimlerring 37"
	Color 9: Print " 31135 Hildesheim"
	Color 9: Print ""
	Color 12: Print " rexxitall (AT) gmx DOT de"
	Color 9: Print ""
	Color 2: Print "                              ...OK Bugs are not sooo welcome ;)"
	Color 9: Print ""
	Color 15: Print "----------------------------------------------------------------"
	Input "HIT ENTER !";TESTWORD
	
	Cls
	Color 15: Print "------------------------------------------------------------------"
	Color 13: Print "How to use:"
	Color 13: Print ""
	Color 10: Print "bastool SWITCHES <file.bas> "
	Color 13: Print "             (last commandline word is the always the source file)"
	Color 13: Print "EXAMPLE"
	Color 11: Print "bastool wumpus.bas"
	Color 11: Print "bastool -color 1 startrek.bas"
	Color 11: Print "bastool -split 1 -crossref 1 eliza.bas > elizanew.bas"
	Color 13: Print "            (last example shows how to write the output to a file)"
	Color 15: Print "------------------------------------------------------------------"
	Input "HIT ENTER !";TESTWORD
	
	
	Cls
	Color 15: Print "------------------------------------------------------------------"
	Color 13: Print "SWITCHES:"
	Color 15: Print "---------"
	Color 10: Print "-bft          <bool>   turn on brute force tokenizee"
	Color 10: Print "-renum        <bool>   turn on renumbering"
	Color 10: Print "-delta       <value>   renumbering steps"
	Color 10: Print "-split        <bool>   split lines by : "
	Color 10: Print "-indent      <value>   spaces used for ident"
	Color 10: Print "-varren       <bool>   rename variables"
	Color 10: Print "-vardump      <bool>   dump vars with redim statements"
	Color 10: Print "-labren       <bool>   rename labels to nonnumeric if numeric"
	Color 10: Print "-labdrop      <bool>   remove unused labels"
	Color 10: Print "-color        <bool>   syntax highlighting"
	Color 10: Print "-repprint     <bool>   repair print statements"
	Color 10: Print "-insendif     <bool>   make endif statements"
	Color 10: Print "-colortable   <bool>   print a small color table"
	Color 10: Print "-dbgindent    <bool>   print ident level in front of code"
	Color 10: Print "-strarray     <bool>   put used strings in a array"
	Color 10: Print "-crossref     <bool>   do cross referencing"
	Color 10: Print "-debug        <bool>   debug output"
	Color 10: Print "-listfrom    <value>   list code beginning from line"
	Color 10: Print "-listto      <value>   sop codelisting by line"
	Color 15: Print "---------------------------------------------------------------"
	Color 13: Print "             <bool> means boolean 0=(off/false) or 1=(on/true)"
	Color 13: Print "            <value> means a integer number 0 or bigger "
	Color 15: Print "---------------------------------------------------------------"
	
	End
Else
	
	i=0
	Do Until Trim(Command(i))= ""
		i=i+1
		testword=Trim(UCase(Command(i)))
		
		If isinteger(testword)=0 Then
			
			If Left(testword,1)="-" Then
				If testword ="-bft"        Then cfgbft		=  Val(Trim(Command(i+1)))
				If testword ="-renum"      Then cfgrenum 	=  Val(Trim(Command(i+1)))
				If testword ="-delta"      Then cfgrenumdelta 	=  Val(Trim(Command(i+1)))
				If testword ="-split"      Then cfglinesplit 	=  Val(Trim(Command(i+1)))
				If testword ="-indent"     Then cfgindent 	=  Val(Trim(Command(i+1)))
				If testword ="-varren"     Then cfgrenvars 	=  Val(Trim(Command(i+1)))
				If testword ="-vardump"    Then cfgvardump	=  Val(Trim(Command(i+1)))
				If testword ="-labren"     Then cfgrenlabs  	=  Val(Trim(Command(i+1)))
				If testword ="-labdrop"    Then cfgdroplabs 	=  Val(Trim(Command(i+1)))
				If testword ="-color"      Then cfgcolorize 	=  Val(Trim(Command(i+1)))
				If testword ="-repprint"   Then cfgrepair 	=  Val(Trim(Command(i+1)))
				If testword ="-insendif"   Then cfgmakeendifs   =  Val(Trim(Command(i+1)))
				If testword ="-colortable" Then cfgcolortable   =  Val(Trim(Command(i+1)))
				If testword ="-dbgindent"  Then cfgindentout    =  Val(Trim(Command(i+1)))
				If testword ="-strarray"   Then cfgstringarray  =  Val(Trim(Command(i+1)))
				If testword ="-crossref"   Then cfgcrossref     =  Val(Trim(Command(i+1)))
				If testword ="-debug"      Then cfgdebug        =  Val(Trim(Command(i+1)))
				If testword ="-listfrom"   Then cfgdebug        =  Val(Trim(Command(i+1)))
				If testword ="-listto"     Then cfgdebug        =  Val(Trim(Command(i+1)))
				
			Else
				
				If infile="" Then Infile=CurDir+"/"+Command(i)
			End If
		End If
	Loop
	
	
	Print "' BASTOOL .01 (c) Dipl.-Ing. Thomas Ludewig 2007"
	Print "' using at your own risk- no warrenty"
	Print "' CURRENT DIR:"+CurDir
	Print "' PROCESS    :"+infile
	Print "CLS"
	Print "COLOR 10 'an old Program should live on a green monochrome screen ;)"
End If

'-------------------------------------------------------------------------------------------
'READ IN THE RESERVED WORDS FROM THE FORMALY USED INTERPRETER
'-------------------------------------------------------------------------------------------
'otherwise you wont will find the originally used vars
i= bi_load_file_unsorted(RESERVEDWORDS(),Wordfile)
i= bi_load_file_unsorted(RESERVEDWORDS(),Symbolfile)
'bi_dump(RESERVEDWORDS(),0)
'end
'-------------------------------------------------------------------------------------------
'READ IN THE RESERVED WORDS FOR THE TARGET INTERPRETER
'-------------------------------------------------------------------------------------------
'we need this to prevent the renamed new vars to have a collision with reserved words
i= bt_load_file(FORBIDDENWORDS(),Forbiddenfile)
'bi_dump(FORBIDDENWORDS(),0)

i= bi_load_file_unsorted(SOURCELINES(),Infile)
For i=1 To Val(SOURCELINES(0,0))
	SOURCELINES(i,1)=SOURCELINES(i,0)
	'SOURCELINES(i,0)=" "+SOURCELINES(i,0)
Next
Print "'DYNAMIC"
Print "'Lines read: "+SOURCELINES(0,0)
'-------------------------------------------------------------------------------------------
'SEPARATE LABELS STRINGS AND COMMENTS !!! URGENT HAS TO BE DONE FIRST !!!
'-------------------------------------------------------------------------------------------
' all attemts to do this in separate steps has failed, these steps has to be done in one rush
' otherwise you will get hssle with strings and comments - multiline statements not yet
' supported (tested) until other routines have learned to ignore these statements inside
' themselves
If 1=1 Then
	textmark=0
	textswitch=0
	commentmark=0
	commentswitch=0
	commentlevel=0
	
	For I =1 To Val(SOURCELINES(0,0))
		C=0
		D=0
		l=0
		SOURCE=""
		LITERAL=""
		COMMENT=""
		LITERALmark=0
		SOURCELINES(I,0)=Trim(SOURCELINES(I,0))
		Q=Len(SOURCELINES(I,0))
		
		
		'seperate labels first
		labeltest="nolabel"
		l=1
		H= (Mid(SOURCELINES(I,0),1,1))  'look for numeric label even on wired old code
		If InStr("0123456789",h)>0 Then
			labeltest="numlabel"
			'print SOURCELINES(I,0)
			Do While InStr("0123456789",Mid(SOURCELINES(I,0),l,1))>0 And l<=q
				l=l+1
			Loop
			l=l-1
			
			source=Left(SOURCELINES(I,0),l)
			
			
			If isinteger(source)=0 Then labeltest="nolabel"
			
		ElseIf InStr("ABCDEFGHIJKLMNOPQRSTUVWXYZ",UCase(h))>0 Then 'look for textbased labels
			labeltest="textlabel"
			
			Do While InStr("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",Mid(SOURCELINES(I,0),l,1))>0 And l<>q
				l=l+1
			Loop
			l=l-1
			source=Left(SOURCELINES(I,0),l)
			
			If Mid(SOURCELINES(I,0),l+1,1)<>":" Then labeltest="nolabel"
			
			
		Else
			
			source=Trim(source)
			
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
		
		
		
		
		
		do until  L>=q 'we got a startpoint from the labelsearch...
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
				if H=":" then h=" "+h+" "
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



d=1
for i = 1 to val(RESERVEDWORDS(0,0))
	
	if i >1 then
		if RESERVEDWORDS(i,0)<>RESERVEDWORDS(i-1,0) then
			d=d+1
			RESERVEDWORDS(d,0)=RESERVEDWORDS(i,0)
		end if
	end if
NEXT
RESERVEDWORDS(0,0)=str(d)

'bi_dump(RESERVEDWORDS(),0,0)

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
			if cfgbft=1 then SOURCELINES(I,0)=replace(SOURCELINES(I,0)," "+ right(RESERVEDWORDS(j,0),len(RESERVEDWORDS(j,0))-4)+" "," `"+STR(j)+"` ")
		end if
	NEXt
	SOURCELINES(I,0)=" "+trim (replace(SOURCELINES(I,0), "  " ," " ))+" " 'REMOVE DOUBLE SPACE CHARS AND ADD EXTRA SPACES AT START AND END !
	FOR J=val(RESERVEDWORDS(0,0)) TO 0 step -1 'NOW WE MARK RESERVED WORDS AND DECRYPT AGAIN
		if instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ$",ucase( mid(RESERVEDWORDS(j,0),5,1)))>0 then
			if cfgbft=1 then SOURCELINES(I,0)=replace(SOURCELINES(I,0),"`"+STR(j)+"`","["+right(RESERVEDWORDS(j,0),len(RESERVEDWORDS(j,0))-4)+"]")
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

'bi_dump(RESERVEDWORDS(),0,0)
'end
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
				if instr(":=()-+-*/<>',`;\^#._|Â°{}[]01234567890"+chr(34),left(HH,1))=0 then 'start with not a delimiter
					q=bt_search_idx(RESERVEDWORDS(),ucase(hh)) 'in reserved words ?
					if q>-1 then
						hh="["+ucase(hh)+"]" 'currently needed ucase shoud go....
					end if
				end if
			end if
			
			
			
			if HH="[ELSE]" then
				if cfgmakeendifs=1 then
					SOURCEWORDS(m,0,0)=STR(N)
					if J=0 = len(HHH) then IFFLAG=0 'single line IF
					N=CODESTART-1
					m=m+1
					if ubound(SOURCEWORDS,1) < m+1 then
						REDiM PRESERVE SOURCEWORDS(m+1,MAXWORDS,1)
					end if
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
				if cfgmakeendifs=1 then
					SOURCEWORDS(m,0,0)=STR(N)
					if J=0 = len(HHH) then IFFLAG=0 'single line IF
					N=CODESTART-1
					m=m+1
					if ubound(SOURCEWORDS,1) < m+1 then
						REDiM PRESERVE SOURCEWORDS(m+1,MAXWORDS,1)
					end if
				end if
			end if
			
			
			if HH="[IF]" and  SOURCEWORDS(m,n-1,0) <>"[END]" then
				IFFLAG=IFFLAG+1
			end if
			
			if HH="[END]" and  SOURCEWORDS(m,n-1,0) = "[IF]" then
				IFFLAG=IFFLAG-1
			end if
			
			
			
			if HH="[THEN]" then
				if cfgmakeendifs=1 then
					SOURCEWORDS(m,0,0)=STR(N)
					if J=0 = len(HHH) then IFFLAG=0 'single line IF
					N=CODESTART-1
					m=m+1
					if ubound(SOURCEWORDS,1) < m+1 then
						REDiM PRESERVE SOURCEWORDS(m+1,MAXWORDS,1)
					end if
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
	
	if cfgmakeendifs=1 then
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
'LOOK FOR USED LABELS
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
						SOURCEWORDS(i,j+1,1)=str(3)
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
							if isinteger( SOURCEWORDS(i,j+1,0)) then
								
								print "' ERROR : GOTO GOSUB  - LINE "+SOURCEWORDS(i,CODESTART-1,0)+" - LABEL NOT FOUND "+SOURCEWORDS(i,k,0)
							end if
							
						end if
					END IF
				next
				
				
				if "["+SOURCEWORDS(i,j,0)+"]"="[[GOTO]]" then
					
					SOURCEWORDS(i,j,1)=str(3)
					for k=j+1 to m
						if SOURCEWORDS(i,k,0)<>"," then
							
							n =     bt_insert( GOTOLABELS(), SOURCEWORDS(i,k,0) )
							SOURCEWORDS(i,k,1)=str(3)
						end if
					next
				END IF
				
				
				
				if "["+SOURCEWORDS(i,j,0)+"]"="[[GOSUB]]" then
					
					SOURCEWORDS(i,j,1)=str(11)
					for k=j+1 to m
						if SOURCEWORDS(i,k,0)<>"," then
							
							n=    bt_insert( GOSUBLABELS(), SOURCEWORDS(i,k,0) )
							SOURCEWORDS(i,k,1)=str(11)
						end if
					next
				END IF
				
				
				
				if "["+SOURCEWORDS(i,j,0)+"]"="[[RETURN]]" then
					SOURCEWORDS(i,j,1)=str(11)
					
					for k=j+1 to m
						
						if SOURCEWORDS(i,k,0)<>"," then
							n =     bt_insert( RETURNLABELS(), SOURCEWORDS(i,k,0) )
							SOURCEWORDS(i,k,1)=str(11)
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
if cfgdebug=1 then
	RAWDUMP (SOURCEWORDS(), 1,val(SOURCEWORDS(0,0,0)))
	end
end if
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
							'print "Â°"+TESTWORD;
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
						REM  							print "Â°"+TESTWORD;
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
	' 'REPLACE THE USED VARS WITH NEW NAMES ALSO CROSSREFERENCING
	'-----------------------------------------------------------------
	if cfgrenvars=1 then
		For I=1 to val(SOURCEWORDS(0,0,0))
			for J=CODESTART to val(SOURCEWORDS(I,0,0))
				
				if val(SOURCEWORDS(I,J,1))=13 then
					TESTWORD= SOURCEWORDS(I,J,0)
					if SOURCEWORDS(I,J+1,0)="(" then
						TESTWORD=TESTWORD+SOURCEWORDS(I,J+1,0)
					end if
					'Varibles Cross Referencin
					n= bt_search_idx ( OLDVARS(), TESTWORD  )
					if n > -1 then
						SOURCEWORDS(I,J,0)=OLDVARS(n,1)
						OLDVARS(n,2)=OLDVARS(n,2)+" "+str(I)
						
					end if
				end if
				
				
				if val(SOURCEWORDS(I,J,1))=3 or val(SOURCEWORDS(I,J,1))=3 then
					TESTWORD= SOURCEWORDS(I,J,0)
					
					'Label Cross referencing
					n= bt_search_idx ( LABELS(), TESTWORD  )
					if n > -1 then
						LABELS(n,1)=LABELS(n,1)+" "+str(I)
					end if
					
					'Goto Label Cross referencing
					n= bt_search_idx ( GOTOLABELS(), TESTWORD  )
					if n > -1 then
						GOTOLABELS(n,1)=GOTOLABELS(n,1)+" "+str(I)
					end if
					
					
					'GOSUB Label Cross referencing
					n= bt_search_idx ( GOSUBLABELS(), TESTWORD  )
					if n > -1 then
						GOSUBLABELS(n,1)=GOSUBLABELS(n,1)+" "+str(I)
					end if
				end if
				
				'RESERVED WORDS Cross referencing
				if left(SOURCEWORDS(I,J,0),1)="[" then
					TESTWORD= mid(SOURCEWORDS(I,J,0),2,len(SOURCEWORDS(I,J,0))-2)
					n= bt_search_idx ( RESERVEDWORDS(), TESTWORD  )
					if n > -1 then
						RESERVEDWORDS(n,1)=RESERVEDWORDS(n,1)+" "+str(I)
					else
						print "notfound"+ TESTWORD
					end if
				end if
				
				if left(SOURCEWORDS(I,J,0),1)="{" then
					TESTWORD= mid(SOURCEWORDS(I,J,0),2,len(SOURCEWORDS(I,J,0))-2)
					STRINGS(val(TESTWORD),1)=STRINGS(val(TESTWORD),1)+" "+str(I)
				end if
				
				
				
				
			NEXT
		NEXT
	end if
	
	
	
	
	
	
	
	
	'-----------------------------------------------------------------
	' OUTPUT OF STRINGS IN ARRAYS
	'-----------------------------------------------------------------
	if cfgstringarray  =1 then
		color 15
		print "REM USED STRINGS"
		print "    REDIM SHARED bt_s$("+STRINGS(0,0)+",1) "
		print "    btnr=0"
		
		bt_dump(STRINGS(),1,0,1)
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
	'LABELS OUT
	'-----------------------------------------------------------------
	
	if 1=1 then
		
		
		n=1
		m=val(SOURCEWORDS(0,0,0))
		
		if cfglistfrom<>0 then n=cfglistfrom
		if cfglistto<>0   then m=cfglistto
		
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
			
			'-----------------------------------------------------------------
			'INDENT
			'-----------------------------------------------------------------
			
			
			
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
			
			if cfgindentout then print str(INDENTCURRENTLINE+INDENTFLAG)+" "+str(INDENTFLAG);
			
			
			
			'-----------------------------------------------------------------
			'REINSERTION AND OUTPUT
			'-----------------------------------------------------------------
			
			
			
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
						if cfgstringarray=0 then
							SOURCEWORDS(i,k,0)=chr(34)+STRINGS(m,0)+chr(34)
						else
							SOURCEWORDS(i,k,0)="bt_s$("+str(m)+",btnr)"
						end if
						
						
						
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
	
	
	if cfgcolortable=1 then
		print
		print "' Color Table :";
		FOR i = 1 to 15
			color i
			PRINT STR(i)+" | ";
		NEXT
		print
	end if
	
	
	
	if cfgcrossref  =1 then
		
		color 15
		print "'VARIABLES CROSS REFERENCE"
		bt_dump(OLDVARS(),2,1,0)
		
		
		
		
		color 15
		print "'GOTOLABELS CROSS REFERENCE"
		bt_dump(GOTOLABELS(),1,0,0)
		
		
		color 15
		print "'GOSUBLABELS CROSS REFERENCE"
		bt_dump(GOSUBLABELS(),1,0,0)
		
		
		color 15
		print "'RESERVEDWORDS CROSS REFERENCE"
		bt_dump(RESERVEDWORDS(),1,0,0)
		
	end if
	
	
	
	'################
	end 'STOP MARKER
	'################
	
