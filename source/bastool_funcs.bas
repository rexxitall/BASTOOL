#INCLUDE "vbcompat.bi"

Declare Function rexxreplace(     HAYSTACK As String, NEEDLE As String, NEWNEEDLE As String) As String
Declare Function repl(             HAYSTACK As String, NEEDLE As String, NEWNEEDLE As String) As String
Declare Function isinteger(        candidate As String )                                      As Integer
Declare Function ascii2ansi (      ByVal ConvertString As String)                             As String

Declare Function findarrayclosingbrace( SARRAY() As String,currentline As Integer ,start As Integer )                 As Integer
Declare Function parse( 	   SARRAY() As String,currentline As Integer ,start As Integer , target As Integer) As Integer
Declare Function words(needle As String,subject As String) As Integer
Declare Function replace(subject As String,needle As String,replacement As String) As String

Declare Function endofstatement( SARRAY() As String,currentline As Integer ,start As Integer ) As Integer
Declare Function endofstatement2( SARRAY() As String,currentline As Integer ,start As Integer ) As Integer

Declare Function beginofstatement( SARRAY() As String,currentline As Integer ,start As Integer ) As Integer
Declare Sub 	 addvar( ar() As String,needle As String,dimension As Integer,currentline As Integer)
Declare Sub 	 addword( SARRAY() As String, currentline As Integer ,start As Integer )
Declare Sub 	 RAWDUMP (SOURCEWORDS() As String, START As Integer, TARGET As Integer)



Declare Function bt_insert( a() As String, x As String) As Integer
Declare Function bt_search_idx ( a() As String, x As String) As Integer
Declare Function bt_insert_unsorted( a() As String, value As String) As Integer
Declare Sub bt_dump( a() As String, index As Integer,delta As Integer,special As Integer)



Function bt_insert( a() As String, x As String) As Integer
	Dim q As Integer
	Dim c As Integer
	'q is returned by value !!!
	If a(0,0)="" Then
		q=0
	Else
		q=Val(A(0,0))
	End If
	c=bi_insert( a() , x , 0, q , 1 )
	'print q,a(c,0)
	A(0,0)=Str(q)
	bt_insert=c
End Function



Function bt_search_idx ( a() As String, x As String) As Integer
	Dim q As Integer
	q=Val(A(0,0))
	bt_search_idx = bi_search_idx ( a(), x , 0 , q , 1 )
End Function


Function bt_insert_unsorted( a() As String, x As String) As Integer
	bt_insert_unsorted = bi_append_unsorted(a(),x)
End Function


'---------------------------------------------------------------------------------------------
Sub bt_dump( a() As String, index As Integer, delta As Integer,special As Integer)
	'---------------------------------------------------------------------------------------------
	Dim i As Integer
	Dim j As Integer
	
	Dim o As Integer
	Dim testword As String
	Dim codeline As Integer
	
	Dim h As String
	Dim c As String
	
	
	
	For i =1 To Val(A(0,0))
		If A(i,index)<>"" Then
			
			
			If special=1 Then
				codeline=Val(Trim(A(i,1)))
				
				
				If isinteger(SOURCEWORDS(codeline,CODESTART-1,0))=1 Then
					H="l"+SOURCEWORDS(codeline,CODESTART-2,0)+""
					
					If SOURCEWORDS(codeline,CODESTART-1,1)=Str(3) Then
						H="L_"+SOURCEWORDS(i,CODESTART-2,0)+"_"
					End If
					
					If SOURCEWORDS(codeline,CODESTART-1,1)=Str(1) Then
						H="n"+SOURCEWORDS(i,CODESTART-2,0)
					End If
					
					
					If SOURCEWORDS(codeline,CODESTART-1,1)=Str(11) Then
						H="SUB_"+SOURCEWORDS(i,CODESTART-2,0)+"_"
						
					End If
				Else
					h=Str(codeline)
					
				End If
				
				
				
				
				
				Color 14
				'print " '{"+str(i)+"}, "+h
				Color 10
				Print Space(19) +"bt_s$(" ;
				Print Using "#####" ;i;
				Print " ,  0) = "+Chr(34)+A(i,0) +Chr(34)
				Color 3
				'print space(19) + "btmsg(" +str(i)+",1) = "+chr(34) +chr(34)
				
				'print
			End If
			
			
			
			
			If special=0 Then
				
				Print
				Color 3
				Print "'" +Str(i)+".) ",;
				Color 13
				Print A(i,delta)+": ";
				
				Color 11
				testword= Trim(A(i,index))
				
				h=""
				o=0
				
				For j=1 To Len(TEstword)
					c=Mid(TESTWORD,j,1)
					h=h+c
					If c=" " Or J=Len(TEstword) And Trim(h)<>"" Then
						o=o+1
						codeline=Val(Trim(h))
						
						If isinteger(SOURCEWORDS(codeline,CODESTART-1,0))=1 Then
							H="l"+SOURCEWORDS(codeline,CODESTART-2,0)+""
							
							If SOURCEWORDS(codeline,CODESTART-1,1)=Str(3) Then
								H="L_"+SOURCEWORDS(i,CODESTART-2,0)+"_"
							End If
							
							If SOURCEWORDS(codeline,CODESTART-1,1)=Str(1) Then
								H="n"+SOURCEWORDS(i,CODESTART-2,0)
							End If
							
							
							If SOURCEWORDS(codeline,CODESTART-1,1)=Str(11) Then
								H="SUB_"+SOURCEWORDS(i,CODESTART-2,0)+"_"
								
							End If
						Else
							h=Str(codeline)
							
						End If
						
						
						Color Val(SOURCEWORDS(codeline,CODESTART-1,1))
						Print ,h +" ";
						h=""
						
						
						
						
					End If
					
					If o>=4 Then
						Print
						Print "'",;
						o=0
						
					End If
				Next
				
			End If
		End If
		
	Next
	Print
End Sub




'---------------------------------------------------------------------------------------------
Sub RAWDUMP (a() As String, START As Integer, TARGET As Integer)
	'---------------------------------------------------------------------------------------------
	Dim i As Integer
	Dim j As Integer
	
	For I=START To TARGET
		Color 11
		'print "'   "+SOURCELINES(I,1)
		For j=1 To Val(a(I,0,0))
			If a(I,J,0)<>"" Then
				If j<CODESTART-1 Then
					Color 1
				Else
					Color Val(a(I,J,1))
				End If
				Print "."+a(I,J,0)+".";
			Else
				If j< CODESTART-1 Then
					Color 1
				Else
					Color 14
				End If
				Print "[  Â°  ]";
			End If
		Next
		Print
	Next
	Print
End Sub

'---------------------------------------------------------------------------------------------
Sub addword( a() As String, currentline As Integer ,start As Integer )
	'---------------------------------------------------------------------------------------------
	Dim eol As Integer
	Dim j As Integer
	Dim i As Integer
	Dim u As Integer
	Dim l As Integer
	u=UBound(a,3)
	l=LBound(a,3)
	eol=Val(a(currentline,0,0))+1
	For I=eol To start Step -1
		
		For j=l To u
			A(currentline,i,j) =A(currentline,i-1,j)
		Next
	Next
	a(currentline,0,0)=Str(eol)
End Sub



'---------------------------------------------------------------------------------------------
Function endofstatement( SARRAY() As String,currentline As Integer ,start As Integer ) As Integer
	'---------------------------------------------------------------------------------------------
	Dim eol As Integer
	Dim i As Integer
	eol=Val(SARRAY(currentline,0,0))
	'print "eol"+SARRAY(currentline,0,0)
	If start>eol Then Return eol
	i=start
	Do While i <= eol And InStr(":'`",Left(SARRAY(currentline,i,0),1)) =0
		i=i+1
	Loop
	If InStr(":`'",Left(SARRAY(currentline,i,0),1)) >0 Then i=i-1
	If i>=eol Then i=eol
	'print "eol"+str(i)
	Return i
End Function

'---------------------------------------------------------------------------------------------
Function endofstatement2( SARRAY() As String,currentline As Integer ,start As Integer ) As Integer
	'---------------------------------------------------------------------------------------------
	Dim eol As Integer
	Dim i As Integer
	eol=Val(SARRAY(currentline,0,0))
	'print "eol"+SARRAY(currentline,0,0)
	If start>eol Then Return eol
	i=start
	Do While i <= eol And InStr(":'`",Left(SARRAY(currentline,i,0),1)) =0 And InStr("[[ELSE]] [[ELSEIF]]","["+SARRAY(currentline,i,0)+"]") =0
		i=i+1
	Loop
	If InStr(":`'",Left(SARRAY(currentline,i,0),1)) >0 Then i=i-1
	If i>=eol Then i=eol
	'print "eol"+str(i)
	Return i
End Function

'---------------------------------------------------------------------------------------------
Function beginofstatement( SARRAY() As String,currentline As Integer ,start As Integer ) As Integer
	'---------------------------------------------------------------------------------------------
	Dim eol As Integer
	Dim i As Integer
	I=start
	If start <1 Then Return 1
	eol=Val(SARRAY(currentline,0,0))
	Do Until i=1  Or (InStr(":`",Left(SARRAY(currentline,i,0),1)) >0)
		i=i-1
	Loop
	If InStr(":`",Left(SARRAY(currentline,i,0),1)) >0 Then i=i+1
	
	Return i
End Function


'---------------------------------------------------------------------------------------------
Sub addvar( a() As String , needle As String, dimension As Integer ,currentline As Integer)
	'---------------------------------------------------------------------------------------------
	Dim t As Integer
	Dim i As Integer
	Dim j As Integer
	Dim n As Integer
	
	Dim inserted As String
	Dim newneedle As String
	Dim TESTWORD As String
	Dim vartype As String
	'print needle
	
	needle=Trim(needle)
	
	
	If isinteger(needle) =1 Then Return
	
	If InStr("ABCDEFGHIJKLMNOPQRSTUVWXYZ",UCase(Left(needle,1)))=0 Then 'vars should start with a letter
		Return
	End If
	
	
	n= bt_search_idx ( RESERVEDWORDS(), NEEDLE  )
	If n>-1 Then
		Print needle+"####"
		Return
	End If
	
	n= bt_search_idx ( USERFUNCS(), NEEDLE  )
	If n>-1 Then
		Print needle+"####",n
		Return
	End If
	
	If UCase(Left(needle,2))="FN" Then Return
	
	
	'if ucase(left(needle,1))="A" then print needle+"dfafaÃ¶ksdkl"
	'if ucase(left(needle,1))="O" then print needle+"dfafaÃ¶ksdkl"
	
	vartype="SINGLE"
	If InStr(needle,"$")>0 Then vartype="STRING"
	If InStr(needle,"%")>0 Then vartype="INTEGER"
	If InStr(needle,"!")>0 Then vartype="SINGLE"
	If InStr(needle,"#")>0 Then vartype="DOUBLE"
	
	newneedle=replace(needle+"","(","")
	newneedle=replace(newneedle,")","")
	newneedle=replace(newneedle,"$","")
	newneedle=replace(newneedle,"%","")
	newneedle=replace(newneedle,"!","")
	newneedle=replace(newneedle,"#","")
	newneedle=replace(newneedle,"^","")
	
	'if ucase(newneedle)="A" then newneedle=newneedle+"a"
	'if ucase(newneedle)="I" then newneedle=newneedle+"i"
	
	
	If newneedle="" Then Return
	If isinteger(newneedle) =1 Then Return
	If Right( needle,1) ="(" Then newneedle=newneedle+"_"
	
	
	
	If  vartype="STRING"    Then  newneedle=newneedle+"s"
	If  vartype="INTEGER"   Then  newneedle=newneedle+"i"
	If  vartype="SINGLE"    Then  newneedle=newneedle+"r"
	If  vartype="DOUBLE"    Then  newneedle=newneedle+"d"
	
	j= bt_search_idx (FORBIDDENWORDS(), UCase(newneedle)  )
	If j <> -1 Then
		newneedle="BT_"+newneedle
	End If
	
	
	If  vartype="STRING"    Then  newneedle=newneedle+"$"
	If  vartype="INTEGER"   Then  newneedle=newneedle+"%"
	If  vartype="SINGLE"    Then  newneedle=newneedle+"!"
	If  vartype="DOUBLE"    Then  newneedle=newneedle+"#"
	
	
	Color 15
	inserted=newneedle
	j=bt_insert( a() , inserted )
	If Right(needle,1)="(" Then
		a(j,1)=Str(dimension)
	Else
		a(j,1)=Str(0)
	End If
	a(j,2)=vartype
	a(j,3)=needle
	If a(j,4)="" Then
		a(j,4)="*"+Str(currentline)
	Else
		a(j,4)=a(j,3)+" "+Str(currentline)
	End If
	
	j=bt_insert( OLDVARS() , needle )
	OLDVARS(j,1)=inserted
	
	
	
	
	/'
	if instr(needle,"INTEGER")>0 then
	H=trim(replace(needle,"INTEGER ",""))
	t = bisecsearch( a() ,1, H)
	if A(t,0)=H then
	A(t,0)=needle
	H=qsort(a(),1,1,VARSCOUNT-1)
	return
	end if
	end if
	
	t = bisecsearch( a() ,1, needle)
	if A(t,0)=needle then
	return
	else
	A(VARSCOUNT,0)=needle
	H=qsort(a(),1,1,VARSCOUNT)
	VARSCOUNT=VARSCOUNT+1
	end if
	'/
	
	Return
End Sub


'---------------------------------------------------------------------------------------------
Function parse( SARRAY() As String,currentline As Integer ,start As Integer , target As Integer) As Integer
	'---------------------------------------------------------------------------------------------
	ReDim checkit(0,MAXWORDS,0) As String
	ReDim tempvars(0) As String
	Dim lengthvar As Integer
	Dim todo As Integer
	Dim todoloop As Integer
	Dim dimension As Integer
	Dim i As Integer
	Dim k As Integer
	Dim l As Integer
	
	Dim j As Integer
	Dim m As Integer
	Dim LOCALTARGET As Integer
	
	Dim h As String
	Dim hh As String
	Dim char As String
	Dim vartype As String
	'scalar var dimensions = 0
	lengthvar=TARGET-START
	If lengthvar=0 Then
		addvar(VARS() , SARRAY(currentline,START,0),0,currentline)
		Return 0
	End If
	
	
	char= "_-#~,0123456789"
	char = char + "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	char = char + LCase(char)
	todo=0
	todo = 0
	todoloop = 0
	
	k=1
	
	
	For i=start To target
		checkit(todo,k,0)=SARRAY(currentline,I,0)
		'print SARRAY(currentline,I,0);
		k=k+1
	Next
	'print
	checkit(0,0,0)=Str(k)
	/'
	
	HH = ucase("Aloa ( i , j , k ( O ( 2 + 2) ^ 2 , 8 , 9 ) , B ( 5 , 9 ) , 0 , C ( I , L ( i ) ) , 7 )")
	HH = ucase("R ( J , IR ( I ) )")
	k=1
	checkit(0,k,0)=""
	for i=1 to len(HH)
	H=mid(hh,i,1)
	if H<>" " then
	checkit(0,k,0)=checkit(0,k,0)+H
	else
	k=k+1
	checkit(0,k,0)=""
	end if
	next
	checkit(0,0,0)=str(k)
	for i=1 to val(checkit(0,0,0))
	print checkit(0,i,0);
	NEXT
	PRINT
	
	
	'/
	
	Do Until todoloop > todo '	All varlines to be processed will be increased on demand
		'print "entering"
		j = 0
		i = 0
		HH = ""
		
		Do  Until i > Val(checkit(todoloop,0,0)) 'CURRENT LINE
			H  =  checkit(todoloop,i,0)
			If i = 1 Then
				tempvars(0) = H
				j =  j + 1
				ReDim Preserve tempvars(j)
				dimension=1
			End If
			Select Case H
			Case Is  = "("
				If i > 2 Then 'nested var found
					
					'find the closing brace for this var
					LOCALTARGET = findarrayclosingbrace(checkit(),todoloop,i)
					todo = todo + 1 'prepare new loop
					ReDim Preserve checkit(todo,MAXWORDS,0) As String
					'and create new varline (Stack)
					l=0
					For k = i-1 To LOCALTARGET
						l=l+1
						checkit(todo,l,0)=checkit(todoloop,k,0)
						'color 9
						'print checkit(todo,l,0);
					Next
					'print
					checkit(todo,0,0)=Str(L)
					'nested vars are now on the stack for the further processing
					tempvars( j ) = tempvars( j )+"("
					j = j + 1
					ReDim Preserve tempvars(j)
					'now we have a separated var and we continue
					'after the closing brace
					i = LOCALTARGET
				Else
					'first found var is a array so we need ... a opening brace
					tempvars( j -1) = 	tempvars( j -1)+"("
				End If
			Case Is  = ")" 'no operation exept remove this brace don't delete this line
				
			Case Is  = ","
				j = j + 1 'array list
				ReDim Preserve tempvars(j)
				dimension=dimension+1
			Case Else
				tempvars( j ) = H
			End Select
			i = i+1
		Loop
		todoloop = todoloop+1
		vartype="DOUBLE"
		For i  =  0 To j
			If i = 0 Then
				'color 9
				'print j
				addvar(VARS() , tempvars( i ),dimension,currentline)
			Else
				If Right(tempvars( i ) ,1 )<>"(" Then
					If Isinteger(tempvars( i  ) )=0 Then
						addvar(VARS() , tempvars( i  ),0,currentline)
					End If
				End If
			End If
			
		Next
		
	Loop
	
	Return 0
	
End Function


'---------------------------------------------------------------------------------------------
Function findbrace( TESTLINE As String, start As Integer) As Integer
	'---------------------------------------------------------------------------------------------
	Dim i As Integer
	Dim c As Integer
	Dim count As Integer
	Dim braceclose As String
	Dim brace As String
	Dim h As String
	Dim wordslen As Integer
	brace=Mid(TESTLINE,start,1)
	If InStr("()",brace)  =  0 Then
		Return 0
	End If
	If brace = "(" Then
		braceclose  = ")"
		c=1
	End If
	If brace = ")" Then
		braceclose  = "("
		c=-1
	End If
	i = start
	count = 0
	WORDSLEN = Len(TESTLINE)
	Do
		H  =  Mid(TESTLINE,i,1)
		If H = brace Then
			count = count+1
		End If
		If H = braceclose Then
			count = count-1
		End If
		i = i+c
	Loop Until ( count  =  0 ) Or (I = WORDSLEN) Or (I=1)
	i=i-c
	Return i
	
End Function


'---------------------------------------------------------------------------------------------
Function findarrayclosingbrace( SARRAY() As String, currentline As Integer ,start As Integer) As Integer
	'---------------------------------------------------------------------------------------------
	Dim i As Integer
	Dim c As Integer
	Dim count As Integer
	Dim braceclose As String
	Dim brace As String
	Dim h As String
	Dim wordslen As Integer
	brace=SARRAY(currentline,start,0)
	If InStr("()",brace)  =  0 Then
		Return 0
	End If
	If brace = "(" Then
		braceclose  = ")"
		c=1
	End If
	If brace = ")" Then
		braceclose  = "("
		c=-1
	End If
	i = start
	count = 0
	WORDSLEN = Val(SARRAY(currentline,0,0))+1
	Do
		H  =  SARRAY(currentline,i,0)
		If H = brace Then
			count = count+1
		End If
		If H = braceclose Then
			count = count-1
		End If
		i = i+c
	Loop Until ( count  =  0 ) Or (I = WORDSLEN) Or (I=1)
	i=i-c
	Return i
End Function



'---------------------------------------------------------------------------------------------
Function isinteger(candidate As String                                    ) As Integer
	'---------------------------------------------------------------------------------------------
	Dim i As Integer
	Dim result As Integer
	If candidate="" Then Return 0
	result = 1
	For i =1 To Len(candidate)
		If InStr("0123456789",Mid(candidate,i,1)) = 0 Then
			Return 0
		End If
	Next
	Return 1
End Function


'---------------------------------------------------------------------------------------------
Function isReal(candidate As String                                    ) As Integer
	'---------------------------------------------------------------------------------------------
	Dim i As Integer
	Dim result As Integer
	Dim test As String
	Dim h As String
	candidate=Trim(candidate)
	If candidate="" Then Return 0
	test=""
	result = 0
	For i =1 To Len(candidate)
		h=Mid(candidate,i,1)
		If InStr("0123456789",h) = 0 Then
			test=test+h
		End If
	Next
	If test="" Then Return 1
	If InStr("-.E",UCase(test)) > 0 Or test="" Then
		result=1
	End If
	Return result
End Function




'---------------------------------------------------------------------------------------------
Function ascii2ansi (ByVal ConvertString As String                        ) As String
	'---------------------------------------------------------------------------------------------
	
	Dim As String OutString=ConvertString
	Static As UByte AscAnsDat(128)={ _
	63,  63,  39, 159,  34,  46, 197, 206,  94,  37,  83,  60,  79, 63, 63, 63, _
	90,  39,  39,  34,  34,   7,  45,  45, 126,  84, 115,  62, 111, 63, 122, 89, _
	255, 173, 189, 156, 207, 190, 221, 145, 149, 184, 166, 174, 170, 240, 169, 238, _
	248, 241, 253, 252, 239, 230, 244, 250, 247, 251, 167, 175, 172, 171, 243, 168, _
	183, 181, 182, 199, 142, 143, 146, 128, 212, 144, 210, 211, 222, 214, 215, 216, _
	209, 165, 227, 224, 226, 229, 153, 158, 157, 235, 233, 234, 154, 237, 232, 160, _
	225, 133, 131, 198, 132, 134, 145, 135, 138, 130, 136, 137, 141, 161, 140, 139, _
	208, 164, 149, 162, 147, 228, 148, 246, 155, 151, 163, 150, 129, 236, 231, 152}
	For i As Integer=0 To Len(OutString)-1
		If OutString[i]>127 Then OutString[i]=AscAnsDat(OutString[i]-128)
	Next i
	Return OutString
End Function

'robbed and adopted from Power Basic Public domain
'---------------------------------------------------------------------------------------------
Function repl(HAYSTACK As String, NEEDLE As String, NEWNEEDLE As String   ) As String
	'---------------------------------------------------------------------------------------------
	
	Dim COUNTER As Integer, LOCATION As Integer, LENGTH As Integer, NEEDLELENGTH As Integer
	Dim Start As Integer
	If InStr(HAYSTACK, NEEDLE) = 0 Then
		Return HAYSTACK
	End If
	NEEDLELENGTH=Len(NEEDLE)
	LOCATION=1
	Do
		LOCATION=InStr(LOCATION,HAYSTACK, NEEDLE)
		If LOCATION >0 Then
			HAYSTACK = Mid(HAYSTACK, 1, LOCATION-1) + NEWNEEDLE + Mid(HAYSTACK, LOCATION + NEEDLELENGTH)
		End If
	Loop Until LOCATION=0
	Return HAYSTACK
End Function

'---------------------------------------------------------------------------------------------
Function rexxreplace(HAYSTACK As String, NEEDLE As String, NEWNEEDLE As String) As String
	'---------------------------------------------------------------------------------------------
	If InStr(HAYSTACK,NEEDLE)=0 Then
		Return HAYSTACK
	End If
	Dim DUMMY As String
	Dim H As String
	DUMMY=Chr(255)
	If InStr(NEWNEEDLE,NEEDLE)>0 Then
		Return repl(repl(HAYSTACK ,NEEDLE, DUMMY) ,DUMMY, NEWNEEDLE)
	Else
		Return repl(HAYSTACK ,NEEDLE, NEWNEEDLE)
	End If
End Function



'--------------------------------------------------------------------------------------------
Function replace(subject As String,needle As String,replacement As String) As String
	'--------------------------------------------------------------------------------------------
	'robbed from vwx-c dialog utils with small optimations
	
	If InStr(subject,needle)=0 Then Return subject
	
	Dim result As String
	Dim As Integer i
	Dim lsearch As Integer
	Dim lsearch2 As Integer
	lsearch=Len(needle)
	lsearch2=lsearch-1
	For i=0 To Len(subject)-1
		If subject[i]=needle[0] Then
			If Mid(subject,i+1,lsearch)=needle Then
				result+=replacement
				i+=lsearch2
			Else
				result+=Chr(subject[i])
			End If
		Else
			result+=Chr(subject[i])
		End If
	Next
	Return result
End Function

'--------------------------------------------------------------------------------------------
Function words(subject As String,needle As String) As Integer
	'--------------------------------------------------------------------------------------------
	If needle="" Then needle=" "
	Dim As Integer result =0,i
	For i=1 To Len(subject)-Len(needle)
		If Mid(subject,i,Len(needle))=needle Then result+=1
	Next
	words= result
End Function

'--------------------------------------------------------------------------------------------
Function split(subject As String,needle As String,a() As String) As Integer
	'--------------------------------------------------------------------------------------------
	
	Dim result    As Integer
	Dim lastfound As Integer
	Dim n As Integer
	Dim s As Integer
	Dim i As Integer
	Dim j As Integer
	
	
	n=Len(needle)
	s=Len(subject)
	
	If subject="" Or subject=needle Or n>s Then
		a(0)=Str(0)
		split=0
	End If
	
	lastfound=1
	result=1
	For i=1 To s-n
		If Mid(subject,i,n)=needle Then
			If result=1 Then
				a(result)=Mid(subject,lastfound,i-lastfound)
			Else
				a(result)=Mid(subject,lastfound+n,i-lastfound)
			End If
			lastfound=i
			result=result+1
		End If
	Next
	a(result)=Mid(subject,lastfound+n,s-lastfound)
	a(0)=Str(result)
	
	Return result
End Function


'--------------------------------------------------------------------------------------------
Sub InsertSort (Zeile() As String, Anzahl As Integer)
	'--------------------------------------------------------------------------------------------
	Dim i As Integer
	
	Dim Vergleich As String
	Vergleich = Zeile(Anzahl)
	For i = Anzahl - 1 To LBound(Zeile) Step -1
		If Zeile(i) < Vergleich Then
			Zeile(i + 1) = Vergleich
			Exit Sub
		End If
		Zeile(i + 1) = Zeile (i)
	Next
	Zeile(LBound(Zeile)) = Vergleich
End Sub

/'

'/

'---------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------


/' create allwords
OPEN Wordfile FOR INPUT AS # Wfile
i=0
while not eof(Wfile)
line input # Wfile , H
H=ucase(trim(H))
if H <> "" then
h=replace(h,"(","")
h=replace(h,")","")
h=replace(h,"%","")
h=replace(h,"$","")
h=replace(h,"?","")
h=replace(h,"#","")
j=bi_insert( RESERVEDWORDS() ,H, 0, val(RESERVEDWORDS(0,0)) , 0 )
i=i+1
end if
wend
val(RESERVEDWORDS(0,0))=val(RESERVEDWORDS(0,0))-1
close (Wfile)


for i=0 to val(RESERVEDWORDS(0,0))
if len (RESERVEDWORDS(i,0))>1 then print RESERVEDWORDS(i,0)
next
end
'/
