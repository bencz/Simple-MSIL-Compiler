//File float_to_ieee754.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 54:	int main()

// Line 55:	{

	.locals
	(
		[0] float32 'input/0',
		[1] int32 'numeroDeBits/1',
		[2] void* 'str/2'
	)
	.maxstack	3
L_4:
// Line 56:		float input = 0.0;

	ldloca	'input/0'
	ldc.r4	0.0
	stind.r4
// Line 57:		const int numeroDeBits = 32;

// Line 58:		char *str = (char*)malloc(sizeof(char) * numeroDeBits);

	ldloca	'str/2'
	ldc.i4	32
	conv.u4
	call	void* 'malloc'(uint32)
	stind.i4
// Line 59:		printf("Digite um numero float: ");

	ldsflda	valuetype 'int8[]' 'L_1'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 60:		scanf("%f", &input);

	ldsflda	valuetype 'int8[]' 'L_2'

	ldloca	'input/0'
	call	vararg int32 'scanf'(void*, ..., void*)
	pop
// Line 61:		floatToBinary(input, str, numeroDeBits);

	ldloc	'input/0'
	ldloc	'str/2'
	ldc.i4	32
	call	void 'floatToBinary'(float32, void*, int32)
// Line 62:		printf("%s\n", str);

	ldsflda	valuetype 'int8[]' 'L_3'

	ldloc	'str/2'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
// Line 63:		if(str != NULL)

	ldloc	'str/2'
	ldc.i4	0
	beq	'L_7'
// Line 64:	    free(str);     

	ldloc	'str/2'
	call	void 'free'(void*)
L_7:
// Line 65:		return 0;

	ldc.i4	0
// Line 66:	}

L_5:
	ret

}
 .method public hidebysig static void* 'strrev_t'(void* 'str' ) cil managed
{
// Line 16:	char *strrev_t(char *str)

// Line 17:	{

	.locals
	(
		[0] void* 'p1/0',
		[1] void* 'p2/1'
	)
	.maxstack	4
L_13:
// Line 18:		char *p1, *p2;

// Line 19:	

// Line 20:		if (!str || !*str)

	ldarg	'str'
	ldc.i4	0
	beq	'L_25'
	ldarg	'str'
	ldind.i1
	ldc.i4	0
	bne.un	'L_16'
L_25:
// Line 21:			return str;

	ldarg	'str'
	br	'L_14'
L_16:
	ldarg	'str'
	stloc	'p1/0'
	ldarg	'str'
	call	uint32 'strlen'(void*)
	ldarg	'str'
	add
	ldc.i4	1
	sub
	stloc	'p2/1'
	br	'L_18'
L_17:
// Line 23:		{

// Line 24:			*p1 ^= *p2;

	ldloc	'p1/0'
	ldloc	'p1/0'
	ldind.i1
	ldloc	'p2/1'
	ldind.i1
	xor
	stind.i1
// Line 25:			*p2 ^= *p1;

	ldloc	'p2/1'
	ldloc	'p2/1'
	ldind.i1
	ldloc	'p1/0'
	ldind.i1
	xor
	stind.i1
// Line 26:			*p1 ^= *p2;

	ldloc	'p1/0'
	ldloc	'p1/0'
	ldind.i1
	ldloc	'p2/1'
	ldind.i1
	xor
	stind.i1
L_20:
	ldloc	'p1/0'
	ldc.i4	1
	add
	stloc	'p1/0'
	ldloc	'p2/1'
	ldc.i4	1
	sub
	stloc	'p2/1'
// Line 22:		for (p1 = str, p2 = str + strlen(str) - 1; p2 > p1; ++p1, --p2)

L_18:
	ldloc	'p2/1'
	ldloc	'p1/0'
	bgt	'L_17'
L_19:
// Line 27:		}

// Line 28:		return str;

	ldarg	'str'
// Line 29:	}

L_14:
	ret

}
 .method public hidebysig static void 'floatToBinary'(float32 'f' , void* 'str' , int32 'numeroDeBits' ) cil managed
{
// Line 31:	void floatToBinary(float f, char *str, int numeroDeBits)

// Line 32:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'strIndex/1',
		[2] valuetype '__anontype_2486130647_0' 'u/2'
	)
	.maxstack	4
L_29:
// Line 33:		int i = 0;

	ldloca	'i/0'
	ldc.i4	0
	stind.i4
// Line 34:		int strIndex = 0;

	ldloca	'strIndex/1'
	ldc.i4	0
	stind.i4
// Line 40:		u.f = f;

	ldloca	'u/2'
	ldarg	'f'
	stind.r4
// Line 41:		memset(str, '0', numeroDeBits);

	ldarg	'str'
	ldc.i4	48
	ldarg	'numeroDeBits'
	conv.u4
	call	void* 'memset'(void*, int32, uint32)
	pop
// Line 42:	

	ldc.i4	0
	stloc	'i/0'
	br	'L_33'
L_32:
// Line 44:		{

// Line 45:			str[strIndex++] = (u.i & (1 << 0)) ? '1' : '0';

	ldloc	'strIndex/1'
	ldarg	'str'
	add
	ldloc	'strIndex/1'
	ldc.i4	1
	add
	stloc	'strIndex/1'
	ldloca	'u/2'
	ldind.u4
	ldc.i4	1
	and
	ldc.i4	0
	beq	'L_40'
	ldc.i4	49
	br	'L_41'
L_40:
	ldc.i4	48
L_41:
	conv.i1
	stind.i1
// Line 46:			u.i >>= 1;

	ldloca	'u/2'
	ldloca	'u/2'
	ldind.u4
	ldc.i4	1
	shr.un
	stind.i4
L_35:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 43:		for (i = 0; i < numeroDeBits; i++)

L_33:
	ldloc	'i/0'
	ldarg	'numeroDeBits'
	blt	'L_32'
L_34:
// Line 47:		}

// Line 48:	

// Line 49:	  	str[strIndex] = '\0';

	ldloc	'strIndex/1'
	ldarg	'str'
	add
	ldc.i4	0
	stind.i1
// Line 50:	  

// Line 51:		str = strrev_t(str);

	ldarg	'str'
	call	void* 'strrev_t'(void*)
	starg	'str'
// Line 52:	}

L_30:
	ret

}
 .field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (25 73 a 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (25 66 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (44 69 67 69 74 65 20 75 
	6d 20 6e 75 6d 65 72 6f 
	20 66 6c 6f 61 74 3a 20 
	0 
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
.class private value explicit ansi sealed '__anontype_2486130647_0' {.pack 1 .size 4}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'strlen'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'memset'(void*, int32, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'malloc'(uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'free'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'scanf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
