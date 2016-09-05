//File q.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


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

	calli	int32 (int32)
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

	.field public static void *'__stdin'

	.field public static void *'__stdout'

	.field public static void *'__stderr'

	.field public static void *'_pctype'
.method private hidebysig static void * __GetErrno() cil managed {
	.maxstack 1

	call void * '_errno'()
	ret
}
.method private hidebysig static void $Main() cil managed {
	.entrypoint
	.locals (
		[0] int32 'argc',
		[1] void * 'argv',
		[2] void * 'environ',
		[3] void * 'newmode'
	)
	.maxstack 5

	call void *'__pctype_func'()
	stsfld void * '_pctype'
	call void *'__iob_func'()
	dup
	stsfld void * '__stdin'
	dup
	ldc.i4 32
	add
	stsfld void * '__stdout'
	ldc.i4 64
	add
	stsfld void * '__stderr'
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
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
