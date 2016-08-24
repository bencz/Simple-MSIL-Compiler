//File q2.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 argc, void * argv)  cil managed
{
// Line 5:	main()

// Line 6:	{

	.maxstack	1
L_1:
// Line 7:	    return zz(4);

	ldc.i4	4
	call	int32 'zz'(int32)
// Line 8:	}
L_2:
	ret

}
 .method public hidebysig static int32 'zz'(int32 'a' ) cil managed
{
// Line 1:	int zz(int a)

// Line 2:	{

	.maxstack	2
L_9:
// Line 3:	    return a + 10;

	ldarg	'a'
	ldc.i4	10
	add
// Line 4:	}

L_10:
	ret

}
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
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
