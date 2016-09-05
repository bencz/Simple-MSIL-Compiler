//File create_exe_2.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 171:	int main() {

	.locals
	(
		[0] int32 'n/0',
		[1] int32 'k/1',
		[2] void* 'pImport/2'
	)
	.maxstack	5
L_12:
// Line 173:		BYTE *pImport;

// Line 174:	

// Line 175:		exe.typeApp = 2;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	2
	stind.i4
// Line 176:		exe.sizeCodeSection = MEMALIGN;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	12
	add
	ldc.i4	4096
	stind.i4
// Line 177:		exe.sizeDataSection = MEMALIGN;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	16
	add
	ldc.i4	4096
	stind.i4
// Line 178:		exe.posCodeSection = MEMALIGN;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	20
	add
	ldc.i4	4096
	stind.i4
// Line 179:		exe.posDataSection = MEMALIGN * 2;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldc.i4	8192
	stind.i4
// Line 180:		exe.entryPoint = exe.posCodeSection;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	28
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	20
	add
	ldind.i4
	stind.i4
// Line 181:		pImport = getImport();

	call	void* 'getImport'()
	stloc	'pImport/2'
// Line 182:		genExe(pImport);

	ldloc	'pImport/2'
	call	void 'genExe'(void*)
// Line 183:		free(pImport);

	ldloc	'pImport/2'
	call	void 'free'(void*)
	ldc.i4	0
	stloc	'n/0'
	br	'L_16'
L_15:
	ldc.i4	0
	stloc	'k/1'
	br	'L_20'
L_19:
// Line 186:				printf("%X %s\n", dll[n].FuncAddr[k], dll[n].FuncName[k]);

	ldsflda	valuetype 'int8[]' 'L_11'

	ldloc	'n/0'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	72
	add
	ldloc	'k/1'
	ldc.i4	2
	shl
	add
	ldind.i4
	ldloc	'n/0'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	4
	add
	ldloc	'k/1'
	ldc.i4	2
	shl
	add
	ldind.u4
	call	vararg int32 'printf'(void*, ..., int32, void*)
	pop
L_22:
	ldloc	'k/1'
	ldc.i4	1
	add
	stloc	'k/1'
// Line 185:			for (k = 0; k < dll[n].nFunc; k++)

L_20:
	ldloc	'k/1'
	ldloc	'n/0'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	68
	add
	ldind.i4
	blt	'L_19'
L_21:
L_18:
	ldloc	'n/0'
	ldc.i4	1
	add
	stloc	'n/0'
// Line 184:		for (n = 0; n < exe.useDLL; n++)

L_16:
	ldloc	'n/0'
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	blt	'L_15'
L_17:
// Line 187:		return 0;

	ldc.i4	0
// Line 188:	}

L_13:
	ret

}
 .method public hidebysig static void 'error'(void* 'msg' ) cil managed
{
// Line 44:	void error(char *msg)

// Line 45:	{

	.maxstack	2
L_28:
// Line 46:		printf("%s", msg);

	ldsflda	valuetype 'int8[]' 'L_5'

	ldarg	'msg'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
// Line 47:		exit(1);

	ldc.i4	1
	call	void 'exit'(int32)
// Line 48:	}

L_29:
	ret

}
 .method public hidebysig static void* 'getImport'() cil managed
{
// Line 50:	BYTE *getImport() {

	.locals
	(
		[0] int32 'nLookup/0',
		[1] int32 'nImptAddr/1',
		[2] int32 'nName/2',
		[3] int32 'n/3',
		[4] int32 'k/4',
		[5] int32 'sizeImpt/5',
		[6] void* 'pImpt/6'
	)
	.maxstack	4
L_36:
// Line 51:		int nLookup, nImptAddr, nName;	

// Line 52:		int n, k, sizeImpt = 0;

	ldloca	'sizeImpt/5'
	ldc.i4	0
	stind.i4
// Line 53:		DWORD *pImpt;

// Line 54:	

// Line 55:		exe.useFunc = 0;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	36
	add
	ldc.i4	0
	stind.i4
// Line 56:		exe.useDLL = sizeof(dll) / sizeof(DLL);

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldc.i4	2
	stind.i4
	ldc.i4	0
	stloc	'n/3'
	br	'L_40'
L_39:
// Line 58:			sizeImpt += strlen(dll[n].dllname) + 1;			

	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldind.u4
	call	uint32 'strlen'(void*)
	ldc.i4	1
	add
	ldloc	'sizeImpt/5'
	conv.u4
	add
	conv.i4
	stloc	'sizeImpt/5'
	ldc.i4	0
	stloc	'k/4'
	br	'L_45'
L_44:
// Line 60:				sizeImpt += strlen(dll[n].FuncName[k]) + 3;	

	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	4
	add
	ldloc	'k/4'
	ldc.i4	2
	shl
	add
	ldind.u4
	call	uint32 'strlen'(void*)
	ldc.i4	3
	add
	ldloc	'sizeImpt/5'
	conv.u4
	add
	conv.i4
	stloc	'sizeImpt/5'
L_47:
	ldloc	'k/4'
	ldc.i4	1
	add
	stloc	'k/4'
// Line 59:			for (k = 0; k < dll[n].nFunc; k++)

L_45:
	ldloc	'k/4'
	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	68
	add
	ldind.i4
	blt	'L_44'
L_46:
// Line 61:			exe.useFunc += dll[n].nFunc;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	36
	add
	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	68
	add
	ldind.i4
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	36
	add
	ldind.i4
	add
	stind.i4
L_42:
	ldloc	'n/3'
	ldc.i4	1
	add
	stloc	'n/3'
// Line 57:		for (n = 0; n < exe.useDLL; n++) {

L_40:
	ldloc	'n/3'
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	blt	'L_39'
L_41:
// Line 62:		}

// Line 63:		sizeImpt += (exe.useDLL + 1) * 20 + (exe.useDLL + exe.useFunc) * 4 * 2;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	ldc.i4	1
	add
	ldc.i4	20
	mul
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	36
	add
	ldind.i4
	add
	ldc.i4	3
	shl
	add
	ldloc	'sizeImpt/5'
	add
	stloc	'sizeImpt/5'
// Line 64:		sizeImpt = ((sizeImpt - 1) / 16 + 1) * 16;	

	ldloc	'sizeImpt/5'
	ldc.i4	1
	sub
	ldc.i4	4
	shr.un
	ldc.i4	1
	add
	ldc.i4	4
	shl
	stloc	'sizeImpt/5'
// Line 65:	

// Line 66:		pImpt = calloc(sizeImpt, 1);

	ldloc	'sizeImpt/5'
	conv.u4
	ldc.i4	1
	conv.u4
	call	void* 'calloc'(uint32, uint32)
	stloc	'pImpt/6'
// Line 67:		if (pImpt == NULL) 

	ldloc	'pImpt/6'
	ldc.i4	0
	bne.un	'L_49'
// Line 68:			error("Fail to allocate memory for pImpt");

	ldsflda	valuetype 'int8[]' 'L_6'

	call	void 'error'(void*)
L_49:
// Line 69:		nLookup = (exe.useDLL + 1) * 5;					

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	ldc.i4	1
	add
	ldc.i4	5
	mul
	stloc	'nLookup/0'
// Line 70:		nImptAddr = nLookup + (exe.useDLL + exe.useFunc);		

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	36
	add
	ldind.i4
	add
	ldloc	'nLookup/0'
	add
	stloc	'nImptAddr/1'
// Line 71:		nName = (nImptAddr + (exe.useDLL + exe.useFunc)) * 4;	

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	36
	add
	ldind.i4
	add
	ldloc	'nImptAddr/1'
	add
	ldc.i4	2
	shl
	stloc	'nName/2'
	ldc.i4	0
	stloc	'n/3'
	br	'L_51'
L_50:
// Line 73:			pImpt[n * 5] = exe.posDataSection + nLookup * 4;		

	ldloc	'n/3'
	ldc.i4	5
	mul
	ldc.i4	2
	shl
	ldloc	'pImpt/6'
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldind.i4
	ldloc	'nLookup/0'
	ldc.i4	2
	shl
	add
	conv.u4
	stind.i4
// Line 74:			pImpt[n * 5 + 4] = exe.posDataSection + nImptAddr * 4;	

	ldloc	'n/3'
	ldc.i4	5
	mul
	ldc.i4	4
	add
	ldc.i4	2
	shl
	ldloc	'pImpt/6'
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldind.i4
	ldloc	'nImptAddr/1'
	ldc.i4	2
	shl
	add
	conv.u4
	stind.i4
	ldc.i4	0
	stloc	'k/4'
	br	'L_56'
L_55:
// Line 76:				dll[n].FuncAddr[k] = pImpt[n * 5 + 4] + k * 4;

	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	72
	add
	ldloc	'k/4'
	ldc.i4	2
	shl
	add
	ldloc	'n/3'
	ldc.i4	5
	mul
	ldc.i4	4
	add
	ldc.i4	2
	shl
	ldloc	'pImpt/6'
	add
	ldind.u4
	ldloc	'k/4'
	ldc.i4	2
	shl
	conv.u4
	add
	conv.i4
	stind.i4
// Line 77:				pImpt[nLookup++] = exe.posDataSection + nName;

	ldloc	'nLookup/0'
	ldc.i4	2
	shl
	ldloc	'pImpt/6'
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldind.i4
	ldloc	'nName/2'
	add
	conv.u4
	stind.i4
	ldloc	'nLookup/0'
	ldc.i4	1
	add
	stloc	'nLookup/0'
// Line 78:				pImpt[nImptAddr++] = exe.posDataSection + nName;

	ldloc	'nImptAddr/1'
	ldc.i4	2
	shl
	ldloc	'pImpt/6'
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldind.i4
	ldloc	'nName/2'
	add
	conv.u4
	stind.i4
	ldloc	'nImptAddr/1'
	ldc.i4	1
	add
	stloc	'nImptAddr/1'
// Line 79:				strcpy((char*)pImpt + nName + 2, dll[n].FuncName[k]);	

	ldloc	'pImpt/6'
	ldloc	'nName/2'
	add
	ldc.i4	2
	add
	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	4
	add
	ldloc	'k/4'
	ldc.i4	2
	shl
	add
	ldind.u4
	call	void* 'strcpy'(void*, void*)
	pop
// Line 80:				nName += strlen(dll[n].FuncName[k]) + 3;

	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	4
	add
	ldloc	'k/4'
	ldc.i4	2
	shl
	add
	ldind.u4
	call	uint32 'strlen'(void*)
	ldc.i4	3
	add
	ldloc	'nName/2'
	conv.u4
	add
	conv.i4
	stloc	'nName/2'
L_58:
	ldloc	'k/4'
	ldc.i4	1
	add
	stloc	'k/4'
// Line 75:			for (k = 0; k < dll[n].nFunc; k++) {

L_56:
	ldloc	'k/4'
	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldc.i4	68
	add
	ldind.i4
	blt	'L_55'
L_57:
// Line 81:			}

// Line 82:			nLookup++;	

	ldloc	'nLookup/0'
	ldc.i4	1
	add
	stloc	'nLookup/0'
// Line 83:			nImptAddr++;

	ldloc	'nImptAddr/1'
	ldc.i4	1
	add
	stloc	'nImptAddr/1'
// Line 84:			pImpt[n * 5 + 3] = exe.posDataSection + nName;		

	ldloc	'n/3'
	ldc.i4	5
	mul
	ldc.i4	3
	add
	ldc.i4	2
	shl
	ldloc	'pImpt/6'
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldind.i4
	ldloc	'nName/2'
	add
	conv.u4
	stind.i4
// Line 85:			strcpy((char*)pImpt + nName, dll[n].dllname);		

	ldloc	'pImpt/6'
	ldloc	'nName/2'
	add
	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldind.u4
	call	void* 'strcpy'(void*, void*)
	pop
// Line 86:			nName += strlen(dll[n].dllname) + 1;

	ldloc	'n/3'
	ldc.i4	136
	mul
	ldsflda	valuetype '_DLL[2]' 'dll'

	add
	ldind.u4
	call	uint32 'strlen'(void*)
	ldc.i4	1
	add
	ldloc	'nName/2'
	conv.u4
	add
	conv.i4
	stloc	'nName/2'
L_53:
	ldloc	'n/3'
	ldc.i4	1
	add
	stloc	'n/3'
// Line 72:		for (n = 0; n < exe.useDLL; n++) {

L_51:
	ldloc	'n/3'
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	blt	'L_50'
L_52:
// Line 87:		}

// Line 88:		exe.sizeImptArea = sizeImpt;

	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	4
	add
	ldloc	'sizeImpt/5'
	stind.i4
// Line 89:		return (BYTE*)pImpt;

	ldloc	'pImpt/6'
// Line 90:	}

L_37:
	ret

}
 .method public hidebysig static void 'genExe'(void* 'bufImport' ) cil managed
{
// Line 92:	void genExe(BYTE *bufImport) {

	.locals
	(
		[0] void* 'bufEXE/0',
		[1] void* 'fpDst/1',
		[2] int32 'posImptAddrTable/2',
		[3] int32 'sizeImptAddrTable/3',
		[4] int32 'IMPT/4',
		[5] int32 'MSG/5',
		[6] int32 'EXIT/6',
		[7] valuetype 'uint8[28]' 'CodeBuffer/7',
		[8] valuetype 'uint8[23]' 'DataBuffer/8',
		[9] int32 'lenDataSection/9',
		[10] int32 'sizeImage/10',
		[11] valuetype '_EXE_HEADER' 'exeHeader/11'
	)
	.maxstack	5
L_67:
// Line 94:		FILE *fpDst;

// Line 95:	

// Line 96:		int posImptAddrTable = exe.posDataSection

	ldloca	'posImptAddrTable/2'
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	ldc.i4	1
	add
	ldc.i4	20
	mul
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldind.i4
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	36
	add
	ldind.i4
	add
	ldc.i4	2
	shl
	add
	stind.i4
// Line 97:			+ (exe.useDLL + 1) * 20 + (exe.useDLL + exe.useFunc) * 4;

// Line 98:		int sizeImptAddrTable = (exe.useDLL + exe.useFunc) * 4;

	ldloca	'sizeImptAddrTable/3'
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	32
	add
	ldind.i4
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	36
	add
	ldind.i4
	add
	ldc.i4	2
	shl
	stind.i4
// Line 99:	

// Line 100:		

// Line 101:		int IMPT = exe.sizeImptArea;

	ldloca	'IMPT/4'
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	4
	add
	ldind.i4
	stind.i4
// Line 102:		int MSG = 0x4C;

	ldloca	'MSG/5'
	ldc.i4	76
	stind.i4
// Line 103:		int EXIT = 0x54;

	ldloca	'EXIT/6'
	ldc.i4	84
	stind.i4
// Line 104:		BYTE CodeBuffer[] = {

	ldloca	'CodeBuffer/7'
	ldc.i4	0
	ldc.i4	28
	initblk
	ldloca	'CodeBuffer/7'
	conv.u4
	ldc.i4	106
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	1
	add
	ldc.i4	0
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	2
	add
	ldc.i4	104
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	3
	add
	ldloc	'IMPT/4'
	ldc.i4	13
	add
	conv.u1
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	4
	add
	ldc.i4	32
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	5
	add
	ldc.i4	64
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	6
	add
	ldc.i4	0
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	7
	add
	ldc.i4	104
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	8
	add
	ldloc	'IMPT/4'
	conv.u1
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	9
	add
	ldc.i4	32
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	10
	add
	ldc.i4	64
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	11
	add
	ldc.i4	0
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	12
	add
	ldc.i4	106
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	13
	add
	ldc.i4	0
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	14
	add
	ldc.i4	255
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	15
	add
	ldc.i4	21
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	16
	add
	ldloc	'MSG/5'
	conv.u1
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	17
	add
	ldc.i4	32
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	18
	add
	ldc.i4	64
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	19
	add
	ldc.i4	0
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	20
	add
	ldc.i4	106
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	21
	add
	ldc.i4	0
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	22
	add
	ldc.i4	255
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	23
	add
	ldc.i4	21
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	24
	add
	ldloc	'EXIT/6'
	conv.u1
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	25
	add
	ldc.i4	32
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	26
	add
	ldc.i4	64
	stind.i1
	ldloca	'CodeBuffer/7'
	ldc.i4	27
	add
	ldc.i4	0
	stind.i1
// Line 112:		};

// Line 113:		

// Line 114:		BYTE DataBuffer[] = "Hello World!\0exe test\0";

	ldloca	'DataBuffer/8'
	ldc.i4	0
	ldc.i4	23
	initblk
	ldloca	'DataBuffer/8'
	conv.u4
	ldc.i4	72
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	1
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	2
	add
	ldc.i4	108
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	3
	add
	ldc.i4	108
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	4
	add
	ldc.i4	111
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	5
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	6
	add
	ldc.i4	87
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	7
	add
	ldc.i4	111
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	8
	add
	ldc.i4	114
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	9
	add
	ldc.i4	108
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	10
	add
	ldc.i4	100
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	11
	add
	ldc.i4	33
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	12
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	13
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	14
	add
	ldc.i4	120
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	15
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	16
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	17
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	18
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	19
	add
	ldc.i4	115
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	20
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	21
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'DataBuffer/8'
	ldc.i4	22
	add
	ldc.i4	0
	conv.u1
	stind.i1
// Line 115:	

// Line 116:		int lenDataSection = exe.sizeImptArea + sizeof(DataBuffer);

	ldloca	'lenDataSection/9'
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	4
	add
	ldind.i4
	ldc.i4	23
	add
	stind.i4
// Line 117:		int sizeImage = MEMALIGN * 3;

	ldloca	'sizeImage/10'
	ldc.i4	12288
	stind.i4
// Line 118:		EXE_HEADER exeHeader = {

// Line 119:			{ 	

// Line 120:				0x5A4D, 0x90, 3, 0, 4,                

// Line 121:			0, 0xFFFF, 0, 0xB8,	                  

// Line 122:				0,0,0, 0x40, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,

// Line 123:				0x0080,                              

// Line 124:			},

// Line 125:		"\x0E\x1F\xBA\x0E\x00\xB4\x09\xCD\x21\xB8\x01\x4C\xCD\x21"

// Line 126:			  "This program cannot be run in DOS mode.\r\r\n$",	

// Line 127:			0x00004550,				  

// Line 128:		{   

// Line 129:			0x014c, 2, 0, 0, 0,			  

// Line 130:				sizeof(IMAGE_OPTIONAL_HEADER),0x030F  

// Line 131:			}, {   

// Line 132:			0x010B, 0x06, 0x00,			  

// Line 133:			0, 0, 0, exe.entryPoint, 		  

// Line 134:			exe.posCodeSection, exe.posDataSection,	  

// Line 135:			0x00400000,				  

// Line 136:			MEMALIGN, RAWALIGN,			  

// Line 137:			4, 0,  0, 0,  4, 0,	 0,		  

// Line 138:			sizeImage, MEMALIGN, 0,		  

// Line 139:			exe.typeApp, 0,			  

// Line 140:			0x100000, 0x1000, 0x100000, 0x1000,	  

// Line 141:			0, 0x10,

// Line 142:				{ {0,0}, {exe.posDataSection, exe.sizeDataSection},                     

// Line 143:				{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},

// Line 144:			{posImptAddrTable, sizeImptAddrTable},{0,0},{0,0},{0,0} }	    

	ldloca	'exeHeader/11'
	ldc.i4	0
	ldc.i4	496
	initblk
	ldloca	'exeHeader/11'
	conv.u4
	ldc.i4	23117
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	2
	add
	ldc.i4	144
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	4
	add
	ldc.i4	3
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	6
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	8
	add
	ldc.i4	4
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	10
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	12
	add
	ldc.i4	65535
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	14
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	16
	add
	ldc.i4	184
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	18
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	20
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	22
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	24
	add
	ldc.i4	64
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	26
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	28
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	30
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	32
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	34
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	36
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	38
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	40
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	42
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	44
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	46
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	48
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	50
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	52
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	54
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	56
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	58
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	60
	add
	ldc.i4	128
	conv.i4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	64
	add
	ldc.i4	14
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	65
	add
	ldc.i4	31
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	66
	add
	ldc.i4	186
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	67
	add
	ldc.i4	14
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	68
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	69
	add
	ldc.i4	180
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	70
	add
	ldc.i4	9
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	71
	add
	ldc.i4	205
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	72
	add
	ldc.i4	33
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	73
	add
	ldc.i4	184
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	74
	add
	ldc.i4	1
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	75
	add
	ldc.i4	76
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	76
	add
	ldc.i4	205
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	77
	add
	ldc.i4	33
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	78
	add
	ldc.i4	84
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	79
	add
	ldc.i4	104
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	80
	add
	ldc.i4	105
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	81
	add
	ldc.i4	115
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	82
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	83
	add
	ldc.i4	112
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	84
	add
	ldc.i4	114
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	85
	add
	ldc.i4	111
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	86
	add
	ldc.i4	103
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	87
	add
	ldc.i4	114
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	88
	add
	ldc.i4	97
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	89
	add
	ldc.i4	109
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	90
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	91
	add
	ldc.i4	99
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	92
	add
	ldc.i4	97
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	93
	add
	ldc.i4	110
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	94
	add
	ldc.i4	110
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	95
	add
	ldc.i4	111
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	96
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	97
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	98
	add
	ldc.i4	98
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	99
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	100
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	101
	add
	ldc.i4	114
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	102
	add
	ldc.i4	117
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	103
	add
	ldc.i4	110
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	104
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	105
	add
	ldc.i4	105
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	106
	add
	ldc.i4	110
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	107
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	108
	add
	ldc.i4	68
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	109
	add
	ldc.i4	79
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	110
	add
	ldc.i4	83
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	111
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	112
	add
	ldc.i4	109
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	113
	add
	ldc.i4	111
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	114
	add
	ldc.i4	100
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	115
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	116
	add
	ldc.i4	46
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	117
	add
	ldc.i4	13
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	118
	add
	ldc.i4	13
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	119
	add
	ldc.i4	10
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	120
	add
	ldc.i4	36
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	121
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	122
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	123
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	124
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	125
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	126
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	127
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	128
	add
	ldc.i4	17744
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	132
	add
	ldc.i4	332
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	134
	add
	ldc.i4	2
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	136
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	140
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	144
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	148
	add
	ldc.i4	224
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	150
	add
	ldc.i4	783
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	152
	add
	ldc.i4	267
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	154
	add
	ldc.i4	6
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	155
	add
	ldc.i4	0
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	156
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	160
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	164
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	168
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	28
	add
	ldind.i4
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	172
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	20
	add
	ldind.i4
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	176
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldind.i4
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	180
	add
	ldc.i4	4194304
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	184
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	188
	add
	ldc.i4	512
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	192
	add
	ldc.i4	4
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	194
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	196
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	198
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	200
	add
	ldc.i4	4
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	202
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	204
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	208
	add
	ldloc	'sizeImage/10'
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	212
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	216
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	220
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldind.i4
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	222
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	224
	add
	ldc.i4	1048576
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	228
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	232
	add
	ldc.i4	1048576
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	236
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	240
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	244
	add
	ldc.i4	16
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	248
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	252
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	256
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldind.i4
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	260
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	16
	add
	ldind.i4
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	264
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	268
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	272
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	276
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	280
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	284
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	288
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	292
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	296
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	300
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	304
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	308
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	312
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	316
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	320
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	324
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	328
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	332
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	336
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	340
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	344
	add
	ldloc	'posImptAddrTable/2'
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	348
	add
	ldloc	'sizeImptAddrTable/3'
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	352
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	356
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	360
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	364
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	368
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	372
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	376
	add
	ldc.i4	46
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	377
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	378
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	379
	add
	ldc.i4	120
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	380
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	381
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	382
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	383
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	384
	add
	ldc.i4	28
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	388
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	20
	add
	ldind.i4
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	392
	add
	ldc.i4	512
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	396
	add
	ldc.i4	512
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	400
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	404
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	408
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	410
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	412
	add
	ldc.i4	1610612768
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	416
	add
	ldc.i4	46
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	417
	add
	ldc.i4	100
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	418
	add
	ldc.i4	97
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	419
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	420
	add
	ldc.i4	97
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	421
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	422
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	423
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/11'
	ldc.i4	424
	add
	ldloc	'lenDataSection/9'
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	428
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	24
	add
	ldind.i4
	conv.u4
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	432
	add
	ldc.i4	512
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	436
	add
	ldc.i4	1024
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	440
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	444
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/11'
	ldc.i4	448
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	450
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/11'
	ldc.i4	452
	add
	ldc.i4	-1073741760
	stind.i4
// Line 154:		};

// Line 155:		bufEXE = calloc(RAWALIGN * 3, sizeof(BYTE));

	ldc.i4	1536
	conv.u4
	ldc.i4	1
	conv.u4
	call	void* 'calloc'(uint32, uint32)
	stloc	'bufEXE/0'
// Line 156:		if (bufEXE == NULL)

	ldloc	'bufEXE/0'
	ldc.i4	0
	bne.un	'L_70'
// Line 157:			error("Fail to alloc memory for bufEXE");

	ldsflda	valuetype 'int8[]' 'L_7'

	call	void 'error'(void*)
L_70:
// Line 158:		memcpy(bufEXE, &exeHeader, sizeof(exeHeader));

	ldloc	'bufEXE/0'
	ldloca	'exeHeader/11'
	conv.u4
	ldc.i4	496
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 159:		memcpy(bufEXE + RAWALIGN, &CodeBuffer, sizeof(CodeBuffer));

	ldloc	'bufEXE/0'
	ldc.i4	512
	add
	ldloca	'CodeBuffer/7'
	conv.u4
	ldc.i4	28
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 160:		memcpy(bufEXE + RAWALIGN * 2, bufImport, exe.sizeImptArea);

	ldloc	'bufEXE/0'
	ldc.i4	1024
	add
	ldarg	'bufImport'
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	4
	add
	ldind.i4
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 161:		memcpy(bufEXE + RAWALIGN * 2 + exe.sizeImptArea, DataBuffer, sizeof(DataBuffer));

	ldloc	'bufEXE/0'
	ldc.i4	1024
	add
	ldsflda	valuetype '_EXE' 'exe'

	ldc.i4	4
	add
	ldind.i4
	add
	ldloca	'DataBuffer/8'
	conv.u4
	ldc.i4	23
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 162:	

// Line 163:		if ((fpDst = fopen("created_exe_2.exe", "wb")) == NULL)

	ldsflda	valuetype 'int8[]' 'L_8'

	ldsflda	valuetype 'int8[]' 'L_9'

	call	void* 'fopen'(void*, void*)
	stloc	'fpDst/1'
	ldloc	'fpDst/1'
	ldc.i4	0
	bne.un	'L_71'
// Line 164:			error("Fail to open 'created_exe2.exe' for write");

	ldsflda	valuetype 'int8[]' 'L_10'

	call	void 'error'(void*)
L_71:
// Line 165:		fwrite(bufEXE, RAWALIGN * 3, 1, fpDst);

	ldloc	'bufEXE/0'
	ldc.i4	1536
	conv.u4
	ldc.i4	1
	conv.u4
	ldloc	'fpDst/1'
	call	uint32 'fwrite'(void*, uint32, uint32, void*)
	pop
// Line 166:		free(bufImport);

	ldarg	'bufImport'
	call	void 'free'(void*)
// Line 167:		fclose(fpDst);

	ldloc	'fpDst/1'
	call	int32 'fclose'(void*)
	pop
// Line 168:		free(bufEXE);

	ldloc	'bufEXE/0'
	call	void 'free'(void*)
// Line 169:	}

L_68:
	ret

}
 .field public static valuetype '_EXE' 'exe' at $exe
.data $exe = bytearray (0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype '_DLL[2]' 'dll' at $dll
.data $dll = bytearray (0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 1 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 1 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.method private hidebysig static void '__DYNAMIC_STARTUP___3141815150'() cil managed
{
	.maxstack	2
L_77:
	ldsflda	valuetype '_DLL[2]' 'dll'

	ldsflda	valuetype 'int8[]' 'L_1'

	stind.i4
	ldsflda	valuetype '_DLL[2]' 'dll'

	ldc.i4	4
	add
	ldsflda	valuetype 'int8[]' 'L_2'

	stind.i4
	ldsflda	valuetype '_DLL[2]' 'dll'

	ldc.i4	136
	add
	ldsflda	valuetype 'int8[]' 'L_3'

	stind.i4
	ldsflda	valuetype '_DLL[2]' 'dll'

	ldc.i4	140
	add
	ldsflda	valuetype 'int8[]' 'L_4'

	stind.i4
L_78:
	ret

}
 .field public static valuetype 'int8[]' 'L_11' at $L_11
.data $L_11 = bytearray (25 58 20 25 73 a 0 
)
.field public static valuetype 'int8[]' 'L_10' at $L_10
.data $L_10 = bytearray (46 61 69 6c 20 74 6f 20 
	6f 70 65 6e 20 27 63 72 
	65 61 74 65 64 5f 65 78 
	65 32 2e 65 78 65 27 20 
	66 6f 72 20 77 72 69 74 
	65 0 
)
.field public static valuetype 'int8[]' 'L_9' at $L_9
.data $L_9 = bytearray (77 62 0 
)
.field public static valuetype 'int8[]' 'L_8' at $L_8
.data $L_8 = bytearray (63 72 65 61 74 65 64 5f 
	65 78 65 5f 32 2e 65 78 
	65 0 
)
.field public static valuetype 'int8[]' 'L_7' at $L_7
.data $L_7 = bytearray (46 61 69 6c 20 74 6f 20 
	61 6c 6c 6f 63 20 6d 65 
	6d 6f 72 79 20 66 6f 72 
	20 62 75 66 45 58 45 0 
	
)
.field public static valuetype 'int8[]' 'L_6' at $L_6
.data $L_6 = bytearray (46 61 69 6c 20 74 6f 20 
	61 6c 6c 6f 63 61 74 65 
	20 6d 65 6d 6f 72 79 20 
	66 6f 72 20 70 49 6d 70 
	74 0 
)
.field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (25 73 0 
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (45 78 69 74 50 72 6f 63 
	65 73 73 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (6b 65 72 6e 65 6c 33 32 
	2e 64 6c 6c 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (4d 65 73 73 61 67 65 42 
	6f 78 41 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (75 73 65 72 33 32 2e 64 
	6c 6c 0 
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
	call void __DYNAMIC_STARTUP___3141815150()
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
.class private value explicit ansi sealed '_DLL' {.pack 1 .size 136}
.class private value explicit ansi sealed '_DLL[2]' {.pack 1 .size 272}
.class private value explicit ansi sealed '_EXE' {.pack 1 .size 40}
.class private value explicit ansi sealed '_EXE_HEADER' {.pack 1 .size 496}
.class private value explicit ansi sealed 'uint8[23]' {.pack 1 .size 23}
.class private value explicit ansi sealed 'uint8[28]' {.pack 1 .size 28}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'fwrite'(void*, uint32, uint32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'fopen'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fclose'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'calloc'(uint32, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'strlen'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strcpy'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'memcpy'(void*, void*, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'free'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
