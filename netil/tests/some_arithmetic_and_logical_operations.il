//File some_arithmetic_and_logical_operations.C
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 419:	int main()

// Line 420:	{

	.locals
	(
		[0] int32 'x/0',
		[1] int32 'y/1'
	)
	.maxstack	8
L_21:
// Line 421:		int x = 90;

	ldloca	'x/0'
	ldc.i4	90
	stind.i4
// Line 422:		int y = 18;

	ldloca	'y/1'
	ldc.i4	18
	stind.i4
// Line 423:	

// Line 424:		printf("sum_1(2, 2) = %hu\n", sum_1(2, 2));

	ldsflda	valuetype 'int8[]' 'L_1'

	ldc.i4	2
	conv.u2
	ldc.i4	2
	conv.u2
	call	uint16 'sum_1'(uint16, uint16)
	conv.i4
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 425:		printf("sum_2_nocarry(2, 2) = %hu\n", sum_2_nocarry(2, 2));

	ldsflda	valuetype 'int8[]' 'L_2'

	ldc.i4	2
	conv.u2
	ldc.i4	2
	conv.u2
	call	uint16 'sum_2_nocarry'(uint16, uint16)
	conv.i4
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 426:		printf("sum_3_nocarry(2, 2) = %d\n", sum_3_nocarry(2, 2));

	ldsflda	valuetype 'int8[]' 'L_3'

	ldc.i4	2
	conv.u4
	ldc.i4	2
	conv.u4
	call	uint32 'sum_3_nocarry'(uint32, uint32)
	call	vararg int32 'printf'(void*, ..., uint32)
	pop
// Line 427:		printf("sum_4(2, 2) = %hu\n", sum_4(2, 2));

	ldsflda	valuetype 'int8[]' 'L_4'

	ldc.i4	2
	conv.u2
	ldc.i4	2
	conv.u2
	call	uint16 'sum_4'(uint16, uint16)
	conv.i4
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 428:		printf("sum_5(2, 2) = %hu\n", sum_5(2, 2));

	ldsflda	valuetype 'int8[]' 'L_5'

	ldc.i4	2
	conv.u2
	ldc.i4	2
	conv.u2
	call	uint16 'sum_5'(uint16, uint16)
	conv.i4
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 429:		printf("xor_1(%d,%d) = %d == (%d ^ %d) = %d\n", x, y, xor_1(x, y), x, y, x ^ y);

	ldsflda	valuetype 'int8[]' 'L_6'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'xor_1'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	xor
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 430:		printf("xor_2(%d,%d) = %d == (%d ^ %d) = %d\n", x, y, xor_2(x, y), x, y, x ^ y);

	ldsflda	valuetype 'int8[]' 'L_7'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'xor_2'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	xor
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 431:		printf("xor_3(%d,%d) = %d == (%d ^ %d) = %d\n", x, y, xor_3(x, y), x, y, x ^ y);

	ldsflda	valuetype 'int8[]' 'L_8'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'xor_3'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	xor
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 432:		printf("xor_4(%d,%d) = %d == (%d ^ %d) = %d\n", x, y, xor_4(x, y), x, y, x ^ y);

	ldsflda	valuetype 'int8[]' 'L_9'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'xor_4'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	xor
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 433:		printf("xor_5(%d,%d) = %d == (%d ^ %d) = %d\n", x, y, xor_5(x, y), x, y, x ^ y);

	ldsflda	valuetype 'int8[]' 'L_10'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'xor_5'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	xor
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 434:		printf("logical_and_1(%d,%d) = %d == (%d & %d) = %d\n", x, y, logical_and_1(x, y), x, y, x & y);

	ldsflda	valuetype 'int8[]' 'L_11'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'logical_and_1'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	and
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 435:		printf("logical_and_2(%d,%d) = %d == (%d & %d) = %d\n", x, y, logical_and_2(x, y), x, y, x & y);

	ldsflda	valuetype 'int8[]' 'L_12'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'logical_and_2'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	and
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 436:		printf("logical_and_3(%d,%d) = %d == (%d & %d) = %d\n", x, y, logical_and_3(x, y), x, y, x & y);

	ldsflda	valuetype 'int8[]' 'L_13'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'logical_and_3'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	and
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 437:		printf("logical_and_4(%d,%d) = %d == (%d & %d) = %d\n", x, y, logical_and_4(x, y), x, y, x & y);

	ldsflda	valuetype 'int8[]' 'L_14'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'logical_and_4'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	and
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 438:		printf("logical_or_1(%d,%d) = %d == (%d | %d) = %d\n", x, y, logical_or_1(x, y), x, y, x | y);

	ldsflda	valuetype 'int8[]' 'L_15'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'logical_or_1'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	or
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 439:		printf("logical_or_2(%d,%d) = %d == (%d | %d) = %d\n", x, y, logical_or_2(x, y), x, y, x | y);

	ldsflda	valuetype 'int8[]' 'L_16'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'logical_or_2'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	or
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 440:		printf("logical_or_3(%d,%d) = %d == (%d | %d) = %d\n", x, y, logical_or_3(x, y), x, y, x | y);

	ldsflda	valuetype 'int8[]' 'L_17'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'logical_or_3'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	or
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 441:		printf("logical_or_4(%d,%d) = %d == (%d | %d) = %d\n", x, y, logical_or_4(x, y), x, y, x | y);

	ldsflda	valuetype 'int8[]' 'L_18'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'logical_or_4'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	or
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 442:		printf("mul_1(%d,%d) = %d == (%d * %d) = %d\n", x, y, mul_1(x, y), x, y, x * y);

	ldsflda	valuetype 'int8[]' 'L_19'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'mul_1'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	mul
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 443:		printf("mul_2(%d,%d) = %d == (%d * %d) = %d\n", x, y, mul_2(x, y), x, y, x * y);

	ldsflda	valuetype 'int8[]' 'L_20'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	conv.u4
	ldloc	'y/1'
	conv.u4
	call	uint32 'mul_2'(uint32, uint32)
	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	mul
	call	vararg int32 'printf'(void*, ..., int32, int32, uint32, int32, int32, int32)
	pop
// Line 444:		return 0;

	ldc.i4	0
// Line 445:	}
L_22:
	ret

}
 .method public hidebysig static uint32 'xor_1'(uint32 'v1' , uint32 'v2' ) cil managed
{
// Line 11:	uint32_t xor_1(uint32_t v1, uint32_t v2)

// Line 12:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'nota/2',
		[3] uint32 'notb/3',
		[4] uint32 'result/4'
	)
	.maxstack	4
L_29:
// Line 13:		uint32_t a = v1;

	ldloca	'a/0'
	ldarg	'v1'
	stind.i4
// Line 14:		uint32_t b = v2;

	ldloca	'b/1'
	ldarg	'v2'
	stind.i4
// Line 15:		uint32_t nota = ~a; 

	ldloca	'nota/2'
	ldloc	'a/0'
	not
	stind.i4
// Line 16:		uint32_t notb = ~b; 

	ldloca	'notb/3'
	ldloc	'b/1'
	not
	stind.i4
// Line 17:		uint32_t result = (a & notb) | (b & nota);

	ldloca	'result/4'
	ldloc	'a/0'
	ldloc	'notb/3'
	and
	ldloc	'b/1'
	ldloc	'nota/2'
	and
	or
	stind.i4
// Line 18:		return result;

	ldloc	'result/4'
// Line 19:	}

L_30:
	ret

}
 .method public hidebysig static uint32 'xor_2'(uint32 'v1' , uint32 'v2' ) cil managed
{
// Line 21:	uint32_t xor_2(uint32_t v1, uint32_t v2)

// Line 22:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2'
	)
	.maxstack	4
L_37:
// Line 23:		uint32_t a = v1;

	ldloca	'a/0'
	ldarg	'v1'
	stind.i4
// Line 24:		uint32_t b = v2;

	ldloca	'b/1'
	ldarg	'v2'
	stind.i4
// Line 25:		uint32_t result = (a | b) & ~(a & b);

	ldloca	'result/2'
	ldloc	'a/0'
	ldloc	'b/1'
	and
	not
	ldloc	'a/0'
	ldloc	'b/1'
	or
	and
	stind.i4
// Line 26:		return result;

	ldloc	'result/2'
// Line 27:	}

L_38:
	ret

}
 .method public hidebysig static uint32 'xor_3'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 29:	uint32_t xor_3(uint32_t x, uint32_t y)

// Line 30:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] uint32 'n/3'
	)
	.maxstack	2
L_45:
// Line 31:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 32:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 33:		uint32_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 34:		uint32_t n;

	ldc.i4	0
	stloc	'n/3'
	br	'L_49'
L_48:
// Line 36:		{

// Line 37:			

// Line 38:			if (a & (1 << n))    

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'a/0'
	and
	ldc.i4	0
	beq	'L_53'
// Line 39:				if (!(b & (1 << n))) 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'b/1'
	and
	ldc.i4	0
	bne.un	'L_54'
// Line 40:					result |= (1 << n); 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'result/2'
	or
	stloc	'result/2'
L_54:
L_53:
// Line 41:	

// Line 42:										

// Line 43:			if (b & (1 << n))    

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'b/1'
	and
	ldc.i4	0
	beq	'L_55'
// Line 44:				if (!(a & (1 << n))) 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'a/0'
	and
	ldc.i4	0
	bne.un	'L_56'
// Line 45:					result |= (1 << n); 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'result/2'
	or
	stloc	'result/2'
L_56:
L_55:
L_51:
	ldloc	'n/3'
	ldc.i4	1
	add
	stloc	'n/3'
// Line 35:		for (n = 0; n < 32; ++n)

L_49:
	ldloc	'n/3'
	ldc.i4	32
	blt.un	'L_48'
L_50:
// Line 46:		}

// Line 47:	

// Line 48:		return result;

	ldloc	'result/2'
// Line 49:	}

L_46:
	ret

}
 .method public hidebysig static uint32 'xor_4'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 51:	uint32_t xor_4(uint32_t x, uint32_t y)

// Line 52:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] uint32 'mask/3'
	)
	.maxstack	2
L_63:
// Line 53:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 54:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 55:		uint32_t result = 0xFFFFFFFF;

	ldloca	'result/2'
	ldc.i4	-1
	stind.i4
// Line 56:		uint32_t mask;

	ldc.i4	1
	stloc	'mask/3'
	br	'L_67'
L_66:
// Line 58:		{

// Line 59:			

// Line 60:			if (!(a & mask)) 

	ldloc	'a/0'
	ldloc	'mask/3'
	and
	ldc.i4	0
	bne.un	'L_71'
// Line 61:				if (!(b & mask)) 

	ldloc	'b/1'
	ldloc	'mask/3'
	and
	ldc.i4	0
	bne.un	'L_72'
// Line 62:					result = result - mask;

	ldloc	'result/2'
	ldloc	'mask/3'
	sub
	stloc	'result/2'
L_72:
L_71:
// Line 63:	

// Line 64:			

// Line 65:			if (a & mask) 

	ldloc	'a/0'
	ldloc	'mask/3'
	and
	ldc.i4	0
	beq	'L_73'
// Line 66:				if (b & mask) 

	ldloc	'b/1'
	ldloc	'mask/3'
	and
	ldc.i4	0
	beq	'L_74'
// Line 67:					result = result - mask;

	ldloc	'result/2'
	ldloc	'mask/3'
	sub
	stloc	'result/2'
L_74:
L_73:
L_69:
	ldloc	'mask/3'
	ldc.i4	1
	shl
	stloc	'mask/3'
// Line 57:	  for (mask = 1; mask != 0; mask <<= 1)

L_67:
	ldloc	'mask/3'
	ldc.i4	0
	bne.un	'L_66'
L_68:
// Line 68:		}

// Line 69:	

// Line 70:		return result;

	ldloc	'result/2'
// Line 71:	}

L_64:
	ret

}
 .method public hidebysig static uint32 'xor_5'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 73:	uint32_t xor_5(uint32_t x, uint32_t y)

// Line 74:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] uint32 'mask/3',
		[4] int32 'bit/4'
	)
	.maxstack	3
L_81:
// Line 75:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 76:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 77:		uint32_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 78:		uint32_t mask = 1;

	ldloca	'mask/3'
	ldc.i4	1
	conv.u4
	stind.i4
// Line 79:	  int bit;

	ldc.i4	0
	stloc	'bit/4'
	br	'L_85'
L_84:
// Line 81:		{

// Line 82:			if (((a % 2) + (b % 2)) == 1) result = result + mask;

	ldloc	'a/0'
	ldc.i4	1
	and
	ldloc	'b/1'
	ldc.i4	1
	and
	add
	ldc.i4	1
	bne.un	'L_89'
	ldloc	'result/2'
	ldloc	'mask/3'
	add
	stloc	'result/2'
L_89:
// Line 83:			a = a / 2; 

	ldloc	'a/0'
	ldc.i4	1
	shr.un
	stloc	'a/0'
// Line 84:			b = b / 2; 

	ldloc	'b/1'
	ldc.i4	1
	shr.un
	stloc	'b/1'
// Line 85:			mask = mask + mask; 

	ldloc	'mask/3'
	ldloc	'mask/3'
	add
	stloc	'mask/3'
L_87:
	ldloc	'bit/4'
	ldc.i4	1
	add
	stloc	'bit/4'
// Line 80:		for (bit = 0; bit<32; ++bit)

L_85:
	ldloc	'bit/4'
	ldc.i4	32
	blt	'L_84'
L_86:
// Line 86:		}

// Line 87:		return result;

	ldloc	'result/2'
// Line 88:	}

L_82:
	ret

}
 .method public hidebysig static uint16 'sum_1'(uint16 'x' , uint16 'y' ) cil managed
{
// Line 90:	uint16_t sum_1(uint16_t x, uint16_t y)

// Line 91:	{

	.locals
	(
		[0] int32 '$anontemp1/0',
		[1] uint16 'a/1',
		[2] uint16 'b/2',
		[3] uint16 'result/3',
		[4] int32 'math_carry/4',
		[5] int32 'bit/5',
		[6] int32 'bit1/6',
		[7] int32 'bit0/7',
		[8] int32 'bit1/8',
		[9] int32 'bit1/9',
		[10] int32 'bit0/10'
	)
	.maxstack	3
L_96:
// Line 92:		uint16_t a = x;

	ldloca	'a/1'
	ldarg	'x'
	stind.i2
// Line 93:		uint16_t b = y;

	ldloca	'b/2'
	ldarg	'y'
	stind.i2
// Line 94:		uint16_t result = 0;

	ldloca	'result/3'
	ldc.i4	0
	conv.u2
	stind.i2
// Line 95:		bool math_carry = false;

	ldloca	'math_carry/4'
	ldc.i4	0
	stind.i4
// Line 96:		int bit;

	ldc.i4	0
	stloc	'bit/5'
	br	'L_100'
L_99:
// Line 98:		{

// Line 99:			switch (math_carry)

	ldloc	'math_carry/4'
	stloc	'$anontemp1/0'
	ldloc	'$anontemp1/0'
	ldc.i4	0
	beq	'L_106'
	ldloc	'$anontemp1/0'
	ldc.i4	1
	beq	'L_121'
	br	'L_131'
// Line 100:			{

L_106:
// Line 101:			case false:

// Line 102:			{

// Line 103:				bool bit0 = a & 1; a >>= 1; 

	ldloca	'bit0/10'
	ldloc	'a/1'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'a/1'
	ldc.i4	1
	shr.un
	stloc	'a/1'
// Line 104:				if (bit0)

	ldloc	'bit0/10'
	ldc.i4	0
	bne.un	'L_109'
// Line 105:					goto sum1_x;

L_108:
L_111:
// Line 106:			}

// Line 107:	

// Line 108:		sum0_x:

// Line 109:			{

// Line 110:				bool bit1 = b & 1; b >>= 1; 

	ldloca	'bit1/9'
	ldloc	'b/2'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'b/2'
	ldc.i4	1
	shr.un
	stloc	'b/2'
// Line 111:				if (bit1)

	ldloc	'bit1/9'
	ldc.i4	0
	bne.un	'L_114'
// Line 112:					goto sum1;

L_113:
L_116:
// Line 113:			}

// Line 114:	

// Line 115:		sum0:

// Line 116:			result >>= 1; 

	ldloc	'result/3'
	ldc.i4	1
	shr.un
	stloc	'result/3'
// Line 117:			math_carry = false;

	ldc.i4	0
	stloc	'math_carry/4'
// Line 118:			continue;

	br	'L_102'
L_109:
// Line 119:	

// Line 120:		sum1_x:

// Line 121:			{

// Line 122:				bool bit1 = b & 1; b >>= 1; 

	ldloca	'bit1/8'
	ldloc	'b/2'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'b/2'
	ldc.i4	1
	shr.un
	stloc	'b/2'
// Line 123:				if (bit1)

	ldloc	'bit1/8'
	ldc.i4	0
	bne.un	'L_119'
// Line 124:					goto sum2;

L_118:
L_114:
// Line 125:			}

// Line 126:	

// Line 127:		sum1:

// Line 128:			result >>= 1;

	ldloc	'result/3'
	ldc.i4	1
	shr.un
	stloc	'result/3'
// Line 129:			result |= 0x8000; 

	ldloc	'result/3'
	conv.i4
	ldc.i4	32768
	or
	conv.u2
	stloc	'result/3'
// Line 130:			math_carry = false;

	ldc.i4	0
	stloc	'math_carry/4'
// Line 131:			continue;

	br	'L_102'
L_119:
// Line 132:	

// Line 133:		sum2:

// Line 134:			result >>= 1; 

	ldloc	'result/3'
	ldc.i4	1
	shr.un
	stloc	'result/3'
// Line 135:			math_carry = true;

	ldc.i4	1
	stloc	'math_carry/4'
// Line 136:			continue;

	br	'L_102'
L_121:
// Line 137:	

// Line 138:			case true:

// Line 139:			{

// Line 140:				bool bit0 = a & 1; a >>= 1; 

	ldloca	'bit0/7'
	ldloc	'a/1'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'a/1'
	ldc.i4	1
	shr.un
	stloc	'a/1'
// Line 141:				if (bit0)

	ldloc	'bit0/7'
	ldc.i4	0
	bne.un	'L_124'
// Line 142:					goto sum2_x;

L_123:
// Line 143:			}

// Line 144:			goto sum1_x;

	br	'L_109'
L_124:
// Line 145:		sum2_x:

// Line 146:			{

// Line 147:				bool bit1 = b & 1; b >>= 1; 

	ldloca	'bit1/6'
	ldloc	'b/2'
	conv.i4
	ldc.i4	1
	and
	stind.i4
	ldloc	'b/2'
	ldc.i4	1
	shr.un
	stloc	'b/2'
// Line 148:				if (bit1)

	ldloc	'bit1/6'
	ldc.i4	0
	bne.un	'L_128'
// Line 149:					goto sum3;

L_127:
// Line 150:			}

// Line 151:			goto sum2;

	br	'L_119'
L_128:
// Line 152:		sum3:

// Line 153:			result >>= 1; result |= 0x8000; 

	ldloc	'result/3'
	ldc.i4	1
	shr.un
	stloc	'result/3'
	ldloc	'result/3'
	conv.i4
	ldc.i4	32768
	or
	conv.u2
	stloc	'result/3'
// Line 154:			math_carry = true;

	ldc.i4	1
	stloc	'math_carry/4'
// Line 155:			continue;

L_131:
L_104:
// Line 156:			}

L_102:
	ldloc	'bit/5'
	ldc.i4	1
	add
	stloc	'bit/5'
// Line 97:	  for (bit = 0; bit < 16; ++bit)

L_100:
	ldloc	'bit/5'
	ldc.i4	16
	blt	'L_99'
L_101:
// Line 157:		}

// Line 158:	

// Line 159:		return result;

	ldloc	'result/3'
	conv.i4
// Line 160:	}

L_97:
	ret

}
 .method public hidebysig static uint16 'sum_2_nocarry'(uint16 'x' , uint16 'y' ) cil managed
{
// Line 162:	uint16_t sum_2_nocarry(uint16_t x, uint16_t y)

// Line 163:	{

	.locals
	(
		[0] uint16 'a/0',
		[1] uint16 'b/1',
		[2] uint16 'result/2',
		[3] uint16 'mask/3',
		[4] uint16 'nextmask/4'
	)
	.maxstack	3
L_138:
// Line 164:		uint16_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i2
// Line 165:		uint16_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i2
// Line 166:		uint16_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u2
	stind.i2
// Line 167:		uint16_t mask = 1;

	ldloca	'mask/3'
	ldc.i4	1
	conv.u2
	stind.i2
	br	'L_143'
L_141:
// Line 169:		{

// Line 170:			uint16_t nextmask = mask << 1;

	ldloca	'nextmask/4'
	ldloc	'mask/3'
	conv.i4
	ldc.i4	1
	shl
	conv.u2
	stind.i2
// Line 171:			if (a & mask) 

	ldloc	'a/0'
	conv.i4
	ldloc	'mask/3'
	conv.i4
	and
	ldc.i4	0
	beq	'L_145'
// Line 172:			{

// Line 173:				

// Line 174:				if (result & mask) result ^= nextmask; 

	ldloc	'result/2'
	conv.i4
	ldloc	'mask/3'
	conv.i4
	and
	ldc.i4	0
	beq	'L_147'
	ldloc	'result/2'
	ldloc	'nextmask/4'
	xor
	stloc	'result/2'
L_147:
// Line 175:													   

// Line 176:				result ^= mask;

	ldloc	'result/2'
	ldloc	'mask/3'
	xor
	stloc	'result/2'
L_145:
// Line 177:			}

// Line 178:			if (b & mask) 

	ldloc	'b/1'
	conv.i4
	ldloc	'mask/3'
	conv.i4
	and
	ldc.i4	0
	beq	'L_149'
// Line 179:			{

// Line 180:				

// Line 181:				if (result & mask) result ^= nextmask; 

	ldloc	'result/2'
	conv.i4
	ldloc	'mask/3'
	conv.i4
	and
	ldc.i4	0
	beq	'L_151'
	ldloc	'result/2'
	ldloc	'nextmask/4'
	xor
	stloc	'result/2'
L_151:
// Line 182:													  

// Line 183:				result ^= mask;

	ldloc	'result/2'
	ldloc	'mask/3'
	xor
	stloc	'result/2'
L_149:
// Line 184:			}

// Line 185:			mask = nextmask;

	ldloc	'nextmask/4'
	stloc	'mask/3'
L_143:
// Line 168:		while (mask != 0)

	ldloc	'mask/3'
	conv.i4
	ldc.i4	0
	bne.un	'L_141'
L_142:
// Line 186:		}

// Line 187:	

// Line 188:		return result;

	ldloc	'result/2'
	conv.i4
// Line 189:	}

L_139:
	ret

}
 .method public hidebysig static uint32 'sum_3_nocarry'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 191:	uint32_t sum_3_nocarry(uint32_t x, uint32_t y)

// Line 192:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'carry/2',
		[3] uint32 'result/3',
		[4] uint32 'shiftedcarry/4'
	)
	.maxstack	3
L_159:
// Line 193:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 194:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 195:		uint32_t carry = a & b;

	ldloca	'carry/2'
	ldloc	'a/0'
	ldloc	'b/1'
	and
	stind.i4
// Line 196:		uint32_t result = a ^ b;

	ldloca	'result/3'
	ldloc	'a/0'
	ldloc	'b/1'
	xor
	stind.i4
	br	'L_164'
L_162:
// Line 198:		{

// Line 199:			

// Line 200:			

// Line 201:			uint32_t shiftedcarry = carry << 1;

	ldloca	'shiftedcarry/4'
	ldloc	'carry/2'
	ldc.i4	1
	shl
	stind.i4
// Line 202:			carry = result & shiftedcarry;

	ldloc	'result/3'
	ldloc	'shiftedcarry/4'
	and
	stloc	'carry/2'
// Line 203:			result = result ^ shiftedcarry;

	ldloc	'result/3'
	ldloc	'shiftedcarry/4'
	xor
	stloc	'result/3'
L_164:
// Line 197:		while (carry != 0)

	ldloc	'carry/2'
	ldc.i4	0
	bne.un	'L_162'
L_163:
// Line 204:		}

// Line 205:		return result;

	ldloc	'result/3'
// Line 206:	}

L_160:
	ret

}
 .method public hidebysig static uint16 'sum_4'(uint16 'x' , uint16 'y' ) cil managed
{
// Line 208:	uint16_t sum_4(uint16_t x, uint16_t y)

// Line 209:	{

	.locals
	(
		[0] uint16 'a/0',
		[1] uint16 'b/1',
		[2] uint32 'temp/2',
		[3] int32 'carry/3',
		[4] uint16 'result/4'
	)
	.maxstack	3
L_172:
// Line 210:		uint16_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i2
// Line 211:		uint16_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i2
// Line 212:		uint32_t temp = a + b;

	ldloca	'temp/2'
	ldloc	'a/0'
	conv.i4
	ldloc	'b/1'
	conv.i4
	add
	conv.u4
	stind.i4
// Line 213:	

// Line 214:		bool   carry = temp >> 16;    

	ldloca	'carry/3'
	ldloc	'temp/2'
	ldc.i4	16
	shr.un
	conv.i4
	stind.i4
// Line 215:		uint16_t result = temp & 0xFFFF; 

	ldloca	'result/4'
	ldloc	'temp/2'
	ldc.i4	65535
	and
	conv.u2
	stind.i2
// Line 216:		return result;

	ldloc	'result/4'
	conv.i4
// Line 217:	}

L_173:
	ret

}
 .method public hidebysig static uint16 'sum_5'(uint16 'x' , uint16 'y' ) cil managed
{
// Line 219:	uint16_t sum_5(uint16_t x, uint16_t y)

// Line 220:	{

	.locals
	(
		[0] uint16 'a/0',
		[1] uint16 'b/1',
		[2] uint16 'result/2',
		[3] uint16 'mask/3',
		[4] int32 'carry/4',
		[5] int32 'bit0/5',
		[6] int32 'bit1/6'
	)
	.maxstack	3
L_180:
// Line 221:		uint16_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i2
// Line 222:		uint16_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i2
// Line 223:		uint16_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u2
	stind.i2
// Line 224:		uint16_t mask = 1;

	ldloca	'mask/3'
	ldc.i4	1
	conv.u2
	stind.i2
// Line 225:		bool carry = false;

	ldloca	'carry/4'
	ldc.i4	0
	stind.i4
	br	'L_185'
L_183:
// Line 227:		{

// Line 228:			bool bit0 = a & mask;

	ldloca	'bit0/5'
	ldloc	'a/0'
	conv.i4
	ldloc	'mask/3'
	conv.i4
	and
	stind.i4
// Line 229:			bool bit1 = b & mask;

	ldloca	'bit1/6'
	ldloc	'b/1'
	conv.i4
	ldloc	'mask/3'
	conv.i4
	and
	stind.i4
// Line 230:	

// Line 231:			if (carry)

	ldloc	'carry/4'
	ldc.i4	0
	beq	'L_187'
// Line 232:			{

// Line 233:				if (bit0 == bit1) result |= mask; carry = bit0 | bit1;

	ldloc	'bit0/5'
	ldloc	'bit1/6'
	bne.un	'L_189'
	ldloc	'result/2'
	ldloc	'mask/3'
	or
	stloc	'result/2'
L_189:
	ldloc	'bit0/5'
	ldloc	'bit1/6'
	or
	stloc	'carry/4'
	br	'L_191'
L_187:
// Line 234:			}

// Line 235:			else

// Line 236:			{

// Line 237:				if (bit0 != bit1) result |= mask; carry = bit0 & bit1;

	ldloc	'bit0/5'
	ldloc	'bit1/6'
	beq	'L_193'
	ldloc	'result/2'
	ldloc	'mask/3'
	or
	stloc	'result/2'
L_193:
	ldloc	'bit0/5'
	ldloc	'bit1/6'
	and
	stloc	'carry/4'
L_191:
// Line 238:			}

// Line 239:	

// Line 240:			mask = mask << 1;

	ldloc	'mask/3'
	conv.i4
	ldc.i4	1
	shl
	conv.u2
	stloc	'mask/3'
L_185:
// Line 226:		while (mask != 0)

	ldloc	'mask/3'
	conv.i4
	ldc.i4	0
	bne.un	'L_183'
L_184:
// Line 241:		}

// Line 242:		return result;

	ldloc	'result/2'
	conv.i4
// Line 243:	}

L_181:
	ret

}
 .method public hidebysig static uint32 'logical_and_1'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 245:	uint32_t logical_and_1(uint32_t x, uint32_t y)

// Line 246:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2'
	)
	.maxstack	2
L_201:
// Line 247:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 248:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 249:		uint32_t result;

// Line 250:	  a = ~a; 

	ldloc	'a/0'
	not
	stloc	'a/0'
// Line 251:		b = ~b; 

	ldloc	'b/1'
	not
	stloc	'b/1'
// Line 252:		result = a | b; 

	ldloc	'a/0'
	ldloc	'b/1'
	or
	stloc	'result/2'
// Line 253:		result = ~result; 

	ldloc	'result/2'
	not
	stloc	'result/2'
// Line 254:		return result;

	ldloc	'result/2'
// Line 255:	}

L_202:
	ret

}
 .method public hidebysig static uint32 'logical_and_2'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 257:	uint32_t logical_and_2(uint32_t x, uint32_t y)

// Line 258:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] uint32 'n/3'
	)
	.maxstack	2
L_209:
// Line 259:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 260:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 261:		uint32_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 262:		uint32_t n;

	ldc.i4	0
	stloc	'n/3'
	br	'L_213'
L_212:
// Line 264:		{

// Line 265:			

// Line 266:			if (a & (1 << n)) 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'a/0'
	and
	ldc.i4	0
	beq	'L_217'
// Line 267:				if (b & (1 << n)) 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'b/1'
	and
	ldc.i4	0
	beq	'L_218'
// Line 268:					result |= (1 << n); 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'result/2'
	or
	stloc	'result/2'
L_218:
L_217:
L_215:
	ldloc	'n/3'
	ldc.i4	1
	add
	stloc	'n/3'
// Line 263:		for (n = 0; n < 32; ++n)

L_213:
	ldloc	'n/3'
	ldc.i4	32
	blt.un	'L_212'
L_214:
// Line 269:		}

// Line 270:		return result;

	ldloc	'result/2'
// Line 271:	}

L_210:
	ret

}
 .method public hidebysig static uint32 'logical_and_3'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 273:	uint32_t logical_and_3(uint32_t x, uint32_t y)

// Line 274:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] uint32 'mask/3'
	)
	.maxstack	2
L_225:
// Line 275:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 276:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 277:		uint32_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 278:		uint32_t mask;

	ldc.i4	1
	stloc	'mask/3'
	br	'L_229'
L_228:
// Line 280:		{

// Line 281:			

// Line 282:			if (a & mask) 

	ldloc	'a/0'
	ldloc	'mask/3'
	and
	ldc.i4	0
	beq	'L_233'
// Line 283:				if (b & mask) 

	ldloc	'b/1'
	ldloc	'mask/3'
	and
	ldc.i4	0
	beq	'L_234'
// Line 284:					result = result + mask;

	ldloc	'result/2'
	ldloc	'mask/3'
	add
	stloc	'result/2'
L_234:
L_233:
L_231:
	ldloc	'mask/3'
	ldc.i4	1
	shl
	stloc	'mask/3'
// Line 279:	  for (mask = 1; mask != 0; mask <<= 1)

L_229:
	ldloc	'mask/3'
	ldc.i4	0
	bne.un	'L_228'
L_230:
// Line 285:		}

// Line 286:		return result;

	ldloc	'result/2'
// Line 287:	}

L_226:
	ret

}
 .method public hidebysig static uint32 'logical_and_4'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 289:	uint32_t logical_and_4(uint32_t x, uint32_t y)

// Line 290:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] uint32 'mask/3',
		[4] int32 'bit/4'
	)
	.maxstack	2
L_241:
// Line 291:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 292:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 293:		uint32_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 294:		uint32_t mask = 1;

	ldloca	'mask/3'
	ldc.i4	1
	conv.u4
	stind.i4
// Line 295:		int bit;

	ldc.i4	0
	stloc	'bit/4'
	br	'L_245'
L_244:
// Line 297:		{

// Line 298:			if ((a % 2) != 0 && (b % 2) != 0) result = result + mask;

	ldloc	'a/0'
	ldc.i4	1
	and
	ldc.i4	0
	beq	'L_249'
	ldloc	'b/1'
	ldc.i4	1
	and
	ldc.i4	0
	beq	'L_249'
	ldloc	'result/2'
	ldloc	'mask/3'
	add
	stloc	'result/2'
L_249:
// Line 299:			a = a / 2; 

	ldloc	'a/0'
	ldc.i4	1
	shr.un
	stloc	'a/0'
// Line 300:			b = b / 2; 

	ldloc	'b/1'
	ldc.i4	1
	shr.un
	stloc	'b/1'
// Line 301:			mask = mask + mask; 

	ldloc	'mask/3'
	ldloc	'mask/3'
	add
	stloc	'mask/3'
L_247:
	ldloc	'bit/4'
	ldc.i4	1
	add
	stloc	'bit/4'
// Line 296:	  for (bit = 0; bit<32; ++bit)

L_245:
	ldloc	'bit/4'
	ldc.i4	32
	blt	'L_244'
L_246:
// Line 302:		}

// Line 303:		return result;

	ldloc	'result/2'
// Line 304:	}

L_242:
	ret

}
 .method public hidebysig static uint32 'logical_or_1'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 306:	uint32_t logical_or_1(uint32_t x, uint32_t y)

// Line 307:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2'
	)
	.maxstack	2
L_256:
// Line 308:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 309:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 310:		uint32_t result;

// Line 311:	  a = ~a; 

	ldloc	'a/0'
	not
	stloc	'a/0'
// Line 312:		b = ~b; 

	ldloc	'b/1'
	not
	stloc	'b/1'
// Line 313:		result = a & b; 

	ldloc	'a/0'
	ldloc	'b/1'
	and
	stloc	'result/2'
// Line 314:		result = ~result; 

	ldloc	'result/2'
	not
	stloc	'result/2'
// Line 315:		return result;

	ldloc	'result/2'
// Line 316:	}

L_257:
	ret

}
 .method public hidebysig static uint32 'logical_or_2'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 318:	uint32_t logical_or_2(uint32_t x, uint32_t y)

// Line 319:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] uint32 'n/3'
	)
	.maxstack	2
L_264:
// Line 320:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 321:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 322:		uint32_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 323:		uint32_t n;

	ldc.i4	0
	stloc	'n/3'
	br	'L_268'
L_267:
// Line 325:		{

// Line 326:			

// Line 327:			if (a & (1 << n)) 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'a/0'
	and
	ldc.i4	0
	beq	'L_272'
// Line 328:				result |= (1 << n); 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'result/2'
	or
	stloc	'result/2'
L_272:
// Line 329:			if (b & (1 << n)) 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'b/1'
	and
	ldc.i4	0
	beq	'L_273'
// Line 330:				result |= (1 << n); 

	ldc.i4	1
	ldloc	'n/3'
	shl
	conv.u4
	ldloc	'result/2'
	or
	stloc	'result/2'
L_273:
L_270:
	ldloc	'n/3'
	ldc.i4	1
	add
	stloc	'n/3'
// Line 324:		for (n = 0; n < 32; ++n)

L_268:
	ldloc	'n/3'
	ldc.i4	32
	blt.un	'L_267'
L_269:
// Line 331:		}

// Line 332:		return result;

	ldloc	'result/2'
// Line 333:	}

L_265:
	ret

}
 .method public hidebysig static uint32 'logical_or_3'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 335:	uint32_t logical_or_3(uint32_t x, uint32_t y)

// Line 336:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] uint32 'mask/3'
	)
	.maxstack	2
L_280:
// Line 337:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 338:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 339:		uint32_t result = 0xFFFFFFFF;

	ldloca	'result/2'
	ldc.i4	-1
	stind.i4
// Line 340:		uint32_t mask;

	ldc.i4	1
	stloc	'mask/3'
	br	'L_284'
L_283:
// Line 342:		{

// Line 343:			

// Line 344:			if (!(a & mask)) 

	ldloc	'a/0'
	ldloc	'mask/3'
	and
	ldc.i4	0
	bne.un	'L_288'
// Line 345:				if (!(b & mask)) 

	ldloc	'b/1'
	ldloc	'mask/3'
	and
	ldc.i4	0
	bne.un	'L_289'
// Line 346:					result = result - mask;

	ldloc	'result/2'
	ldloc	'mask/3'
	sub
	stloc	'result/2'
L_289:
L_288:
L_286:
	ldloc	'mask/3'
	ldc.i4	1
	shl
	stloc	'mask/3'
// Line 341:	  for (mask = 1; mask != 0; mask <<= 1)

L_284:
	ldloc	'mask/3'
	ldc.i4	0
	bne.un	'L_283'
L_285:
// Line 347:		}

// Line 348:		return result;

	ldloc	'result/2'
// Line 349:	}

L_281:
	ret

}
 .method public hidebysig static uint32 'logical_or_4'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 351:	uint32_t logical_or_4(uint32_t x, uint32_t y)

// Line 352:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] uint32 'mask/3',
		[4] int32 'bit/4'
	)
	.maxstack	2
L_296:
// Line 353:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 354:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 355:		uint32_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 356:		uint32_t mask = 1;

	ldloca	'mask/3'
	ldc.i4	1
	conv.u4
	stind.i4
// Line 357:		int bit;

	ldc.i4	0
	stloc	'bit/4'
	br	'L_300'
L_299:
// Line 359:		{

// Line 360:			if ((a % 2) != 0 || (b % 2) != 0) result = result + mask;

	ldloc	'a/0'
	ldc.i4	1
	and
	ldc.i4	0
	bne.un	'L_308'
	ldloc	'b/1'
	ldc.i4	1
	and
	ldc.i4	0
	beq	'L_304'
L_308:
	ldloc	'result/2'
	ldloc	'mask/3'
	add
	stloc	'result/2'
L_304:
// Line 361:			a = a / 2; 

	ldloc	'a/0'
	ldc.i4	1
	shr.un
	stloc	'a/0'
// Line 362:			b = b / 2; 

	ldloc	'b/1'
	ldc.i4	1
	shr.un
	stloc	'b/1'
// Line 363:			mask = mask + mask; 

	ldloc	'mask/3'
	ldloc	'mask/3'
	add
	stloc	'mask/3'
L_302:
	ldloc	'bit/4'
	ldc.i4	1
	add
	stloc	'bit/4'
// Line 358:	  for (bit = 0; bit<32; ++bit)

L_300:
	ldloc	'bit/4'
	ldc.i4	32
	blt	'L_299'
L_301:
// Line 364:		}

// Line 365:		return result;

	ldloc	'result/2'
// Line 366:	}

L_297:
	ret

}
 .method public hidebysig static uint32 'mul_1'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 368:	uint32_t mul_1(uint32_t x, uint32_t y)

// Line 369:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2'
	)
	.maxstack	2
L_312:
// Line 370:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 371:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 372:		uint32_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u4
	stind.i4
	br	'L_317'
L_315:
// Line 374:		{

// Line 375:			if (a & 1) 

	ldloc	'a/0'
	ldc.i4	1
	and
	ldc.i4	0
	beq	'L_319'
// Line 376:			{

// Line 377:				result = result + b;

	ldloc	'result/2'
	ldloc	'b/1'
	add
	stloc	'result/2'
L_319:
// Line 378:			}

// Line 379:			a = a >> 1; 

	ldloc	'a/0'
	ldc.i4	1
	shr.un
	stloc	'a/0'
// Line 380:			b = b + b;  

	ldloc	'b/1'
	ldloc	'b/1'
	add
	stloc	'b/1'
L_317:
// Line 373:		while (a != 0)

	ldloc	'a/0'
	ldc.i4	0
	bne.un	'L_315'
L_316:
// Line 381:		}

// Line 382:		return result;

	ldloc	'result/2'
// Line 383:	}

L_313:
	ret

}
 .method public hidebysig static uint32 'mul_2'(uint32 'x' , uint32 'y' ) cil managed
{
// Line 385:	uint32_t mul_2(uint32_t x, uint32_t y)

// Line 386:	{

	.locals
	(
		[0] uint32 'a/0',
		[1] uint32 'b/1',
		[2] uint32 'result/2',
		[3] valuetype 'uint32[7]' 'stack/3'
	)
	.maxstack	2
L_328:
// Line 387:		uint32_t a = x;

	ldloca	'a/0'
	ldarg	'x'
	stind.i4
// Line 388:		uint32_t b = y;

	ldloca	'b/1'
	ldarg	'y'
	stind.i4
// Line 389:	  uint32_t result = 0;

	ldloca	'result/2'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 390:		uint32_t stack[7];

// Line 391:	  stack[0] = b; b = b + b; 

	ldloca	'stack/3'
	ldloc	'b/1'
	stind.i4
	ldloc	'b/1'
	ldloc	'b/1'
	add
	stloc	'b/1'
// Line 392:		stack[1] = b; b = b + b; 

	ldloca	'stack/3'
	ldc.i4	4
	add
	ldloc	'b/1'
	stind.i4
	ldloc	'b/1'
	ldloc	'b/1'
	add
	stloc	'b/1'
// Line 393:		stack[2] = b; b = b + b; 

	ldloca	'stack/3'
	ldc.i4	8
	add
	ldloc	'b/1'
	stind.i4
	ldloc	'b/1'
	ldloc	'b/1'
	add
	stloc	'b/1'
// Line 394:		stack[3] = b; b = b + b; 

	ldloca	'stack/3'
	ldc.i4	12
	add
	ldloc	'b/1'
	stind.i4
	ldloc	'b/1'
	ldloc	'b/1'
	add
	stloc	'b/1'
// Line 395:		stack[4] = b; b = b + b; 

	ldloca	'stack/3'
	ldc.i4	16
	add
	ldloc	'b/1'
	stind.i4
	ldloc	'b/1'
	ldloc	'b/1'
	add
	stloc	'b/1'
// Line 396:		stack[5] = b; b = b + b; 

	ldloca	'stack/3'
	ldc.i4	20
	add
	ldloc	'b/1'
	stind.i4
	ldloc	'b/1'
	ldloc	'b/1'
	add
	stloc	'b/1'
// Line 397:		stack[6] = b;          

	ldloca	'stack/3'
	ldc.i4	24
	add
	ldloc	'b/1'
	stind.i4
// Line 398:	

// Line 399:		

// Line 400:		

// Line 401:		if (a >= 64) { result = result + stack[6]; a = a - 64; }

	ldloc	'a/0'
	ldc.i4	64
	blt.un	'L_331'
	ldloca	'stack/3'
	ldc.i4	24
	add
	ldind.u4
	ldloc	'result/2'
	add
	stloc	'result/2'
	ldloc	'a/0'
	ldc.i4	64
	sub
	stloc	'a/0'
L_331:
// Line 402:		else {   }

L_334:
// Line 403:		if (a >= 32) { result = result + stack[5]; a = a - 32; }

	ldloc	'a/0'
	ldc.i4	32
	blt.un	'L_337'
	ldloca	'stack/3'
	ldc.i4	20
	add
	ldind.u4
	ldloc	'result/2'
	add
	stloc	'result/2'
	ldloc	'a/0'
	ldc.i4	32
	sub
	stloc	'a/0'
L_337:
// Line 404:		else {   }

L_340:
// Line 405:		if (a >= 16) { result = result + stack[4]; a = a - 16; }

	ldloc	'a/0'
	ldc.i4	16
	blt.un	'L_343'
	ldloca	'stack/3'
	ldc.i4	16
	add
	ldind.u4
	ldloc	'result/2'
	add
	stloc	'result/2'
	ldloc	'a/0'
	ldc.i4	16
	sub
	stloc	'a/0'
L_343:
// Line 406:		else {   }

L_346:
// Line 407:		if (a >= 8) { result = result + stack[3]; a = a - 8; }

	ldloc	'a/0'
	ldc.i4	8
	blt.un	'L_349'
	ldloca	'stack/3'
	ldc.i4	12
	add
	ldind.u4
	ldloc	'result/2'
	add
	stloc	'result/2'
	ldloc	'a/0'
	ldc.i4	8
	sub
	stloc	'a/0'
L_349:
// Line 408:		else {   }

L_352:
// Line 409:		if (a >= 4) { result = result + stack[2]; a = a - 4; }

	ldloc	'a/0'
	ldc.i4	4
	blt.un	'L_355'
	ldloca	'stack/3'
	ldc.i4	8
	add
	ldind.u4
	ldloc	'result/2'
	add
	stloc	'result/2'
	ldloc	'a/0'
	ldc.i4	4
	sub
	stloc	'a/0'
L_355:
// Line 410:		else {   }

L_358:
// Line 411:		if (a >= 2) { result = result + stack[1]; a = a - 2; }

	ldloc	'a/0'
	ldc.i4	2
	blt.un	'L_361'
	ldloca	'stack/3'
	ldc.i4	4
	add
	ldind.u4
	ldloc	'result/2'
	add
	stloc	'result/2'
	ldloc	'a/0'
	ldc.i4	2
	sub
	stloc	'a/0'
L_361:
// Line 412:		else {   }

L_364:
// Line 413:		if (a >= 1) { result = result + stack[0]; }

	ldloc	'a/0'
	ldc.i4	1
	blt.un	'L_367'
	ldloca	'stack/3'
	ldind.u4
	ldloc	'result/2'
	add
	stloc	'result/2'
L_367:
// Line 414:		else {   }

L_370:
// Line 415:	

// Line 416:		return result;

	ldloc	'result/2'
// Line 417:	}

L_329:
	ret

}
 .field public static valuetype 'int8[]' 'L_20' at $L_20
.data $L_20 = bytearray (6d 75 6c 5f 32 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 2a 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_19' at $L_19
.data $L_19 = bytearray (6d 75 6c 5f 31 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 2a 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_18' at $L_18
.data $L_18 = bytearray (6c 6f 67 69 63 61 6c 5f 
	6f 72 5f 34 28 25 64 2c 
	25 64 29 20 3d 20 25 64 
	20 3d 3d 20 28 25 64 20 
	7c 20 25 64 29 20 3d 20 
	25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_17' at $L_17
.data $L_17 = bytearray (6c 6f 67 69 63 61 6c 5f 
	6f 72 5f 33 28 25 64 2c 
	25 64 29 20 3d 20 25 64 
	20 3d 3d 20 28 25 64 20 
	7c 20 25 64 29 20 3d 20 
	25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_16' at $L_16
.data $L_16 = bytearray (6c 6f 67 69 63 61 6c 5f 
	6f 72 5f 32 28 25 64 2c 
	25 64 29 20 3d 20 25 64 
	20 3d 3d 20 28 25 64 20 
	7c 20 25 64 29 20 3d 20 
	25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_15' at $L_15
.data $L_15 = bytearray (6c 6f 67 69 63 61 6c 5f 
	6f 72 5f 31 28 25 64 2c 
	25 64 29 20 3d 20 25 64 
	20 3d 3d 20 28 25 64 20 
	7c 20 25 64 29 20 3d 20 
	25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_14' at $L_14
.data $L_14 = bytearray (6c 6f 67 69 63 61 6c 5f 
	61 6e 64 5f 34 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 26 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_13' at $L_13
.data $L_13 = bytearray (6c 6f 67 69 63 61 6c 5f 
	61 6e 64 5f 33 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 26 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_12' at $L_12
.data $L_12 = bytearray (6c 6f 67 69 63 61 6c 5f 
	61 6e 64 5f 32 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 26 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_11' at $L_11
.data $L_11 = bytearray (6c 6f 67 69 63 61 6c 5f 
	61 6e 64 5f 31 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 26 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_10' at $L_10
.data $L_10 = bytearray (78 6f 72 5f 35 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 5e 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_9' at $L_9
.data $L_9 = bytearray (78 6f 72 5f 34 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 5e 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_8' at $L_8
.data $L_8 = bytearray (78 6f 72 5f 33 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 5e 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_7' at $L_7
.data $L_7 = bytearray (78 6f 72 5f 32 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 5e 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_6' at $L_6
.data $L_6 = bytearray (78 6f 72 5f 31 28 25 64 
	2c 25 64 29 20 3d 20 25 
	64 20 3d 3d 20 28 25 64 
	20 5e 20 25 64 29 20 3d 
	20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (73 75 6d 5f 35 28 32 2c 
	20 32 29 20 3d 20 25 68 
	75 a 0 
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (73 75 6d 5f 34 28 32 2c 
	20 32 29 20 3d 20 25 68 
	75 a 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (73 75 6d 5f 33 5f 6e 6f 
	63 61 72 72 79 28 32 2c 
	20 32 29 20 3d 20 25 64 
	a 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (73 75 6d 5f 32 5f 6e 6f 
	63 61 72 72 79 28 32 2c 
	20 32 29 20 3d 20 25 68 
	75 a 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (73 75 6d 5f 31 28 32 2c 
	20 32 29 20 3d 20 25 68 
	75 a 0 
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
.class private value explicit ansi sealed 'uint32[7]' {.pack 1 .size 28}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
