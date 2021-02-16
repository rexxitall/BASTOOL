'-------------------------------------------------------------------------------------------
'SEPARATE STRINGS !!! URGENT HAS TO BE DONE FIRST !!! (obsolete rewritten)
'-------------------------------------------------------------------------------------------
if 2=1 then
FOR I =1 to val(SOURCELINES(0,0))
	HHH=SOURCELINES(I,0)
	if instr(HHH,CHR(34)) > 0 then
		HH=""
		WORD=""
		TEXTMARK=0
		TEXTSTRING=""
		for L=0 to len(HHH)
			H= mid(HHH,L,1)
			TEXTSWITCH=0
			COMMENTSWITCH=0
			if H=CHR(34) then
				TEXTMARK=1-TEXTMARK
				TEXTSWITCH=1 'found a " char
				H=""
			end if
			if TEXTMARK=1 then
				TEXTSTRING=TEXTSTRING+H 'TEXT
			else
				WORD=WORD+H 'SOURCE
			end if

			if TEXTSWITCH=1 and TEXTMARK=0  then 'text is now closed
				WORD=WORD+" {"+STR(bt_insert_unsorted(STRINGS(),TEXTSTRING))+"} "

			end if
		NEXT
		If TEXTMARK=1 then
			PRINT "'ERRROR IN LINE "+STR(I)+" TEXTMARKE NOT CLOSED"
			PRINT "'"+SOURCELINES(I,0)
			WORD=WORD+" {"+STR(bt_insert_unsorted(STRINGS(),TEXTSTRING))+"} "
		end if
		SOURCELINES(I,0)=WORD
	end if
next

'bi_dump(STRINGS(),0)
end if
'-------------------------------------------------------------------------------------------
'SEPARATE THE REM STATEMENTS  (obsolete rewritten)
'-------------------------------------------------------------------------------------------
if 2=1 then
FOR I =1 to val(SOURCELINES(0,0))
	HHH=SOURCELINES(I,0)
	COMMENT=""
	TESTWORD=ucase(HHH)
	m=instr(TESTWORD,"'")
	n=1
	if m=0 then
		n=5
		m=instr(TESTWORD," REM ")
		if m=0 then
			m=instr(TESTWORD,":REM ")
			if m > 0 then
				m=m+1
			end if
		end if
	end if
	if  m>0 then

		COMMENT=MID( HHH , m+n , len(HHH)-m-n+1)
		HHH=left(HHH,m-1)+" '"+str(bt_insert_unsorted(COMMENTS(),COMMENT))+"' "

	end if
	SOURCELINES(I,0)=HHH
next

'bi_dump(COMMENTS(),0)



end if
'-------------------------------------------------------------------------------------------------
'SEPARATE THE LABELS (obsolete rewritten)
'-------------------------------------------------------------------------------------------------
if 2=1 then
FOR I =1 to val(SOURCELINES(0,0))
	HHH=TRIM(SOURCELINES(I,0))+" "
	j=0
	do while J < len(HHH)+1 and mid(HHH,j,1)<>" " and mid(HHH,j,1)<>":"
		H=mid(HHH,j,1)
		HH=HH+H
		j=j+1

	loop
	LABELSEARCH=0

	if isinteger(HH)=1 then
		LABELSEARCH=1
	else
		n= bt_search_idx ( RESERVEDWORDS(), HH)
		if n=-1 and mid(HHH,j,1)=":" and instr(HHH,":")>1 then LABELSEARCH=1
	end if

	if LABELSEARCH=1 then
		n=bt_insert( LABELS() , HH )
		color 12
		SOURCELINES(I,0)= HH+"| "+MID(HHH,j+1,LEN(HHH)-j)
	else
		SOURCELINES(I,0) ="|| "+HHH
	end if
	HH=""

NEXT
end if
