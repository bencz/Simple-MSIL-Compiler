//File gr.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 29:	int main()

// Line 30:	{

	.locals
	(
		[0] valuetype 'int32[32768]' 'x/0',
		[1] int32 'xc/1'
	)
	.maxstack	3
L_2:
// Line 32:		int xc;

	ldc.i4	0
	stloc	'xc/1'
	br	'L_6'
L_5:
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldc.i4	0
	stind.i4
L_8:
	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 33:		for(xc = 0; xc < 32768; xc++) x[xc] = 0;

L_6:
	ldloc	'xc/1'
	ldc.i4	32768
	blt	'L_5'
L_7:
// Line 34:		xc=0;

	ldc.i4	0
	stloc	'xc/1'
// Line 35:		x[xc]+=6;

	ldc.i4	0
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldc.i4	0
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	6
	add
	stind.i4
	br	'L_11'
L_9:
// Line 37:		{

// Line 38:			xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 39:			x[xc]+=8;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	8
	add
	stind.i4
// Line 40:			xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 41:			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_11:
// Line 36:		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_9'
L_10:
// Line 42:		}

// Line 43:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 44:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 45:		putchar(x[xc]);

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldsfld	void* '__stdout'

	call	int32 'fputc'(int32, void*)
	pop
// Line 46:		x[xc]-=3;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	3
	sub
	stind.i4
// Line 47:		putchar(x[xc]);

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldsfld	void* '__stdout'

	call	int32 'fputc'(int32, void*)
	pop
// Line 48:		xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 49:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 50:		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 51:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 52:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 53:		x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	2
	add
	stind.i4
// Line 54:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 55:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 56:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 57:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 58:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 59:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 60:		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 61:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 62:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 63:		x[xc]+=3;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	3
	add
	stind.i4
// Line 64:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 65:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 66:		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 67:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 68:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 69:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 70:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 71:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 72:		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 73:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 74:		xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 75:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 76:		xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 77:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 78:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 79:		x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	2
	add
	stind.i4
// Line 80:		xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 81:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 82:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 83:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 84:		xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_16'
L_14:
// Line 86:		{

	br	'L_20'
L_18:
// Line 88:			{

// Line 89:				xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_20:
// Line 87:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_18'
L_19:
// Line 90:			}

// Line 91:			xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_25'
L_23:
// Line 93:			{

// Line 94:				xc+=8;

	ldloc	'xc/1'
	ldc.i4	8
	add
	stloc	'xc/1'
// Line 95:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 96:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 97:				xc-=8;

	ldloc	'xc/1'
	ldc.i4	8
	sub
	stloc	'xc/1'
	br	'L_29'
L_27:
// Line 99:				{

// Line 100:					xc+=9;

	ldloc	'xc/1'
	ldc.i4	9
	add
	stloc	'xc/1'
// Line 101:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 102:					xc-=9;

	ldloc	'xc/1'
	ldc.i4	9
	sub
	stloc	'xc/1'
// Line 103:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_29:
// Line 98:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_27'
L_28:
// Line 104:				}

// Line 105:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 106:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 107:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_25:
// Line 92:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_23'
L_24:
// Line 108:			}

// Line 109:			xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
// Line 110:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 111:			xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 112:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_35'
L_33:
// Line 114:			{

// Line 115:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_35:
// Line 113:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_33'
L_34:
// Line 116:			}

// Line 117:			xc-=5;

	ldloc	'xc/1'
	ldc.i4	5
	sub
	stloc	'xc/1'
	br	'L_40'
L_38:
// Line 119:			{

// Line 120:				xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 121:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 122:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_44'
L_42:
// Line 124:				{

// Line 125:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 126:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 127:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 128:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_44:
// Line 123:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_42'
L_43:
// Line 129:				}

// Line 130:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 131:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 132:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_40:
// Line 118:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_38'
L_39:
// Line 133:			}

// Line 134:			xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 135:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 136:			xc-=8;

	ldloc	'xc/1'
	ldc.i4	8
	sub
	stloc	'xc/1'
	br	'L_50'
L_48:
// Line 138:			{

// Line 139:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_50:
// Line 137:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_48'
L_49:
// Line 140:			}

// Line 141:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 142:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_55'
L_53:
// Line 144:			{

// Line 145:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 146:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_59'
L_57:
// Line 148:				{

// Line 149:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 150:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 151:					xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_63'
L_61:
// Line 153:					{

// Line 154:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_63:
// Line 152:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_61'
L_62:
// Line 155:					}

// Line 156:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 157:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 158:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_68'
L_66:
// Line 160:					{

// Line 161:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_68:
// Line 159:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_66'
L_67:
// Line 162:					}

// Line 163:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 164:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_59:
// Line 147:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_57'
L_58:
// Line 165:				}

// Line 166:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 167:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_74'
L_72:
// Line 169:				{

// Line 170:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 171:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 172:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 173:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_74:
// Line 168:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_72'
L_73:
// Line 174:				}

// Line 175:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 176:				xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_79'
L_77:
// Line 178:				{

// Line 179:					xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_79:
// Line 177:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_77'
L_78:
// Line 180:				}

// Line 181:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 182:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_84'
L_82:
// Line 184:				{

// Line 185:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_88'
L_86:
// Line 187:					{

// Line 188:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_92'
L_90:
// Line 190:						{

// Line 191:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 192:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 193:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 194:							xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
	br	'L_96'
L_94:
// Line 196:							{

	br	'L_100'
L_98:
// Line 198:								{

// Line 199:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_100:
// Line 197:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_98'
L_99:
// Line 200:								}

// Line 201:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_96:
// Line 195:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_100'
L_95:
// Line 202:							}

// Line 203:							xc-=5;

	ldloc	'xc/1'
	ldc.i4	5
	sub
	stloc	'xc/1'
	br	'L_106'
L_104:
// Line 205:							{

// Line 206:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 207:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 208:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 209:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 210:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_106:
// Line 204:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_104'
L_105:
// Line 211:							}

// Line 212:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_111'
L_109:
// Line 214:							{

// Line 215:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_111:
// Line 213:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_109'
L_110:
// Line 216:							}

// Line 217:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 218:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_116'
L_114:
// Line 220:							{

// Line 221:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 222:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_120'
L_118:
// Line 224:								{

// Line 225:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_120:
// Line 223:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_118'
L_119:
// Line 226:								}

// Line 227:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_125'
L_123:
// Line 229:								{

// Line 230:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_125:
// Line 228:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_123'
L_124:
// Line 231:								}

// Line 232:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_130'
L_128:
// Line 234:								{

// Line 235:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_130:
// Line 233:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_128'
L_129:
// Line 236:								}

// Line 237:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_135'
L_133:
// Line 239:								{

// Line 240:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_135:
// Line 238:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_133'
L_134:
// Line 241:								}

// Line 242:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 243:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_116:
// Line 219:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_114'
L_115:
// Line 244:							}

// Line 245:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_141'
L_139:
// Line 247:							{

// Line 248:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_145'
L_143:
// Line 250:								{

// Line 251:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_145:
// Line 249:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_143'
L_144:
// Line 252:								}

// Line 253:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 254:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 255:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 256:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 257:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_141:
// Line 246:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_139'
L_140:
// Line 258:							}

// Line 259:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_151'
L_149:
// Line 261:							{

// Line 262:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_151:
// Line 260:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_149'
L_150:
// Line 263:							}

// Line 264:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_156'
L_154:
// Line 266:							{

// Line 267:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 268:								x[xc]+=9;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	9
	add
	stind.i4
// Line 269:								xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
L_156:
// Line 265:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_154'
L_155:
// Line 270:							}

// Line 271:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_161'
L_159:
// Line 273:							{

// Line 274:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_161:
// Line 272:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_159'
L_160:
// Line 275:							}

// Line 276:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_166'
L_164:
// Line 278:							{

// Line 279:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 280:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_170'
L_168:
// Line 282:								{

// Line 283:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 284:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 285:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 286:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 287:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 288:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_170:
// Line 281:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_168'
L_169:
// Line 289:								}

// Line 290:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_175'
L_173:
// Line 292:								{

// Line 293:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 294:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 295:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 296:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_175:
// Line 291:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_173'
L_174:
// Line 297:								}

// Line 298:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_180'
L_178:
// Line 300:								{

// Line 301:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_184'
L_182:
// Line 303:									{

// Line 304:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_184:
// Line 302:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_182'
L_183:
// Line 305:									}

// Line 306:									xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_189'
L_187:
// Line 308:									{

// Line 309:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_189:
// Line 307:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_187'
L_188:
// Line 310:									}

// Line 311:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 312:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 313:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_194'
L_192:
// Line 315:									{

// Line 316:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_194:
// Line 314:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_192'
L_193:
// Line 317:									}

// Line 318:									xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_199'
L_197:
// Line 320:									{

// Line 321:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_199:
// Line 319:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_197'
L_198:
// Line 322:									}

// Line 323:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 324:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_180:
// Line 299:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_178'
L_179:
// Line 325:								}

// Line 326:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_205'
L_203:
// Line 328:								{

// Line 329:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 330:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_205:
// Line 327:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_203'
L_204:
// Line 331:								}

// Line 332:								xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_210'
L_208:
// Line 334:								{

// Line 335:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_210:
// Line 333:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_208'
L_209:
// Line 336:								}

// Line 337:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_215'
L_213:
// Line 339:								{

// Line 340:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_215:
// Line 338:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_213'
L_214:
// Line 341:								}

// Line 342:								xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_220'
L_218:
// Line 344:								{

// Line 345:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_220:
// Line 343:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_218'
L_219:
// Line 346:								}

// Line 347:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_225'
L_223:
// Line 349:								{

// Line 350:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 351:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 352:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 353:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_225:
// Line 348:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_223'
L_224:
// Line 354:								}

// Line 355:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 356:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 357:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_166:
// Line 277:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_164'
L_165:
// Line 358:							}

// Line 359:							xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_231'
L_229:
// Line 361:							{

// Line 362:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 363:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_231:
// Line 360:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_229'
L_230:
// Line 364:							}

// Line 365:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_236'
L_234:
// Line 367:							{

// Line 368:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_236:
// Line 366:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_234'
L_235:
// Line 369:							}

// Line 370:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_241'
L_239:
// Line 372:							{

// Line 373:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_245'
L_243:
// Line 375:								{

// Line 376:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_249'
L_247:
// Line 378:									{

// Line 379:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_253'
L_251:
// Line 381:										{

// Line 382:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_257'
L_255:
// Line 384:											{

// Line 385:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_261'
L_259:
// Line 387:												{

// Line 388:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_265'
L_263:
// Line 390:													{

// Line 391:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_269'
L_267:
// Line 393:														{

// Line 394:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_273'
L_271:
// Line 396:															{

// Line 397:																x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_277'
L_275:
// Line 399:																{

// Line 400:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 401:																	xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 402:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 403:																	xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_281'
L_279:
// Line 405:																	{

// Line 406:																		xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 407:																		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 408:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_285'
L_283:
// Line 410:																		{

// Line 411:																			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_285:
// Line 409:																		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_283'
L_284:
// Line 412:																		}

// Line 413:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 414:																		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 415:																		xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_281:
// Line 404:																	while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_279'
L_280:
// Line 416:																	}

L_277:
// Line 398:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_275'
L_276:
// Line 417:																}

L_273:
// Line 395:															while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_271'
L_272:
// Line 418:															}

L_269:
// Line 392:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_267'
L_268:
// Line 419:														}

L_265:
// Line 389:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_263'
L_264:
// Line 420:													}

L_261:
// Line 386:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_259'
L_260:
// Line 421:												}

L_257:
// Line 383:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_255'
L_256:
// Line 422:											}

L_253:
// Line 380:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_251'
L_252:
// Line 423:										}

L_249:
// Line 377:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_247'
L_248:
// Line 424:									}

L_245:
// Line 374:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_243'
L_244:
// Line 425:								}

// Line 426:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_300'
L_298:
// Line 428:								{

	br	'L_304'
L_302:
// Line 430:									{

// Line 431:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_308'
L_306:
// Line 433:										{

// Line 434:											xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 435:											x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 436:											xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 437:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_308:
// Line 432:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_306'
L_307:
// Line 438:										}

// Line 439:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_313'
L_311:
// Line 441:										{

// Line 442:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_313:
// Line 440:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_311'
L_312:
// Line 443:										}

// Line 444:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 445:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 446:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_304:
// Line 429:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_302'
L_303:
// Line 447:									}

// Line 448:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_300:
// Line 427:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_304'
L_299:
// Line 449:								}

// Line 450:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_241:
// Line 371:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_239'
L_240:
// Line 451:							}

// Line 452:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 453:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 454:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_321'
L_319:
// Line 456:							{

// Line 457:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 458:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 459:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 460:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_325'
L_323:
// Line 462:								{

	br	'L_329'
L_327:
// Line 464:									{

// Line 465:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 466:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_329:
// Line 463:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_327'
L_328:
// Line 467:									}

// Line 468:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_325:
// Line 461:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_329'
L_324:
// Line 469:								}

// Line 470:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_335'
L_333:
// Line 472:								{

// Line 473:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_335:
// Line 471:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_333'
L_334:
// Line 474:								}

// Line 475:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 476:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 477:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 478:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_340'
L_338:
// Line 480:								{

// Line 481:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_340:
// Line 479:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_338'
L_339:
// Line 482:								}

// Line 483:								xc+=7;

	ldloc	'xc/1'
	ldc.i4	7
	add
	stloc	'xc/1'
// Line 484:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 485:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_345'
L_343:
// Line 487:								{

	br	'L_349'
L_347:
// Line 489:									{

// Line 490:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_349:
// Line 488:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_347'
L_348:
// Line 491:									}

// Line 492:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_345:
// Line 486:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_349'
L_344:
// Line 493:								}

// Line 494:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_321:
// Line 455:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_319'
L_320:
// Line 495:							}

// Line 496:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_356'
L_354:
// Line 498:							{

// Line 499:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 500:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_360'
L_358:
// Line 502:								{

	br	'L_364'
L_362:
// Line 504:									{

// Line 505:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_364:
// Line 503:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_362'
L_363:
// Line 506:									}

// Line 507:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_360:
// Line 501:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_364'
L_359:
// Line 508:								}

// Line 509:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_370'
L_368:
// Line 511:								{

// Line 512:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_370:
// Line 510:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_368'
L_369:
// Line 513:								}

// Line 514:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_375'
L_373:
// Line 516:								{

// Line 517:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_375:
// Line 515:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_373'
L_374:
// Line 518:								}

// Line 519:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 520:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 521:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_380'
L_378:
// Line 523:								{

// Line 524:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_380:
// Line 522:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_378'
L_379:
// Line 525:								}

// Line 526:								xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
	br	'L_385'
L_383:
// Line 528:								{

	br	'L_389'
L_387:
// Line 530:									{

// Line 531:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_389:
// Line 529:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_387'
L_388:
// Line 532:									}

// Line 533:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_385:
// Line 527:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_389'
L_384:
// Line 534:								}

// Line 535:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_356:
// Line 497:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_354'
L_355:
// Line 536:							}

// Line 537:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_396'
L_394:
// Line 539:							{

	br	'L_400'
L_398:
// Line 541:								{

// Line 542:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_400:
// Line 540:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_398'
L_399:
// Line 543:								}

// Line 544:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_396:
// Line 538:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_400'
L_395:
// Line 545:							}

L_92:
// Line 189:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_90'
L_91:
// Line 546:						}

// Line 547:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_407'
L_405:
// Line 549:						{

// Line 550:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 551:							xc+=7;

	ldloc	'xc/1'
	ldc.i4	7
	add
	stloc	'xc/1'
// Line 552:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_411'
L_409:
// Line 554:							{

// Line 555:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 556:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 557:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 558:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 559:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 560:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_411:
// Line 553:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_409'
L_410:
// Line 561:							}

// Line 562:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 563:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_416'
L_414:
// Line 565:							{

// Line 566:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 567:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 568:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 569:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_416:
// Line 564:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_414'
L_415:
// Line 570:							}

// Line 571:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 572:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_421'
L_419:
// Line 574:							{

// Line 575:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_425'
L_423:
// Line 577:								{

// Line 578:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_429'
L_427:
// Line 580:									{

// Line 581:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_433'
L_431:
// Line 583:										{

// Line 584:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_437'
L_435:
// Line 586:											{

// Line 587:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_441'
L_439:
// Line 589:												{

// Line 590:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_445'
L_443:
// Line 592:													{

// Line 593:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_449'
L_447:
// Line 595:														{

// Line 596:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_453'
L_451:
// Line 598:															{

// Line 599:																x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_457'
L_455:
// Line 601:																{

// Line 602:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 603:																	xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 604:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 605:																	xc-=9;

	ldloc	'xc/1'
	ldc.i4	9
	sub
	stloc	'xc/1'
	br	'L_461'
L_459:
// Line 607:																	{

// Line 608:																		xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_461:
// Line 606:																	while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_459'
L_460:
// Line 609:																	}

// Line 610:																	x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 611:																	xc+=8;

	ldloc	'xc/1'
	ldc.i4	8
	add
	stloc	'xc/1'
// Line 612:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 613:																	xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_466'
L_464:
// Line 615:																	{

// Line 616:																		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_466:
// Line 614:																	while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_464'
L_465:
// Line 617:																	}

// Line 618:																	xc+=5;

	ldloc	'xc/1'
	ldc.i4	5
	add
	stloc	'xc/1'
L_457:
// Line 600:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_455'
L_456:
// Line 619:																}

L_453:
// Line 597:															while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_451'
L_452:
// Line 620:															}

L_449:
// Line 594:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_447'
L_448:
// Line 621:														}

L_445:
// Line 591:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_443'
L_444:
// Line 622:													}

L_441:
// Line 588:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_439'
L_440:
// Line 623:												}

L_437:
// Line 585:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_435'
L_436:
// Line 624:											}

L_433:
// Line 582:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_431'
L_432:
// Line 625:										}

L_429:
// Line 579:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_427'
L_428:
// Line 626:									}

L_425:
// Line 576:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_423'
L_424:
// Line 627:								}

L_421:
// Line 573:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_419'
L_420:
// Line 628:							}

// Line 629:							xc-=5;

	ldloc	'xc/1'
	ldc.i4	5
	sub
	stloc	'xc/1'
L_407:
// Line 548:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_405'
L_406:
// Line 630:						}

// Line 631:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_88:
// Line 186:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_86'
L_87:
// Line 632:					}

// Line 633:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_483'
L_481:
// Line 635:					{

// Line 636:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 637:						xc+=7;

	ldloc	'xc/1'
	ldc.i4	7
	add
	stloc	'xc/1'
	br	'L_487'
L_485:
// Line 639:						{

// Line 640:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 641:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 642:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 643:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 644:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 645:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_487:
// Line 638:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_485'
L_486:
// Line 646:						}

// Line 647:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_492'
L_490:
// Line 649:						{

// Line 650:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 651:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 652:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 653:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_492:
// Line 648:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_490'
L_491:
// Line 654:						}

// Line 655:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 656:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_497'
L_495:
// Line 658:						{

// Line 659:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 660:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 661:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_501'
L_499:
// Line 663:							{

// Line 664:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_505'
L_503:
// Line 666:								{

// Line 667:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_505:
// Line 665:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_503'
L_504:
// Line 668:								}

// Line 669:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_510'
L_508:
// Line 671:								{

// Line 672:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_510:
// Line 670:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_508'
L_509:
// Line 673:								}

// Line 674:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_515'
L_513:
// Line 676:								{

// Line 677:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_515:
// Line 675:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_513'
L_514:
// Line 678:								}

// Line 679:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_520'
L_518:
// Line 681:								{

// Line 682:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 683:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_520:
// Line 680:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_518'
L_519:
// Line 684:								}

// Line 685:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_525'
L_523:
// Line 687:								{

// Line 688:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_525:
// Line 686:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_523'
L_524:
// Line 689:								}

// Line 690:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_530'
L_528:
// Line 692:								{

// Line 693:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_530:
// Line 691:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_528'
L_529:
// Line 694:								}

// Line 695:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_535'
L_533:
// Line 697:								{

// Line 698:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 699:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_539'
L_537:
// Line 701:									{

// Line 702:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 703:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 704:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 705:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 706:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 707:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_539:
// Line 700:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_537'
L_538:
// Line 708:									}

// Line 709:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_544'
L_542:
// Line 711:									{

// Line 712:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 713:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 714:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 715:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_544:
// Line 710:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_542'
L_543:
// Line 716:									}

// Line 717:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_549'
L_547:
// Line 719:									{

// Line 720:										xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_553'
L_551:
// Line 722:										{

// Line 723:											xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_553:
// Line 721:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_551'
L_552:
// Line 724:										}

// Line 725:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_558'
L_556:
// Line 727:										{

// Line 728:											xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_558:
// Line 726:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_556'
L_557:
// Line 729:										}

// Line 730:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_563'
L_561:
// Line 732:										{

// Line 733:											xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_563:
// Line 731:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_561'
L_562:
// Line 734:										}

// Line 735:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 736:										x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	2
	add
	stind.i4
// Line 737:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 738:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_568'
L_566:
// Line 740:										{

// Line 741:											xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_568:
// Line 739:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_566'
L_567:
// Line 742:										}

// Line 743:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_573'
L_571:
// Line 745:										{

// Line 746:											xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_573:
// Line 744:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_571'
L_572:
// Line 747:										}

// Line 748:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_578'
L_576:
// Line 750:										{

// Line 751:											xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_578:
// Line 749:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_576'
L_577:
// Line 752:										}

// Line 753:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 754:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_549:
// Line 718:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_547'
L_548:
// Line 755:									}

// Line 756:									xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_584'
L_582:
// Line 758:									{

// Line 759:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_584:
// Line 757:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_582'
L_583:
// Line 760:									}

// Line 761:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_589'
L_587:
// Line 763:									{

// Line 764:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_589:
// Line 762:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_587'
L_588:
// Line 765:									}

// Line 766:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_594'
L_592:
// Line 768:									{

// Line 769:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_594:
// Line 767:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_592'
L_593:
// Line 770:									}

// Line 771:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_599'
L_597:
// Line 773:									{

// Line 774:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 775:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_599:
// Line 772:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_597'
L_598:
// Line 776:									}

// Line 777:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_604'
L_602:
// Line 779:									{

// Line 780:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_604:
// Line 778:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_602'
L_603:
// Line 781:									}

// Line 782:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_609'
L_607:
// Line 784:									{

// Line 785:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_609:
// Line 783:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_607'
L_608:
// Line 786:									}

// Line 787:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 788:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_535:
// Line 696:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_533'
L_534:
// Line 789:								}

// Line 790:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_615'
L_613:
// Line 792:								{

// Line 793:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_615:
// Line 791:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_613'
L_614:
// Line 794:								}

// Line 795:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 796:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_501:
// Line 662:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_499'
L_500:
// Line 797:							}

// Line 798:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_621'
L_619:
// Line 800:							{

// Line 801:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_621:
// Line 799:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_619'
L_620:
// Line 802:							}

// Line 803:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_626'
L_624:
// Line 805:							{

// Line 806:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_626:
// Line 804:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_624'
L_625:
// Line 807:							}

// Line 808:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_631'
L_629:
// Line 810:							{

// Line 811:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 812:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_635'
L_633:
// Line 814:								{

// Line 815:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 816:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 817:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 818:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 819:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 820:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_635:
// Line 813:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_633'
L_634:
// Line 821:								}

// Line 822:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_640'
L_638:
// Line 824:								{

	br	'L_644'
L_642:
// Line 826:									{

// Line 827:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 828:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 829:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 830:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 831:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 832:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_644:
// Line 825:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_642'
L_643:
// Line 833:									}

// Line 834:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_649'
L_647:
// Line 836:									{

// Line 837:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 838:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 839:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 840:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_649:
// Line 835:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_647'
L_648:
// Line 841:									}

// Line 842:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 843:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 844:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 845:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_654'
L_652:
// Line 847:									{

// Line 848:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 849:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 850:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 851:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_658'
L_656:
// Line 853:										{

// Line 854:											xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 855:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 856:											xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 857:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_662'
L_660:
// Line 859:											{

// Line 860:												xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 861:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 862:												xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 863:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_666'
L_664:
// Line 865:												{

// Line 866:													xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 867:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 868:													xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 869:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_670'
L_668:
// Line 871:													{

// Line 872:														xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 873:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 874:														xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 875:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_674'
L_672:
// Line 877:														{

// Line 878:															xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 879:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 880:															xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 881:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_678'
L_676:
// Line 883:															{

// Line 884:																xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 885:																x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 886:																xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 887:																x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_682'
L_680:
// Line 889:																{

// Line 890:																	xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 891:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 892:																	xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 893:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_686'
L_684:
// Line 895:																	{

// Line 896:																		xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 897:																		x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 898:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_690'
L_688:
// Line 900:																		{

// Line 901:																			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_690:
// Line 899:																		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_688'
L_689:
// Line 902:																		}

// Line 903:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 904:																		x[xc]-=10;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	10
	sub
	stind.i4
// Line 905:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_695'
L_693:
// Line 907:																		{

// Line 908:																			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_695:
// Line 906:																		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_693'
L_694:
// Line 909:																		}

// Line 910:																		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 911:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 912:																		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 913:																		xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_686:
// Line 894:																	while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_684'
L_685:
// Line 914:																	}

L_682:
// Line 888:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_680'
L_681:
// Line 915:																}

L_678:
// Line 882:															while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_676'
L_677:
// Line 916:															}

L_674:
// Line 876:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_672'
L_673:
// Line 917:														}

L_670:
// Line 870:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_668'
L_669:
// Line 918:													}

L_666:
// Line 864:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_664'
L_665:
// Line 919:												}

L_662:
// Line 858:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_660'
L_661:
// Line 920:											}

L_658:
// Line 852:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_656'
L_657:
// Line 921:										}

L_654:
// Line 846:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_652'
L_653:
// Line 922:									}

// Line 923:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_640:
// Line 823:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_644'
L_639:
// Line 924:								}

// Line 925:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 926:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_710'
L_708:
// Line 928:								{

// Line 929:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 930:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 931:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 932:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_710:
// Line 927:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_708'
L_709:
// Line 933:								}

// Line 934:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_631:
// Line 809:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_629'
L_630:
// Line 935:							}

// Line 936:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_716'
L_714:
// Line 938:							{

	br	'L_720'
L_718:
// Line 940:								{

// Line 941:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_720:
// Line 939:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_718'
L_719:
// Line 942:								}

// Line 943:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_716:
// Line 937:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_720'
L_715:
// Line 944:							}

// Line 945:							xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
	br	'L_726'
L_724:
// Line 947:							{

// Line 948:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 949:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 950:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 951:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 952:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 953:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_726:
// Line 946:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_724'
L_725:
// Line 954:							}

// Line 955:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_731'
L_729:
// Line 957:							{

// Line 958:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 959:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 960:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 961:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_731:
// Line 956:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_729'
L_730:
// Line 962:							}

// Line 963:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_736'
L_734:
// Line 965:							{

// Line 966:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_740'
L_738:
// Line 968:								{

	br	'L_744'
L_742:
// Line 970:									{

// Line 971:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_744:
// Line 969:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_742'
L_743:
// Line 972:									}

// Line 973:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_740:
// Line 967:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_744'
L_739:
// Line 974:								}

// Line 975:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 976:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 977:								xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_750'
L_748:
// Line 979:								{

	br	'L_754'
L_752:
// Line 981:									{

// Line 982:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_754:
// Line 980:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_752'
L_753:
// Line 983:									}

// Line 984:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_750:
// Line 978:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_754'
L_749:
// Line 985:								}

// Line 986:								xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 987:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_736:
// Line 964:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_734'
L_735:
// Line 988:							}

// Line 989:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_761'
L_759:
// Line 991:							{

	br	'L_765'
L_763:
// Line 993:								{

// Line 994:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_765:
// Line 992:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_763'
L_764:
// Line 995:								}

// Line 996:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_761:
// Line 990:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_765'
L_760:
// Line 997:							}

// Line 998:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 999:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1000:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1001:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_771'
L_769:
// Line 1003:							{

// Line 1004:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1005:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1006:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1007:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_771:
// Line 1002:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_769'
L_770:
// Line 1008:							}

// Line 1009:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_776'
L_774:
// Line 1011:							{

// Line 1012:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1013:								x[xc]+=3;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	3
	add
	stind.i4
// Line 1014:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1015:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_780'
L_778:
// Line 1017:								{

// Line 1018:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1019:									x[xc]+=5;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	5
	add
	stind.i4
// Line 1020:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1021:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_784'
L_782:
// Line 1023:									{

// Line 1024:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1025:										x[xc]-=3;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	3
	sub
	stind.i4
// Line 1026:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1027:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1028:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1029:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1030:										xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1031:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_788'
L_786:
// Line 1033:										{

// Line 1034:											xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1035:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1036:											xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1037:											xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1038:											x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1039:											xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1040:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_792'
L_790:
// Line 1042:											{

// Line 1043:												xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1044:												x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1045:												xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1046:												x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1047:												xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1048:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_796'
L_794:
// Line 1050:												{

// Line 1051:													xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1052:													x[xc]+=3;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	3
	add
	stind.i4
// Line 1053:													xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1054:													x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1055:													xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1056:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_800'
L_798:
// Line 1058:													{

// Line 1059:														xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1060:														x[xc]-=5;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	5
	sub
	stind.i4
// Line 1061:														xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1062:														x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	2
	add
	stind.i4
// Line 1063:														xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1064:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_804'
L_802:
// Line 1066:														{

// Line 1067:															xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1068:															x[xc]-=3;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	3
	sub
	stind.i4
// Line 1069:															xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1070:															x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	2
	add
	stind.i4
// Line 1071:															xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1072:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_804:
// Line 1065:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_802'
L_803:
// Line 1073:														}

L_800:
// Line 1057:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_798'
L_799:
// Line 1074:													}

L_796:
// Line 1049:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_794'
L_795:
// Line 1075:												}

L_792:
// Line 1041:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_790'
L_791:
// Line 1076:											}

L_788:
// Line 1032:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_786'
L_787:
// Line 1077:										}

L_784:
// Line 1022:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_782'
L_783:
// Line 1078:									}

L_780:
// Line 1016:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_778'
L_779:
// Line 1079:								}

L_776:
// Line 1010:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_774'
L_775:
// Line 1080:							}

// Line 1081:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_816'
L_814:
// Line 1083:							{

	br	'L_820'
L_818:
// Line 1085:								{

// Line 1086:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_820:
// Line 1084:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_818'
L_819:
// Line 1087:								}

// Line 1088:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_816:
// Line 1082:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_820'
L_815:
// Line 1089:							}

// Line 1090:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_497:
// Line 657:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_495'
L_496:
// Line 1091:						}

// Line 1092:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_827'
L_825:
// Line 1094:						{

// Line 1095:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1096:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_831'
L_829:
// Line 1098:							{

	br	'L_835'
L_833:
// Line 1100:								{

// Line 1101:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_835:
// Line 1099:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_833'
L_834:
// Line 1102:								}

// Line 1103:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_831:
// Line 1097:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_835'
L_830:
// Line 1104:							}

// Line 1105:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1106:							xc+=5;

	ldloc	'xc/1'
	ldc.i4	5
	add
	stloc	'xc/1'
// Line 1107:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_841'
L_839:
// Line 1109:							{

	br	'L_845'
L_843:
// Line 1111:								{

// Line 1112:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_845:
// Line 1110:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_843'
L_844:
// Line 1113:								}

// Line 1114:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_841:
// Line 1108:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_845'
L_840:
// Line 1115:							}

// Line 1116:							xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
L_827:
// Line 1093:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_825'
L_826:
// Line 1117:						}

// Line 1118:						xc-=5;

	ldloc	'xc/1'
	ldc.i4	5
	sub
	stloc	'xc/1'
L_483:
// Line 634:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_481'
L_482:
// Line 1119:					}

// Line 1120:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_84:
// Line 183:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_82'
L_83:
// Line 1121:				}

// Line 1122:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_854'
L_852:
// Line 1124:				{

// Line 1125:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1126:					xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
	br	'L_858'
L_856:
// Line 1128:					{

	br	'L_862'
L_860:
// Line 1130:						{

// Line 1131:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_862:
// Line 1129:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_860'
L_861:
// Line 1132:						}

// Line 1133:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_858:
// Line 1127:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_862'
L_857:
// Line 1134:					}

// Line 1135:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1136:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_868'
L_866:
// Line 1138:					{

// Line 1139:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_868:
// Line 1137:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_866'
L_867:
// Line 1140:					}

// Line 1141:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_873'
L_871:
// Line 1143:					{

// Line 1144:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1145:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_877'
L_875:
// Line 1147:						{

// Line 1148:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_877:
// Line 1146:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_875'
L_876:
// Line 1149:						}

// Line 1150:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_882'
L_880:
// Line 1152:						{

// Line 1153:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_882:
// Line 1151:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_880'
L_881:
// Line 1154:						}

// Line 1155:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_887'
L_885:
// Line 1157:						{

// Line 1158:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_887:
// Line 1156:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_885'
L_886:
// Line 1159:						}

// Line 1160:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1161:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_892'
L_890:
// Line 1163:						{

// Line 1164:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_892:
// Line 1162:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_890'
L_891:
// Line 1165:						}

// Line 1166:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_897'
L_895:
// Line 1168:						{

// Line 1169:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_897:
// Line 1167:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_895'
L_896:
// Line 1170:						}

// Line 1171:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_902'
L_900:
// Line 1173:						{

// Line 1174:							xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_906'
L_904:
// Line 1176:							{

// Line 1177:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_906:
// Line 1175:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_904'
L_905:
// Line 1178:							}

// Line 1179:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_911'
L_909:
// Line 1181:							{

// Line 1182:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_911:
// Line 1180:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_909'
L_910:
// Line 1183:							}

// Line 1184:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_916'
L_914:
// Line 1186:							{

// Line 1187:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_916:
// Line 1185:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_914'
L_915:
// Line 1188:							}

// Line 1189:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 1190:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1191:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_921'
L_919:
// Line 1193:							{

// Line 1194:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_921:
// Line 1192:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_919'
L_920:
// Line 1195:							}

// Line 1196:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_926'
L_924:
// Line 1198:							{

// Line 1199:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_926:
// Line 1197:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_924'
L_925:
// Line 1200:							}

// Line 1201:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1202:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_902:
// Line 1172:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_900'
L_901:
// Line 1203:						}

// Line 1204:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1205:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1206:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_873:
// Line 1142:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_871'
L_872:
// Line 1207:					}

// Line 1208:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_933'
L_931:
// Line 1210:					{

// Line 1211:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1212:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_933:
// Line 1209:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_931'
L_932:
// Line 1213:					}

// Line 1214:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_938'
L_936:
// Line 1216:					{

// Line 1217:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_938:
// Line 1215:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_936'
L_937:
// Line 1218:					}

// Line 1219:					xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_943'
L_941:
// Line 1221:					{

// Line 1222:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1223:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_943:
// Line 1220:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_941'
L_942:
// Line 1224:					}

// Line 1225:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_948'
L_946:
// Line 1227:					{

// Line 1228:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_948:
// Line 1226:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_946'
L_947:
// Line 1229:					}

// Line 1230:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_953'
L_951:
// Line 1232:					{

// Line 1233:						x[xc]+=8;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	8
	add
	stind.i4
// Line 1234:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_957'
L_955:
// Line 1236:						{

// Line 1237:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1238:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1239:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1240:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_957:
// Line 1235:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_955'
L_956:
// Line 1241:						}

// Line 1242:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_962'
L_960:
// Line 1244:						{

// Line 1245:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1246:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1247:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1248:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_962:
// Line 1243:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_960'
L_961:
// Line 1249:						}

// Line 1250:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1251:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_953:
// Line 1231:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_951'
L_952:
// Line 1252:					}

// Line 1253:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_968'
L_966:
// Line 1255:					{

// Line 1256:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_968:
// Line 1254:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_966'
L_967:
// Line 1257:					}

// Line 1258:					xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 1259:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1260:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_973'
L_971:
// Line 1262:					{

// Line 1263:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1264:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_977'
L_975:
// Line 1266:						{

// Line 1267:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1268:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1269:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1270:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1271:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1272:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_977:
// Line 1265:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_975'
L_976:
// Line 1273:						}

// Line 1274:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_982'
L_980:
// Line 1276:						{

// Line 1277:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_986'
L_984:
// Line 1279:							{

// Line 1280:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_990'
L_988:
// Line 1282:								{

// Line 1283:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_994'
L_992:
// Line 1285:									{

// Line 1286:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_998'
L_996:
// Line 1288:										{

// Line 1289:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_1002'
L_1000:
// Line 1291:											{

// Line 1292:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_1006'
L_1004:
// Line 1294:												{

// Line 1295:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_1010'
L_1008:
// Line 1297:													{

// Line 1298:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_1014'
L_1012:
// Line 1300:														{

// Line 1301:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_1018'
L_1016:
// Line 1303:															{

// Line 1304:																xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1305:																x[xc]-=10;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	10
	sub
	stind.i4
// Line 1306:																xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_1022'
L_1020:
// Line 1308:																{

// Line 1309:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1022:
// Line 1307:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1020'
L_1021:
// Line 1310:																}

// Line 1311:																x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1312:																xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1313:																x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1314:																xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_1027'
L_1025:
// Line 1316:																{

// Line 1317:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1027:
// Line 1315:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1025'
L_1026:
// Line 1318:																}

L_1018:
// Line 1302:															while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1016'
L_1017:
// Line 1319:															}

L_1014:
// Line 1299:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1012'
L_1013:
// Line 1320:														}

L_1010:
// Line 1296:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1008'
L_1009:
// Line 1321:													}

L_1006:
// Line 1293:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1004'
L_1005:
// Line 1322:												}

L_1002:
// Line 1290:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1000'
L_1001:
// Line 1323:											}

L_998:
// Line 1287:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_996'
L_997:
// Line 1324:										}

L_994:
// Line 1284:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_992'
L_993:
// Line 1325:									}

L_990:
// Line 1281:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_988'
L_989:
// Line 1326:								}

L_986:
// Line 1278:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_984'
L_985:
// Line 1327:							}

L_982:
// Line 1275:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_980'
L_981:
// Line 1328:						}

// Line 1329:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_1042'
L_1040:
// Line 1331:						{

// Line 1332:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1333:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1334:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1335:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1042:
// Line 1330:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1040'
L_1041:
// Line 1336:						}

// Line 1337:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1338:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1339:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_973:
// Line 1261:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_971'
L_972:
// Line 1340:					}

// Line 1341:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1048'
L_1046:
// Line 1343:					{

// Line 1344:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1345:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_1048:
// Line 1342:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1046'
L_1047:
// Line 1346:					}

// Line 1347:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1053'
L_1051:
// Line 1349:					{

// Line 1350:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_1053:
// Line 1348:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1051'
L_1052:
// Line 1351:					}

// Line 1352:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1353:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1354:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1058'
L_1056:
// Line 1356:					{

// Line 1357:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1358:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1359:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1360:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1058:
// Line 1355:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1056'
L_1057:
// Line 1361:					}

// Line 1362:					xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_1063'
L_1061:
// Line 1364:					{

// Line 1365:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_1063:
// Line 1363:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1061'
L_1062:
// Line 1366:					}

// Line 1367:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_1068'
L_1066:
// Line 1369:					{

// Line 1370:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1371:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1372:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_1072'
L_1070:
// Line 1374:						{

// Line 1375:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1376:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1377:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1076'
L_1074:
// Line 1379:							{

// Line 1380:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_1076:
// Line 1378:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1074'
L_1075:
// Line 1381:							}

// Line 1382:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_1072:
// Line 1373:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1070'
L_1071:
// Line 1383:						}

// Line 1384:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1082'
L_1080:
// Line 1386:						{

// Line 1387:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1388:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1389:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1390:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_1082:
// Line 1385:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1080'
L_1081:
// Line 1391:						}

// Line 1392:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_1068:
// Line 1368:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1066'
L_1067:
// Line 1393:					}

// Line 1394:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1395:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_1088'
L_1086:
// Line 1397:					{

// Line 1398:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1399:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1400:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1401:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1088:
// Line 1396:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1086'
L_1087:
// Line 1402:					}

// Line 1403:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1093'
L_1091:
// Line 1405:					{

	br	'L_1097'
L_1095:
// Line 1407:						{

// Line 1408:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_1097:
// Line 1406:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1095'
L_1096:
// Line 1409:						}

// Line 1410:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_1093:
// Line 1404:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1097'
L_1092:
// Line 1411:					}

// Line 1412:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_854:
// Line 1123:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_852'
L_853:
// Line 1413:				}

// Line 1414:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1104'
L_1102:
// Line 1416:				{

// Line 1417:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_1104:
// Line 1415:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1102'
L_1103:
// Line 1418:				}

// Line 1419:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1420:				xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_55:
// Line 143:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_53'
L_54:
// Line 1421:			}

// Line 1422:			xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1423:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1424:			xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1110'
L_1108:
// Line 1426:			{

// Line 1427:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1428:				x[xc]+=5;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	5
	add
	stind.i4
	br	'L_1114'
L_1112:
// Line 1430:				{

// Line 1431:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1432:					x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	2
	add
	stind.i4
// Line 1433:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1434:					x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	2
	add
	stind.i4
// Line 1435:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1436:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1114:
// Line 1429:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1112'
L_1113:
// Line 1437:				}

// Line 1438:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1439:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1110:
// Line 1425:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1108'
L_1109:
// Line 1440:			}

// Line 1441:			xc+=5;

	ldloc	'xc/1'
	ldc.i4	5
	add
	stloc	'xc/1'
	br	'L_1120'
L_1118:
// Line 1443:			{

// Line 1444:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 1445:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1446:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1447:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1448:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1449:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1450:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1451:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1120:
// Line 1442:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1118'
L_1119:
// Line 1452:			}

// Line 1453:			xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1454:			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	br	'L_1125'
L_1123:
// Line 1456:			{

// Line 1457:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1458:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1459:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1460:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1125:
// Line 1455:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1123'
L_1124:
// Line 1461:			}

// Line 1462:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1463:			xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1130'
L_1128:
// Line 1465:			{

// Line 1466:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_1134'
L_1132:
// Line 1468:				{

// Line 1469:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1470:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1471:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1472:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1134:
// Line 1467:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1132'
L_1133:
// Line 1473:				}

// Line 1474:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1139'
L_1137:
// Line 1476:				{

// Line 1477:					xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1478:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1479:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1480:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1139:
// Line 1475:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1137'
L_1138:
// Line 1481:				}

// Line 1482:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1144'
L_1142:
// Line 1484:				{

// Line 1485:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1486:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1487:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1488:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1144:
// Line 1483:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1142'
L_1143:
// Line 1489:				}

// Line 1490:				xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1491:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1130:
// Line 1464:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1128'
L_1129:
// Line 1492:			}

// Line 1493:			xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_1150'
L_1148:
// Line 1495:			{

// Line 1496:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1150:
// Line 1494:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1148'
L_1149:
// Line 1497:			}

// Line 1498:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_1155'
L_1153:
// Line 1500:			{

// Line 1501:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1502:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1503:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1504:				xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1505:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 1506:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1507:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1155:
// Line 1499:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1153'
L_1154:
// Line 1508:			}

// Line 1509:			x[xc]+=6;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	6
	add
	stind.i4
	br	'L_1160'
L_1158:
// Line 1511:			{

// Line 1512:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1513:				x[xc]+=8;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	8
	add
	stind.i4
// Line 1514:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1515:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1160:
// Line 1510:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1158'
L_1159:
// Line 1516:			}

// Line 1517:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_1165'
L_1163:
// Line 1519:			{

// Line 1520:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1521:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1522:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1523:				x[xc]-=2;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	2
	sub
	stind.i4
L_1165:
// Line 1518:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1163'
L_1164:
// Line 1524:			}

// Line 1525:			xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1526:			putchar(x[xc]);

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldsfld	void* '__stdout'

	call	int32 'fputc'(int32, void*)
	pop
	br	'L_1170'
L_1168:
// Line 1528:			{

// Line 1529:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
L_1170:
// Line 1527:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1168'
L_1169:
// Line 1530:			}

// Line 1531:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_1175'
L_1173:
// Line 1533:			{

// Line 1534:				xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_1175:
// Line 1532:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1173'
L_1174:
// Line 1535:			}

// Line 1536:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_16:
// Line 85:		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_20'
L_15:
// Line 1537:		}

// Line 1538:		printf("\n");

	ldsflda	valuetype 'int8[]' 'L_1'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 1539:	}

	ldc.i4	0
L_3:
	ret

}
 .field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (a 0 
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
.class private value explicit ansi sealed 'int32[32768]' {.pack 1 .size 131072}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fputc'(int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
