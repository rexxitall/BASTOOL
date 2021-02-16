Tofrodos Ver 1.7.6
Copyright (c) 1996-2005 by Christopher Heng. All rights reserved.
-----------------------------------------------------------------

$Id: readme.txt,v 1.4 2005/03/15 14:53:56 chris Exp $


Contents
--------

1. What Is Tofrodos?
2. What's New In Version 1.7.6
3. How To Install Tofrodos?
4. Compiling Tofrodos In Linux
5. Compiling Tofrodos In Msdos And Win32
6. Porting To Other Systems
7. History Of Changes
8. Copyright And Contacting The Author


1. What Is Tofrodos?
--------------------

DOS text files traditionally have CR/LF (carriage return/line feed) pairs
as their new line delimiters while Unix text files traditionally have
LFs (line feeds) to terminate each line.

Tofrodos comprises two programs, "fromdos" and "todos", which convert
text files to and from these formats. Use "fromdos" to convert DOS
text files to the Unix format, and "todos" to convert Unix text files
to the DOS format.


2. What's New In Version 1.7.6
------------------------------

- [All systems] New option: -l allows you to send the error messages to
a log file. It's particularly convenient for systems with less powerful
command line shells that do not allow you to easily redirect stderr.
- [All systems] Fixed: all error and verbose messages are now sent to
stderr or the error log file (if -l is given).
- [Windows] Older versions of compilers like Borland 4.X and 5.0,
Watcom 10.X and Visual C++ 6.0 no longer have makefiles. Use the latest
versions; all these compilers are now available free of charge from
their vendors so using the latest version to compile tofrodos should
not be a great hardship.
- [All systems] Other minor fixes.


3. How To Install Tofrodos?
---------------------------

a. Windows 9x/ME/NT/2k/XP

The Tofrodos package comes with sources as well as precompiled
executables (binaries) for the Win32 console mode. If you
want to install everything, just unpack the archive into
a directory of your choice.

Alternatively, if you only want to use the executables and
don't want to bother with the sources, just do the following
from a Win32 console (command prompt):

	copy todos.exe {destination directory}\todos.exe
	copy fromdos.exe {destination directory}\fromdos.exe
	copy tofrodos.html {destination directory}\tofrodos.html

To read the manual, open the tofrodos.html file with a web browser.

If you work on the command line often, you might want to
consider putting the directory where you placed the tofrodos
executables in your PATH.

Note that if you prefer the names "dos2unix.exe" and
"unix2dos.exe", just make a copy of "todos.exe" (or "fromdos.exe")
under those names. Tofrodos automatically detects the name under
which it is run, and will change its behaviour accordingly.
(That is, "dos2unix" will convert files from the DOS format to
the Unix format, and "unix2dos" will convert files from the
Unix format to the DOS format.)

b. MSDOS/FreeDOS and Clones

You will need to compile the sources. See the section
"Compiling Tofrodos in MSDOS and Win32", particularly
the section on using Watcom C/C++.

c. Linux

See the section "Compiling Tofrodos in Linux"

d. Other systems

See the section "Porting to Other Systems".


4. Compiling Tofrodos In Linux
--------------------------------

I've stopped distributing precompiled versions of Tofrodos for
Linux for two main reasons. There are just too many distributions
to compile for and it's a simple matter to do it yourself. The
process is painless and fast, since the source code compiles
out-of-the-box.

To compile everything, simply do the following:

	cd src
	make all

You can then install by typing

	make install

To install them somewhere other than /usr/bin, redefine
BINDIR and MANDIR for the binary and manual page destinations
respectively. For example, to install the binaries in /usr/local/bin
and the manual page in /usr/local/man/man1, do

	make BINDIR=/usr/local/bin MANDIR=/usr/local/man/man1 install

To read the manual page after installation, simply type

	man fromdos

There should be no errors or warnings in the compilation.

Note that if you prefer the names "dos2unix" and
"unix2dos", just rename the binaries accordingly and you're done.
Tofrodos automatically detects the name under which it is run,
and will change its behaviour accordingly. That is, "dos2unix"
will convert files from the DOS format to the Unix format,
and "unix2dos" will convert files from the Unix format to the
DOS format. No code changes are necessary.


5. Compiling Tofrodos In MSDOS And Win32
------------------------------------------

Tofrodos comes with binaries (executables) for the Win32 console
mode. However, if you prefer to recompile tofrodos yourself,
there are a few makefiles you may use, depending on the compiler
you have on your system.

To compile Tofrodos under MSDOS or Windows 95/NT, simply use
the appropriate makefile for your compiler or roll your own.

Makefiles for use with the following compilers and their MAKE
utilities are as follows:

	makefile.wcc	OpenWatcom C/C++ 1.3 and WMAKE.EXE (DOS 16/32 bit
			and Win32 targets)
	makefile.vs7	Visual Studio .NET 2003 and NMAKE.EXE (Win32 target)
	makefile.bc	Borland C/C++ 5.5 and MAKE.EXE (Win32 targets)
	makefile.dj2	DJGPP 2.0x and GNU make.exe (DOS 32 bit target)
	makefile.dm	Digital Mars C/C++ 8.X+ and MAKE.EXE
			(Win32 target). See notes below for limitations.
	makefile.lcc	LCC-Win32 3.X+ (Win32 target). See notes below
			for limitations.
	makefile.min	MinGW 3.1.0 and mingw32-make.exe (Win32 target)

Note that the default Makefile is for use with the GNU C compiler and
GNU make on a Linux system. Do not use it under Windows or MSDOS.

You can probably adapt the makefiles for other compilers or other
versions of the above compilers.

i. Recompiling with OpenWatcom C/C++

To recompile with OpenWatcom C/C++, copy the file
	SRC\STARTUP\WILDARGV.C
from your WATCOM directory to the src\lib subdirectory. For example, if
you installed Watcom to C:\WATCOM, and you expanded the tofrodos
package into D:\TOFRODOS, do the following:
	copy C:\WATCOM\SRC\STARTUP\WILDARGV.C D:\TOFRODOS\src\lib

If you cannot find wildargv.c on your hard disk, you probably did not
install the startup source code or have somehow deleted it. Just reinstall
OpenWatcom again, this time with the necessary options.

To create the MSDOS executables, do the following:
	cd src
	wmake -f makefile.wcc TARGET=16bit all

To create a Win32 console executable, the following command line can be
used:
	cd src
	wmake -f makefile.wcc TARGET=Win32 all

Make sure you do a
	wmake -f makefile.wcc clean
before compiling again for a different target or the response files
and object files will be wrong for the new target.

Note that I have only tested the current version of this makefile
with OpenWatcom 1.3. It should, however, work with any Watcom 10.X
and 11.X version as well as OpenWatcom 1.1 and later.

ii. Recompiling with Visual C/C++

Visual C/C++ 7.0 (from Visual Studio .NET 2003) can only create
Win32 console executables. Use the following procedure to create
todos.exe and fromdos.exe.

	cd src
	nmake -f makefile.vc all

There should be no warnings or errors.

iii. Recompiling with Borland C/C++

To compile with the free command line version of Borland C++ 5.5,
installed with the directory structure used by default by the
Borland installer (ie into C:\Borland\BCC55), change into the
Tofrodos source directory, ie,

	cd src

Then type in the following command line. The command line is to be
typed in as one line even though it appears as two lines below (the
command is too long to fit into one line for the purpose of this
Readme file).

make -f makefile.bc all

This will make the Win32 console version of todos and fromdos.

There should be no warnings or errors.

iv. Recompiling with DJGPP 2.0x

To compile with DJGPP 2.0x, use makefile.dj2 provided in the package
and run it as follows:

	cd src
	make -f makefile.dj2 all

Note: The DJGPP makefile has not been tested for the current version.
If you find you need to make any changes to get it to work, please
let me know.

v. Recompiling with Digital Mars C/C++

To compile with the Digital Mars compiler, use the makefile.dm
provided in the package and run it with the Digital Mars MAKE.EXE
utility as follows:

	cd src
	make -fmakefile.dm all

There should be no warnings or errors. Note that if you compile
with this compiler, the resulting executable will not be able
to process wildcard arguments. If you want tofrodos to handle
arguments like *.html or *.c, use the precompiled executable that
came with the package.

v. Recompiling with LCC-Win32

To compile with LCC-Win32, use the makefile.lcc provided in the
package and run it with the LCC-Win32 MAKE.EXE utility as follows:

	cd src
	make -f makefile.lcc all

There should be no warnings or errors. Note that if you compile
with this compiler, the resulting executable will not be able
to process wildcard arguments. If you want tofrodos to handle
arguments like *.html or *.c, use the precompiled executable that
came with the package.

vi. Recompiling with MinGW

To compile with MinGW, use the GNU Make utility (mingw32-make.exe)
with makefile.min as follows:

	cd src
	mingw32-make -f makefile.min all


6. Porting To Other Systems
---------------------------

If you want to compile Tofrodos for a system other than Linux, MSDOS
or Win32 you may or may not have some work in store for you. The
program is actually VERY trivial, so the work you need to do is
probably (hopefully) minimal.

The first place to look into is probably the config.h file, where I
tried to place as many system and compiler macros as I could bother.

If you are compiling on other Unix systems, tweaking the config.h file
macros may well be all that you need to do. I have reports of success
with people using it on HP-UX and others.


7. History Of Changes
---------------------

Dates given are the dates where the code base was finalised and do not
necessarily refer to the date of public release.

Version 1.7.6	15 March 2005
- [All systems] New option: -l allows you to send the error messages to
a log file. It's particularly convenient for systems with less powerful
command line shells that do not allow you to easily redirect stderr.
- [All systems] Fixed: all error and verbose messages are now sent to
stderr or the error log file (if -l is given).
- [Windows] Older versions of compilers like Borland 4.X and 5.0,
Watcom 10.X and Visual C++ 6.0 no longer have makefiles. Use the latest
versions; all these compilers are now available free of charge from
their vendors so using the latest version to compile tofrodos should
not be a great hardship.
- [All systems] Other minor fixes.

Version 1.7	26 November 2003
- [Linux/Unix] Bug fix: now handles symbolic link arguments correctly.
This bug only affects Unix-type sytems (like Linux, FreeBSD, OpenBSD,
etc).
- [Linux] tofrodos now uses mkstemp() to create the temporary file to
avoid a race between file name creation and opening which may occur
when using mktemp(). If you use a non-Linux system, and have
mkstemp(), you can take advantage of this by defining HAVE_MKSTEMP
in config.h (defined by default for Linux only).
- [Linux/Unix] "make install" now installs to /usr/bin by default (you
can still change this easily) since Linux distributions using tofrodos
appear to use this value. (Makes it easier for maintainers of those
distributions.)
- [All systems] Made some error messages a bit more informative.
- [All systems] Verbose mode is slightly more informative.
- [Windows] Added support for compiling with the MinGW (GNU) C Compiler
on Win32 systems.
- [All systems] Added an HTML version of the manual page. Useful for
systems that don't have a built-in facility to read a man page (like
MSDOS and Windows).

Version 1.6	1 July 2002
Added support for LCC-Win32 and BCC 5.5

Version 1.5	19 June 2002
Minor fixes to documentation.
Added support for the Digital Mars C/C++ compiler (Win32 console mode)

Version 1.4	16 March 1999
Fixed bug when using -b on a file not in the current directory.
Added RPM support.

Version 1.3	8 October 1997
Added new option (-p) to preserve file ownership and time.
Added support for Win32 compilation and some compilers under DOS and
Windows.

Version 1.2	5 April 1997
(Internal version - not publicly released.)

Version 1.1	16 December 1996
Fixed bug in creation of temporary filename on Linux.
Fixed bug in creation of backup filename on Linux.

Version 1.0	22 June 1996		Initial version.


8. Copyright And Contacting The Author
--------------------------------------

The program and its accompanying files and documentation are
Copyright (c) 1996-2005 by Christopher Heng. All rights reserved.
They are distributed under the terms of the GNU General Public License
Version 2, a copy of which is enclosed in this package in the file COPYING.

You can retrieve the latest version of tofrodos from the following
website:
	http://www.thefreecountry.com/tofrodos/

If you need to contact me, you can use the feedback form at the
following URL:
	http://www.thefreecountry.com/feedback.php

While I generally like to hear from you if you are using this program,
especially if you find any bugs in it, I make no promises about fixing
anything or even replying. If you do contact me, please also let me have
the following information:

	1. The version of tofrodos that you are using;
	2. The operating system (and its version) on which you are
	running the program (eg, Debian Linux [Woody], or MSDOS 6.22,
	Windows 95/98/ME/NT/2k/XP, OS/2 or all of the above).
	If the bug only surfaces in one of the operating systems and not
	the other, please also note this.
	3. Any other information which you think might be relevant.

This will help me give you a more relevant reply (and also to trace
whatever bugs that may be present).
