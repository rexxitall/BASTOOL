#INCLUDE "file.bi"
#include "dir.bi"
Declare Function bi_load_file( a() As String, file As String) As Integer
Declare Function bi_load_file_unsorted( a() As String, file As String) As Integer

'---------------------------------------------------------------------------------------------
Function bt_load_file( a() As String, file As String) As Integer
	'---------------------------------------------------------------------------------------------
	Dim acount As Integer
	Dim h As  String
	Dim i As Integer
	Dim j As Integer
	Dim wfile As Integer
	
	Dim q As Integer
	Dim c As Integer
	
	wfile=FreeFile
	If FileExists(file)=0 Then
		Print "ERROR - FILE NOT FOUND : "+file
		End
	End If
	
	'print a(0,0)
	If a(0,0)="" Then
		q=0
	Else
		q=Val(A(0,0))
	End If
	
	
	'q is referenced by value !!!
	q=0
	Open file For Input As # Wfile
	While Not EOF(Wfile)
		Line Input # Wfile , H
		H=UCase(Trim(H))
		If H <> "" Then
			'j=bi_insert( A() , H , 1 , val(a(0,0)) , 0 )
			
			c=bi_insert( a() , H , 0 ,           q , 1 )
			
			' print c , a( c  ,0)
			
		End If
	Wend
	A(0,0)=Str(q)
	Close (Wfile)
	bt_load_file=Val(a(0,0))
End Function

'---------------------------------------------------------------------------------------------
Function bi_load_file_unsorted( a() As String, file As String) As Integer
	'---------------------------------------------------------------------------------------------
	Dim acount As Integer
	Dim h As  String
	Dim i As Integer
	Dim wfile As Integer
	Dim tmp As String
	
	
	
	
	
	If FileExists(file)=0 Then
		Print "ERROR - FILE NOT FOUND : "+file
		End
	End If
	wfile=FreeFile
	Open file For Input As # Wfile
	While Not EOF(Wfile)
		Line Input # Wfile , H
		H=(Trim(H))
		If H <> "" Then
			If Right(h,1)="_" Then
				tmp=tmp+Left(h,Len(h)-1)+" "
			Else
				h=tmp+h
				ACOUNT=bi_append_unsorted(a(),h)
				tmp=""
			End If
		End If
	Wend
	Close (Wfile)
	bi_load_file_unsorted=ACOUNT
End Function

