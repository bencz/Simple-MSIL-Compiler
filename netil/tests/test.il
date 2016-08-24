//File test.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 argc, void * argv)  cil managed
{
// Line 15:	main()

// Line 16:	{

	.maxstack	3
L_3:
// Line 17:	    if (qq() > 10)

	call	int32 'qq'()
	ldc.i4	10
	ble	'L_6'
// Line 18:	        printf("\nhello world %x %x",qq(), p);

	ldsflda	valuetype 'int8[]' 'L_2'

	call	int32 'qq'()
	ldsfld	int32 'p'

	call	vararg void 'printf'(void*, ..., int32, int32)
L_6:
// Line 19:	    return 0;

	ldc.i4	0
// Line 20:	}
L_4:
	ret

}
 .method public hidebysig static int32 'qq'() cil managed
{
// Line 5:	int qq()

// Line 6:	{

	.locals
	(
		[0] int32 'i/0'
	)
	.maxstack	2
L_12:
// Line 7:		int i;

	ldc.i4	0
	stloc	'i/0'
	br	'L_16'
L_15:
// Line 9:	    {

// Line 10:	        p = i;

	ldloc	'i/0'
	stsfld	int32 'p'

// Line 11:	        printf("%d ", i);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	'i/0'
	call	vararg void 'printf'(void*, ..., int32)
L_18:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 8:	    for (i=0; i < 10; i++)

L_16:
	ldloc	'i/0'
	ldc.i4	10
	blt	'L_15'
L_17:
// Line 12:	    }

// Line 13:	    return 27;

	ldc.i4	27
// Line 14:	}

L_13:
	ret

}
 .field public static int32 'p' at $p
.data $p = bytearray (23 0 0 0 
)
.field public static void* 'x' at $x
.data $x = bytearray (0 0 0 0 
)
.method public hidebysig static void '__DYNAMIC_STARTUP___2238570617'() cil managed
{
	.maxstack	1

L_26:
	ldsflda	int32 'p'

	stsfld	void* 'x'

L_27:
	ret

}
 .field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (a 68 65 6c 6c 6f 20 77 
	6f 72 6c 64 20 25 78 20 
	25 78 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (25 64 20 0 
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
	call void __DYNAMIC_STARTUP___2238570617()
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
