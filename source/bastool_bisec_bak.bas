'#INCLUDE "bastool_vars.bas"
declare function bi_sect( a() as String, search as String, low as integer, high as integer) as integer
declare function bi_insert( a() as String, x as String, lo as integer,byref hi as integer, delta as integer ) as integer
declare function bi_search_value( a() as String, x as String, low as integer, high as integer,delta as integer) as string
declare function bi_search_idx ( a() as String, x as String, low as integer, high as integer, delta as integer ) as integer
declare function bi_append_unsorted( a() as String, value as string) as integer
Declare function bisecsearch(           a() AS STRING, dimensionnr as integer, needle as string )  AS integer


declare sub 	 bi_dump( a() as String, sortindex as integer,delta as integer)
declare sub 	 bi_sort( a() as string, sortindex as integer)
DECLARE sub 	 bi_test (a() as string )
Declare sub 	 qsort(                 a() AS STRING,fromindex as integer ,toindex as integer,sortindex as integer)

'---------------------------------------------------------------------------------------------
function bi_sect( a() as String, search as String, low as integer, high as integer) as integer
'---------------------------------------------------------------------------------------------
	dim middle as integer
        do while low < high
               middle = (low+high)\2
               if search < a(middle,0) then
               		 high = middle
               else
			 low = middle+1
	       end if
	loop
	return low
end function
'---------------------------------------------------------------------------------------------
function bi_insert( a() as String, x as String, lo as integer,byref hi as integer, delta as integer ) as integer
'---------------------------------------------------------------------------------------------
dim i as integer
dim j as integer
dim t as integer
dim u as integer
dim l as integer



u=ubound(a,2)
l=lbound(a,2)

	hi=hi+delta
	lo=lo+delta
' print "x             ",x
' print "lo",lo
' print "hi",hi
' print "delta",delta

	if ubound(A,1)< hi+2 then
		REDIM PRESERVE A(hi+2,u) as String
	end if
	t=  bi_sect(a(),x,lo,hi)
	if (t)>0 then 'REMOVE OR DISABLE THIS BLOCK IF YOU WANT TO HAVE DUPLICATES IN THE LIST
		if A(t-1,0)=x then
			hi=hi-delta
			lo=lo-delta

			return t-1 'maybee t-delta needs investigation
		end if
	end if
	hi=hi+1
	FOR I=HI+1 TO T+1 step -1
		for j=l to u
			A(i,j) =A(i-1,j)
		next
	NEXT
	A(i,0)=x
	hi=hi-delta
	lo=lo-delta
	return i  '-delta
end function

'---------------------------------------------------------------------------------------------
function bi_search_idx ( a() as String, x as String, low as integer, high as integer, delta as integer ) as integer
'---------------------------------------------------------------------------------------------
dim t as integer
	low=low+delta
	high=high+delta
	t=bi_sect(a(),x,low,high)-1
	'print t,X,"sfd	FD"
	if t>=low and t<= high then
		if A(t,0)=x then
			return t
		end if
	end if
return -1
end function

'---------------------------------------------------------------------------------------------
function bi_search_value( a() as String, x as String, low as integer, high as integer,delta as integer) as string
'---------------------------------------------------------------------------------------------
dim s as string
dim t as integer
	low=low+delta
	high=high+delta
		print high
	t=bi_sect(a(),x,low,high)-1
	if t>=low and t<= high then
		if A(t,0)=x then
			return x
		end if
	end if
	return ""
end function


'---------------------------------------------------------------------------------------------
sub bi_test (A() as string)
'---------------------------------------------------------------------------------------------
'REDIM  A(0,0) as String
dim  hi as integer
dim  lo as integer
dim  delta as integer
dim x as string
dim i as integer
dim H as string
dim t as integer
dim u as integer
hi=0
lo=0
delta =9
        print "input 0 to stop"
do until x="0"
       input x

	print "index",bi_search_idx( a() , x, lo , hi , delta  )
	print "value",bi_search_value( a() , x, lo , hi , delta  )
	print "insert",bi_insert( a() , x, lo , hi , delta  )
	print "0------------------------------------------",lo
	for i=lo+delta to hi+delta
		print i,A(i,0)
	next
	print "1------------------------------------------",hi
	print "insert",bi_insert( a() , x, lo , hi , delta  )
	print "index",bi_search_idx( a() , x , lo , hi , delta  )
	print "value",bi_search_value( a() , x, lo , hi , delta  )
	print
	print

loop
end sub


'---------------------------------------------------------------------------------------------
function bi_append_unsorted( a() as String, value as string) as integer
'---------------------------------------------------------------------------------------------
dim acount as integer
dim u as integer
dim j as integer
u=ubound(a,2)
j=ubound(a,1)
if A(0,0)="" then
	A(0,0) = STR(0)
else
	ACOUNT=val(A(0,0))
end if
ACOUNT=ACOUNT+1
if j<ACOUNT+1 then
	REDIM PRESERVE A(ACOUNT+1,u)'we have to reserve one element for bisection
end if
A(ACOUNT,0)=value
A(0,0)=str(ACOUNT)
bi_append_unsorted=Acount
end function



'---------------------------------------------------------------------------------------------
sub bi_sort( a() as String, sortindex as integer)
'---------------------------------------------------------------------------------------------
qsort(a(),1,val(A(0,0)),sortindex)
end sub

'---------------------------------------------------------------------------------------------
sub bi_dump( a() as String, sortindex as integer,delta as integer)
'---------------------------------------------------------------------------------------------
dim i as integer
color 11
print val(A(0,0))
for i =delta to val(A(0,0))+delta
print i, A(i,sortindex)
next
end sub



'robbed and adopted from rexx album of algorithm
'---------------------------------------------------------------------------------------------
sub qsort( a() as String,fromindex as integer ,toindex as integer, sortindex as integer)
'---------------------------------------------------------------------------------------------
dim StackL(toindex) as integer
dim StackR(toindex) as integer


dim I as integer
dim J as integer

dim L as integer
dim R as integer
dim S as integer

dim M as integer
dim P as integer

dim W as STRING

dim X as STRING

dim o as integer
dim u as integer
dim z as integer

o=ubound(a,2)
u=lbound(a,2)


S = 1
StackL(1) = fromindex
StackR(1) = toindex

do until S = 0
	L = StackL(S)
	R = StackR(S)
	S = S - 1
  	do until L >= R
    		I = L
    		J = R
		P = (L + R) \ 2
    		if A(L,sortindex) > A(P,sortindex) then

 			for z = u to o
 			W = A(L,z)
			A(L,z) = A(P,z)
			A(P,z) = W
			next



		end if

    		if A(L,sortindex) > A(R,sortindex) then
    		for z = u to o
			W = A(L,z)
			A(L,z) = A(R,z)
			A(R,z) = W
		next




		end if

    		if A(P,sortindex) > A(R,sortindex) then
			for z = u to o
			W = A(P,z)
			A(P,z) = A(R,z)
			A(R,z) = W
			next


		end if

 		X = A(P,sortindex)

	    	do until I > J

		      	do  While A(I,sortindex) < X
				I = I +1
      		      	Loop

      		      	do  WHILE X < A(J,sortindex)
				J = J  -1
      		      	Loop

      			if I <= J then
				for z = u to o
          			W = A(I,z)
	   			A(I,z) = A(J,z)
				A(J,z) = W
				next

          			I = I + 1
	  			J = J - 1
        		end if
    		LOOP

    		if J - L < R - I THEN
        		if I < R  then
            			S = S + 1
				StackL(S) = I
				StackR(S) = R
          		end if
        		R = J

      		else
        		if L < J then
            			S = S + 1
				StackL(S) = L
				StackR(S) = J
          		end if
        		L = I
      		end if
  	loop
loop



end sub

'robbed and adopted from rexx album of algorithm
'---------------------------------------------------------------------------------------------
FUNCTION bisecsearch(a() as String, dimensionnr as integer, needle as string   ) as integer
'---------------------------------------------------------------------------------------------
	DIM M as Integer
	DIM N as Integer
	DIM L as Integer
	DIM r as Integer
	DIM s as Integer
	Dim V as string
dim varscount as integer
V=needle

	N=VARSCOUNT
	L = 1
	R = N


	if dimensionnr=1 then
		do
			M = (L + R) \ 2
  			if V < a(M,0) then
				R = M - 1
 			else
				L = M + 1
			end if
		loop until L > R or V = a(M,0)
		if a(M,0) = V then
			RETURN m
		END IF
	else
		do
			M = (L + R) \ 2
  			if V < a(0,M) then
				R = M - 1
 			else
				L = M + 1
			end if
		loop until L > R or V = a(0,M)
		if a(0,M) = V then
			RETURN m
		END IF
	end if
	return 0
End Function


'bi_test (gotolabels())