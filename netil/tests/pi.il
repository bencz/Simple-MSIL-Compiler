//File pi.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 6:	int main(int argc, char **argv)

// Line 7:	{

	.locals
	(
		[0] int32 'casas/0',
		[1] valuetype 'int32[128000]' 'x/1',
		[2] int32 'xc/2'
	)
	.maxstack	4
L_3:
// Line 8:		int casas = argc == 2 ? atoi(argv[1]) : 1000;

	ldloca	'casas/0'
	ldarg	'argc'
	ldc.i4	2
	bne.un	'L_308'
	ldarg	'argv'
	ldc.i4	4
	add
	ldind.u4
	call	int32 'atol'(void*)
	conv.i4
	br	'L_309'
L_308:
	ldc.i4	1000
L_309:
	stind.i4
// Line 10:		int xc;

// Line 11:		memset(x, 0, ARRAY_SIZE);

	ldloca	'x/1'
	ldc.i4	0
	ldc.i4	128000
	conv.u4
	call	void* 'memset'(void*, int32, uint32)
	pop
// Line 12:	

// Line 13:		printf("Numero de casas: %d\n", casas);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	'casas/0'
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 14:	

// Line 15:		xc = 0;

	ldc.i4	0
	stloc	'xc/2'
// Line 16:		xc++;

	ldc.i4	1
	stloc	'xc/2'
// Line 17:		x[xc] += casas;

	ldc.i4	1
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldc.i4	1
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldloc	'casas/0'
	add
	stind.i4
	br	'L_8'
L_6:
// Line 19:		{

// Line 20:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 21:			x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 22:			xc += 8;

	ldloc	'xc/2'
	ldc.i4	8
	add
	stloc	'xc/2'
// Line 23:			x[xc] += 10;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	10
	add
	stind.i4
// Line 24:			xc -= 7;

	ldloc	'xc/2'
	ldc.i4	7
	sub
	stloc	'xc/2'
// Line 25:			x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_8:
// Line 18:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_6'
L_7:
// Line 26:		}

// Line 27:		xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 28:		x[xc] += 5;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	5
	add
	stind.i4
	br	'L_13'
L_11:
// Line 30:		{

// Line 31:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 32:			x[xc] += 9;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	9
	add
	stind.i4
// Line 33:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 34:			x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_13:
// Line 29:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_11'
L_12:
// Line 35:		}

// Line 36:		x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 37:		xc += 6;

	ldloc	'xc/2'
	ldc.i4	6
	add
	stloc	'xc/2'
// Line 38:		x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_18'
L_16:
// Line 40:		{

// Line 41:			xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 42:			x[xc] += 3;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	3
	add
	stind.i4
	br	'L_22'
L_20:
// Line 44:			{

// Line 45:				xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_26'
L_24:
// Line 47:				{

// Line 48:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 49:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
L_26:
// Line 46:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_24'
L_25:
// Line 50:				}

// Line 51:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_31'
L_29:
// Line 53:				{

// Line 54:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
L_31:
// Line 52:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_29'
L_30:
// Line 55:				}

// Line 56:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 57:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_22:
// Line 43:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_20'
L_21:
// Line 58:			}

// Line 59:			xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_37'
L_35:
// Line 61:			{

// Line 62:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 63:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 64:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
L_37:
// Line 60:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_35'
L_36:
// Line 65:			}

// Line 66:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_42'
L_40:
// Line 68:			{

// Line 69:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
L_42:
// Line 67:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_40'
L_41:
// Line 70:			}

// Line 71:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
L_18:
// Line 39:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_16'
L_17:
// Line 72:		}

// Line 73:		xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_48'
L_46:
// Line 75:		{

	br	'L_52'
L_50:
// Line 77:			{

// Line 78:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 79:				xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
// Line 80:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 81:				xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
L_52:
// Line 76:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_50'
L_51:
// Line 82:			}

// Line 83:			xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
// Line 84:			x[xc] += 3;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	3
	add
	stind.i4
// Line 85:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 86:			x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_48:
// Line 74:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_52'
L_47:
// Line 87:		}

// Line 88:		xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_58'
L_56:
// Line 90:		{

// Line 91:			xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
L_58:
// Line 89:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_56'
L_57:
// Line 92:		}

// Line 93:		xc -= 8;

	ldloc	'xc/2'
	ldc.i4	8
	sub
	stloc	'xc/2'
// Line 94:		x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_63'
L_61:
// Line 96:		{

// Line 97:			x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 98:			xc += 12;

	ldloc	'xc/2'
	ldc.i4	12
	add
	stloc	'xc/2'
	br	'L_67'
L_65:
// Line 100:			{

// Line 101:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 102:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_71'
L_69:
// Line 104:				{

// Line 105:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 106:					xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
// Line 107:					x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 108:					xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
L_71:
// Line 103:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_69'
L_70:
// Line 109:				}

// Line 110:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 111:				xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
L_67:
// Line 99:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_65'
L_66:
// Line 112:			}

// Line 113:			xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
	br	'L_77'
L_75:
// Line 115:			{

// Line 116:				xc += 5;

	ldloc	'xc/2'
	ldc.i4	5
	add
	stloc	'xc/2'
	br	'L_81'
L_79:
// Line 118:				{

// Line 119:					xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
// Line 120:					x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 121:					xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
// Line 122:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_81:
// Line 117:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_79'
L_80:
// Line 123:				}

// Line 124:				xc -= 5;

	ldloc	'xc/2'
	ldc.i4	5
	sub
	stloc	'xc/2'
// Line 125:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_86'
L_84:
// Line 127:				{

// Line 128:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 129:					x[xc] += 10;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	10
	add
	stind.i4
// Line 130:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 131:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_86:
// Line 126:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_84'
L_85:
// Line 132:				}

// Line 133:				xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
	br	'L_91'
L_89:
// Line 135:				{

// Line 136:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
	br	'L_95'
L_93:
// Line 138:					{

// Line 139:						xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 140:						x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 141:						xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 142:						x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 143:						xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
// Line 144:						x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_95:
// Line 137:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_93'
L_94:
// Line 145:					}

// Line 146:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_100'
L_98:
// Line 148:					{

// Line 149:						xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 150:						x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 151:						xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 152:						x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_100:
// Line 147:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_98'
L_99:
// Line 153:					}

// Line 154:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 155:					x[xc] += 2;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	2
	add
	stind.i4
// Line 156:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 157:					x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 158:					xc += 6;

	ldloc	'xc/2'
	ldc.i4	6
	add
	stloc	'xc/2'
// Line 159:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_91:
// Line 134:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_89'
L_90:
// Line 160:				}

// Line 161:				xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
	br	'L_106'
L_104:
// Line 163:				{

// Line 164:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_106:
// Line 162:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_104'
L_105:
// Line 165:				}

// Line 166:				xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 167:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 168:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_111'
L_109:
// Line 170:				{

// Line 171:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 172:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 173:					x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 174:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 175:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_115'
L_113:
// Line 177:					{

// Line 178:						xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
L_115:
// Line 176:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_113'
L_114:
// Line 179:					}

// Line 180:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_120'
L_118:
// Line 182:					{

	br	'L_124'
L_122:
// Line 184:						{

// Line 185:							xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 186:							x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 187:							xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 188:							x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_124:
// Line 183:						while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_122'
L_123:
// Line 189:						}

// Line 190:						xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 191:						x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 192:						xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
L_120:
// Line 181:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_124'
L_119:
// Line 193:					}

// Line 194:					xc -= 5;

	ldloc	'xc/2'
	ldc.i4	5
	sub
	stloc	'xc/2'
L_111:
// Line 169:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_109'
L_110:
// Line 195:				}

// Line 196:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_131'
L_129:
// Line 198:				{

// Line 199:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_131:
// Line 197:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_129'
L_130:
// Line 200:				}

// Line 201:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 202:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 203:				xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 204:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_136'
L_134:
// Line 206:				{

// Line 207:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 208:					x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 209:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 210:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_136:
// Line 205:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_134'
L_135:
// Line 211:				}

// Line 212:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
L_77:
// Line 114:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_75'
L_76:
// Line 213:			}

// Line 214:			xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
// Line 215:			x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 216:			xc += 7;

	ldloc	'xc/2'
	ldc.i4	7
	add
	stloc	'xc/2'
// Line 217:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_142'
L_140:
// Line 219:			{

// Line 220:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_142:
// Line 218:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_140'
L_141:
// Line 221:			}

// Line 222:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_147'
L_145:
// Line 224:			{

// Line 225:				xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 226:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 227:				xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
// Line 228:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_147:
// Line 223:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_145'
L_146:
// Line 229:			}

// Line 230:			xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 231:			x[xc] += 10;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	10
	add
	stind.i4
// Line 232:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_152'
L_150:
// Line 234:			{

// Line 235:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 236:				xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 237:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 238:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 239:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_156'
L_154:
// Line 241:				{

// Line 242:					xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
L_156:
// Line 240:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_154'
L_155:
// Line 243:				}

// Line 244:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_161'
L_159:
// Line 246:				{

	br	'L_165'
L_163:
// Line 248:					{

// Line 249:						xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 250:						x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 251:						xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 252:						x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_165:
// Line 247:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_163'
L_164:
// Line 253:					}

// Line 254:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 255:					x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 256:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
L_161:
// Line 245:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_165'
L_160:
// Line 257:				}

// Line 258:				xc -= 5;

	ldloc	'xc/2'
	ldc.i4	5
	sub
	stloc	'xc/2'
L_152:
// Line 233:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_150'
L_151:
// Line 259:			}

// Line 260:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_172'
L_170:
// Line 262:			{

// Line 263:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_172:
// Line 261:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_170'
L_171:
// Line 264:			}

// Line 265:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 266:			x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 267:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_177'
L_175:
// Line 269:			{

// Line 270:				xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 271:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 272:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 273:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 274:				xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
// Line 275:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_177:
// Line 268:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_175'
L_176:
// Line 276:			}

// Line 277:			xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 278:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 279:			x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 280:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 281:			x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 282:			xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_182'
L_180:
// Line 284:			{

// Line 285:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_186'
L_184:
// Line 287:				{

// Line 288:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_190'
L_188:
// Line 290:					{

// Line 291:						x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_194'
L_192:
// Line 293:						{

// Line 294:							x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_198'
L_196:
// Line 296:							{

// Line 297:								x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_202'
L_200:
// Line 299:								{

// Line 300:									x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_206'
L_204:
// Line 302:									{

// Line 303:										x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_210'
L_208:
// Line 305:										{

// Line 306:											x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_214'
L_212:
// Line 308:											{

// Line 309:												x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 310:												xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 311:												x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 312:												xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_218'
L_216:
// Line 314:												{

// Line 315:													x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 316:													xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 317:													x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 318:													xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 319:													x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 320:													xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
L_218:
// Line 313:												while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_216'
L_217:
// Line 321:												}

L_214:
// Line 307:											while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_212'
L_213:
// Line 322:											}

L_210:
// Line 304:										while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_208'
L_209:
// Line 323:										}

L_206:
// Line 301:									while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_204'
L_205:
// Line 324:									}

L_202:
// Line 298:								while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_200'
L_201:
// Line 325:								}

L_198:
// Line 295:							while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_196'
L_197:
// Line 326:							}

L_194:
// Line 292:						while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_192'
L_193:
// Line 327:						}

L_190:
// Line 289:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_188'
L_189:
// Line 328:					}

L_186:
// Line 286:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_184'
L_185:
// Line 329:				}

L_182:
// Line 283:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_180'
L_181:
// Line 330:			}

// Line 331:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_232'
L_230:
// Line 333:			{

// Line 334:				x[xc] += 5;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	5
	add
	stind.i4
	br	'L_236'
L_234:
// Line 336:				{

// Line 337:					xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 338:					x[xc] += 8;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	8
	add
	stind.i4
// Line 339:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 340:					x[xc] += 8;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	8
	add
	stind.i4
// Line 341:					xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
// Line 342:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_236:
// Line 335:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_234'
L_235:
// Line 343:				}

// Line 344:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 345:				xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 346:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 347:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 348:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 349:				xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
	br	'L_241'
L_239:
// Line 351:				{

// Line 352:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 353:					x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 354:					xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 355:					x[xc] += 9;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	9
	add
	stind.i4
// Line 356:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 357:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 358:					xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
// Line 359:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_241:
// Line 350:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_239'
L_240:
// Line 360:				}

// Line 361:				xc -= 5;

	ldloc	'xc/2'
	ldc.i4	5
	sub
	stloc	'xc/2'
	br	'L_246'
L_244:
// Line 363:				{

// Line 364:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 365:					x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 366:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 367:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_246:
// Line 362:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_244'
L_245:
// Line 368:				}

// Line 369:				x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 370:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_251'
L_249:
// Line 372:				{

// Line 373:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 374:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 375:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 376:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
L_251:
// Line 371:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_249'
L_250:
// Line 377:				}

// Line 378:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_256'
L_254:
// Line 380:				{

// Line 381:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 382:					putchar(x[xc]);

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldsfld	void* '__stdout'

	call	int32 'fputc'(int32, void*)
	pop
// Line 383:					xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
	br	'L_260'
L_258:
// Line 385:					{

// Line 386:						x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 387:						putchar(x[xc]);

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldsfld	void* '__stdout'

	call	int32 'fputc'(int32, void*)
	pop
	br	'L_264'
L_262:
// Line 389:						{

// Line 390:							x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_264:
// Line 388:						while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_262'
L_263:
// Line 391:						}

L_260:
// Line 384:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_258'
L_259:
// Line 392:					}

// Line 393:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 394:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_256:
// Line 379:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_254'
L_255:
// Line 395:				}

// Line 396:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_271'
L_269:
// Line 398:				{

// Line 399:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 400:					putchar(x[xc]);

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldsfld	void* '__stdout'

	call	int32 'fputc'(int32, void*)
	pop
// Line 401:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 402:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_271:
// Line 397:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_269'
L_270:
// Line 403:				}

// Line 404:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_276'
L_274:
// Line 406:				{

// Line 407:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_276:
// Line 405:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_274'
L_275:
// Line 408:				}

// Line 409:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_281'
L_279:
// Line 411:				{

// Line 412:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_281:
// Line 410:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_279'
L_280:
// Line 413:				}

// Line 414:				xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
	br	'L_286'
L_284:
// Line 416:				{

// Line 417:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_290'
L_288:
// Line 419:					{

// Line 420:						xc -= 8;

	ldloc	'xc/2'
	ldc.i4	8
	sub
	stloc	'xc/2'
// Line 421:						x[xc]++;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 422:						xc += 8;

	ldloc	'xc/2'
	ldc.i4	8
	add
	stloc	'xc/2'
// Line 423:						x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_290:
// Line 418:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_288'
L_289:
// Line 424:					}

// Line 425:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 426:					x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_286:
// Line 415:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_284'
L_285:
// Line 427:				}

L_232:
// Line 332:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_230'
L_231:
// Line 428:			}

// Line 429:			xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_297'
L_295:
// Line 431:			{

// Line 432:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_297:
// Line 430:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_295'
L_296:
// Line 433:			}

// Line 434:			xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
	br	'L_302'
L_300:
// Line 436:			{

// Line 437:				x[xc]--;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_302:
// Line 435:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_300'
L_301:
// Line 438:			}

// Line 439:			xc -= 8;

	ldloc	'xc/2'
	ldc.i4	8
	sub
	stloc	'xc/2'
L_63:
// Line 95:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_61'
L_62:
// Line 440:		}

// Line 441:		x[xc] += 10;

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	10
	add
	stind.i4
// Line 442:		putchar(x[xc]);

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldsfld	void* '__stdout'

	call	int32 'fputc'(int32, void*)
	pop
// Line 443:		printf("\n");

	ldsflda	valuetype 'int8[]' 'L_2'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 444:	  return 0;

	ldc.i4	0
// Line 445:	}

L_4:
	ret

}
 .field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (a 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (4e 75 6d 65 72 6f 20 64 
	65 20 63 61 73 61 73 3a 
	20 25 64 a 0 
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
.class private value explicit ansi sealed 'int32[128000]' {.pack 1 .size 512000}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'memset'(void*, int32, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'atol'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fputc'(int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
