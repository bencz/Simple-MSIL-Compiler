//File pi.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 14:	int main(int argc, char **argv)

// Line 15:	{

	.locals
	(
		[0] int32 'casas/0',
		[1] valuetype 'int32[128000]' 'x/1',
		[2] int32 'xc/2'
	)
	.maxstack	4
L_3:
// Line 16:		int casas = argc == 2 ? atoi(argv[1]) : 1000;

	ldloca	'casas/0'
	ldarg	'argc'
	ldc.i4	2
	bne.un	'L_308'
	ldarg	'argv'
	ldc.i4	4
	add
	ldind.u4
	call	int32 'atoi'(void*)
	br	'L_309'
L_308:
	ldc.i4	1000
L_309:
	stind.i4
// Line 18:		int xc;

// Line 19:		memset(x, 0, ARRAY_SIZE);

	ldloca	'x/1'
	ldc.i4	0
	ldc.i4	128000
	conv.u4
	call	void* 'memset'(void*, int32, uint32)
	pop
// Line 20:	

// Line 21:		printf("Numero de casas: %d\n", casas);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	'casas/0'
	call	vararg void 'printf'(void*, ..., int32)
// Line 22:	

// Line 23:		xc = 0;

	ldc.i4	0
	stloc	'xc/2'
// Line 24:		xc++;

	ldc.i4	1
	stloc	'xc/2'
// Line 25:		x[xc] += casas;

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
// Line 27:		{

// Line 28:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 29:			x[xc]++;

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
// Line 30:			xc += 8;

	ldloc	'xc/2'
	ldc.i4	8
	add
	stloc	'xc/2'
// Line 31:			x[xc] += 10;

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
// Line 32:			xc -= 7;

	ldloc	'xc/2'
	ldc.i4	7
	sub
	stloc	'xc/2'
// Line 33:			x[xc]--;

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
// Line 26:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_6'
L_7:
// Line 34:		}

// Line 35:		xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 36:		x[xc] += 5;

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
// Line 38:		{

// Line 39:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 40:			x[xc] += 9;

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
// Line 41:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 42:			x[xc]--;

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
// Line 37:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_11'
L_12:
// Line 43:		}

// Line 44:		x[xc]++;

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
// Line 45:		xc += 6;

	ldloc	'xc/2'
	ldc.i4	6
	add
	stloc	'xc/2'
// Line 46:		x[xc]++;

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
// Line 48:		{

// Line 49:			xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 50:			x[xc] += 3;

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
// Line 52:			{

// Line 53:				xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_26'
L_24:
// Line 55:				{

// Line 56:					x[xc]--;

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
// Line 57:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
L_26:
// Line 54:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_24'
L_25:
// Line 58:				}

// Line 59:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_31'
L_29:
// Line 61:				{

// Line 62:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
L_31:
// Line 60:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_29'
L_30:
// Line 63:				}

// Line 64:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 65:				x[xc]--;

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
// Line 51:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_20'
L_21:
// Line 66:			}

// Line 67:			xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_37'
L_35:
// Line 69:			{

// Line 70:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 71:				x[xc]++;

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
// Line 72:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
L_37:
// Line 68:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_35'
L_36:
// Line 73:			}

// Line 74:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_42'
L_40:
// Line 76:			{

// Line 77:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
L_42:
// Line 75:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_40'
L_41:
// Line 78:			}

// Line 79:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
L_18:
// Line 47:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_16'
L_17:
// Line 80:		}

// Line 81:		xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_48'
L_46:
// Line 83:		{

	br	'L_52'
L_50:
// Line 85:			{

// Line 86:				x[xc]--;

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
// Line 87:				xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
// Line 88:				x[xc]++;

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
// Line 89:				xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
L_52:
// Line 84:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_50'
L_51:
// Line 90:			}

// Line 91:			xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
// Line 92:			x[xc] += 3;

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
// Line 93:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 94:			x[xc]--;

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
// Line 82:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_52'
L_47:
// Line 95:		}

// Line 96:		xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_58'
L_56:
// Line 98:		{

// Line 99:			xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
L_58:
// Line 97:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_56'
L_57:
// Line 100:		}

// Line 101:		xc -= 8;

	ldloc	'xc/2'
	ldc.i4	8
	sub
	stloc	'xc/2'
// Line 102:		x[xc]++;

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
// Line 104:		{

// Line 105:			x[xc]--;

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
// Line 106:			xc += 12;

	ldloc	'xc/2'
	ldc.i4	12
	add
	stloc	'xc/2'
	br	'L_67'
L_65:
// Line 108:			{

// Line 109:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 110:				x[xc]++;

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
// Line 112:				{

// Line 113:					x[xc]--;

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
// Line 114:					xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
// Line 115:					x[xc]++;

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
// Line 116:					xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
L_71:
// Line 111:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_69'
L_70:
// Line 117:				}

// Line 118:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 119:				xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
L_67:
// Line 107:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_65'
L_66:
// Line 120:			}

// Line 121:			xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
	br	'L_77'
L_75:
// Line 123:			{

// Line 124:				xc += 5;

	ldloc	'xc/2'
	ldc.i4	5
	add
	stloc	'xc/2'
	br	'L_81'
L_79:
// Line 126:				{

// Line 127:					xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
// Line 128:					x[xc]++;

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
// Line 129:					xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
// Line 130:					x[xc]--;

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
// Line 125:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_79'
L_80:
// Line 131:				}

// Line 132:				xc -= 5;

	ldloc	'xc/2'
	ldc.i4	5
	sub
	stloc	'xc/2'
// Line 133:				x[xc]--;

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
// Line 135:				{

// Line 136:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 137:					x[xc] += 10;

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
// Line 138:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 139:					x[xc]--;

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
// Line 134:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_84'
L_85:
// Line 140:				}

// Line 141:				xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
	br	'L_91'
L_89:
// Line 143:				{

// Line 144:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
	br	'L_95'
L_93:
// Line 146:					{

// Line 147:						xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 148:						x[xc]++;

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
// Line 149:						xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
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
// Line 151:						xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
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
L_95:
// Line 145:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_93'
L_94:
// Line 153:					}

// Line 154:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_100'
L_98:
// Line 156:					{

// Line 157:						xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 158:						x[xc]++;

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
// Line 159:						xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 160:						x[xc]--;

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
// Line 155:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_98'
L_99:
// Line 161:					}

// Line 162:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 163:					x[xc] += 2;

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
// Line 164:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 165:					x[xc]++;

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
// Line 166:					xc += 6;

	ldloc	'xc/2'
	ldc.i4	6
	add
	stloc	'xc/2'
// Line 167:					x[xc]--;

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
// Line 142:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_89'
L_90:
// Line 168:				}

// Line 169:				xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
	br	'L_106'
L_104:
// Line 171:				{

// Line 172:					x[xc]--;

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
// Line 170:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_104'
L_105:
// Line 173:				}

// Line 174:				xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 175:				x[xc]--;

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
// Line 176:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_111'
L_109:
// Line 178:				{

// Line 179:					x[xc]--;

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
// Line 180:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 181:					x[xc]++;

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
// Line 182:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 183:					x[xc]--;

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
// Line 185:					{

// Line 186:						xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
L_115:
// Line 184:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_113'
L_114:
// Line 187:					}

// Line 188:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_120'
L_118:
// Line 190:					{

	br	'L_124'
L_122:
// Line 192:						{

// Line 193:							xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 194:							x[xc]++;

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
// Line 195:							xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 196:							x[xc]--;

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
// Line 191:						while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_122'
L_123:
// Line 197:						}

// Line 198:						xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 199:						x[xc]++;

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
// Line 200:						xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
L_120:
// Line 189:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_124'
L_119:
// Line 201:					}

// Line 202:					xc -= 5;

	ldloc	'xc/2'
	ldc.i4	5
	sub
	stloc	'xc/2'
L_111:
// Line 177:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_109'
L_110:
// Line 203:				}

// Line 204:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_131'
L_129:
// Line 206:				{

// Line 207:					x[xc]--;

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
// Line 205:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_129'
L_130:
// Line 208:				}

// Line 209:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 210:				x[xc]++;

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
// Line 211:				xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 212:				x[xc]--;

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
// Line 214:				{

// Line 215:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 216:					x[xc]++;

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
// Line 217:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 218:					x[xc]--;

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
// Line 213:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_134'
L_135:
// Line 219:				}

// Line 220:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
L_77:
// Line 122:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_75'
L_76:
// Line 221:			}

// Line 222:			xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
// Line 223:			x[xc]++;

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
// Line 224:			xc += 7;

	ldloc	'xc/2'
	ldc.i4	7
	add
	stloc	'xc/2'
// Line 225:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_142'
L_140:
// Line 227:			{

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
L_142:
// Line 226:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_140'
L_141:
// Line 229:			}

// Line 230:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_147'
L_145:
// Line 232:			{

// Line 233:				xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 234:				x[xc]++;

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
// Line 235:				xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
// Line 236:				x[xc]--;

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
// Line 231:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_145'
L_146:
// Line 237:			}

// Line 238:			xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 239:			x[xc] += 10;

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
// Line 240:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_152'
L_150:
// Line 242:			{

// Line 243:				x[xc]--;

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
// Line 244:				xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 245:				x[xc]++;

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
// Line 246:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 247:				x[xc]--;

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
// Line 249:				{

// Line 250:					xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
L_156:
// Line 248:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_154'
L_155:
// Line 251:				}

// Line 252:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_161'
L_159:
// Line 254:				{

	br	'L_165'
L_163:
// Line 256:					{

// Line 257:						xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 258:						x[xc]++;

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
// Line 259:						xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 260:						x[xc]--;

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
// Line 255:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_163'
L_164:
// Line 261:					}

// Line 262:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 263:					x[xc]++;

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
// Line 264:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
L_161:
// Line 253:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_165'
L_160:
// Line 265:				}

// Line 266:				xc -= 5;

	ldloc	'xc/2'
	ldc.i4	5
	sub
	stloc	'xc/2'
L_152:
// Line 241:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_150'
L_151:
// Line 267:			}

// Line 268:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_172'
L_170:
// Line 270:			{

// Line 271:				x[xc]--;

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
// Line 269:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_170'
L_171:
// Line 272:			}

// Line 273:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 274:			x[xc]++;

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
// Line 275:			xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_177'
L_175:
// Line 277:			{

// Line 278:				xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 279:				x[xc]++;

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
// Line 280:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 281:				x[xc]++;

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
// Line 282:				xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
// Line 283:				x[xc]--;

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
// Line 276:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_175'
L_176:
// Line 284:			}

// Line 285:			xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 286:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 287:			x[xc]++;

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
// Line 288:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 289:			x[xc]++;

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
// Line 290:			xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_182'
L_180:
// Line 292:			{

// Line 293:				x[xc]--;

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
// Line 295:				{

// Line 296:					x[xc]--;

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
// Line 298:					{

// Line 299:						x[xc]--;

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
// Line 301:						{

// Line 302:							x[xc]--;

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
// Line 304:							{

// Line 305:								x[xc]--;

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
// Line 307:								{

// Line 308:									x[xc]--;

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
// Line 310:									{

// Line 311:										x[xc]--;

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
// Line 313:										{

// Line 314:											x[xc]--;

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
// Line 316:											{

// Line 317:												x[xc]--;

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
// Line 318:												xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 319:												x[xc]--;

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
// Line 320:												xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_218'
L_216:
// Line 322:												{

// Line 323:													x[xc]--;

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
// Line 324:													xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 325:													x[xc]++;

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
// Line 326:													xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 327:													x[xc]--;

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
// Line 328:													xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
L_218:
// Line 321:												while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_216'
L_217:
// Line 329:												}

L_214:
// Line 315:											while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_212'
L_213:
// Line 330:											}

L_210:
// Line 312:										while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_208'
L_209:
// Line 331:										}

L_206:
// Line 309:									while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_204'
L_205:
// Line 332:									}

L_202:
// Line 306:								while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_200'
L_201:
// Line 333:								}

L_198:
// Line 303:							while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_196'
L_197:
// Line 334:							}

L_194:
// Line 300:						while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_192'
L_193:
// Line 335:						}

L_190:
// Line 297:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_188'
L_189:
// Line 336:					}

L_186:
// Line 294:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_184'
L_185:
// Line 337:				}

L_182:
// Line 291:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_180'
L_181:
// Line 338:			}

// Line 339:			xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_232'
L_230:
// Line 341:			{

// Line 342:				x[xc] += 5;

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
// Line 344:				{

// Line 345:					xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 346:					x[xc] += 8;

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
// Line 347:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 348:					x[xc] += 8;

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
// Line 349:					xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
// Line 350:					x[xc]--;

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
// Line 343:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_234'
L_235:
// Line 351:				}

// Line 352:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 353:				xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 354:				x[xc]++;

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
// Line 355:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 356:				x[xc]--;

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
// Line 357:				xc += 4;

	ldloc	'xc/2'
	ldc.i4	4
	add
	stloc	'xc/2'
	br	'L_241'
L_239:
// Line 359:				{

// Line 360:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 361:					x[xc]++;

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
// Line 362:					xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
// Line 363:					x[xc] += 9;

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
// Line 364:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
// Line 365:					x[xc]--;

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
// Line 366:					xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
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
L_241:
// Line 358:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_239'
L_240:
// Line 368:				}

// Line 369:				xc -= 5;

	ldloc	'xc/2'
	ldc.i4	5
	sub
	stloc	'xc/2'
	br	'L_246'
L_244:
// Line 371:				{

// Line 372:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 373:					x[xc]++;

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
// Line 374:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
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
L_246:
// Line 370:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_244'
L_245:
// Line 376:				}

// Line 377:				x[xc]++;

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
// Line 378:				xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
	br	'L_251'
L_249:
// Line 380:				{

// Line 381:					x[xc]--;

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
// Line 382:					xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
// Line 383:					x[xc]--;

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
// Line 384:					xc--;

	ldloc	'xc/2'
	ldc.i4	1
	sub
	stloc	'xc/2'
L_251:
// Line 379:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_249'
L_250:
// Line 385:				}

// Line 386:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_256'
L_254:
// Line 388:				{

// Line 389:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 390:					putchar(x[xc]);

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	call	int32 'putchar'(int32)
	pop
// Line 391:					xc -= 4;

	ldloc	'xc/2'
	ldc.i4	4
	sub
	stloc	'xc/2'
	br	'L_260'
L_258:
// Line 393:					{

// Line 394:						x[xc]++;

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
// Line 395:						putchar(x[xc]);

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	call	int32 'putchar'(int32)
	pop
	br	'L_264'
L_262:
// Line 397:						{

// Line 398:							x[xc]--;

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
// Line 396:						while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_262'
L_263:
// Line 399:						}

L_260:
// Line 392:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_258'
L_259:
// Line 400:					}

// Line 401:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
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
L_256:
// Line 387:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_254'
L_255:
// Line 403:				}

// Line 404:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_271'
L_269:
// Line 406:				{

// Line 407:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
// Line 408:					putchar(x[xc]);

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	call	int32 'putchar'(int32)
	pop
// Line 409:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 410:					x[xc]--;

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
// Line 405:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_269'
L_270:
// Line 411:				}

// Line 412:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_276'
L_274:
// Line 414:				{

// Line 415:					x[xc]--;

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
// Line 413:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_274'
L_275:
// Line 416:				}

// Line 417:				xc++;

	ldloc	'xc/2'
	ldc.i4	1
	add
	stloc	'xc/2'
	br	'L_281'
L_279:
// Line 419:				{

// Line 420:					x[xc]--;

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
// Line 418:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_279'
L_280:
// Line 421:				}

// Line 422:				xc += 3;

	ldloc	'xc/2'
	ldc.i4	3
	add
	stloc	'xc/2'
	br	'L_286'
L_284:
// Line 424:				{

// Line 425:					xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_290'
L_288:
// Line 427:					{

// Line 428:						xc -= 8;

	ldloc	'xc/2'
	ldc.i4	8
	sub
	stloc	'xc/2'
// Line 429:						x[xc]++;

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
// Line 430:						xc += 8;

	ldloc	'xc/2'
	ldc.i4	8
	add
	stloc	'xc/2'
// Line 431:						x[xc]--;

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
// Line 426:					while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_288'
L_289:
// Line 432:					}

// Line 433:					xc -= 2;

	ldloc	'xc/2'
	ldc.i4	2
	sub
	stloc	'xc/2'
// Line 434:					x[xc]--;

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
// Line 423:				while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_284'
L_285:
// Line 435:				}

L_232:
// Line 340:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_230'
L_231:
// Line 436:			}

// Line 437:			xc += 2;

	ldloc	'xc/2'
	ldc.i4	2
	add
	stloc	'xc/2'
	br	'L_297'
L_295:
// Line 439:			{

// Line 440:				x[xc]--;

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
// Line 438:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_295'
L_296:
// Line 441:			}

// Line 442:			xc -= 3;

	ldloc	'xc/2'
	ldc.i4	3
	sub
	stloc	'xc/2'
	br	'L_302'
L_300:
// Line 444:			{

// Line 445:				x[xc]--;

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
// Line 443:			while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_300'
L_301:
// Line 446:			}

// Line 447:			xc -= 8;

	ldloc	'xc/2'
	ldc.i4	8
	sub
	stloc	'xc/2'
L_63:
// Line 103:		while (x[xc] != 0)

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_61'
L_62:
// Line 448:		}

// Line 449:		x[xc] += 10;

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
// Line 450:		putchar(x[xc]);

	ldloc	'xc/2'
	ldc.i4	2
	shl
	ldloca	'x/1'
	add
	ldind.i4
	call	int32 'putchar'(int32)
	pop
// Line 451:		printf("\n");

	ldsflda	valuetype 'int8[]' 'L_2'

	call	vararg void 'printf'(void*, ...)
// Line 452:	  return 0;

	ldc.i4	0
// Line 453:	}

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
.class private value explicit ansi sealed 'int32[128000]' {.pack 1 .size 512000}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'atoi'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'putchar'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'memset'(void*, int32, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg void 'printf'(void*) preservesig {}
