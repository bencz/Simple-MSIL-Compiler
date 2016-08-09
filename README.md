# Simple-MSIL-Compiler

This is a version of the Orange C compiler that does MSIL code generation.

This is a WIP.  At present it does not support structures, or function pointers.   

The results are undefined if you try to call an unprototyped function, or don't return a value from a function that needs
to return a value.

There may be a variety of bugs.

Copy this directory into your orange c directory then create the subdirectory netil\obj\bcc32 and build from the 'netil' directory.

Run the compiler 'occil' on a simple C program (test.c is included as an example).

It will generate an MSIL assembly language program (.il extension).   You can use C language functions including printf() that will be resolved to MSVCRT.DLL, but no resolution to other DLLs is possible.

This version does not allow linking of multiple modules into a single program.

Assemble the MSIL program with ILASM and you have a .NET exectuable!
