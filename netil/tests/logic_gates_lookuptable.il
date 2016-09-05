//File logic_gates_lookuptable.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 43:	int main() 

// Line 44:	{

	.locals
	(
		[0] uint16 'a/0',
		[1] uint16 'b/1'
	)
	.maxstack	5
L_4:
// Line 45:	    uint16_t a = 0, b = 0;

	ldloca	'a/0'
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'b/1'
	ldc.i4	0
	conv.u2
	stind.i2
// Line 46:	

	br	'L_8'
L_7:
// Line 48:	    {

	br	'L_13'
L_12:
// Line 50:	      {    

// Line 51:	        if ( AND(a,b) != (a&b) ) return printf( "AND error\n" );

	ldloc	'a/0'
	ldloc	'b/1'
	call	uint16 'AND'(uint16, uint16)
	conv.i4
	ldloc	'a/0'
	conv.i4
	ldloc	'b/1'
	conv.i4
	and
	beq	'L_17'
	ldsflda	valuetype 'int8[]' 'L_1'

	call	vararg int32 'printf'(void*, ...)
	br	'L_5'
L_17:
// Line 52:	        if ( IOR(a,b) != (a|b) ) return printf( "IOR error\n" );

	ldloc	'a/0'
	ldloc	'b/1'
	call	uint16 'AND'(uint16, uint16)
	conv.i4
	ldc.i4	1
	shl
	neg
	ldloc	'a/0'
	conv.i4
	ldloc	'b/1'
	conv.i4
	add
	add
	ldloc	'a/0'
	ldloc	'b/1'
	call	uint16 'AND'(uint16, uint16)
	conv.i4
	add
	ldloc	'a/0'
	ldloc	'b/1'
	call	uint16 'AND'(uint16, uint16)
	conv.i4
	ldc.i4	1
	shl
	neg
	ldloc	'a/0'
	conv.i4
	ldloc	'b/1'
	conv.i4
	add
	add
	conv.u2
	ldloc	'a/0'
	ldloc	'b/1'
	call	uint16 'AND'(uint16, uint16)
	call	uint16 'AND'(uint16, uint16)
	conv.i4
	ldc.i4	1
	shl
	sub
	ldloc	'a/0'
	conv.i4
	ldloc	'b/1'
	conv.i4
	or
	beq	'L_18'
	ldsflda	valuetype 'int8[]' 'L_2'

	call	vararg int32 'printf'(void*, ...)
	br	'L_5'
L_18:
// Line 53:	        if ( XOR(a,b) != (a^b) ) return printf( "XOR error\n" );

	ldloc	'a/0'
	ldloc	'b/1'
	call	uint16 'AND'(uint16, uint16)
	conv.i4
	ldc.i4	1
	shl
	neg
	ldloc	'a/0'
	conv.i4
	ldloc	'b/1'
	conv.i4
	add
	add
	ldloc	'a/0'
	conv.i4
	ldloc	'b/1'
	conv.i4
	xor
	beq	'L_19'
	ldsflda	valuetype 'int8[]' 'L_3'

	call	vararg int32 'printf'(void*, ...)
	br	'L_5'
L_19:
L_15:
	ldloc	'b/1'
	ldc.i4	1
	add
	stloc	'b/1'
// Line 49:	      for(;b<1000;b++)

L_13:
	ldloc	'b/1'
	conv.i4
	ldc.i4	1000
	blt	'L_12'
L_14:
// Line 54:	      }

L_10:
	ldloc	'a/0'
	ldc.i4	1
	add
	stloc	'a/0'
// Line 47:	    for(;a<1000;a++)

L_8:
	ldloc	'a/0'
	conv.i4
	ldc.i4	1000
	blt	'L_13'
L_9:
// Line 55:	    }

// Line 56:	    return 0;

	ldc.i4	0
// Line 57:	}
L_5:
	ret

}
 .method public hidebysig static uint16 'AND'(uint16 'a' , uint16 'b' ) cil managed
{
// Line 30:	uint16_t AND(uint16_t a, uint16_t b)

// Line 31:	{

	.locals
	(
		[0] uint16 'r/0',
		[1] uint16 'i/1'
	)
	.maxstack	3
L_27:
// Line 32:	    uint16_t r=0, i;

	ldloca	'r/0'
	ldc.i4	0
	conv.u2
	stind.i2
// Line 33:	

	ldc.i4	0
	stloc	'i/1'
	br	'L_31'
L_30:
// Line 35:	    {

// Line 36:	            r = r/16 + andlookup[(a%16)*16+(b%16)]*4096;

	ldarg	'a'
	conv.i4
	ldc.i4	15
	and
	ldc.i4	4
	shl
	ldarg	'b'
	conv.i4
	ldc.i4	15
	and
	add
	ldc.i4	1
	shl
	ldsflda	valuetype 'uint16[256]' 'andlookup'

	add
	ldind.u2
	conv.i4
	ldc.i4	12
	shl
	ldloc	'r/0'
	conv.i4
	ldc.i4	4
	shr.un
	add
	conv.u2
	stloc	'r/0'
// Line 37:	            a /= 16;

	ldarg	'a'
	conv.i4
	ldc.i4	4
	shr.un
	conv.u2
	starg	'a'
// Line 38:	            b /= 16;

	ldarg	'b'
	conv.i4
	ldc.i4	4
	shr.un
	conv.u2
	starg	'b'
L_33:
	ldloc	'i/1'
	conv.i4
	ldc.i4	4
	add
	conv.u2
	stloc	'i/1'
// Line 34:	    for ( i = 0; i < 16; i += 4 )

L_31:
	ldloc	'i/1'
	conv.i4
	ldc.i4	16
	blt	'L_30'
L_32:
// Line 39:	    }

// Line 40:	    return r;

	ldloc	'r/0'
	conv.i4
// Line 41:	}

L_28:
	ret

}
 .field public static valuetype 'uint16[256]' 'andlookup' at $andlookup
.data $andlookup = bytearray (0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 1 0 0 0 1 0 
	0 0 1 0 0 0 1 0 
	0 0 1 0 0 0 1 0 
	0 0 1 0 0 0 1 0 
	0 0 0 0 2 0 2 0 
	0 0 0 0 2 0 2 0 
	0 0 0 0 2 0 2 0 
	0 0 0 0 2 0 2 0 
	0 0 1 0 2 0 3 0 
	0 0 1 0 2 0 3 0 
	0 0 1 0 2 0 3 0 
	0 0 1 0 2 0 3 0 
	0 0 0 0 0 0 0 0 
	4 0 4 0 4 0 4 0 
	0 0 0 0 0 0 0 0 
	4 0 4 0 4 0 4 0 
	0 0 1 0 0 0 1 0 
	4 0 5 0 4 0 5 0 
	0 0 1 0 0 0 1 0 
	4 0 5 0 4 0 5 0 
	0 0 0 0 2 0 2 0 
	4 0 4 0 6 0 6 0 
	0 0 0 0 2 0 2 0 
	4 0 4 0 6 0 6 0 
	0 0 1 0 2 0 3 0 
	4 0 5 0 6 0 7 0 
	0 0 1 0 2 0 3 0 
	4 0 5 0 6 0 7 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	8 0 8 0 8 0 8 0 
	8 0 8 0 8 0 8 0 
	0 0 1 0 0 0 1 0 
	0 0 1 0 0 0 1 0 
	8 0 9 0 8 0 9 0 
	8 0 9 0 8 0 9 0 
	0 0 0 0 2 0 2 0 
	0 0 0 0 2 0 2 0 
	8 0 8 0 a 0 a 0 
	8 0 8 0 a 0 a 0 
	0 0 1 0 2 0 3 0 
	0 0 1 0 2 0 3 0 
	8 0 9 0 a 0 b 0 
	8 0 9 0 a 0 b 0 
	0 0 0 0 0 0 0 0 
	4 0 4 0 4 0 4 0 
	8 0 8 0 8 0 8 0 
	c 0 c 0 c 0 c 0 
	0 0 1 0 0 0 1 0 
	4 0 5 0 4 0 5 0 
	8 0 9 0 8 0 9 0 
	c 0 d 0 c 0 d 0 
	0 0 0 0 2 0 2 0 
	4 0 4 0 6 0 6 0 
	8 0 8 0 a 0 a 0 
	c 0 c 0 e 0 e 0 
	0 0 1 0 2 0 3 0 
	4 0 5 0 6 0 7 0 
	8 0 9 0 a 0 b 0 
	c 0 d 0 e 0 f 0 
	
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (58 4f 52 20 65 72 72 6f 
	72 a 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (49 4f 52 20 65 72 72 6f 
	72 a 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (41 4e 44 20 65 72 72 6f 
	72 a 0 
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
.class private value explicit ansi sealed 'uint16[256]' {.pack 1 .size 512}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
