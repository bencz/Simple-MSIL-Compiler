//File q1.C
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 8:	main()

// Line 9:	{

	.locals
	(
		[0] int32 'i/0',
		[1] valuetype 'aa' 'rr/1'
	)
	.maxstack	4
L_2:
// Line 10:	    int i = 7;

	ldloca	'i/0'
	ldc.i4	7
	stind.i4
// Line 11:	    struct aa rr;

// Line 12:	    rr.t = 245;

	ldloca	'rr/1'
	ldc.i4	8
	add
	ldc.i4	245
	stind.i4
// Line 13:	    rr = bb;

	ldloca	'rr/1'
	ldsflda	valuetype 'aa' 'bb'

	ldc.i4	12
	cpblk
// Line 14:	    printf("%d %d %d\n", bb.s, rr.t, i);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldsflda	valuetype 'aa' 'bb'

	ldc.i4	4
	add
	ldind.i4
	ldloca	'rr/1'
	ldc.i4	8
	add
	ldind.i4
	ldloc	'i/0'
	call	vararg int32 'printf'(void*, ..., int32, int32, int32)
	pop
// Line 15:	    return 0;

	ldc.i4	0
// Line 16:	}
L_3:
	ret

}
 .field public static valuetype 'aa' 'bb' at $bb
.data $bb = bytearray (3 0 0 0 4 0 0 0 
	5 0 0 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (25 64 20 25 64 20 25 64 
	a 0 
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
.class private value explicit ansi sealed 'aa' {.pack 1 .size 12}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
