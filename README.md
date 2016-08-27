# Simple-MSIL-Compiler

This is a version of the Orange C compiler that does MSIL code generation.

This is a WIP.  At present it mostly supports the C language.  

Known things that are missing are complex numbers, variable sized arrays, and the library is MSVCRT.DLL so it doesn't support functions introduced after C89.

This version supports common RTL variables such as stdin, stdout, stderr, errno, and the variables used for the macros in
ctype.h.   It also supports command line arguments.
 
This version supports marshalling of function pointers.

The results are undefined if you try to call an unprototyped function.

The results are undefined if you try to use some extension such as alloca.

There may be a variety of bugs.

If you want to build it copy this directory into your orange c directory then create the subdirectory netil\obj\bcc32 and build from the 'netil' directory.

Run the compiler 'occil' on a simple C program (test.c is included as an example).

It will generate an MSIL assembly language program (.il extension).   You can use C language functions including printf() that will be resolved to MSVCRT.DLL, but no resolution to other DLLs is possible.

This version does not allow linking of multiple modules into a single program.

Assemble the MSIL program with ILASM and you have a .NET exectuable!

From time to time there may be bug fixes in the orange C main tree to support this effort; if something doesn't build sync with the orange c project.

