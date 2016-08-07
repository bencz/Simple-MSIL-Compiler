//File test.c
//Compiler version 6.0.1.1

.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 main() cil managed
{
// Line 15:	main()

// Line 16:	{

	.locals
	(
		[0] int32 'i'
	)
	.maxstack	3
L_3:
// Line 17:	    if (qq() > 10)

// Line 7:		int i;

	ldc.i4	0
	stloc	0
	br	L_11
L_10:
// Line 9:	    {

// Line 10:	        p = i;

	ldloc	0
	stsfld	int32 'p'

// Line 11:	        printf("%d ", i);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	0
	call	vararg void printf(void*, ..., int32)
L_13:
	ldloc	0
	ldc.i4	1
	add
	stloc	0
// Line 8:	    for (i=0; i < 10; i++)

L_11:
	ldloc	0
	ldc.i4	10
	blt	L_10
L_12:
// Line 12:	    }

// Line 13:	    return 27;

	ldc.i4	27
	br	L_28
// Line 14:	}

L_28:
	ldc.i4	10
	ble	L_6
// Line 18:	        printf("\nhello world %x %x",qq(), 92);

	ldsflda	valuetype 'int8[]' 'L_2'

// Line 7:		int i;

	ldc.i4	0
	stloc	0
	br	L_33
L_32:
// Line 9:	    {

// Line 10:	        p = i;

	ldloc	0
	stsfld	int32 'p'

// Line 11:	        printf("%d ", i);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	0
	call	vararg void printf(void*, ..., int32)
L_35:
	ldloc	0
	ldc.i4	1
	add
	stloc	0
// Line 8:	    for (i=0; i < 10; i++)

L_33:
	ldloc	0
	ldc.i4	10
	blt	L_32
L_34:
// Line 12:	    }

// Line 13:	    return 27;

	ldc.i4	27
	br	L_50
// Line 14:	}

L_50:
	ldc.i4	92
	call	vararg void printf(void*, ..., int32, int32)
L_6:
// Line 19:	    return 0;

	ldc.i4	0
	br	L_4
// Line 20:	}
L_4:
	ret

}
 .method public hidebysig static int32 qq() cil managed
{
// Line 5:	int qq()

// Line 6:	{

	.locals
	(
		[0] int32 'i'
	)
	.maxstack	2
L_56:
// Line 7:		int i;

	ldc.i4	0
	stloc	0
	br	L_60
L_59:
// Line 9:	    {

// Line 10:	        p = i;

	ldloc	0
	stsfld	int32 'p'

// Line 11:	        printf("%d ", i);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	0
	call	vararg void printf(void*, ..., int32)
L_62:
	ldloc	0
	ldc.i4	1
	add
	stloc	0
// Line 8:	    for (i=0; i < 10; i++)

L_60:
	ldloc	0
	ldc.i4	10
	blt	L_59
L_61:
// Line 12:	    }

// Line 13:	    return 27;

	ldc.i4	27
	br	L_57
// Line 14:	}

L_57:
	ret

}
 .field public static int32 'p' = 	int32(0).field public static void* 'x' = 	int32(0).method public hidebysig static void __DYNAMIC_STARTUP___2238570617() cil managed
{
	.maxstack	1
L_70:
	ldsflda	int32 'p'

	stsfld	void* 'x'

L_71:
	ret

}
 .field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = { 
	int8(10),
	int8(104),
	int8(101),
	int8(108),
	int8(108),
	int8(111),
	int8(32),
	int8(119),
	int8(111),
	int8(114),
	int8(108),
	int8(100),
	int8(32),
	int8(37),
	int8(120),
	int8(32),
	int8(37),
	int8(120),
	int8(0)
}
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = { 
	int8(37),
	int8(100),
	int8(32),
	int8(0)
}
.method public hidebysig static void $Main() cil managed {
	.entrypoint
	.maxstack 1
	call void __DYNAMIC_STARTUP___2238570617()
	call int32 main()
	call void exit(int32)
	ret
}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void exit(int32) preservesig {}
.class private value explicit ansi sealed 'int8[]' {.pack 1 .size 1}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg void printf(void*) preservesig {}
