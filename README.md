# Simple-MSIL-Compiler

This is a version of the Orange C compiler that does MSIL code generation.

This is a WIP.  At present it mostly supports the C language.  

Known things that are missing are complex numbers, and the library is MSVCRT.DLL so it doesn't support functions introduced after C89.

This version supports common RTL variables such as stdin, stdout, stderr, errno, and the variables used for the macros in
ctype.h.   It also supports command line arguments.
 
This version supports marshalling of function pointers.  A small helper dll called 'occmsil.dll' is involved in creating thunks for this.  occmsil is built when you build the compiler; but as of this writing bug fixes to the main orange c
project are required to build occmsil properly, so, the latest version of Orange C/x86 is required to build this package.

Calling unprototyped functions now results in an error.

The results are undefined if you try to use some extension such as alloca.

There may be a variety of bugs.

If you want to build it copy this directory into your orange c directory then build from the 'netil' directory.   The following files will be built:   netlib.lib, occmsil.dll, and occil.exe

Run the compiler 'occil' on a simple C program (test.c is included as an example).

It will generate an MSIL assembly language program (.il extension).   It will try to find c runtime library files in mscvrt.dll.   If you want to import from other files (e.g. for example kernel32.dll) try something like:

	__using__ "kernel32"

as part of the source code, but you do still need to prototype the functions using an appropriate header (in this case usually windows.h)


This version does not allow linking of multiple modules into a single program.

Assemble the MSIL program with ILASM and you have a .NET exectuable!

