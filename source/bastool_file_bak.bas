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

		end if
	wend
 	A(0,0)=str(q)
close (Wfile)
bt_load_file=val(a(0,0))
end function

'---------------------------------------------------------------------------------------------
function bi_load_file_unsorted( a() as String, file as string) as integer
'---------------------------------------------------------------------------------------------
dim acount as integer
dim h as  string
dim i as integer
dim wfile as integer
dim tmp as string





if fileexists(file)=0 then
print "ERROR - FILE NOT FOUND : "+file
end
end if
wfile=freefile
OPEN file FOR INPUT AS # Wfile
while not eof(Wfile)
	line input # Wfile , H
	H=(trim(H))
	if H <> "" then
		if right(h,1)="_" then
			tmp=tmp+left(h,len(h)-1)+" "
		else
			h=tmp+h
			ACOUNT=bi_append_unsorted(a(),h)
			tmp=""
		end if
	end if
wend
close (Wfile)
bi_load_file_unsorted=ACOUNT
end function

