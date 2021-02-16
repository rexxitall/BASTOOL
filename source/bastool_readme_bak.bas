/'
NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
----------------------------------------------------------------

 		 DONT USE IT FOR PRODUCTION WORK !!!

 	      THE PROGRAM IS DELIVERED WITHOUT WARRENTY !!!
 	     USE IT ON YOUR OWN RISK !!!

 	DONT REDISTRIBUTE WITHOUT THIS TEXT
      ALL RIGHTS RESERVED

  MAKE A BACKUP OF THE CODE YOU WILL PROCESS FIRST !

All trademarks and Names in the text below are copyrighted by
teir owners and they are only noticed for historical reasons
or as reference ive nothing to do with them
----------------------------------------------------------------
NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE


Hello and welcome to bastool

bastool ins mainigly intend to help you
port old or stonehenge old basic programs to free basic
or to a other more modern basic dialect
Usually you has only to change a few lines in the old code
most of them will be  errors...



What it does:
-------------

it works on correct clean GW-BASIC styled source
It currently makes some nice syntax highlighting
trys to detect variable definitions
and makes some code indentations
(if you whish)

it renames numeric labels to non numric ones
(if you whish)

detects used and unused Labels
clean up the code (just a bit)
split up lines
(if you whish)

insert end if statements
(if you whish)


gives braces a colorful meaning of the owner
trys to repair broken strings
and broken print statements
(if you whish)

trys to rewrite def fn statemenst on a primitive manner
(you has too look at the new code !!! )

it will renumber your code also if line numbers arent there
always
(if you whish)

it makes cross reference tables for variables, jump labels, used reserved words
(if you whish)

it will make a list with the used strings so you can simply
do a localisation of your program
(if you whish)



What it NOT does:
-----------------
Bastool is not a press a button, i will suggest you - to do it all, tool.
It will not handles big files (you have to redefine the dim statements if you has a need for)
handles crippled code (SHARP Basic), even if i work on some of these things
make perfect results on all stonenge old Basic
makes valid DEF FN statements - some work ;)
(but it helps you a bit - you has to look at the type definitions)
cares about all forbidden or obsolete Words - its enhanced by the word files
(it always try to do its best but...)

Redesign the whole program after consulting your marketing experts
optimise and poilish it or correct failures ;)
it works not on freebasic source
(not designed for until multiline comments are handled correctly)
if this code looks like a beauty then i will have done this ;)
works completely correct ;)



Planned featured:
-----------------

detokenize old gw basic code  (most parts are prepared for that ;) right now)
full commandline interface for all possible settings
work on any basic... ()
reduce memory consumption
code cleanup
printig output
code to html
handling libs
write out and reinsert vars and strings
read kate syntax files
write kate syntax files


INSTALLATION:
-------------

put the source in a subdirectory
bastool also needs a subdirectory which contains the reserved word files
its hardcodet at the moment
look below to the fiddle settings how to make it
then

fbc -exx bastool.bas
and in linux ./bastool basicfile (with path in front if source is located elsewhere)


Note to the words files:
------------------------
each line contains a reserved word without spaces in front of end
they might be unsorted or contain double entrys
bastool will optimize them internally

if you want to help me for the next version
send me your words files
it would be great if you mark functions with a "(" at  the end of the word
thx in advance


BUG REPORTS
-----------

They are wellcome. but please be kind and fix the code first
in the original source. It should be able to run in
gw or qbasic at least. If you report a bug please ship the bug with
the file you would like to have converted.
And be a bit patient pease. I do this as a spare time project,
i doesnt get any money for this ;)

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

Old code:
In the early years the computer memory was expensive and restricted
My first computer has had 7802 Basic bytes free for code and datas.
So the goal for the basic developers at that times was to save memory
So strings are not closed at the end, Space signs may left out.
Other pitfalls are jumpmarks which not math a real existing line number
(The code has worked cause the interpreter used the next line he found)
and so on. I suggest to fix this in the original source first.
Bastool will help to find those miracles

Labels:
The renamed labels are ready for simple renaming later to
more meaningful ones by you thats why they contain some extra chars
unused labels can also be simple removed later by a single
replace with a regular expression.
Thats useful if your code contains jumps to not existing labels
The labels are named in a manner that you can see in a normal editor
How they are used in the code.
Used marks starts with L_
If they are a jump mark from a gosub then they starts
with SUB_ this will override the goto label mark.
Normal labels will start with "l" to make them different from normal numbers
And labels with starts with "n" indicated that they are created by a line split.



Ident:
Often old code contains never founded bugs
so if the indent doesnt go back to the starting (zero)
something in the code usually has to be reworked
it will not fix this ! (would you give some extra lessions in debugging ;)  )
In freebasic its forbiden to do such things like
if i=67 then next
The indent will give you a hint where this is broken
it is always located bevore the hint !


EndIf:
This switch is ment for old code which only contains single line
if statements, the switch is useful if you want to break up the code
by the ":" chars.
if you are for example on turbo basic or
powerbasic which already contains such stetments
turn this off. Otherwise you will get some "endifs" too much :D


Var:
Bastool looks for the USED vars by peek, input read the equal sign etc.
So if a var never got a value then this var will not renamed
if that happens you has found a bug in the old code usually
thats why it (or i) will not fix it !
your compiler will show you the disaster with a nice line numbers
its much harder to debug a potentielly working source....
Some may ask why i do such a var renaming.
Well its simple to understand. My goal is to port old code
to a modern basic. Freebasic doesnt allow vars with the type chars at the end
of the name if you switch out of the qbasic dialekt switch.
so there will be no hint in the code which type a var was made from.
All vars there have to declared explicit. Vars with the same name as
Array names are forbidden. Usually you have to rename nearly all of them.
Its hard to make them by hand without getting errors in the code.
Especially if you are not the author of the source.
I am here dealing with some engineering source. A failure there will
break this source, and a 3000 lines stress calculatio program
isnt as easy to debug as "hunt the wumpus"

Reserved Words:
You will see that bastool arrange spaces around every known reserved
word (wordfile content) or symbol (symbolfile content)
Thats made for two reasons.
First it makes the code more easy to read.
Well not as urgent ;)
But second you are now able to replace Reserved words by
a simple search and replace. Maybee if the old basic requires
ARCTAN to use the freebasic ATAN function
so search simply for " ARCTAN " with spaces and replace them

Braces:
Bastool will replace every "(" with " ( " same as bevore with the reserved words.
Some Interpreters or Compilers will fail with that cause the "(" has to be glued
directly to the function or var.
just do a replacement in your favorite editor
Search for " (" and replace it with "(" and you are done :)
Bastool also shows you braces in different colors
mathematical needed ones will be shown as white ones
logical ones a red ones, Array ones in magenta and those
needed by a reserved word will appear in blue and so on...

General:
In fact im happy if i can fix things in the old source first
there is a lot of old code laying in the net which has bugs
and these are sittin in the code since 20 ? or more years.
Never found by lazy interpreters.
Its better to fix this things first bevore

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


CODE
-----
As you will see in the code, this is work progress !!!
usually it will do most of the job but currently not perfect
and some parts a bit strange at this stage :)
(BTW: usability is a unknown word at this point)
it is currently also only tested in a LINUX Environment
dont cry for a dos version its not really intend for...
(may work but i never checked that out)
for my opinion are over 20 years of 64k limits enough !
comments, suggestions, gifts, postcards,
beer and MONEY *rofl* (whats that ?) are welcome




CREDITS
-------
Thanks to Herman Wigman for help on debugging Bas2txt
and some hints and comments and giving me the code
for gw2qbas which wasnt used but a help
you can run both tools together. Herman will eliminate
a lot of ugly code (goto). You can use Bastool bevore and after
but dont use var replacing and label replacing bevore
you use hermans gw2qbas.
Bastool will be a help if you got a mix of gwbasic and qbasic
gw2bas needs urgend line numbers bastool will make them.
after gw2bas you can do all the optimizing things for freebasic


Ebben Feagan for fixing Freebasic to make the code from
Herman compile

Dipl.-Ing. Bernhard Falter, Dipl.-Ing. Martin Dietz
who wrote a stress calculating system in GW - Q basic
which gaves the intention to do this work

All the Peoples around the FreeBasic Compiler
And all the peoples who does the other Compiler and Interpreters
ive had the joy to play with :)

And last but not least all the brave who host the old source to save
some social and cultural history. It was fun to make some games work.
(:-")




---------------------------------
Some Words about Basic in General
---------------------------------


Prelude
-------

Why this programm which looks obsolete by all these
big developement environments you can download or buy...


Well this can becomes in mind but if you like old computers or
if the code you has was known as very well tested and bugfree
but runs oly on old computers with their build in interpreter....
Or if the basic software they have used doenst run on your favorite
operating system.

Another reason might be that you are frustrated by all the hussle
around "modern" programming languages.
Ive started programming over 20 years ago, i was late at that time
- i bought my first computer as i was 19 ...

After 20 years i was forced to do a thing again in Basic, cause it was
written in Basic, it runs fine, was well tested and very complicate.
It would be take much more time to port it to another Language
and much more time to check all things out...

So i am back and was wondering again how simple things can be done
and i remember the time as i was a young boy with a sharp
pocket computer in his hands
(later with the C128 and the Amiga ...)
They all has had a book titled: "BASIC REFERENCE MANUAL"

BASIC... Beginers All Symbolic Instruction Code


Programming isnt how to do it in this or that language
its a way of thinking - independing of the language.
(its more a bit like zen - the japanese meditation way)

If you know one language you can learn another within
a short time. And if you see that a old basic
interpreter only uses a handful of instructions and does
things as a editor in 200 lines...

Today you got a 500 MB monster of a Basic from a big Company for free
It takes longer to read the documentation and to instal all things
then to write something useful by hand.
The boss of the same company has started with a basic interpreter
for the altair later for Aplle... (done in some k of assembly)
*smile*

I wrote this cause ive seen things which grew to 3 megabytes
and the same thing was done with 4k 20 years ago.
Good example was PONG you know the simple game with the two paddles
Done in 4 k in a lot of languages
SOLD as a PLAYSTATION GAME for 100 bucks on CD last year *rofl*


You can get Basic interpreter and Compiler for free
most of the Veterans from dos are now abandonware and can be downloaded
without charge. They run fine in a dos emulation, i use dosemu for example
(of course with the dos memory limitations)

You will also get modern interpreter or compilers for free

Some runs under different OS, especially Small Basic does
even if its a bit hard to install under Linux - it runs same code also
on a Palm or Cellphone - no joke
The IDE is simple and it knows a lot of modern construts too
so its a good start for beginners


Blassic and YABASIC are fine interpreters which are worth a look
Freebasic has the advantage to be nearly a QBASIC GWBASIC clone
thats why i use it at the moment
Gambas will be nice if you would like to deal with things like you
would do in Visual Basic
Mono will do .NET things
And of course there are also Basic Tools you may buy
Pure Basic, K Basic and others

Just a look over the table
IBM has put their great REXX Environment to the open Source community
its really worth a try if you wont care anymore about varibles
and the syntax is very near to basic
(its the most simple powerful well designed ROBUST language i know)
The pearl php python ruby xyz guys will say same about their languages
(of course *laugh*)


So aside all us serious work :
Lets blast some alien slime, hunt the wumpus, use the force
and make a nice klingon barbecue !



Sept.-Oct. 2007, Hildesheim, Elze (Germany)
have some fun :)

Thomas Ludewig, Dipl.-Ing (FH)
[civil engineer]


If you need help by porting commercial things please feel free to contact me
rexxitall at gmx dot de

'/

'DYNAMIC
