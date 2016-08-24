//File sum_with_state_machine.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 argc, void * argv)  cil managed
{
// Line 81:	int main()

// Line 82:	{

	.locals
	(
		[0] uint16 'result/0'
	)
	.maxstack	3
L_2:
// Line 83:		unsigned short result = sum(2, 2);

	ldloca	'result/0'
	ldc.i4	2
	conv.u2
	ldc.i4	2
	conv.u2
	call	uint16 'sum'(uint16, uint16)
	stind.i2
// Line 84:		printf("%hu\r\n", result);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	'result/0'
	conv.i4
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 85:		return 0;

	ldc.i4	0
// Line 86:	}
L_3:
	ret

}
 .method public hidebysig static uint16 'sum'(uint16 'x' , uint16 'y' ) cil managed
{
// Line 9:	uint16_t sum(uint16_t x, uint16_t y)

// Line 10:	{

	.locals
	(
		[0] int32 '$anontemp1/0',
		[1] int32 'bit/1',
		[2] uint16 'a/2',
		[3] uint16 'b/3',
		[4] uint16 'result/4',
		[5] int32 'math_carry/5',
		[6] int32 'bit1/6',
		[7] int32 'bit0/7',
		[8] int32 'bit1/8',
		[9] int32 'bit1/9',
		[10] int32 'bit0/10'
	)
	.maxstack	3
L_10:
// Line 11:	  int bit;

// Line 12:		uint16_t a = x;

	ldloca	'a/2'
	ldarg	'x'
	stind.i2
// Line 13:		uint16_t b = y;

	ldloca	'b/3'
	ldarg	'y'
	stind.i2
// Line 14:		uint16_t result = 0;

	ldloca	'result/4'
	ldc.i4	0
	conv.u2
	stind.i2
// Line 15:		bool math_carry = false;

	ldloca	'math_carry/5'
	ldc.i4	0
	stind.i4
	ldc.i4	0
	stloc	'bit/1'
	br	'L_14'
L_13:
// Line 17:		{

// Line 18:			switch (math_carry)

	ldloc	'math_carry/5'
	stloc	'$anontemp1/0'
	ldloc	'$anontemp1/0'
	ldc.i4	0
	beq	'L_20'
	ldloc	'$anontemp1/0'
	ldc.i4	1
	beq	'L_35'
	br	'L_45'
// Line 19:			{

L_20:
// Line 20:			case false:

// Line 21:			{

// Line 22:				bool bit0 = a & 1; a >>= 1; 

	ldloca	'bit0/10'
	ldloc	'a/2'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'a/2'
	ldc.i4	1
	shr.un
	stloc	'a/2'
// Line 23:				if (bit0)

	ldloc	'bit0/10'
	ldc.i4	0
	bne.un	'L_23'
// Line 24:					goto sum1_x;

L_22:
L_25:
// Line 25:			}

// Line 26:	

// Line 27:		sum0_x:

// Line 28:			{

// Line 29:				bool bit1 = b & 1; b >>= 1; 

	ldloca	'bit1/9'
	ldloc	'b/3'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'b/3'
	ldc.i4	1
	shr.un
	stloc	'b/3'
// Line 30:				if (bit1)

	ldloc	'bit1/9'
	ldc.i4	0
	bne.un	'L_28'
// Line 31:					goto sum1;

L_27:
L_30:
// Line 32:			}

// Line 33:	

// Line 34:		sum0:

// Line 35:			result >>= 1; 

	ldloc	'result/4'
	ldc.i4	1
	shr.un
	stloc	'result/4'
// Line 36:			math_carry = false;

	ldc.i4	0
	stloc	'math_carry/5'
// Line 37:			continue;

	br	'L_16'
L_23:
// Line 38:	

// Line 39:		sum1_x:

// Line 40:			{

// Line 41:				bool bit1 = b & 1; b >>= 1; 

	ldloca	'bit1/8'
	ldloc	'b/3'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'b/3'
	ldc.i4	1
	shr.un
	stloc	'b/3'
// Line 42:				if (bit1)

	ldloc	'bit1/8'
	ldc.i4	0
	bne.un	'L_33'
// Line 43:					goto sum2;

L_32:
L_28:
// Line 44:			}

// Line 45:	

// Line 46:		sum1:

// Line 47:			result >>= 1;

	ldloc	'result/4'
	ldc.i4	1
	shr.un
	stloc	'result/4'
// Line 48:			result |= 0x8000; 

	ldloc	'result/4'
	conv.i4
	ldc.i4	32768
	or
	conv.u2
	stloc	'result/4'
// Line 49:			math_carry = false;

	ldc.i4	0
	stloc	'math_carry/5'
// Line 50:			continue;

	br	'L_16'
L_33:
// Line 51:	

// Line 52:		sum2:

// Line 53:			result >>= 1; 

	ldloc	'result/4'
	ldc.i4	1
	shr.un
	stloc	'result/4'
// Line 54:			math_carry = true;

	ldc.i4	1
	stloc	'math_carry/5'
// Line 55:			continue;

	br	'L_16'
L_35:
// Line 56:	

// Line 57:			case true:

// Line 58:			{

// Line 59:				bool bit0 = a & 1; a >>= 1; 

	ldloca	'bit0/7'
	ldloc	'a/2'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'a/2'
	ldc.i4	1
	shr.un
	stloc	'a/2'
// Line 60:				if (bit0)

	ldloc	'bit0/7'
	ldc.i4	0
	bne.un	'L_38'
// Line 61:					goto sum2_x;

L_37:
// Line 62:			}

// Line 63:			goto sum1_x;

	br	'L_23'
L_38:
// Line 64:		sum2_x:

// Line 65:			{

// Line 66:				bool bit1 = b & 1; b >>= 1; 

	ldloca	'bit1/6'
	ldloc	'b/3'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'b/3'
	ldc.i4	1
	shr.un
	stloc	'b/3'
// Line 67:				if (bit1)

	ldloc	'bit1/6'
	ldc.i4	0
	bne.un	'L_42'
// Line 68:					goto sum3;

L_41:
// Line 69:			}

// Line 70:			goto sum2;

	br	'L_33'
L_42:
// Line 71:		sum3:

// Line 72:			result >>= 1; result |= 0x8000; 

	ldloc	'result/4'
	ldc.i4	1
	shr.un
	stloc	'result/4'
	ldloc	'result/4'
	conv.i4
	ldc.i4	32768
	or
	conv.u2
	stloc	'result/4'
// Line 73:			math_carry = true;

	ldc.i4	1
	stloc	'math_carry/5'
// Line 74:			continue;

L_45:
L_18:
// Line 75:			}

L_16:
	ldloc	'bit/1'
	ldc.i4	1
	add
	stloc	'bit/1'
// Line 16:		for (bit = 0; bit < 16; ++bit)

L_14:
	ldloc	'bit/1'
	ldc.i4	16
	blt	'L_13'
L_15:
// Line 76:		}

// Line 77:	

// Line 78:		return result;

	ldloc	'result/4'
	conv.i4
// Line 79:	}

L_11:
	ret

}
 .field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (25 68 75 d a 0 
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
