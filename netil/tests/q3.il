//File q3.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 argc, void * argv)  cil managed
{
// Line 4:	main()

// Line 5:	{

	.locals
	(
		[0] float64 'aa/0'
	)
	.maxstack	2
L_2:
// Line 6:	    double aa = 44.032;

	ldloca	'aa/0'
	ldc.r8	4.4031999999999996478511E+1
	stind.r8
// Line 7:	    printf("%f", aa);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	'aa/0'
	call	vararg void 'printf'(void*, ..., float64)
// Line 8:	    return 0;

	ldc.i4	0
// Line 9:	}
L_3:
	ret

}
 .field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (25 66 0 
)
.method public hidebysig static void $Main() cil managed {
	.entrypoint
	.locals (
		[0] int32 'argc',
		[1] void * 'argv',
		[2] void * 'environ',
		[3] void * 'newmode'
	)
	.maxstack 5
	ldloca 'argc'
	ldloca 'argv'
	ldloca 'environ'
	ldc.i4  0
	ldloca 'newmode'
	call void __getmainargs(void *, void *, void *, int32, void *);
	ldloc 'argc'
	ldloc 'argv'
	call int32 'main'(int32, void *)
	call void exit(int32)
	ret
}
.class private value explicit ansi sealed 'int8[]' {.pack 1 .size 1}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg void 'printf'(void*) preservesig {}
