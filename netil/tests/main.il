//File main.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 argc, void * argv)  cil managed
{
// Line 249:	int main()

// Line 250:	{

	.locals
	(
		[0] int32 'x/0',
		[1] int32 'y/1',
		[2] int32 'i/2',
		[3] int32 'incremento/3'
	)
	.maxstack	6
L_26:
// Line 251:	    int x = 90;

	ldloca	'x/0'
	ldc.i4	90
	stind.i4
// Line 252:	    int y = 18;

	ldloca	'y/1'
	ldc.i4	18
	stind.i4
// Line 253:	    int i = 0;

	ldloca	'i/2'
	ldc.i4	0
	stind.i4
// Line 254:	    int incremento = 20;

	ldloca	'incremento/3'
	ldc.i4	20
	stind.i4
// Line 255:	

// Line 256:	    printf("XOR LOGICO: %d^%d=%d\n", x, y, x^y);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	xor
	call	vararg void 'printf'(void*, ..., int32, int32, int32)
// Line 257:	    printf("XOR MATEMA: %d^%d=%d\n", x, y, xor(x, y));

	ldsflda	valuetype 'int8[]' 'L_2'

	ldloc	'x/0'
	ldloc	'y/1'
	ldloc	'x/0'
	ldloc	'y/1'
	call	int32 'xor'(int32, int32)
	call	vararg void 'printf'(void*, ..., int32, int32, int32)
// Line 258:	    printf("RSHIFT LOGICO: %d\n", x >> 1);

	ldsflda	valuetype 'int8[]' 'L_3'

	ldloc	'x/0'
	ldc.i4	1
	shr
	call	vararg void 'printf'(void*, ..., int32)
// Line 259:	    printf("RSHIFT MATEMA: %d\n", shiftRight(x, 1));

	ldsflda	valuetype 'int8[]' 'L_4'

	ldloc	'x/0'
	ldc.i4	1
	call	int32 'shiftRight'(int32, int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 260:	    printf("URSHIFT MATEM: %d\n", uShiftRight(x, 1));

	ldsflda	valuetype 'int8[]' 'L_5'

	ldloc	'x/0'
	ldc.i4	1
	call	uint32 'uShiftRight'(int32, int32)
	call	vararg void 'printf'(void*, ..., uint32)
// Line 261:	    printf("LSHIFT LOGICO: %d\n", x << 1);

	ldsflda	valuetype 'int8[]' 'L_6'

	ldloc	'x/0'
	ldc.i4	1
	shl
	call	vararg void 'printf'(void*, ..., int32)
// Line 262:	    printf("LSHIFT MATEMA: %d\n", shiftLeft(x, 1));

	ldsflda	valuetype 'int8[]' 'L_7'

	ldloc	'x/0'
	ldc.i4	1
	call	int32 'shiftLeft'(int32, int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 263:	    printf("OR LOGICO: %d\n", x | y);

	ldsflda	valuetype 'int8[]' 'L_8'

	ldloc	'x/0'
	ldloc	'y/1'
	or
	call	vararg void 'printf'(void*, ..., int32)
// Line 264:	    printf("OR MATEMA: %d\n", or(x, y));

	ldsflda	valuetype 'int8[]' 'L_9'

	ldloc	'x/0'
	ldloc	'y/1'
	call	int32 'or'(int32, int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 265:	    printf("AND LOGICO: %d\n", x & y);

	ldsflda	valuetype 'int8[]' 'L_10'

	ldloc	'x/0'
	ldloc	'y/1'
	and
	call	vararg void 'printf'(void*, ..., int32)
// Line 266:	    printf("AND MATEMA: %d\n", and(x, y));

	ldsflda	valuetype 'int8[]' 'L_11'

	ldloc	'x/0'
	ldloc	'y/1'
	call	int32 'and'(int32, int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 267:	

// Line 268:	    printf("Somar............: 20+20=%d\n", somar(20, 20));

	ldsflda	valuetype 'int8[]' 'L_12'

	ldc.i4	20
	ldc.i4	20
	call	int32 'somar'(int32, int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 269:	    printf("Subtrair.........: 30-10=%d\n", subtrair(30, 10));

	ldsflda	valuetype 'int8[]' 'L_13'

	ldc.i4	30
	ldc.i4	10
	call	int32 'subtrair'(int32, int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 270:	    printf("Negar............:   ~10=%d\n", negar(10));

	ldsflda	valuetype 'int8[]' 'L_14'

	ldc.i4	10
	call	int32 'negar'(int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 271:	    printf("Multiplicar......: 70*27=%d\n", multiplicar(70, 27));

	ldsflda	valuetype 'int8[]' 'L_15'

	ldc.i4	70
	ldc.i4	27
	call	int32 'multiplicar'(int32, int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 272:	    printf("Dividir(inteiros): 36/06=%d\n", dividir(36, 6));

	ldsflda	valuetype 'int8[]' 'L_16'

	ldc.i4	36
	ldc.i4	6
	call	int32 'dividir'(int32, int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 273:	    printf("Multiplicar por 2: 70*02=%d\n", multiplicar_por_dois(70));

	ldsflda	valuetype 'int8[]' 'L_17'

	ldc.i4	70
	call	int32 'multiplicar_por_dois'(int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 274:	    printf("Dividir por 2....: 40/02=%d\n\n", dividir_por_dois(40));

	ldsflda	valuetype 'int8[]' 'L_18'

	ldc.i4	40
	call	int32 'dividir_por_dois'(int32)
	call	vararg void 'printf'(void*, ..., int32)
// Line 275:	    incrementar(&incremento, 1);

	ldloca	'incremento/3'
	ldc.i4	1
	call	void 'incrementar'(void*, int32)
// Line 276:	    printf("Incrementar: 20+01=%d\n", incremento);

	ldsflda	valuetype 'int8[]' 'L_19'

	ldloc	'incremento/3'
	call	vararg void 'printf'(void*, ..., int32)
// Line 277:	    printf("7 eh impar.: %s\n", ehImpar(7) ? "true" : "false");

	ldsflda	valuetype 'int8[]' 'L_20'

	ldc.i4	7
	call	int32 'ehImpar'(int32)
	ldc.i4	0
	beq	'L_31'
	ldsflda	valuetype 'int8[]' 'L_21'

	br	'L_32'
L_31:
	ldsflda	valuetype 'int8[]' 'L_22'

L_32:
	call	vararg void 'printf'(void*, ..., void*)
// Line 278:	    printf("2 eh impar.: %s\n", ehImpar(2) ? "true" : "false");

	ldsflda	valuetype 'int8[]' 'L_23'

	ldc.i4	2
	call	int32 'ehImpar'(int32)
	ldc.i4	0
	beq	'L_33'
	ldsflda	valuetype 'int8[]' 'L_21'

	br	'L_34'
L_33:
	ldsflda	valuetype 'int8[]' 'L_22'

L_34:
	call	vararg void 'printf'(void*, ..., void*)
// Line 279:	    printf("8 eh par...: %s\n", ehPar(8) ? "true" : "false");

	ldsflda	valuetype 'int8[]' 'L_24'

	ldc.i4	8
	call	int32 'ehPar'(int32)
	ldc.i4	0
	beq	'L_35'
	ldsflda	valuetype 'int8[]' 'L_21'

	br	'L_36'
L_35:
	ldsflda	valuetype 'int8[]' 'L_22'

L_36:
	call	vararg void 'printf'(void*, ..., void*)
// Line 280:	    printf("7 eh par...: %s\n", ehPar(7) ? "true" : "false");

	ldsflda	valuetype 'int8[]' 'L_25'

	ldc.i4	7
	call	int32 'ehPar'(int32)
	ldc.i4	0
	beq	'L_37'
	ldsflda	valuetype 'int8[]' 'L_21'

	br	'L_38'
L_37:
	ldsflda	valuetype 'int8[]' 'L_22'

L_38:
	call	vararg void 'printf'(void*, ..., void*)
// Line 281:	

// Line 282:	    return 0;

	ldc.i4	0
// Line 283:	}

L_27:
	ret

}
 .method public hidebysig static int32 'xor'(int32 'a' , int32 'b' ) cil managed
{
// Line 5:	int xor(int a, int b)

// Line 6:	{

	.locals
	(
		[0] int32 'x/0',
		[1] int32 'c/1'
	)
	.maxstack	2
L_42:
// Line 7:	    int x;

// Line 8:	    int c = 0;

	ldloca	'c/1'
	ldc.i4	0
	stind.i4
	ldc.i4	0
	stloc	'x/0'
	br	'L_46'
L_45:
// Line 10:	    {

// Line 11:	        c += c;

	ldloc	'c/1'
	ldloc	'c/1'
	add
	stloc	'c/1'
// Line 12:	        if (a < 0)

	ldarg	'a'
	ldc.i4	0
	bge	'L_50'
// Line 13:	        {

// Line 14:	            if (b >= 0)

	ldarg	'b'
	ldc.i4	0
	blt	'L_56'
// Line 15:	            {

// Line 16:	                c += 1;

	ldloc	'c/1'
	ldc.i4	1
	add
	stloc	'c/1'
L_52:
// Line 17:	            }

	br	'L_56'
L_50:
// Line 18:	        }

// Line 19:	        else if (b < 0)

	ldarg	'b'
	ldc.i4	0
	bge	'L_57'
// Line 20:	        {

// Line 21:	            c += 1;

	ldloc	'c/1'
	ldc.i4	1
	add
	stloc	'c/1'
L_57:
L_56:
// Line 22:	        }

// Line 23:	        a += a;

	ldarg	'a'
	ldarg	'a'
	add
	starg	'a'
// Line 24:	        b += b;

	ldarg	'b'
	ldarg	'b'
	add
	starg	'b'
L_48:
	ldloc	'x/0'
	ldc.i4	1
	add
	stloc	'x/0'
// Line 9:	    for (x = 0; x <= 31; ++x)

L_46:
	ldloc	'x/0'
	ldc.i4	31
	ble	'L_45'
L_47:
// Line 25:	    }

// Line 26:	    return c;

	ldloc	'c/1'
// Line 27:	}

L_43:
	ret

}
 .method public hidebysig static int32 'and'(int32 'a' , int32 'b' ) cil managed
{
// Line 30:	int and(int a, int b)

// Line 31:	{

	.locals
	(
		[0] int32 'x/0',
		[1] int32 'c/1'
	)
	.maxstack	2
L_66:
// Line 32:	    int x;

// Line 33:	    int c = 0;

	ldloca	'c/1'
	ldc.i4	0
	stind.i4
	ldc.i4	0
	stloc	'x/0'
	br	'L_70'
L_69:
// Line 35:	    {

// Line 36:	        c += c;

	ldloc	'c/1'
	ldloc	'c/1'
	add
	stloc	'c/1'
// Line 37:	        if (a < 0)

	ldarg	'a'
	ldc.i4	0
	bge	'L_74'
// Line 38:	        {

// Line 39:	            if (b < 0)

	ldarg	'b'
	ldc.i4	0
	bge	'L_76'
// Line 40:	            {

// Line 41:	                c += 1;

	ldloc	'c/1'
	ldc.i4	1
	add
	stloc	'c/1'
L_76:
// Line 42:	            }

L_74:
// Line 43:	        }

// Line 44:	        a += a;

	ldarg	'a'
	ldarg	'a'
	add
	starg	'a'
// Line 45:	        b += b;

	ldarg	'b'
	ldarg	'b'
	add
	starg	'b'
L_72:
	ldloc	'x/0'
	ldc.i4	1
	add
	stloc	'x/0'
// Line 34:	    for (x = 0; x <= 31; ++x)

L_70:
	ldloc	'x/0'
	ldc.i4	31
	ble	'L_69'
L_71:
// Line 46:	    }

// Line 47:	    return c;

	ldloc	'c/1'
// Line 48:	}

L_67:
	ret

}
 .method public hidebysig static int32 'or'(int32 'a' , int32 'b' ) cil managed
{
// Line 51:	int or(int a, int b)

// Line 52:	{

	.locals
	(
		[0] int32 'x/0',
		[1] int32 'c/1'
	)
	.maxstack	2
L_86:
// Line 53:	    int x;

// Line 54:	    int c = 0;

	ldloca	'c/1'
	ldc.i4	0
	stind.i4
	ldc.i4	0
	stloc	'x/0'
	br	'L_90'
L_89:
// Line 56:	    {

// Line 57:	        c += c;

	ldloc	'c/1'
	ldloc	'c/1'
	add
	stloc	'c/1'
// Line 58:	        if (a < 0)

	ldarg	'a'
	ldc.i4	0
	bge	'L_94'
// Line 59:	        {

// Line 60:	            c += 1;

	ldloc	'c/1'
	ldc.i4	1
	add
	stloc	'c/1'
	br	'L_97'
L_94:
// Line 61:	        }

// Line 62:	        else if (b < 0)

	ldarg	'b'
	ldc.i4	0
	bge	'L_98'
// Line 63:	        {

// Line 64:	            c += 1;

	ldloc	'c/1'
	ldc.i4	1
	add
	stloc	'c/1'
L_98:
L_97:
// Line 65:	        }

// Line 66:	        a += a;

	ldarg	'a'
	ldarg	'a'
	add
	starg	'a'
// Line 67:	        b += b;

	ldarg	'b'
	ldarg	'b'
	add
	starg	'b'
L_92:
	ldloc	'x/0'
	ldc.i4	1
	add
	stloc	'x/0'
// Line 55:	    for (x = 0; x <= 31; ++x)

L_90:
	ldloc	'x/0'
	ldc.i4	31
	ble	'L_89'
L_91:
// Line 68:	    }

// Line 69:	    return c;

	ldloc	'c/1'
// Line 70:	}

L_87:
	ret

}
 .method public hidebysig static int32 'shiftRight'(int32 'a' , int32 'shift' ) cil managed
{
// Line 74:	int shiftRight(int a, int shift)

// Line 75:	{

	.maxstack	3
L_107:
// Line 76:	    if (shift >= 15)

	ldarg	'shift'
	ldc.i4	15
	blt	'L_110'
// Line 77:	    {

// Line 78:	        if (a < 0)

	ldarg	'a'
	ldc.i4	0
	bge	'L_112'
// Line 79:	        {

// Line 80:	            a = -1;

	ldc.i4	-1
	starg	'a'
	br	'L_119'
L_112:
// Line 81:	        }

// Line 82:	        else

// Line 83:	        {

// Line 84:	            a = 0;

	ldc.i4	0
	starg	'a'
L_115:
// Line 85:	        }

	br	'L_119'
L_110:
// Line 86:	    }

// Line 87:	    else if (shift > 0)

	ldarg	'shift'
	ldc.i4	0
	ble	'L_120'
// Line 88:	    {

// Line 89:	        if (a < 0)

	ldarg	'a'
	ldc.i4	0
	bge	'L_122'
// Line 90:	        {

// Line 91:	            a += -32768;

	ldarg	'a'
	ldc.i4	-32768
	add
	starg	'a'
// Line 92:	            a /= powtab[shift];

	ldarg	'a'
	ldarg	'shift'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[16]' 'powtab'

	add
	ldind.i4
	div
	starg	'a'
// Line 93:	            a -= powtab[15 - shift];

	ldarg	'shift'
	neg
	ldc.i4	15
	add
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[16]' 'powtab'

	add
	ldind.i4
	neg
	ldarg	'a'
	add
	starg	'a'
	br	'L_125'
L_122:
// Line 94:	        }

// Line 95:	        else

// Line 96:	        {

// Line 97:	            a /= powtab[shift];

	ldarg	'a'
	ldarg	'shift'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[16]' 'powtab'

	add
	ldind.i4
	div
	starg	'a'
L_125:
// Line 98:	        }

L_120:
L_119:
// Line 99:	    }

// Line 100:	    return a;

	ldarg	'a'
// Line 101:	}

L_108:
	ret

}
 .method public hidebysig static uint32 'uShiftRight'(int32 'a' , int32 'shift' ) cil managed
{
// Line 103:	unsigned int uShiftRight(int a, int shift)

// Line 104:	{

	.maxstack	3
L_134:
// Line 105:	    if (shift > 15)

	ldarg	'shift'
	ldc.i4	15
	ble	'L_137'
// Line 106:	    {

// Line 107:	        a = 0;

	ldc.i4	0
	starg	'a'
	br	'L_140'
L_137:
// Line 108:	    }

// Line 109:	    else if (shift > 0)

	ldarg	'shift'
	ldc.i4	0
	ble	'L_141'
// Line 110:	    {

// Line 111:	        if (a < 0)

	ldarg	'a'
	ldc.i4	0
	bge	'L_143'
// Line 112:	        {

// Line 113:	            a += -32768;

	ldarg	'a'
	ldc.i4	-32768
	add
	starg	'a'
// Line 114:	            a /= powtab[shift];

	ldarg	'a'
	ldarg	'shift'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[16]' 'powtab'

	add
	ldind.i4
	div
	starg	'a'
// Line 115:	            a += powtab[15 - shift];

	ldarg	'shift'
	neg
	ldc.i4	15
	add
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[16]' 'powtab'

	add
	ldind.i4
	ldarg	'a'
	add
	starg	'a'
	br	'L_146'
L_143:
// Line 116:	        }

// Line 117:	        else

// Line 118:	        {

// Line 119:	            a /= powtab[shift];

	ldarg	'a'
	ldarg	'shift'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[16]' 'powtab'

	add
	ldind.i4
	div
	starg	'a'
L_146:
// Line 120:	        }

L_141:
L_140:
// Line 121:	    }

// Line 122:	    return a;

	ldarg	'a'
	conv.u4
// Line 123:	}

L_135:
	ret

}
 .method public hidebysig static int32 'shiftLeft'(int32 'a' , int32 'shift' ) cil managed
{
// Line 126:	int shiftLeft(int a, int shift)

// Line 127:	{

	.maxstack	2
L_155:
// Line 128:	    if (shift > 15)

	ldarg	'shift'
	ldc.i4	15
	ble	'L_158'
// Line 129:	    {

// Line 130:	        a = 0;

	ldc.i4	0
	starg	'a'
	br	'L_161'
L_158:
// Line 131:	    }

// Line 132:	    else

// Line 133:	    {

// Line 134:	        a *= powtab[shift];

	ldarg	'shift'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[16]' 'powtab'

	add
	ldind.i4
	ldarg	'a'
	mul
	starg	'a'
L_161:
// Line 135:	    }

// Line 136:	    return a;

	ldarg	'a'
// Line 137:	}

L_156:
	ret

}
 .method public hidebysig static int32 'somar'(int32 'x' , int32 'y' ) cil managed
{
// Line 139:	int somar(int x, int y)

// Line 140:	{

	.locals
	(
		[0] int32 'carry/0'
	)
	.maxstack	2
L_169:
// Line 141:	    int carry = 0;

	ldloca	'carry/0'
	ldc.i4	0
	stind.i4
	br	'L_174'
L_172:
// Line 143:	    {

// Line 144:	        carry = and(x, y); 

	ldarg	'x'
	ldarg	'y'
	call	int32 'and'(int32, int32)
	stloc	'carry/0'
// Line 145:	        x = xor(x,y);         

	ldarg	'x'
	ldarg	'y'
	call	int32 'xor'(int32, int32)
	starg	'x'
// Line 146:	        y = shiftLeft(carry, 1);   

	ldloc	'carry/0'
	ldc.i4	1
	call	int32 'shiftLeft'(int32, int32)
	starg	'y'
L_174:
// Line 142:	    while (y != 0)

	ldarg	'y'
	ldc.i4	0
	bne.un	'L_172'
L_173:
// Line 147:	    }

// Line 148:	    return x;

	ldarg	'x'
// Line 149:	}

L_170:
	ret

}
 .method public hidebysig static void 'incrementar'(void* 'variable' , int32 'qnt' ) cil managed
{
// Line 151:	void incrementar(int *variable, int qnt)

// Line 152:	{

	.maxstack	3
L_182:
// Line 153:	    *variable = somar(*variable, qnt);

	ldarg	'variable'
	ldarg	'variable'
	ldind.i4
	ldarg	'qnt'
	call	int32 'somar'(int32, int32)
	stind.i4
// Line 154:	}

L_183:
	ret

}
 .method public hidebysig static int32 'negar'(int32 'x' ) cil managed
{
// Line 156:	int negar(int x)

// Line 157:	{

	.locals
	(
		[0] int32 'retVal/0'
	)
	.maxstack	2
L_190:
// Line 158:	    int retVal;

// Line 159:	    retVal = somar(~x, 1);

	ldarg	'x'
	not
	ldc.i4	1
	call	int32 'somar'(int32, int32)
	stloc	'retVal/0'
// Line 160:	    return retVal;

	ldloc	'retVal/0'
// Line 161:	}

L_191:
	ret

}
 .method public hidebysig static int32 'subtrair'(int32 'x' , int32 'y' ) cil managed
{
// Line 163:	int subtrair(int x, int y)

// Line 164:	{

	.locals
	(
		[0] int32 'retSub/0'
	)
	.maxstack	2
L_198:
// Line 165:	    int retSub = 0;

	ldloca	'retSub/0'
	ldc.i4	0
	stind.i4
// Line 166:	    retSub = somar(x, negar(y));

	ldarg	'x'
	ldarg	'y'
	call	int32 'negar'(int32)
	call	int32 'somar'(int32, int32)
	stloc	'retSub/0'
// Line 167:	    return retSub;

	ldloc	'retSub/0'
// Line 168:	}

L_199:
	ret

}
 .method public hidebysig static int32 'dividir_por_dois'(int32 'numero' ) cil managed
{
// Line 170:	int dividir_por_dois(int numero)

// Line 171:	{

	.locals
	(
		[0] int32 'resultado/0'
	)
	.maxstack	2
L_206:
// Line 172:	    int resultado;

// Line 173:	    resultado = shiftRight(numero,1);

	ldarg	'numero'
	ldc.i4	1
	call	int32 'shiftRight'(int32, int32)
	stloc	'resultado/0'
// Line 174:	    return resultado;

	ldloc	'resultado/0'
// Line 175:	}

L_207:
	ret

}
 .method public hidebysig static int32 'multiplicar_por_dois'(int32 'numero' ) cil managed
{
// Line 177:	int multiplicar_por_dois(int numero)

// Line 178:	{

	.locals
	(
		[0] int32 'resultado/0'
	)
	.maxstack	2
L_214:
// Line 179:	    int resultado;

// Line 180:	    resultado = shiftLeft(numero, 1);

	ldarg	'numero'
	ldc.i4	1
	call	int32 'shiftLeft'(int32, int32)
	stloc	'resultado/0'
// Line 181:	    return resultado;

	ldloc	'resultado/0'
// Line 182:	}

L_215:
	ret

}
 .method public hidebysig static int32 'ehPar'(int32 'x' ) cil managed
{
// Line 184:	int ehPar(int x)

// Line 185:	{

	.locals
	(
		[0] int32 'resultado/0'
	)
	.maxstack	3
L_222:
// Line 186:	    int resultado;

// Line 187:		resultado = !(x & 1);

	ldarg	'x'
	ldc.i4	1
	ldc.i4	0
	and
	ceq
	conv.i4
	stloc	'resultado/0'
// Line 188:	    return resultado;

	ldloc	'resultado/0'
// Line 189:	}

L_223:
	ret

}
 .method public hidebysig static int32 'ehImpar'(int32 'x' ) cil managed
{
// Line 191:	int ehImpar(int x)

// Line 192:	{

	.locals
	(
		[0] int32 'resultado/0'
	)
	.maxstack	2
L_230:
// Line 193:	    int resultado;

// Line 194:	    resultado = !(ehPar(x));

	ldarg	'x'
	call	int32 'ehPar'(int32)
	ldc.i4	0
	ceq
	conv.i4
	stloc	'resultado/0'
// Line 195:	    return resultado;

	ldloc	'resultado/0'
// Line 196:	}

L_231:
	ret

}
 .method public hidebysig static int32 'multiplicar'(int32 'x' , int32 'y' ) cil managed
{
// Line 198:	int multiplicar(int x, int y)

// Line 199:	{

	.locals
	(
		[0] int32 'produto/0'
	)
	.maxstack	4
L_238:
// Line 200:	    int produto = 0;

	ldloca	'produto/0'
	ldc.i4	0
	stind.i4
// Line 201:	    

// Line 202:	    if (x < 0 && y < 0)

	ldarg	'x'
	ldc.i4	0
	bge	'L_241'
	ldarg	'y'
	ldc.i4	0
	bge	'L_241'
// Line 203:	        return multiplicar(negar(x), negar(y));

	ldarg	'x'
	call	int32 'negar'(int32)
	ldarg	'y'
	call	int32 'negar'(int32)
	call	int32 'multiplicar'(int32, int32)
	br	'L_239'
L_241:
// Line 204:	

// Line 205:	    if (x >= 0 && y < 0)

	ldarg	'x'
	ldc.i4	0
	blt	'L_245'
	ldarg	'y'
	ldc.i4	0
	bge	'L_245'
// Line 206:	        return multiplicar(y, x);

	ldarg	'y'
	ldarg	'x'
	call	int32 'multiplicar'(int32, int32)
	br	'L_239'
L_242:
	br	'L_245'
L_243:
// Line 209:	    {

// Line 210:	        if (ehPar(y))

	ldarg	'y'
	call	int32 'ehPar'(int32)
	ldc.i4	0
	beq	'L_247'
// Line 211:	        {

// Line 212:	            x = multiplicar_por_dois(x);

	ldarg	'x'
	call	int32 'multiplicar_por_dois'(int32)
	starg	'x'
// Line 213:	            y = dividir_por_dois(y);

	ldarg	'y'
	call	int32 'dividir_por_dois'(int32)
	starg	'y'
	br	'L_250'
L_247:
// Line 214:	        }

// Line 215:	        else

// Line 216:	        {

// Line 217:	            produto = somar(produto, x);

	ldloc	'produto/0'
	ldarg	'x'
	call	int32 'somar'(int32, int32)
	stloc	'produto/0'
// Line 218:	            y = somar(y, -1);

	ldarg	'y'
	ldc.i4	-1
	call	int32 'somar'(int32, int32)
	starg	'y'
L_250:
// Line 219:	        }

L_245:
// Line 207:	

// Line 208:	    while (y > 0)

	ldarg	'y'
	ldc.i4	0
	bgt	'L_243'
L_244:
// Line 220:	    }

// Line 221:	    return produto;

	ldloc	'produto/0'
// Line 222:	}

L_239:
	ret

}
 .method public hidebysig static int32 'dividir'(int32 'dividendo' , int32 'divisor' ) cil managed
{
// Line 224:	int dividir(int dividendo, int divisor)

// Line 225:	{

	.locals
	(
		[0] int32 'temp/0',
		[1] int32 'quociente/1'
	)
	.maxstack	2
L_259:
// Line 226:	    int temp = 1;

	ldloca	'temp/0'
	ldc.i4	1
	stind.i4
// Line 227:	    int quociente = 0;

	ldloca	'quociente/1'
	ldc.i4	0
	stind.i4
// Line 228:	

	br	'L_264'
L_262:
// Line 230:	    {

// Line 231:	        divisor = shiftLeft(divisor, 1);

	ldarg	'divisor'
	ldc.i4	1
	call	int32 'shiftLeft'(int32, int32)
	starg	'divisor'
// Line 232:			temp = shiftLeft(temp,1);

	ldloc	'temp/0'
	ldc.i4	1
	call	int32 'shiftLeft'(int32, int32)
	stloc	'temp/0'
L_264:
// Line 229:	    while (divisor <= dividendo)

	ldarg	'divisor'
	ldarg	'dividendo'
	ble	'L_262'
L_263:
	br	'L_269'
L_267:
// Line 236:	    {

// Line 237:	        divisor = shiftRight(divisor, 1);

	ldarg	'divisor'
	ldc.i4	1
	call	int32 'shiftRight'(int32, int32)
	starg	'divisor'
// Line 238:			temp = shiftRight(temp, 1);

	ldloc	'temp/0'
	ldc.i4	1
	call	int32 'shiftRight'(int32, int32)
	stloc	'temp/0'
// Line 239:	

// Line 240:	        if (dividendo >= divisor)

	ldarg	'dividendo'
	ldarg	'divisor'
	blt	'L_271'
// Line 241:	        {

// Line 242:	            dividendo = subtrair(dividendo, divisor);

	ldarg	'dividendo'
	ldarg	'divisor'
	call	int32 'subtrair'(int32, int32)
	starg	'dividendo'
// Line 243:	            quociente = somar(quociente, temp);

	ldloc	'quociente/1'
	ldloc	'temp/0'
	call	int32 'somar'(int32, int32)
	stloc	'quociente/1'
L_271:
// Line 244:	        }

L_269:
// Line 233:	    }

// Line 234:	

// Line 235:	    while (temp > 1)

	ldloc	'temp/0'
	ldc.i4	1
	bgt	'L_267'
L_268:
// Line 245:	    }

// Line 246:	    return quociente;

	ldloc	'quociente/1'
// Line 247:	}

L_260:
	ret

}
 .field public static valuetype 'int32[16]' 'powtab' at $powtab
.data $powtab = bytearray (1 0 0 0 2 0 0 0 
	4 0 0 0 8 0 0 0 
	10 0 0 0 20 0 0 0 
	40 0 0 0 80 0 0 0 
	0 1 0 0 0 2 0 0 
	0 4 0 0 0 8 0 0 
	0 10 0 0 0 20 0 0 
	0 40 0 0 0 80 ff ff 
	
)
.field public static valuetype 'int8[]' 'L_25' at $L_25
.data $L_25 = bytearray (37 20 65 68 20 70 61 72 
	2e 2e 2e 3a 20 25 73 a 
	0 
)
.field public static valuetype 'int8[]' 'L_24' at $L_24
.data $L_24 = bytearray (38 20 65 68 20 70 61 72 
	2e 2e 2e 3a 20 25 73 a 
	0 
)
.field public static valuetype 'int8[]' 'L_23' at $L_23
.data $L_23 = bytearray (32 20 65 68 20 69 6d 70 
	61 72 2e 3a 20 25 73 a 
	0 
)
.field public static valuetype 'int8[]' 'L_22' at $L_22
.data $L_22 = bytearray (66 61 6c 73 65 0 
)
.field public static valuetype 'int8[]' 'L_21' at $L_21
.data $L_21 = bytearray (74 72 75 65 0 
)
.field public static valuetype 'int8[]' 'L_20' at $L_20
.data $L_20 = bytearray (37 20 65 68 20 69 6d 70 
	61 72 2e 3a 20 25 73 a 
	0 
)
.field public static valuetype 'int8[]' 'L_19' at $L_19
.data $L_19 = bytearray (49 6e 63 72 65 6d 65 6e 
	74 61 72 3a 20 32 30 2b 
	30 31 3d 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_18' at $L_18
.data $L_18 = bytearray (44 69 76 69 64 69 72 20 
	70 6f 72 20 32 2e 2e 2e 
	2e 3a 20 34 30 2f 30 32 
	3d 25 64 a a 0 
)
.field public static valuetype 'int8[]' 'L_17' at $L_17
.data $L_17 = bytearray (4d 75 6c 74 69 70 6c 69 
	63 61 72 20 70 6f 72 20 
	32 3a 20 37 30 2a 30 32 
	3d 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_16' at $L_16
.data $L_16 = bytearray (44 69 76 69 64 69 72 28 
	69 6e 74 65 69 72 6f 73 
	29 3a 20 33 36 2f 30 36 
	3d 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_15' at $L_15
.data $L_15 = bytearray (4d 75 6c 74 69 70 6c 69 
	63 61 72 2e 2e 2e 2e 2e 
	2e 3a 20 37 30 2a 32 37 
	3d 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_14' at $L_14
.data $L_14 = bytearray (4e 65 67 61 72 2e 2e 2e 
	2e 2e 2e 2e 2e 2e 2e 2e 
	2e 3a 20 20 20 7e 31 30 
	3d 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_13' at $L_13
.data $L_13 = bytearray (53 75 62 74 72 61 69 72 
	2e 2e 2e 2e 2e 2e 2e 2e 
	2e 3a 20 33 30 2d 31 30 
	3d 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_12' at $L_12
.data $L_12 = bytearray (53 6f 6d 61 72 2e 2e 2e 
	2e 2e 2e 2e 2e 2e 2e 2e 
	2e 3a 20 32 30 2b 32 30 
	3d 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_11' at $L_11
.data $L_11 = bytearray (41 4e 44 20 4d 41 54 45 
	4d 41 3a 20 25 64 a 0 
	
)
.field public static valuetype 'int8[]' 'L_10' at $L_10
.data $L_10 = bytearray (41 4e 44 20 4c 4f 47 49 
	43 4f 3a 20 25 64 a 0 
	
)
.field public static valuetype 'int8[]' 'L_9' at $L_9
.data $L_9 = bytearray (4f 52 20 4d 41 54 45 4d 
	41 3a 20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_8' at $L_8
.data $L_8 = bytearray (4f 52 20 4c 4f 47 49 43 
	4f 3a 20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_7' at $L_7
.data $L_7 = bytearray (4c 53 48 49 46 54 20 4d 
	41 54 45 4d 41 3a 20 25 
	64 a 0 
)
.field public static valuetype 'int8[]' 'L_6' at $L_6
.data $L_6 = bytearray (4c 53 48 49 46 54 20 4c 
	4f 47 49 43 4f 3a 20 25 
	64 a 0 
)
.field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (55 52 53 48 49 46 54 20 
	4d 41 54 45 4d 3a 20 25 
	64 a 0 
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (52 53 48 49 46 54 20 4d 
	41 54 45 4d 41 3a 20 25 
	64 a 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (52 53 48 49 46 54 20 4c 
	4f 47 49 43 4f 3a 20 25 
	64 a 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (58 4f 52 20 4d 41 54 45 
	4d 41 3a 20 25 64 5e 25 
	64 3d 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (58 4f 52 20 4c 4f 47 49 
	43 4f 3a 20 25 64 5e 25 
	64 3d 25 64 a 0 
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
.class private value explicit ansi sealed 'int32[16]' {.pack 1 .size 64}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg void 'printf'(void*) preservesig {}
