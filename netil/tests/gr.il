//File gr.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 30:	int main()

// Line 31:	{

	.locals
	(
		[0] valuetype 'int32[32768]' 'x/0',
		[1] int32 'xc/1'
	)
	.maxstack	3
L_2:
// Line 33:		int xc;

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
// Line 34:		for(xc = 0; xc < 32768; xc++) x[xc] = 0;

L_6:
	ldloc	'xc/1'
	ldc.i4	32768
	blt	'L_5'
L_7:
// Line 35:		xc=0;

	ldc.i4	0
	stloc	'xc/1'
// Line 36:		x[xc]+=6;

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
// Line 38:		{

// Line 39:			xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 40:			x[xc]+=8;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 41:			xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 42:			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 37:		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_9'
L_10:
// Line 43:		}

// Line 44:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 45:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 46:		putchar(x[xc]);

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	call	int32 'putchar'(int32)
	pop
// Line 47:		x[xc]-=3;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 48:		putchar(x[xc]);

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	call	int32 'putchar'(int32)
	pop
// Line 49:		xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 50:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 51:		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 52:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 53:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 54:		x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 55:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 56:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 57:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 58:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 59:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 60:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 61:		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 62:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 63:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 64:		x[xc]+=3;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 65:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 66:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 67:		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 68:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 69:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 70:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 71:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 72:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 73:		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 74:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 75:		xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 76:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 77:		xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 78:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 79:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 80:		x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 81:		xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 82:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 83:		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 84:		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 85:		xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_16'
L_14:
// Line 87:		{

	br	'L_20'
L_18:
// Line 89:			{

// Line 90:				xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_20:
// Line 88:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_18'
L_19:
// Line 91:			}

// Line 92:			xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_25'
L_23:
// Line 94:			{

// Line 95:				xc+=8;

	ldloc	'xc/1'
	ldc.i4	8
	add
	stloc	'xc/1'
// Line 96:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 97:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 98:				xc-=8;

	ldloc	'xc/1'
	ldc.i4	8
	sub
	stloc	'xc/1'
	br	'L_29'
L_27:
// Line 100:				{

// Line 101:					xc+=9;

	ldloc	'xc/1'
	ldc.i4	9
	add
	stloc	'xc/1'
// Line 102:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 103:					xc-=9;

	ldloc	'xc/1'
	ldc.i4	9
	sub
	stloc	'xc/1'
// Line 104:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 99:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_27'
L_28:
// Line 105:				}

// Line 106:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 107:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 108:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_25:
// Line 93:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_23'
L_24:
// Line 109:			}

// Line 110:			xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
// Line 111:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 112:			xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 113:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 115:			{

// Line 116:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_35:
// Line 114:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_33'
L_34:
// Line 117:			}

// Line 118:			xc-=5;

	ldloc	'xc/1'
	ldc.i4	5
	sub
	stloc	'xc/1'
	br	'L_40'
L_38:
// Line 120:			{

// Line 121:				xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 122:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 123:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_44'
L_42:
// Line 125:				{

// Line 126:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 127:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 128:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 129:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 124:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_42'
L_43:
// Line 130:				}

// Line 131:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 132:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 133:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_40:
// Line 119:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_38'
L_39:
// Line 134:			}

// Line 135:			xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 136:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 137:			xc-=8;

	ldloc	'xc/1'
	ldc.i4	8
	sub
	stloc	'xc/1'
	br	'L_50'
L_48:
// Line 139:			{

// Line 140:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_50:
// Line 138:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_48'
L_49:
// Line 141:			}

// Line 142:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 143:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_55'
L_53:
// Line 145:			{

// Line 146:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 147:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_59'
L_57:
// Line 149:				{

// Line 150:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 151:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 152:					xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_63'
L_61:
// Line 154:					{

// Line 155:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_63:
// Line 153:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_61'
L_62:
// Line 156:					}

// Line 157:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 158:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 159:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_68'
L_66:
// Line 161:					{

// Line 162:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_68:
// Line 160:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_66'
L_67:
// Line 163:					}

// Line 164:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 165:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 148:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_57'
L_58:
// Line 166:				}

// Line 167:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 168:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 170:				{

// Line 171:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 172:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 173:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 174:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 169:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_72'
L_73:
// Line 175:				}

// Line 176:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 177:				xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_79'
L_77:
// Line 179:				{

// Line 180:					xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_79:
// Line 178:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_77'
L_78:
// Line 181:				}

// Line 182:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 183:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_84'
L_82:
// Line 185:				{

// Line 186:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 188:					{

// Line 189:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 191:						{

// Line 192:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 193:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 194:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 195:							xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
	br	'L_96'
L_94:
// Line 197:							{

	br	'L_100'
L_98:
// Line 199:								{

// Line 200:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_100:
// Line 198:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_98'
L_99:
// Line 201:								}

// Line 202:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_96:
// Line 196:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_100'
L_95:
// Line 203:							}

// Line 204:							xc-=5;

	ldloc	'xc/1'
	ldc.i4	5
	sub
	stloc	'xc/1'
	br	'L_106'
L_104:
// Line 206:							{

// Line 207:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 208:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 209:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 210:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 211:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_106:
// Line 205:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_104'
L_105:
// Line 212:							}

// Line 213:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_111'
L_109:
// Line 215:							{

// Line 216:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_111:
// Line 214:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_109'
L_110:
// Line 217:							}

// Line 218:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 219:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_116'
L_114:
// Line 221:							{

// Line 222:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 223:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_120'
L_118:
// Line 225:								{

// Line 226:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_120:
// Line 224:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_118'
L_119:
// Line 227:								}

// Line 228:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_125'
L_123:
// Line 230:								{

// Line 231:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_125:
// Line 229:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_123'
L_124:
// Line 232:								}

// Line 233:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 235:								{

// Line 236:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_130:
// Line 234:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_128'
L_129:
// Line 237:								}

// Line 238:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_135'
L_133:
// Line 240:								{

// Line 241:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_135:
// Line 239:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_133'
L_134:
// Line 242:								}

// Line 243:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 244:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_116:
// Line 220:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_114'
L_115:
// Line 245:							}

// Line 246:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_141'
L_139:
// Line 248:							{

// Line 249:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_145'
L_143:
// Line 251:								{

// Line 252:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 250:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_143'
L_144:
// Line 253:								}

// Line 254:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 255:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 256:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 257:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 258:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_141:
// Line 247:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_139'
L_140:
// Line 259:							}

// Line 260:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_151'
L_149:
// Line 262:							{

// Line 263:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_151:
// Line 261:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_149'
L_150:
// Line 264:							}

// Line 265:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_156'
L_154:
// Line 267:							{

// Line 268:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 269:								x[xc]+=9;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 270:								xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
L_156:
// Line 266:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_154'
L_155:
// Line 271:							}

// Line 272:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_161'
L_159:
// Line 274:							{

// Line 275:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_161:
// Line 273:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_159'
L_160:
// Line 276:							}

// Line 277:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_166'
L_164:
// Line 279:							{

// Line 280:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 281:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_170'
L_168:
// Line 283:								{

// Line 284:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 285:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 286:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 287:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 288:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 289:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 282:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_168'
L_169:
// Line 290:								}

// Line 291:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_175'
L_173:
// Line 293:								{

// Line 294:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 295:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 296:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 297:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 292:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_173'
L_174:
// Line 298:								}

// Line 299:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_180'
L_178:
// Line 301:								{

// Line 302:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_184'
L_182:
// Line 304:									{

// Line 305:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_184:
// Line 303:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_182'
L_183:
// Line 306:									}

// Line 307:									xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_189'
L_187:
// Line 309:									{

// Line 310:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_189:
// Line 308:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_187'
L_188:
// Line 311:									}

// Line 312:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 313:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 314:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_194'
L_192:
// Line 316:									{

// Line 317:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_194:
// Line 315:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_192'
L_193:
// Line 318:									}

// Line 319:									xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_199'
L_197:
// Line 321:									{

// Line 322:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_199:
// Line 320:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_197'
L_198:
// Line 323:									}

// Line 324:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 325:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 300:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_178'
L_179:
// Line 326:								}

// Line 327:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_205'
L_203:
// Line 329:								{

// Line 330:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 331:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_205:
// Line 328:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_203'
L_204:
// Line 332:								}

// Line 333:								xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_210'
L_208:
// Line 335:								{

// Line 336:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_210:
// Line 334:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_208'
L_209:
// Line 337:								}

// Line 338:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 340:								{

// Line 341:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_215:
// Line 339:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_213'
L_214:
// Line 342:								}

// Line 343:								xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_220'
L_218:
// Line 345:								{

// Line 346:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_220:
// Line 344:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_218'
L_219:
// Line 347:								}

// Line 348:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_225'
L_223:
// Line 350:								{

// Line 351:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 352:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 353:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 354:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 349:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_223'
L_224:
// Line 355:								}

// Line 356:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 357:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 358:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_166:
// Line 278:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_164'
L_165:
// Line 359:							}

// Line 360:							xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_231'
L_229:
// Line 362:							{

// Line 363:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 364:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_231:
// Line 361:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_229'
L_230:
// Line 365:							}

// Line 366:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_236'
L_234:
// Line 368:							{

// Line 369:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_236:
// Line 367:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_234'
L_235:
// Line 370:							}

// Line 371:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_241'
L_239:
// Line 373:							{

// Line 374:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_245'
L_243:
// Line 376:								{

// Line 377:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 379:									{

// Line 380:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 382:										{

// Line 383:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 385:											{

// Line 386:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 388:												{

// Line 389:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 391:													{

// Line 392:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 394:														{

// Line 395:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 397:															{

// Line 398:																x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 400:																{

// Line 401:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 402:																	xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 403:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 404:																	xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_281'
L_279:
// Line 406:																	{

// Line 407:																		xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 408:																		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 409:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_285'
L_283:
// Line 411:																		{

// Line 412:																			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 410:																		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_283'
L_284:
// Line 413:																		}

// Line 414:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 415:																		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 416:																		xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_281:
// Line 405:																	while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_279'
L_280:
// Line 417:																	}

L_277:
// Line 399:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_275'
L_276:
// Line 418:																}

L_273:
// Line 396:															while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_271'
L_272:
// Line 419:															}

L_269:
// Line 393:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_267'
L_268:
// Line 420:														}

L_265:
// Line 390:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_263'
L_264:
// Line 421:													}

L_261:
// Line 387:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_259'
L_260:
// Line 422:												}

L_257:
// Line 384:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_255'
L_256:
// Line 423:											}

L_253:
// Line 381:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_251'
L_252:
// Line 424:										}

L_249:
// Line 378:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_247'
L_248:
// Line 425:									}

L_245:
// Line 375:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_243'
L_244:
// Line 426:								}

// Line 427:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_300'
L_298:
// Line 429:								{

	br	'L_304'
L_302:
// Line 431:									{

// Line 432:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_308'
L_306:
// Line 434:										{

// Line 435:											xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 436:											x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 437:											xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 438:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 433:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_306'
L_307:
// Line 439:										}

// Line 440:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_313'
L_311:
// Line 442:										{

// Line 443:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 441:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_311'
L_312:
// Line 444:										}

// Line 445:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 446:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 447:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_304:
// Line 430:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_302'
L_303:
// Line 448:									}

// Line 449:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_300:
// Line 428:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_304'
L_299:
// Line 450:								}

// Line 451:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_241:
// Line 372:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_239'
L_240:
// Line 452:							}

// Line 453:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 454:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 455:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_321'
L_319:
// Line 457:							{

// Line 458:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 459:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 460:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 461:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_325'
L_323:
// Line 463:								{

	br	'L_329'
L_327:
// Line 465:									{

// Line 466:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 467:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_329:
// Line 464:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_327'
L_328:
// Line 468:									}

// Line 469:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_325:
// Line 462:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_329'
L_324:
// Line 470:								}

// Line 471:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_335'
L_333:
// Line 473:								{

// Line 474:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_335:
// Line 472:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_333'
L_334:
// Line 475:								}

// Line 476:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 477:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 478:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 479:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_340'
L_338:
// Line 481:								{

// Line 482:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_340:
// Line 480:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_338'
L_339:
// Line 483:								}

// Line 484:								xc+=7;

	ldloc	'xc/1'
	ldc.i4	7
	add
	stloc	'xc/1'
// Line 485:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 486:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_345'
L_343:
// Line 488:								{

	br	'L_349'
L_347:
// Line 490:									{

// Line 491:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_349:
// Line 489:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_347'
L_348:
// Line 492:									}

// Line 493:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_345:
// Line 487:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_349'
L_344:
// Line 494:								}

// Line 495:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_321:
// Line 456:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_319'
L_320:
// Line 496:							}

// Line 497:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_356'
L_354:
// Line 499:							{

// Line 500:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 501:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_360'
L_358:
// Line 503:								{

	br	'L_364'
L_362:
// Line 505:									{

// Line 506:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_364:
// Line 504:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_362'
L_363:
// Line 507:									}

// Line 508:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_360:
// Line 502:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_364'
L_359:
// Line 509:								}

// Line 510:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_370'
L_368:
// Line 512:								{

// Line 513:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_370:
// Line 511:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_368'
L_369:
// Line 514:								}

// Line 515:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 517:								{

// Line 518:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_375:
// Line 516:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_373'
L_374:
// Line 519:								}

// Line 520:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 521:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 522:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_380'
L_378:
// Line 524:								{

// Line 525:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_380:
// Line 523:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_378'
L_379:
// Line 526:								}

// Line 527:								xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
	br	'L_385'
L_383:
// Line 529:								{

	br	'L_389'
L_387:
// Line 531:									{

// Line 532:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_389:
// Line 530:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_387'
L_388:
// Line 533:									}

// Line 534:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_385:
// Line 528:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_389'
L_384:
// Line 535:								}

// Line 536:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_356:
// Line 498:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_354'
L_355:
// Line 537:							}

// Line 538:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_396'
L_394:
// Line 540:							{

	br	'L_400'
L_398:
// Line 542:								{

// Line 543:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_400:
// Line 541:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_398'
L_399:
// Line 544:								}

// Line 545:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_396:
// Line 539:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_400'
L_395:
// Line 546:							}

L_92:
// Line 190:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_90'
L_91:
// Line 547:						}

// Line 548:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_407'
L_405:
// Line 550:						{

// Line 551:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 552:							xc+=7;

	ldloc	'xc/1'
	ldc.i4	7
	add
	stloc	'xc/1'
// Line 553:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 555:							{

// Line 556:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 557:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 558:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 559:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 560:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 561:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 554:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_409'
L_410:
// Line 562:							}

// Line 563:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 564:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 566:							{

// Line 567:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 568:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 569:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 570:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 565:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_414'
L_415:
// Line 571:							}

// Line 572:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 573:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_421'
L_419:
// Line 575:							{

// Line 576:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 578:								{

// Line 579:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 581:									{

// Line 582:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 584:										{

// Line 585:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 587:											{

// Line 588:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 590:												{

// Line 591:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 593:													{

// Line 594:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 596:														{

// Line 597:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 599:															{

// Line 600:																x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 602:																{

// Line 603:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 604:																	xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 605:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 606:																	xc-=9;

	ldloc	'xc/1'
	ldc.i4	9
	sub
	stloc	'xc/1'
	br	'L_461'
L_459:
// Line 608:																	{

// Line 609:																		xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_461:
// Line 607:																	while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_459'
L_460:
// Line 610:																	}

// Line 611:																	x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 612:																	xc+=8;

	ldloc	'xc/1'
	ldc.i4	8
	add
	stloc	'xc/1'
// Line 613:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 614:																	xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_466'
L_464:
// Line 616:																	{

// Line 617:																		xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_466:
// Line 615:																	while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_464'
L_465:
// Line 618:																	}

// Line 619:																	xc+=5;

	ldloc	'xc/1'
	ldc.i4	5
	add
	stloc	'xc/1'
L_457:
// Line 601:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_455'
L_456:
// Line 620:																}

L_453:
// Line 598:															while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_451'
L_452:
// Line 621:															}

L_449:
// Line 595:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_447'
L_448:
// Line 622:														}

L_445:
// Line 592:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_443'
L_444:
// Line 623:													}

L_441:
// Line 589:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_439'
L_440:
// Line 624:												}

L_437:
// Line 586:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_435'
L_436:
// Line 625:											}

L_433:
// Line 583:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_431'
L_432:
// Line 626:										}

L_429:
// Line 580:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_427'
L_428:
// Line 627:									}

L_425:
// Line 577:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_423'
L_424:
// Line 628:								}

L_421:
// Line 574:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_419'
L_420:
// Line 629:							}

// Line 630:							xc-=5;

	ldloc	'xc/1'
	ldc.i4	5
	sub
	stloc	'xc/1'
L_407:
// Line 549:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_405'
L_406:
// Line 631:						}

// Line 632:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_88:
// Line 187:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_86'
L_87:
// Line 633:					}

// Line 634:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_483'
L_481:
// Line 636:					{

// Line 637:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 638:						xc+=7;

	ldloc	'xc/1'
	ldc.i4	7
	add
	stloc	'xc/1'
	br	'L_487'
L_485:
// Line 640:						{

// Line 641:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 642:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 643:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 644:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 645:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 646:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 639:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_485'
L_486:
// Line 647:						}

// Line 648:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_492'
L_490:
// Line 650:						{

// Line 651:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 652:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 653:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 654:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 649:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_490'
L_491:
// Line 655:						}

// Line 656:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 657:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_497'
L_495:
// Line 659:						{

// Line 660:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 661:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 662:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_501'
L_499:
// Line 664:							{

// Line 665:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_505'
L_503:
// Line 667:								{

// Line 668:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_505:
// Line 666:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_503'
L_504:
// Line 669:								}

// Line 670:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_510'
L_508:
// Line 672:								{

// Line 673:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_510:
// Line 671:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_508'
L_509:
// Line 674:								}

// Line 675:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_515'
L_513:
// Line 677:								{

// Line 678:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_515:
// Line 676:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_513'
L_514:
// Line 679:								}

// Line 680:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_520'
L_518:
// Line 682:								{

// Line 683:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 684:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_520:
// Line 681:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_518'
L_519:
// Line 685:								}

// Line 686:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_525'
L_523:
// Line 688:								{

// Line 689:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_525:
// Line 687:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_523'
L_524:
// Line 690:								}

// Line 691:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_530'
L_528:
// Line 693:								{

// Line 694:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_530:
// Line 692:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_528'
L_529:
// Line 695:								}

// Line 696:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_535'
L_533:
// Line 698:								{

// Line 699:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 700:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_539'
L_537:
// Line 702:									{

// Line 703:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 704:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 705:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 706:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 707:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 708:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 701:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_537'
L_538:
// Line 709:									}

// Line 710:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_544'
L_542:
// Line 712:									{

// Line 713:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 714:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 715:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 716:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 711:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_542'
L_543:
// Line 717:									}

// Line 718:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_549'
L_547:
// Line 720:									{

// Line 721:										xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_553'
L_551:
// Line 723:										{

// Line 724:											xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_553:
// Line 722:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_551'
L_552:
// Line 725:										}

// Line 726:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_558'
L_556:
// Line 728:										{

// Line 729:											xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_558:
// Line 727:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_556'
L_557:
// Line 730:										}

// Line 731:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_563'
L_561:
// Line 733:										{

// Line 734:											xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_563:
// Line 732:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_561'
L_562:
// Line 735:										}

// Line 736:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 737:										x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 738:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 739:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_568'
L_566:
// Line 741:										{

// Line 742:											xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_568:
// Line 740:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_566'
L_567:
// Line 743:										}

// Line 744:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_573'
L_571:
// Line 746:										{

// Line 747:											xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_573:
// Line 745:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_571'
L_572:
// Line 748:										}

// Line 749:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_578'
L_576:
// Line 751:										{

// Line 752:											xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_578:
// Line 750:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_576'
L_577:
// Line 753:										}

// Line 754:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 755:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 719:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_547'
L_548:
// Line 756:									}

// Line 757:									xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_584'
L_582:
// Line 759:									{

// Line 760:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_584:
// Line 758:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_582'
L_583:
// Line 761:									}

// Line 762:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_589'
L_587:
// Line 764:									{

// Line 765:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_589:
// Line 763:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_587'
L_588:
// Line 766:									}

// Line 767:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_594'
L_592:
// Line 769:									{

// Line 770:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_594:
// Line 768:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_592'
L_593:
// Line 771:									}

// Line 772:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 774:									{

// Line 775:										xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 776:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_599:
// Line 773:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_597'
L_598:
// Line 777:									}

// Line 778:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_604'
L_602:
// Line 780:									{

// Line 781:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_604:
// Line 779:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_602'
L_603:
// Line 782:									}

// Line 783:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_609'
L_607:
// Line 785:									{

// Line 786:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_609:
// Line 784:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_607'
L_608:
// Line 787:									}

// Line 788:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 789:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_535:
// Line 697:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_533'
L_534:
// Line 790:								}

// Line 791:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_615'
L_613:
// Line 793:								{

// Line 794:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_615:
// Line 792:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_613'
L_614:
// Line 795:								}

// Line 796:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 797:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 663:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_499'
L_500:
// Line 798:							}

// Line 799:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_621'
L_619:
// Line 801:							{

// Line 802:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_621:
// Line 800:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_619'
L_620:
// Line 803:							}

// Line 804:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_626'
L_624:
// Line 806:							{

// Line 807:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_626:
// Line 805:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_624'
L_625:
// Line 808:							}

// Line 809:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_631'
L_629:
// Line 811:							{

// Line 812:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 813:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_635'
L_633:
// Line 815:								{

// Line 816:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 817:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 818:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 819:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 820:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 821:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 814:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_633'
L_634:
// Line 822:								}

// Line 823:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_640'
L_638:
// Line 825:								{

	br	'L_644'
L_642:
// Line 827:									{

// Line 828:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 829:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 830:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 831:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 832:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 833:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 826:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_642'
L_643:
// Line 834:									}

// Line 835:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_649'
L_647:
// Line 837:									{

// Line 838:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 839:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 840:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 841:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 836:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_647'
L_648:
// Line 842:									}

// Line 843:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 844:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 845:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 846:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 848:									{

// Line 849:										xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 850:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 851:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 852:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 854:										{

// Line 855:											xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 856:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 857:											xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 858:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 860:											{

// Line 861:												xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 862:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 863:												xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 864:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 866:												{

// Line 867:													xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 868:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 869:													xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 870:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 872:													{

// Line 873:														xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 874:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 875:														xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 876:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 878:														{

// Line 879:															xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 880:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 881:															xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 882:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 884:															{

// Line 885:																xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 886:																x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 887:																xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 888:																x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 890:																{

// Line 891:																	xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 892:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 893:																	xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 894:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 896:																	{

// Line 897:																		xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 898:																		x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 899:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_690'
L_688:
// Line 901:																		{

// Line 902:																			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 900:																		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_688'
L_689:
// Line 903:																		}

// Line 904:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 905:																		x[xc]-=10;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 906:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_695'
L_693:
// Line 908:																		{

// Line 909:																			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 907:																		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_693'
L_694:
// Line 910:																		}

// Line 911:																		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 912:																		xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 913:																		x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 914:																		xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_686:
// Line 895:																	while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_684'
L_685:
// Line 915:																	}

L_682:
// Line 889:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_680'
L_681:
// Line 916:																}

L_678:
// Line 883:															while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_676'
L_677:
// Line 917:															}

L_674:
// Line 877:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_672'
L_673:
// Line 918:														}

L_670:
// Line 871:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_668'
L_669:
// Line 919:													}

L_666:
// Line 865:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_664'
L_665:
// Line 920:												}

L_662:
// Line 859:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_660'
L_661:
// Line 921:											}

L_658:
// Line 853:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_656'
L_657:
// Line 922:										}

L_654:
// Line 847:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_652'
L_653:
// Line 923:									}

// Line 924:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_640:
// Line 824:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_644'
L_639:
// Line 925:								}

// Line 926:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 927:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_710'
L_708:
// Line 929:								{

// Line 930:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 931:									x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 932:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 933:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 928:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_708'
L_709:
// Line 934:								}

// Line 935:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_631:
// Line 810:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_629'
L_630:
// Line 936:							}

// Line 937:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_716'
L_714:
// Line 939:							{

	br	'L_720'
L_718:
// Line 941:								{

// Line 942:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_720:
// Line 940:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_718'
L_719:
// Line 943:								}

// Line 944:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_716:
// Line 938:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_720'
L_715:
// Line 945:							}

// Line 946:							xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
	br	'L_726'
L_724:
// Line 948:							{

// Line 949:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 950:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 951:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 952:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 953:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 954:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 947:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_724'
L_725:
// Line 955:							}

// Line 956:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_731'
L_729:
// Line 958:							{

// Line 959:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 960:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 961:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 962:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 957:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_729'
L_730:
// Line 963:							}

// Line 964:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_736'
L_734:
// Line 966:							{

// Line 967:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_740'
L_738:
// Line 969:								{

	br	'L_744'
L_742:
// Line 971:									{

// Line 972:										xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_744:
// Line 970:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_742'
L_743:
// Line 973:									}

// Line 974:									xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_740:
// Line 968:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_744'
L_739:
// Line 975:								}

// Line 976:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 977:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 978:								xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_750'
L_748:
// Line 980:								{

	br	'L_754'
L_752:
// Line 982:									{

// Line 983:										xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_754:
// Line 981:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_752'
L_753:
// Line 984:									}

// Line 985:									xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_750:
// Line 979:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_754'
L_749:
// Line 986:								}

// Line 987:								xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 988:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 965:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_734'
L_735:
// Line 989:							}

// Line 990:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_761'
L_759:
// Line 992:							{

	br	'L_765'
L_763:
// Line 994:								{

// Line 995:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_765:
// Line 993:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_763'
L_764:
// Line 996:								}

// Line 997:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_761:
// Line 991:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_765'
L_760:
// Line 998:							}

// Line 999:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1000:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1001:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1002:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1004:							{

// Line 1005:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1006:								x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1007:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1008:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1003:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_769'
L_770:
// Line 1009:							}

// Line 1010:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_776'
L_774:
// Line 1012:							{

// Line 1013:								xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1014:								x[xc]+=3;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1015:								xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1016:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1018:								{

// Line 1019:									xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1020:									x[xc]+=5;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1021:									xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1022:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1024:									{

// Line 1025:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1026:										x[xc]-=3;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1027:										xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1028:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1029:										xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1030:										x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1031:										xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1032:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1034:										{

// Line 1035:											xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1036:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1037:											xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1038:											xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1039:											x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1040:											xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1041:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1043:											{

// Line 1044:												xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1045:												x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1046:												xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1047:												x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1048:												xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1049:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1051:												{

// Line 1052:													xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1053:													x[xc]+=3;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1054:													xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1055:													x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1056:													xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1057:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1059:													{

// Line 1060:														xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1061:														x[xc]-=5;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1062:														xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1063:														x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1064:														xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1065:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1067:														{

// Line 1068:															xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1069:															x[xc]-=3;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1070:															xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1071:															x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1072:															xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
// Line 1073:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1066:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_802'
L_803:
// Line 1074:														}

L_800:
// Line 1058:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_798'
L_799:
// Line 1075:													}

L_796:
// Line 1050:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_794'
L_795:
// Line 1076:												}

L_792:
// Line 1042:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_790'
L_791:
// Line 1077:											}

L_788:
// Line 1033:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_786'
L_787:
// Line 1078:										}

L_784:
// Line 1023:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_782'
L_783:
// Line 1079:									}

L_780:
// Line 1017:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_778'
L_779:
// Line 1080:								}

L_776:
// Line 1011:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_774'
L_775:
// Line 1081:							}

// Line 1082:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1084:							{

	br	'L_820'
L_818:
// Line 1086:								{

// Line 1087:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_820:
// Line 1085:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_818'
L_819:
// Line 1088:								}

// Line 1089:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_816:
// Line 1083:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_820'
L_815:
// Line 1090:							}

// Line 1091:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_497:
// Line 658:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_495'
L_496:
// Line 1092:						}

// Line 1093:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_827'
L_825:
// Line 1095:						{

// Line 1096:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1097:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_831'
L_829:
// Line 1099:							{

	br	'L_835'
L_833:
// Line 1101:								{

// Line 1102:									xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_835:
// Line 1100:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_833'
L_834:
// Line 1103:								}

// Line 1104:								xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_831:
// Line 1098:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_835'
L_830:
// Line 1105:							}

// Line 1106:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1107:							xc+=5;

	ldloc	'xc/1'
	ldc.i4	5
	add
	stloc	'xc/1'
// Line 1108:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1110:							{

	br	'L_845'
L_843:
// Line 1112:								{

// Line 1113:									xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_845:
// Line 1111:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_843'
L_844:
// Line 1114:								}

// Line 1115:								xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_841:
// Line 1109:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_845'
L_840:
// Line 1116:							}

// Line 1117:							xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
L_827:
// Line 1094:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_825'
L_826:
// Line 1118:						}

// Line 1119:						xc-=5;

	ldloc	'xc/1'
	ldc.i4	5
	sub
	stloc	'xc/1'
L_483:
// Line 635:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_481'
L_482:
// Line 1120:					}

// Line 1121:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_84:
// Line 184:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_82'
L_83:
// Line 1122:				}

// Line 1123:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_854'
L_852:
// Line 1125:				{

// Line 1126:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1127:					xc+=6;

	ldloc	'xc/1'
	ldc.i4	6
	add
	stloc	'xc/1'
	br	'L_858'
L_856:
// Line 1129:					{

	br	'L_862'
L_860:
// Line 1131:						{

// Line 1132:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_862:
// Line 1130:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_860'
L_861:
// Line 1133:						}

// Line 1134:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_858:
// Line 1128:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_862'
L_857:
// Line 1135:					}

// Line 1136:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1137:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_868'
L_866:
// Line 1139:					{

// Line 1140:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_868:
// Line 1138:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_866'
L_867:
// Line 1141:					}

// Line 1142:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_873'
L_871:
// Line 1144:					{

// Line 1145:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1146:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_877'
L_875:
// Line 1148:						{

// Line 1149:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_877:
// Line 1147:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_875'
L_876:
// Line 1150:						}

// Line 1151:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_882'
L_880:
// Line 1153:						{

// Line 1154:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_882:
// Line 1152:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_880'
L_881:
// Line 1155:						}

// Line 1156:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_887'
L_885:
// Line 1158:						{

// Line 1159:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_887:
// Line 1157:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_885'
L_886:
// Line 1160:						}

// Line 1161:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1162:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_892'
L_890:
// Line 1164:						{

// Line 1165:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_892:
// Line 1163:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_890'
L_891:
// Line 1166:						}

// Line 1167:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_897'
L_895:
// Line 1169:						{

// Line 1170:							xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_897:
// Line 1168:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_895'
L_896:
// Line 1171:						}

// Line 1172:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_902'
L_900:
// Line 1174:						{

// Line 1175:							xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_906'
L_904:
// Line 1177:							{

// Line 1178:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_906:
// Line 1176:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_904'
L_905:
// Line 1179:							}

// Line 1180:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_911'
L_909:
// Line 1182:							{

// Line 1183:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_911:
// Line 1181:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_909'
L_910:
// Line 1184:							}

// Line 1185:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_916'
L_914:
// Line 1187:							{

// Line 1188:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_916:
// Line 1186:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_914'
L_915:
// Line 1189:							}

// Line 1190:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 1191:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1192:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_921'
L_919:
// Line 1194:							{

// Line 1195:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_921:
// Line 1193:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_919'
L_920:
// Line 1196:							}

// Line 1197:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_926'
L_924:
// Line 1199:							{

// Line 1200:								xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_926:
// Line 1198:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_924'
L_925:
// Line 1201:							}

// Line 1202:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1203:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1173:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_900'
L_901:
// Line 1204:						}

// Line 1205:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1206:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1207:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_873:
// Line 1143:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_871'
L_872:
// Line 1208:					}

// Line 1209:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_933'
L_931:
// Line 1211:					{

// Line 1212:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1213:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_933:
// Line 1210:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_931'
L_932:
// Line 1214:					}

// Line 1215:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_938'
L_936:
// Line 1217:					{

// Line 1218:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_938:
// Line 1216:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_936'
L_937:
// Line 1219:					}

// Line 1220:					xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_943'
L_941:
// Line 1222:					{

// Line 1223:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1224:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_943:
// Line 1221:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_941'
L_942:
// Line 1225:					}

// Line 1226:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_948'
L_946:
// Line 1228:					{

// Line 1229:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_948:
// Line 1227:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_946'
L_947:
// Line 1230:					}

// Line 1231:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
	br	'L_953'
L_951:
// Line 1233:					{

// Line 1234:						x[xc]+=8;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1235:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_957'
L_955:
// Line 1237:						{

// Line 1238:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1239:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1240:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1241:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1236:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_955'
L_956:
// Line 1242:						}

// Line 1243:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_962'
L_960:
// Line 1245:						{

// Line 1246:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1247:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1248:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1249:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1244:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_960'
L_961:
// Line 1250:						}

// Line 1251:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1252:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_953:
// Line 1232:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_951'
L_952:
// Line 1253:					}

// Line 1254:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_968'
L_966:
// Line 1256:					{

// Line 1257:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_968:
// Line 1255:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_966'
L_967:
// Line 1258:					}

// Line 1259:					xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
// Line 1260:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1261:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_973'
L_971:
// Line 1263:					{

// Line 1264:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1265:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_977'
L_975:
// Line 1267:						{

// Line 1268:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1269:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1270:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1271:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1272:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1273:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1266:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_975'
L_976:
// Line 1274:						}

// Line 1275:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_982'
L_980:
// Line 1277:						{

// Line 1278:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1280:							{

// Line 1281:								x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1283:								{

// Line 1284:									x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1286:									{

// Line 1287:										x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1289:										{

// Line 1290:											x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1292:											{

// Line 1293:												x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1295:												{

// Line 1296:													x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1298:													{

// Line 1299:														x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1301:														{

// Line 1302:															x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1304:															{

// Line 1305:																xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1306:																x[xc]-=10;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1307:																xc+=4;

	ldloc	'xc/1'
	ldc.i4	4
	add
	stloc	'xc/1'
	br	'L_1022'
L_1020:
// Line 1309:																{

// Line 1310:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1308:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1020'
L_1021:
// Line 1311:																}

// Line 1312:																x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1313:																xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1314:																x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1315:																xc-=4;

	ldloc	'xc/1'
	ldc.i4	4
	sub
	stloc	'xc/1'
	br	'L_1027'
L_1025:
// Line 1317:																{

// Line 1318:																	x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1316:																while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1025'
L_1026:
// Line 1319:																}

L_1018:
// Line 1303:															while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1016'
L_1017:
// Line 1320:															}

L_1014:
// Line 1300:														while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1012'
L_1013:
// Line 1321:														}

L_1010:
// Line 1297:													while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1008'
L_1009:
// Line 1322:													}

L_1006:
// Line 1294:												while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1004'
L_1005:
// Line 1323:												}

L_1002:
// Line 1291:											while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1000'
L_1001:
// Line 1324:											}

L_998:
// Line 1288:										while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_996'
L_997:
// Line 1325:										}

L_994:
// Line 1285:									while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_992'
L_993:
// Line 1326:									}

L_990:
// Line 1282:								while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_988'
L_989:
// Line 1327:								}

L_986:
// Line 1279:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_984'
L_985:
// Line 1328:							}

L_982:
// Line 1276:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_980'
L_981:
// Line 1329:						}

// Line 1330:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_1042'
L_1040:
// Line 1332:						{

// Line 1333:							xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1334:							x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1335:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1336:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1331:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1040'
L_1041:
// Line 1337:						}

// Line 1338:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1339:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1340:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_973:
// Line 1262:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_971'
L_972:
// Line 1341:					}

// Line 1342:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1048'
L_1046:
// Line 1344:					{

// Line 1345:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1346:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_1048:
// Line 1343:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1046'
L_1047:
// Line 1347:					}

// Line 1348:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1053'
L_1051:
// Line 1350:					{

// Line 1351:						xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_1053:
// Line 1349:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1051'
L_1052:
// Line 1352:					}

// Line 1353:					xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
// Line 1354:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1355:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1058'
L_1056:
// Line 1357:					{

// Line 1358:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1359:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1360:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1361:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1356:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1056'
L_1057:
// Line 1362:					}

// Line 1363:					xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_1063'
L_1061:
// Line 1365:					{

// Line 1366:						xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_1063:
// Line 1364:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1061'
L_1062:
// Line 1367:					}

// Line 1368:					xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_1068'
L_1066:
// Line 1370:					{

// Line 1371:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1372:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1373:						xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_1072'
L_1070:
// Line 1375:						{

// Line 1376:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1377:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1378:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1076'
L_1074:
// Line 1380:							{

// Line 1381:								xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_1076:
// Line 1379:							while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1074'
L_1075:
// Line 1382:							}

// Line 1383:							xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
L_1072:
// Line 1374:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1070'
L_1071:
// Line 1384:						}

// Line 1385:						xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1082'
L_1080:
// Line 1387:						{

// Line 1388:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1389:							xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1390:							x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1391:							xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_1082:
// Line 1386:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1080'
L_1081:
// Line 1392:						}

// Line 1393:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_1068:
// Line 1369:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1066'
L_1067:
// Line 1394:					}

// Line 1395:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1396:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_1088'
L_1086:
// Line 1398:					{

// Line 1399:						xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1400:						x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1401:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1402:						x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1397:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1086'
L_1087:
// Line 1403:					}

// Line 1404:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1093'
L_1091:
// Line 1406:					{

	br	'L_1097'
L_1095:
// Line 1408:						{

// Line 1409:							xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
L_1097:
// Line 1407:						while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1095'
L_1096:
// Line 1410:						}

// Line 1411:						xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_1093:
// Line 1405:					while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1097'
L_1092:
// Line 1412:					}

// Line 1413:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
L_854:
// Line 1124:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_852'
L_853:
// Line 1414:				}

// Line 1415:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1104'
L_1102:
// Line 1417:				{

// Line 1418:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
L_1104:
// Line 1416:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1102'
L_1103:
// Line 1419:				}

// Line 1420:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1421:				xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_55:
// Line 144:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_53'
L_54:
// Line 1422:			}

// Line 1423:			xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1424:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1425:			xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1110'
L_1108:
// Line 1427:			{

// Line 1428:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1429:				x[xc]+=5;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1431:				{

// Line 1432:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1433:					x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1434:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1435:					x[xc]+=2;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1436:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1437:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1430:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1112'
L_1113:
// Line 1438:				}

// Line 1439:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1440:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1426:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1108'
L_1109:
// Line 1441:			}

// Line 1442:			xc+=5;

	ldloc	'xc/1'
	ldc.i4	5
	add
	stloc	'xc/1'
	br	'L_1120'
L_1118:
// Line 1444:			{

// Line 1445:				xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
// Line 1446:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1447:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1448:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1449:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1450:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1451:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1452:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1443:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1118'
L_1119:
// Line 1453:			}

// Line 1454:			xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1455:			x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1457:			{

// Line 1458:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1459:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1460:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1461:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1456:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1123'
L_1124:
// Line 1462:			}

// Line 1463:			x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1464:			xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1130'
L_1128:
// Line 1466:			{

// Line 1467:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
	br	'L_1134'
L_1132:
// Line 1469:				{

// Line 1470:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1471:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1472:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1473:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1468:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1132'
L_1133:
// Line 1474:				}

// Line 1475:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
	br	'L_1139'
L_1137:
// Line 1477:				{

// Line 1478:					xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1479:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1480:					xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1481:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1476:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1137'
L_1138:
// Line 1482:				}

// Line 1483:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
	br	'L_1144'
L_1142:
// Line 1485:				{

// Line 1486:					xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1487:					x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1488:					xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1489:					x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1484:				while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1142'
L_1143:
// Line 1490:				}

// Line 1491:				xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1492:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1465:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1128'
L_1129:
// Line 1493:			}

// Line 1494:			xc-=3;

	ldloc	'xc/1'
	ldc.i4	3
	sub
	stloc	'xc/1'
	br	'L_1150'
L_1148:
// Line 1496:			{

// Line 1497:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1495:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1148'
L_1149:
// Line 1498:			}

// Line 1499:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_1155'
L_1153:
// Line 1501:			{

// Line 1502:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1503:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1504:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1505:				xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
// Line 1506:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1507:				xc-=2;

	ldloc	'xc/1'
	ldc.i4	2
	sub
	stloc	'xc/1'
// Line 1508:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1500:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1153'
L_1154:
// Line 1509:			}

// Line 1510:			x[xc]+=6;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1512:			{

// Line 1513:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1514:				x[xc]+=8;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1515:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1516:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1511:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1158'
L_1159:
// Line 1517:			}

// Line 1518:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_1165'
L_1163:
// Line 1520:			{

// Line 1521:				xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1522:				x[xc]++;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1523:				xc++;

	ldloc	'xc/1'
	ldc.i4	1
	add
	stloc	'xc/1'
// Line 1524:				x[xc]-=2;

	ldloc	'xc/1'
	ldc.i4	2
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
// Line 1519:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1163'
L_1164:
// Line 1525:			}

// Line 1526:			xc--;

	ldloc	'xc/1'
	ldc.i4	1
	sub
	stloc	'xc/1'
// Line 1527:			putchar(x[xc]);

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	call	int32 'putchar'(int32)
	pop
	br	'L_1170'
L_1168:
// Line 1529:			{

// Line 1530:				x[xc]--;

	ldloc	'xc/1'
	ldc.i4	2
	shl
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
// Line 1528:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1168'
L_1169:
// Line 1531:			}

// Line 1532:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
	br	'L_1175'
L_1173:
// Line 1534:			{

// Line 1535:				xc+=3;

	ldloc	'xc/1'
	ldc.i4	3
	add
	stloc	'xc/1'
L_1175:
// Line 1533:			while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1173'
L_1174:
// Line 1536:			}

// Line 1537:			xc+=2;

	ldloc	'xc/1'
	ldc.i4	2
	add
	stloc	'xc/1'
L_16:
// Line 86:		while(x[xc] != 0)

	ldloc	'xc/1'
	ldc.i4	2
	shl
	ldloca	'x/0'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_20'
L_15:
// Line 1538:		}

// Line 1539:		printf("\n");

	ldsflda	valuetype 'int8[]' 'L_1'

	call	vararg void 'printf'(void*, ...)
// Line 1540:	}

	ldc.i4	0
L_3:
	ret

}
 .field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (a 0 
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
.class private value explicit ansi sealed 'int32[32768]' {.pack 1 .size 131072}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg void 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'putchar'(int32) preservesig {}
