
Color 13
For J=0 To GOTOLABELSCOUNT
	Print J,GOTOLABELS(j,0),GOTOLABELS(j,1)
Next



Color 10
Print "'STRINGS FOUND"
For I =0 To STRINGSCOUNT
	Print "'"+Str(i), "'"+ascii2ansi(STRINGS(I,0))+"'"
Next


' PRINT LABELS
Color 11
Print "LABELS TOTAL: "+Str(LABELSCOUNT)
Print "USED LABELS","FOUND"
k=0
For J=0 To LABELSCOUNT
	If LABELS(j,1)<>"" Then
		k=k+1
		Print Str(j)+".)", LABELS(j,0)+":","LINES: "+LABELS(j,1)
	End If
Next
Print "------------------------------------------"
Print "USED TOTAL: "+Str(K)
Print "------------------------------------------"




If 1 = 2 Then
	Color 14
	Print "COMMENT","FOUND"
	For I =1 To COMMENTSCOUNT
		Print i, "'"+ascii2ansi(COMMENTS(I,0))+"'"
	Next
	
	
	Color 10
	Print "STRING","FOUND"
	For I =1 To STRINGSCOUNT
		Print i, "'"+ascii2ansi(STRINGS(I,0))+"'"
	Next
	
	
	
	Color 13
	For J=0 To VARSCOUNT
		Print J,VARS(j,0),VARS(j,1)
	Next
End If


If 1=2 Then
	OLDVARSCOUNT=OLDVARSCOUNT-1
	For J=0 To OLDVARSCOUNT
		Color 12
		Print J,;
		Color 11
		Print OLDVARS(j,0),OLDVARS(j,1)
	Next
End If


