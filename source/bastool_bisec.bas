'#INCLUDE "bastool_vars.bas"
Declare Function bi_sect( a() As String, search As String, low As Integer, high As Integer) As Integer
Declare Function bi_insert( a() As String, x As String, lo As Integer,ByRef hi As Integer, delta As Integer ) As Integer
Declare Function bi_search_value( a() As String, x As String, low As Integer, high As Integer,delta As Integer) As String
Declare Function bi_search_idx ( a() As String, x As String, low As Integer, high As Integer, delta As Integer ) As Integer
Declare Function bi_append_unsorted( a() As String, value As String) As Integer
Declare Function bisecsearch(           a() As String, dimensionnr As Integer, needle As String )  As Integer


Declare Sub 	 bi_dump( a() As String, sortindex As Integer,delta As Integer)
Declare Sub 	 bi_sort( a() As String, sortindex As Integer)
Declare Sub 	 bi_test (a() As String )
Declare Sub 	 qsort(                 a() As String,fromindex As Integer ,toindex As Integer,sortindex As Integer)

'---------------------------------------------------------------------------------------------
Function bi_sect( a() As String, search As String, low As Integer, high As Integer) As Integer
	'---------------------------------------------------------------------------------------------
	Dim middle As Integer
	Do While low < high
		middle = (low+high)\2
		If search < a(middle,0) Then
			high = middle
		Else
			low = middle+1
		End If
	Loop
	Return low
End Function
'---------------------------------------------------------------------------------------------
Function bi_insert( a() As String, x As String, lo As Integer,ByRef hi As Integer, delta As Integer ) As Integer
	'---------------------------------------------------------------------------------------------
	Dim i As Integer
	Dim j As Integer
	Dim t As Integer
	Dim u As Integer
	Dim l As Integer
	
	
	
	u=UBound(a,2)
	l=LBound(a,2)
	
	hi=hi+delta
	lo=lo+delta
	' print "x             ",x
	' print "lo",lo
	' print "hi",hi
	' print "delta",delta
	
	If UBound(A,1)< hi+2 Then
		ReDim Preserve A(hi+2,u) As String
	End If
	t=  bi_sect(a(),x,lo,hi)
	If (t)>0 Then 'REMOVE OR DISABLE THIS BLOCK IF YOU WANT TO HAVE DUPLICATES IN THE LIST
		If A(t-1,0)=x Then
			hi=hi-delta
			lo=lo-delta
			
			Return t-1 'maybee t-delta needs investigation
		End If
	End If
	hi=hi+1
	For I=HI+1 To T+1 Step -1
		For j=l To u
			A(i,j) =A(i-1,j)
		Next
	Next
	A(i,0)=x
	hi=hi-delta
	lo=lo-delta
	Return i  '-delta
End Function

'---------------------------------------------------------------------------------------------
Function bi_search_idx ( a() As String, x As String, low As Integer, high As Integer, delta As Integer ) As Integer
	'---------------------------------------------------------------------------------------------
	Dim t As Integer
	low=low+delta
	high=high+delta
	t=bi_sect(a(),x,low,high)-1
	'print t,X,"sfd	FD"
	If t>=low And t<= high Then
		If A(t,0)=x Then
			Return t
		End If
	End If
	Return -1
End Function

'---------------------------------------------------------------------------------------------
Function bi_search_value( a() As String, x As String, low As Integer, high As Integer,delta As Integer) As String
	'---------------------------------------------------------------------------------------------
	Dim s As String
	Dim t As Integer
	low=low+delta
	high=high+delta
	Print high
	t=bi_sect(a(),x,low,high)-1
	If t>=low And t<= high Then
		If A(t,0)=x Then
			Return x
		End If
	End If
	Return ""
End Function


'---------------------------------------------------------------------------------------------
Sub bi_test (A() As String)
	'---------------------------------------------------------------------------------------------
	'REDIM  A(0,0) as String
	Dim  hi As Integer
	Dim  lo As Integer
	Dim  delta As Integer
	Dim x As String
	Dim i As Integer
	Dim H As String
	Dim t As Integer
	Dim u As Integer
	hi=0
	lo=0
	delta =9
	Print "input 0 to stop"
	Do Until x="0"
		Input x
		
		Print "index",bi_search_idx( a() , x, lo , hi , delta  )
		Print "value",bi_search_value( a() , x, lo , hi , delta  )
		Print "insert",bi_insert( a() , x, lo , hi , delta  )
		Print "0------------------------------------------",lo
		For i=lo+delta To hi+delta
			Print i,A(i,0)
		Next
		Print "1------------------------------------------",hi
		Print "insert",bi_insert( a() , x, lo , hi , delta  )
		Print "index",bi_search_idx( a() , x , lo , hi , delta  )
		Print "value",bi_search_value( a() , x, lo , hi , delta  )
		Print
		Print
		
	Loop
End Sub


'---------------------------------------------------------------------------------------------
Function bi_append_unsorted( a() As String, value As String) As Integer
	'---------------------------------------------------------------------------------------------
	Dim acount As Integer
	Dim u As Integer
	Dim j As Integer
	u=UBound(a,2)
	j=UBound(a,1)
	If A(0,0)="" Then
		A(0,0) = Str(0)
	Else
		ACOUNT=Val(A(0,0))
	End If
	ACOUNT=ACOUNT+1
	If j<ACOUNT+1 Then
		ReDim Preserve A(ACOUNT+1,u)'we have to reserve one element for bisection
	End If
	A(ACOUNT,0)=value
	A(0,0)=Str(ACOUNT)
	bi_append_unsorted=Acount
End Function



'---------------------------------------------------------------------------------------------
Sub bi_sort( a() As String, sortindex As Integer)
	'---------------------------------------------------------------------------------------------
	qsort(a(),1,Val(A(0,0)),sortindex)
End Sub

'---------------------------------------------------------------------------------------------
Sub bi_dump( a() As String, sortindex As Integer,delta As Integer)
	'---------------------------------------------------------------------------------------------
	Dim i As Integer
	Color 11
	Print Val(A(0,0))
	For i =delta To Val(A(0,0))+delta
		Print i, A(i,sortindex)
	Next
End Sub



'robbed and adopted from rexx album of algorithm
'---------------------------------------------------------------------------------------------
Sub qsort( a() As String,fromindex As Integer ,toindex As Integer, sortindex As Integer)
	'---------------------------------------------------------------------------------------------
	Dim StackL(toindex) As Integer
	Dim StackR(toindex) As Integer
	
	
	Dim I As Integer
	Dim J As Integer
	
	Dim L As Integer
	Dim R As Integer
	Dim S As Integer
	
	Dim M As Integer
	Dim P As Integer
	
	Dim W As String
	
	Dim X As String
	
	Dim o As Integer
	Dim u As Integer
	Dim z As Integer
	
	o=UBound(a,2)
	u=LBound(a,2)
	
	
	S = 1
	StackL(1) = fromindex
	StackR(1) = toindex
	
	Do Until S = 0
		L = StackL(S)
		R = StackR(S)
		S = S - 1
		Do Until L >= R
			I = L
			J = R
			P = (L + R) \ 2
			If A(L,sortindex) > A(P,sortindex) Then
				
				For z = u To o
					W = A(L,z)
					A(L,z) = A(P,z)
					A(P,z) = W
				Next
				
				
				
			End If
			
			If A(L,sortindex) > A(R,sortindex) Then
				For z = u To o
					W = A(L,z)
					A(L,z) = A(R,z)
					A(R,z) = W
				Next
				
				
				
				
			End If
			
			If A(P,sortindex) > A(R,sortindex) Then
				For z = u To o
					W = A(P,z)
					A(P,z) = A(R,z)
					A(R,z) = W
				Next
				
				
			End If
			
			X = A(P,sortindex)
			
			Do Until I > J
				
				Do  While A(I,sortindex) < X
					I = I +1
				Loop
				
				Do  While X < A(J,sortindex)
					J = J  -1
				Loop
				
				If I <= J Then
					For z = u To o
						W = A(I,z)
						A(I,z) = A(J,z)
						A(J,z) = W
					Next
					
					I = I + 1
					J = J - 1
				End If
			Loop
			
			If J - L < R - I Then
				If I < R  Then
					S = S + 1
					StackL(S) = I
					StackR(S) = R
				End If
				R = J
				
			Else
				If L < J Then
					S = S + 1
					StackL(S) = L
					StackR(S) = J
				End If
				L = I
			End If
		Loop
	Loop
	
	
	
End Sub

'robbed and adopted from rexx album of algorithm
'---------------------------------------------------------------------------------------------
Function bisecsearch(a() As String, dimensionnr As Integer, needle As String   ) As Integer
	'---------------------------------------------------------------------------------------------
	Dim M As Integer
	Dim N As Integer
	Dim L As Integer
	Dim r As Integer
	Dim s As Integer
	Dim V As String
	Dim varscount As Integer
	V=needle
	
	N=VARSCOUNT
	L = 1
	R = N
	
	
	If dimensionnr=1 Then
		Do
			M = (L + R) \ 2
			If V < a(M,0) Then
				R = M - 1
			Else
				L = M + 1
			End If
		Loop Until L > R Or V = a(M,0)
		If a(M,0) = V Then
			Return m
		End If
	Else
		Do
			M = (L + R) \ 2
			If V < a(0,M) Then
				R = M - 1
			Else
				L = M + 1
			End If
		Loop Until L > R Or V = a(0,M)
		If a(0,M) = V Then
			Return m
		End If
	End If
	Return 0
End Function


'bi_test (gotolabels())
