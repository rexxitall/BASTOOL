Dim Shared DEBUG As Integer

Dim Shared INFILE As String
Dim Shared OUTFILE As String
Dim Shared WORDFILE As String
Dim Shared SYMBOLFILE As String
Dim Shared FORBIDDENFILE As String

ReDim Shared RESERVEDWORDS(2000,1) As String
ReDim Shared FORBIDDENWORDS(2000,0) As String
ReDim Shared SOURCELINES(0,1) As String
ReDim Shared SOURCEWORDS(0,0,1) As String
ReDim Shared PARTS(256) As String

'---------------------------------------------
ReDim Shared LABELS(6500,5) As String
ReDim Shared GOTOLABELS(6500,1) As String
ReDim Shared GOSUBLABELS(6500,1) As String
ReDim Shared RETURNLABELS(6500,1) As String
ReDim Shared USERSUBS(6500,1) As String
ReDim Shared USERFUNCS(6500,1) As String

'---------------------------------------------
ReDim Shared STRINGS(1000,1) As String
ReDim Shared DATAS(1000,1) As String
ReDim Shared COMMENTS(0,1) As String
ReDim Shared VARS(1000,4) As String
ReDim Shared OLDVARS(1000,2) As String
ReDim Shared DIMS(500,500) As String
ReDim Shared DEFINTS(500,5) As String
ReDim Shared DEFSNGS(500,5) As String
ReDim Shared DEFDBLS(500,5) As String
ReDim Shared DEFSTRS(500,5) As String
ReDim Shared DEFUSRS(500,5) As String
ReDim Shared FKTS(500,5) As String
ReDim Shared REPLACEMENTS(500,1) As String



Dim Shared SOURCE As String
Dim Shared COMMENT As String
Dim Shared LITERAL As String

Dim Shared MAXWORDS As Integer
Dim Shared CODESTART As Integer
Dim Shared COMMENTLEVEL As Integer
Dim Shared COMMENTMARK As Integer
Dim Shared IFFLAG As Integer



Dim LABELFOUND As Integer
Dim LABELSEARCH As Integer
Dim RETURNFOUND As Integer
Dim Shared CURRENTLINELENGTH As Integer
Dim Shared CURRENTLINE As Integer
Dim Shared CURRENTPOS As Integer

Dim FLAG As Integer
Dim DUMMY As Integer
Dim I As Integer
Dim C As Integer
Dim D As Integer
Dim E As Integer
Dim F As Integer

Dim J As Integer
Dim K As Integer
Dim L As Integer
Dim M As Integer
Dim N As Integer
Dim O As Integer
Dim P As Integer
Dim Q As Integer
Dim R As Integer
Dim S As Integer
Dim T As Integer
Dim V As String
Dim W As String
Dim X As String
Dim Y As String
Dim Z As String


Dim H As String
Dim HH As String
Dim HHH As String
Dim WORD As String
Dim LABELTEST As String
Dim TESTWORD As String
Dim TEXTSTRING As String
Dim NEWFUNCTION As String
Dim OLDFUNCTION As String
Dim INDENT As Integer
Dim INDENTFLAG As Integer
Dim INDENTCURRENTLINE As Integer

Dim TEXTMARK As Integer
Dim LITERALMARK As Integer
Dim STRINGMARK As Integer
Dim DELMARK As Integer
Dim TEXTSWITCH As Integer
Dim COMMENTSWITCH As Integer
Dim LITERALSWITCH As Integer



Dim RESMARK As Integer
Dim COLORMARK As Integer

Dim START As Integer
Dim TARGET As Integer


Dim A(1,10) As String
Dim Shared B(1,10) As String


Dim STACKL(10) As Integer
Dim STACKR(10) As Integer

Dim cfgbft As Integer 'brute force tokenizer
Dim cfgironrem As Integer 'brute force tokenizer

Dim cfgrenum As Integer'should we renumber
Dim cfgrenumdelta As Integer 'renumber with a delta of

Dim cfglinesplit As Integer 'should we split lines with ":" signs

Dim cfgindent As Integer 'ident with n spaces = means no indent

Dim cfgrenvars As Integer 'should we rename vars
Dim cfgvardump As Integer 'print vars found
Dim cfgrenlabs As Integer 'should we rename numeric labels
Dim cfgdroplabs As Integer 'should we remove unused labels
Dim cfgmakeendifs As Integer 'make endifs for old code

Dim cfgcolorize As Integer 'coloried output ?
Dim cfgrepair As Integer 'should we try to repair things
Dim cfgcolortable As Integer 'print color table
Dim cfgindentout As Integer 'print the identlevel


Dim cfgstringarray  As Integer  'put all strings in a message array for easy localisation
Dim cfgcrossref     As Integer  'do cross referencing


Dim cfglistfrom As Integer 'list code from line
Dim cfglistto   As Integer 'list code to line
Dim cfgdebug   As Integer 'list code to line


