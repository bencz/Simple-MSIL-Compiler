//File q.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 7:	main()

// Line 8:	{

	.maxstack	3
L_2:
// Line 9:	    aa = bb;

	ldftn	int32 'bb'(int32)
	stsfld	method 	int32 *(int32) 'aa'

// Line 10:	    printf("%d\n",(*aa)(5));

	ldsflda	valuetype 'int8[]' 'L_1'

	ldc.i4	5
	ldsfld	method 	int32 *(int32) 'aa'

	calli		int32 *(int32)
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 11:	    return 0;

	ldc.i4	0
// Line 12:	}
L_3:
	ret

}
 .method public hidebysig static int32 'bb'(int32 'rr' ) cil managed
{
// Line 3:	int bb(int rr)

// Line 4:	{

	.maxstack	2
L_10:
// Line 5:	    return rr * 3;

	ldarg	'rr'
	ldc.i4	3
	mul
// Line 6:	}

L_11:
	ret

}
 .field public static method 	int32 *(int32) 'aa' at $aa
.data $aa = bytearray (0 0 0 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (25 64 a 0 
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
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
