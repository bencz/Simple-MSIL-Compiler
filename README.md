# Simple-MSIL-Compiler

This is a version of the Orange C compiler that does MSIL code generation.

This is a WIP.  At present it does not support structures, arrays, or function pointers.   

There may be a variety of bugs.

Copy this directory into your orange c directory and build.

Run the compiler on a simple C program (test.c is included as an example).

It will generate an MSIL assembly language program (.il extension).   You can use C language functions including printf() that will be resolved to MSVCRT.DLL, but no resolution to other DLLs is possible.

This version does not allow linking of multiple modules into a single program.

Assemble the MSIL program with ILASM and you have a .NET exectuable!
