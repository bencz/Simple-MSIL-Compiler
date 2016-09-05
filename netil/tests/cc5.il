//File cc5.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 863:	int main(int argc, char *argv[])

// Line 864:	{

	.locals
	(
		[0] int32 'n/0',
		[1] int32 'nSrc/1',
		[2] int32 'entryPoint/2'
	)
	.maxstack	6
L_133:
// Line 865:		int n, nSrc = 1;

	ldloca	'nSrc/1'
	ldc.i4	1
	stind.i4
// Line 866:		int entryPoint;

	ldc.i4	1
	stloc	'n/0'
	br	'L_137'
L_136:
// Line 868:		{

// Line 869:			if (strcmp(argv[n], "-token") == 0)

	ldloc	'n/0'
	ldc.i4	2
	shl
	ldarg	'argv'
	add
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_129'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_141'
// Line 870:				fToken = 1;

	ldc.i4	1
	stsfld	int32 'fToken'

	br	'L_142'
L_141:
// Line 871:			else if (strcmp(argv[n], "-trace") == 0)

	ldloc	'n/0'
	ldc.i4	2
	shl
	ldarg	'argv'
	add
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_130'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_143'
// Line 872:				fTrace = 1;

	ldc.i4	1
	stsfld	int32 'fTrace'

	br	'L_144'
L_143:
// Line 873:			else if (strcmp(argv[n], "-code") == 0)

	ldloc	'n/0'
	ldc.i4	2
	shl
	ldarg	'argv'
	add
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_131'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_145'
// Line 874:				fCode = 1;

	ldc.i4	1
	stsfld	int32 'fCode'

	br	'L_146'
L_145:
// Line 875:			else

// Line 876:				nSrc = n;

	ldloc	'n/0'
	stloc	'nSrc/1'
L_146:
L_144:
L_142:
L_139:
	ldloc	'n/0'
	ldc.i4	1
	add
	stloc	'n/0'
// Line 867:		for (n = 1; n < argc; n++)

L_137:
	ldloc	'n/0'
	ldarg	'argc'
	blt	'L_136'
L_138:
// Line 877:		}

// Line 878:		lex(argv[nSrc]);

	ldloc	'nSrc/1'
	ldc.i4	2
	shl
	ldarg	'argv'
	add
	ldind.u4
	call	void 'lex'(void*)
// Line 879:		parser();

	call	void 'parser'()
// Line 880:		entryPoint = gen_mcode();

	call	int32 'gen_mcode'()
	stloc	'entryPoint/2'
// Line 881:		exe(CodeBuf, nCode, DataBuf, nData, entryPoint, "a.exe");

	ldsflda	valuetype 'uint8[4096]' 'CodeBuf'

	ldsfld	int32 'nCode'

	ldsflda	valuetype 'uint8[4096]' 'DataBuf'

	ldsfld	int32 'nData'

	ldloc	'entryPoint/2'
	ldsflda	valuetype 'int8[]' 'L_132'

	call	void 'exe'(void*, int32, void*, int32, int32, void*)
// Line 882:		return 0;

	ldc.i4	0
// Line 883:	}

L_134:
	ret

}
 .method public hidebysig static int32 'is_alpha'(int32 'c' ) cil managed
{
// Line 14:	int is_alpha(int c)

// Line 15:	{

	.maxstack	2
L_153:
// Line 16:	  return ((c >= 'A') && (c <= 'Z')) || ((c >= 'a') && (c <= 'z'));

	ldarg	'c'
	ldc.i4	65
	blt	'L_160'
	ldarg	'c'
	ldc.i4	90
	ble	'L_158'
L_160:
	ldarg	'c'
	ldc.i4	97
	blt	'L_161'
	ldarg	'c'
	ldc.i4	122
	ble	'L_158'
L_161:
	ldc.i4	0
	br	'L_159'
L_158:
	ldc.i4	1
L_159:
	conv.i4
// Line 17:	}

L_154:
	ret

}
 .method public hidebysig static int32 'is_digit'(int32 'c' ) cil managed
{
// Line 19:	int is_digit(int c)

// Line 20:	{

	.maxstack	2
L_165:
// Line 21:	  return ((c>='0') && (c<='9'));

	ldarg	'c'
	ldc.i4	48
	blt	'L_172'
	ldarg	'c'
	ldc.i4	57
	ble	'L_170'
L_172:
	ldc.i4	0
	br	'L_171'
L_170:
	ldc.i4	1
L_171:
	conv.i4
// Line 22:	}

L_166:
	ret

}
 .method public hidebysig static void 'error'(void* 'format' , void* 'arg' ) cil managed
{
// Line 24:	void error(const char *format, char *arg)

// Line 25:	{

	.maxstack	2
L_176:
// Line 26:		if (0 <= tix && tix < nToken)

	ldc.i4	0
	ldsfld	int32 'tix'

	bgt	'L_179'
	ldsfld	int32 'tix'

	ldsfld	int32 'nToken'

	bge	'L_179'
// Line 27:			printf("tix=%d: ", tix);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldsfld	int32 'tix'

	call	vararg int32 'printf'(void*, ..., int32)
	pop
L_179:
// Line 28:		printf(format, arg);

	ldarg	'format'
	ldarg	'arg'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
// Line 29:		exit(1);

	ldc.i4	1
	call	void 'exit'(int32)
// Line 30:	}

L_177:
	ret

}
 .method public hidebysig static int32 'isAlpha'(int32 'c' ) cil managed
{
// Line 32:	int isAlpha(int c)

// Line 33:	{

	.maxstack	2
L_185:
// Line 34:		return (is_alpha(c) || c == '_');

	ldarg	'c'
	call	int32 'is_alpha'(int32)
	ldc.i4	0
	bne.un	'L_190'
	ldarg	'c'
	ldc.i4	95
	beq	'L_190'
	ldc.i4	0
	br	'L_191'
L_190:
	ldc.i4	1
L_191:
	conv.i4
// Line 35:	}

L_186:
	ret

}
 .method public hidebysig static int32 'isAlNum'(int32 'c' ) cil managed
{
// Line 37:	int isAlNum(int c)

// Line 38:	{

	.maxstack	2
L_195:
// Line 39:		return isAlpha(c) || is_digit(c);

	ldarg	'c'
	call	int32 'isAlpha'(int32)
	ldc.i4	0
	bne.un	'L_200'
	ldarg	'c'
	call	int32 'is_digit'(int32)
	ldc.i4	0
	bne.un	'L_200'
	ldc.i4	0
	br	'L_201'
L_200:
	ldc.i4	1
L_201:
	conv.i4
// Line 40:	}

L_196:
	ret

}
 .method public hidebysig static int32 'isKanji'(int32 'c' ) cil managed
{
// Line 42:	int isKanji(int c)

// Line 43:	{

	.maxstack	2
L_205:
// Line 44:		return (c >= 0x81 && c <= 0x9F) || (c >= 0xE0 && c <= 0xFC);

	ldarg	'c'
	ldc.i4	129
	blt	'L_212'
	ldarg	'c'
	ldc.i4	159
	ble	'L_210'
L_212:
	ldarg	'c'
	ldc.i4	224
	blt	'L_213'
	ldarg	'c'
	ldc.i4	252
	ble	'L_210'
L_213:
	ldc.i4	0
	br	'L_211'
L_210:
	ldc.i4	1
L_211:
	conv.i4
// Line 45:	}

L_206:
	ret

}
 .method public hidebysig static void* 'strdup'(void* 's' ) cil managed
{
// Line 47:	char *strdup (const char *s) {

	.locals
	(
		[0] void* 'd/0'
	)
	.maxstack	3
L_217:
// Line 48:	    char *d = (char*)malloc (strlen (s) + 1);   

	ldloca	'd/0'
	ldarg	's'
	call	uint32 'strlen'(void*)
	ldc.i4	1
	add
	call	void* 'malloc'(uint32)
	stind.i4
// Line 49:	    if (d == NULL) return NULL;         

	ldloc	'd/0'
	ldc.i4	0
	bne.un	'L_220'
	ldc.i4	0
	conv.u4
	br	'L_218'
L_220:
// Line 50:	    strcpy (d,s);                       

	ldloc	'd/0'
	ldarg	's'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 51:	    return d;                          

	ldloc	'd/0'
// Line 52:	}

L_218:
	ret

}
 .method public hidebysig static void 'lex'(void* 'srcfile' ) cil managed
{
// Line 54:	void lex(const char *srcfile)

// Line 55:	{

	.locals
	(
		[0] valuetype 'int8[256]' 'linebuf/0',
		[1] valuetype 'int8[128]' 'buf/1',
		[2] valuetype 'int8[4]' 'op2/2',
		[3] void* 'p/3',
		[4] void* 'pBgn/4',
		[5] void* 'fpSrc/5'
	)
	.maxstack	8
L_226:
// Line 56:		char linebuf[256], buf[128], op2[4], *p, *pBgn;

// Line 57:		FILE *fpSrc = fopen(srcfile, "r");

	ldloca	'fpSrc/5'
	ldarg	'srcfile'
	ldsflda	valuetype 'int8[]' 'L_2'

	call	void* 'fopen'(void*, void*)
	stind.i4
// Line 58:		if (fpSrc == NULL) 

	ldloc	'fpSrc/5'
	ldc.i4	0
	bne.un	'L_232'
// Line 59:			error("file '%s' can't be opened", srcfile);

	ldsflda	valuetype 'int8[]' 'L_3'

	ldarg	'srcfile'
	call	void 'error'(void*, void*)
L_229:
	br	'L_232'
L_230:
// Line 61:		{

	ldloca	'linebuf/0'
	stloc	'p/3'
	br	'L_235'
L_234:
// Line 63:			{

// Line 64:				if (*p <= ' ')

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	32
	bgt	'L_239'
// Line 65:				{

// Line 66:					p++;

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
// Line 67:					continue;

	br	'L_237'
L_239:
// Line 68:				}

// Line 69:				if (p[0] == '/' && p[1] == '/') break;

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	47
	bne.un	'L_285'
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	47
	beq	'L_236'
L_285:
L_242:
// Line 70:				pBgn = p;

	ldloc	'p/3'
	stloc	'pBgn/4'
// Line 71:				if (*p == '"')

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_243'
// Line 72:				{

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
	br	'L_246'
L_245:
// Line 74:					{

// Line 75:						if (*p == '\\' && strchr("rn\"t", p[1]) != NULL)  

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	92
	bne.un	'L_250'
	ldsflda	valuetype 'int8[]' 'L_4'

	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	call	void* 'strchr'(void*, int32)
	ldc.i4	0
	beq	'L_250'
// Line 76:						{

// Line 77:							*p = p[1] == 'r' ? '\r' : p[1] == 'n' ? '\n' : p[1] == '"' ? '\"' : '\t';

	ldloc	'p/3'
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	114
	bne.un	'L_286'
	ldc.i4	13
	br	'L_287'
L_286:
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	110
	bne.un	'L_288'
	ldc.i4	10
	br	'L_289'
L_288:
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_290'
	ldc.i4	34
	br	'L_291'
L_290:
	ldc.i4	9
L_291:
L_289:
L_287:
	conv.i1
	stind.i1
// Line 78:							strcpy(p + 1, p + 2);

	ldloc	'p/3'
	ldc.i4	1
	add
	ldloc	'p/3'
	ldc.i4	2
	add
	call	void* 'strcpy'(void*, void*)
	pop
	br	'L_253'
L_250:
// Line 79:						}

// Line 80:						else if (*p == '\\' || isKanji(*p & 0xff))

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	92
	beq	'L_292'
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	255
	and
	call	int32 'isKanji'(int32)
	ldc.i4	0
	beq	'L_254'
L_292:
// Line 81:						{

// Line 82:							p++;

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
L_254:
L_253:
// Line 83:						}

L_248:
	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
// Line 73:					for (p++; *p != '\0' && *p != '"'; p++)

L_246:
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	beq	'L_293'
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_245'
L_293:
L_247:
// Line 84:					}

// Line 85:					if (*p++ != '"') 

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
	ldc.i4	34
	beq	'L_260'
// Line 86:						error("Expected '\"' <%s>", pBgn);

	ldsflda	valuetype 'int8[]' 'L_5'

	ldloc	'pBgn/4'
	call	void 'error'(void*, void*)
L_258:
	br	'L_260'
L_243:
// Line 87:				}

// Line 88:				else if (is_digit(*p))

	ldloc	'p/3'
	ldind.i1
	conv.i4
	call	int32 'is_digit'(int32)
	ldc.i4	0
	beq	'L_261'
// Line 89:				{

// Line 90:					strtoul(p, &p, 10); 

	ldloc	'p/3'
	ldloca	'p/3'
	ldc.i4	10
	call	uint32 'strtoul'(void*, void*, int32)
	pop
	br	'L_264'
L_261:
// Line 91:				}

// Line 92:				else if (strncmp(pBgn, "char*", 5) == 0)  	

	ldloc	'pBgn/4'
	ldsflda	valuetype 'int8[]' 'L_6'

	ldc.i4	5
	conv.u4
	call	int32 'strncmp'(void*, void*, uint32)
	ldc.i4	0
	bne.un	'L_265'
// Line 93:				{

// Line 94:					p += 5;

	ldloc	'p/3'
	ldc.i4	5
	add
	stloc	'p/3'
	br	'L_268'
L_265:
// Line 95:				}

// Line 96:				else if (isAlpha(*p))

	ldloc	'p/3'
	ldind.i1
	conv.i4
	call	int32 'isAlpha'(int32)
	ldc.i4	0
	beq	'L_269'
// Line 97:				{

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
	br	'L_272'
L_271:
// Line 99:						p++;

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
L_274:
// Line 98:					for (p++; *p != '\0' && isAlNum(*p); ) 

L_272:
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	beq	'L_294'
	ldloc	'p/3'
	ldind.i1
	conv.i4
	call	int32 'isAlNum'(int32)
	ldc.i4	0
	bne.un	'L_271'
L_294:
L_273:
	br	'L_276'
L_269:
// Line 100:				}

// Line 101:				else

// Line 102:				{

// Line 103:					sprintf(op2, "%c%c ", p[0], p[1]);

	ldloca	'op2/2'
	ldsflda	valuetype 'int8[]' 'L_7'

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	call	vararg int32 'sprintf'(void*, void*, ..., int32, int32)
	pop
// Line 104:					p += strstr(OPERATOR2, op2) != NULL ? 2 : 1;

	ldsflda	valuetype 'int8[]' 'L_8'

	ldloca	'op2/2'
	call	void* 'strstr'(void*, void*)
	ldc.i4	0
	beq	'L_295'
	ldc.i4	2
	br	'L_296'
L_295:
	ldc.i4	1
L_296:
	conv.u4
	ldloc	'p/3'
	add
	stloc	'p/3'
L_276:
L_268:
L_264:
L_260:
// Line 105:				}

// Line 106:				sprintf(buf, "%.*s", p - pBgn, pBgn);

	ldloca	'buf/1'
	ldsflda	valuetype 'int8[]' 'L_9'

	ldloc	'p/3'
	ldloc	'pBgn/4'
	sub
	ldloc	'pBgn/4'
	call	vararg int32 'sprintf'(void*, void*, ..., int32, void*)
	pop
// Line 107:				if (nToken == SIZETOKEN)

	ldsfld	int32 'nToken'

	ldc.i4	1000
	bne.un	'L_279'
// Line 108:					error("Token is to big", "");

	ldsflda	valuetype 'int8[]' 'L_10'

	ldsflda	valuetype 'int8[]' 'L_11'

	call	void 'error'(void*, void*)
L_279:
// Line 109:				Token[nToken++] = strdup(buf);

	ldsfld	int32 'nToken'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldloca	'buf/1'
	ldsfld	int32 'nToken'

	ldc.i4	1
	add
	stsfld	int32 'nToken'

	call	void* 'strdup'(void*)
	stind.i4
// Line 110:				if (fToken) 

	ldsfld	int32 'fToken'

	ldc.i4	0
	beq	'L_280'
// Line 111:					printf(strchr(";{}", *buf) != NULL ? "%s\n" : "%s ", buf);

	ldsflda	valuetype 'int8[]' 'L_12'

	ldloc	'buf/1'
	conv.i4
	call	void* 'strchr'(void*, int32)
	ldc.i4	0
	beq	'L_297'
	ldsflda	valuetype 'int8[]' 'L_13'

	br	'L_298'
L_297:
	ldsflda	valuetype 'int8[]' 'L_14'

L_298:
	ldloca	'buf/1'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
L_280:
L_237:
// Line 62:			for (p = linebuf; *p != '\0'; )

L_235:
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	bne.un	'L_234'
L_236:
// Line 112:			}

L_232:
// Line 60:		while (fgets(linebuf, sizeof(linebuf), fpSrc) != NULL)

	ldloca	'linebuf/0'
	ldc.i4	256
	ldloc	'fpSrc/5'
	call	void* 'fgets'(void*, int32, void*)
	ldc.i4	0
	bne.un	'L_230'
L_231:
// Line 113:		}

// Line 114:		fclose(fpSrc);

	ldloc	'fpSrc/5'
	call	int32 'fclose'(void*)
	pop
// Line 115:	}

L_227:
	ret

}
 .method public hidebysig static void* 'appendName'(int32 'nB' , int32 'type' , void* 'dType' , void* 'name' , int32 'aType' , int32 'addr' ) cil managed
{
// Line 133:	Name *appendName(int nB, int type, char *dType, char *name, int aType, int addr)

// Line 134:	{

	.locals
	(
		[0] valuetype '_Name' 'nm/0',
		[1] void* 'pNew/1'
	)
	.maxstack	3
L_302:
// Line 135:		Name nm = { type, dType, name, aType, addr };

	ldloca	'nm/0'
	ldc.i4	0
	ldc.i4	24
	initblk
	ldloca	'nm/0'
	conv.u4
	ldarg	'type'
	stind.i4
	ldloca	'nm/0'
	ldc.i4	4
	add
	ldarg	'dType'
	stind.i4
	ldloca	'nm/0'
	ldc.i4	8
	add
	ldarg	'name'
	stind.i4
	ldloca	'nm/0'
	ldc.i4	12
	add
	ldarg	'aType'
	stind.i4
	ldloca	'nm/0'
	ldc.i4	16
	add
	ldarg	'addr'
	stind.i4
// Line 136:		Name *pNew = calloc(1, sizeof(Name));

	ldloca	'pNew/1'
	ldc.i4	1
	conv.u4
	ldc.i4	24
	conv.u4
	call	void* 'calloc'(uint32, uint32)
	stind.i4
// Line 137:		if (pNew == NULL) 

	ldloc	'pNew/1'
	ldc.i4	0
	bne.un	'L_305'
// Line 138:			error("Fail to allocate memory in appendName", "");

	ldsflda	valuetype 'int8[]' 'L_15'

	ldsflda	valuetype 'int8[]' 'L_11'

	call	void 'error'(void*, void*)
L_305:
// Line 139:		memcpy(pNew, &nm, sizeof(Name));

	ldloc	'pNew/1'
	ldloca	'nm/0'
	conv.u4
	ldc.i4	24
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 140:		if (nB == 0 && nGlobal < GSIZE - 1) 

	ldarg	'nB'
	ldc.i4	0
	bne.un	'L_306'
	ldsfld	int32 'nGlobal'

	ldc.i4	999
	bge	'L_306'
// Line 141:			GlobalName[nGlobal++] = pNew;

	ldsfld	int32 'nGlobal'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'GlobalName'

	add
	ldloc	'pNew/1'
	stind.i4
	ldsfld	int32 'nGlobal'

	ldc.i4	1
	add
	stsfld	int32 'nGlobal'

	br	'L_307'
L_306:
// Line 142:		else if (nB == 1 && nLocal < LSIZE - 1) 

	ldarg	'nB'
	ldc.i4	1
	bne.un	'L_308'
	ldsfld	int32 'nLocal'

	ldc.i4	999
	bge	'L_308'
// Line 143:			LocalName[nLocal++] = pNew;

	ldsfld	int32 'nLocal'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'LocalName'

	add
	ldloc	'pNew/1'
	stind.i4
	ldsfld	int32 'nLocal'

	ldc.i4	1
	add
	stsfld	int32 'nLocal'

	br	'L_309'
L_308:
// Line 144:		else 

// Line 145:			error("Fail in appendName", "");

	ldsflda	valuetype 'int8[]' 'L_16'

	ldsflda	valuetype 'int8[]' 'L_11'

	call	void 'error'(void*, void*)
L_309:
L_307:
// Line 146:		return pNew;

	ldloc	'pNew/1'
// Line 147:	}

L_303:
	ret

}
 .method public hidebysig static void* 'getNameFromTable'(int32 'nB' , int32 'type' , void* 'name' ) cil managed
{
// Line 149:	Name *getNameFromTable(int nB, int type, char *name)

// Line 150:	{

	.locals
	(
		[0] int32 'n/0',
		[1] int32 'nEntry/1',
		[2] void* 'e/2'
	)
	.maxstack	5
L_315:
// Line 151:		int  n;

// Line 152:		int  nEntry = nB == 0 ? nGlobal : nLocal;

	ldloca	'nEntry/1'
	ldarg	'nB'
	ldc.i4	0
	bne.un	'L_327'
	ldsfld	int32 'nGlobal'

	br	'L_328'
L_327:
	ldsfld	int32 'nLocal'

L_328:
	stind.i4
	ldc.i4	0
	stloc	'n/0'
	br	'L_319'
L_318:
// Line 154:		{

// Line 155:			Name *e = nB == 0 ? GlobalName[n] : LocalName[n];

	ldloca	'e/2'
	ldarg	'nB'
	ldc.i4	0
	bne.un	'L_329'
	ldloc	'n/0'
	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'GlobalName'

	add
	ldind.u4
	br	'L_330'
L_329:
	ldloc	'n/0'
	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'LocalName'

	add
	ldind.u4
L_330:
	stind.i4
// Line 156:			if (strcmp(e->name, name) == 0 && (e->type&type) != 0) return e;

	ldloc	'e/2'
	ldc.i4	8
	add
	ldind.u4
	ldarg	'name'
	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_323'
	ldloc	'e/2'
	ldind.i4
	ldarg	'type'
	and
	ldc.i4	0
	beq	'L_323'
	ldloc	'e/2'
	br	'L_316'
L_323:
L_321:
	ldloc	'n/0'
	ldc.i4	1
	add
	stloc	'n/0'
// Line 153:		for (n = 0; n < nEntry; n++)

L_319:
	ldloc	'n/0'
	ldloc	'nEntry/1'
	blt	'L_318'
L_320:
// Line 157:		}

// Line 158:		return NULL;

	ldc.i4	0
	conv.u4
// Line 159:	}

L_316:
	ret

}
 .method public hidebysig static void* 'getNameFromAllTable'(int32 'type' , void* 'name' ) cil managed
{
// Line 161:	Name *getNameFromAllTable(int type, char *name)

// Line 162:	{

	.locals
	(
		[0] void* 'pName/0'
	)
	.maxstack	4
L_334:
// Line 163:		Name *pName = getNameFromTable(1, type, name);

	ldloca	'pName/0'
	ldc.i4	1
	ldarg	'type'
	ldarg	'name'
	call	void* 'getNameFromTable'(int32, int32, void*)
	stind.i4
// Line 164:		return pName != NULL ? pName : getNameFromTable(0, type, name);

	ldloc	'pName/0'
	ldc.i4	0
	beq	'L_339'
	ldloc	'pName/0'
	br	'L_340'
L_339:
	ldc.i4	0
	ldarg	'type'
	ldarg	'name'
	call	void* 'getNameFromTable'(int32, int32, void*)
L_340:
// Line 165:	}

L_335:
	ret

}
 .method public hidebysig static int32 'loc'() cil managed
{
// Line 224:	int loc()

// Line 225:	{

	.maxstack	3
L_344:
// Line 226:		return numLabel++;

	ldsfld	int32 'numLabel'

	ldsfld	int32 'numLabel'

	ldc.i4	1
	add
	stsfld	int32 'numLabel'

// Line 227:	}

L_345:
	ret

}
 .method public hidebysig static int32 'is'(void* 's' ) cil managed
{
// Line 228:	int is(char *s)

// Line 229:	{

	.maxstack	2
L_352:
// Line 230:		return strcmp(Token[tix], s) == 0;

	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldarg	's'
	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	ceq
	conv.i4
// Line 231:	}

L_353:
	ret

}
 .method public hidebysig static int32 'ispp'(void* 's' ) cil managed
{
// Line 232:	int ispp(char *s)

// Line 233:	{

	.maxstack	2
L_360:
// Line 234:		if (is(s))

	ldarg	's'
	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_363'
// Line 235:		{

// Line 236:			tix++;

	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 237:			return 1;

	ldc.i4	1
	br	'L_361'
L_363:
// Line 238:		}

// Line 239:		return 0;

	ldc.i4	0
// Line 240:	}

L_361:
	ret

}
 .method public hidebysig static int32 'isTypeSpecifier'() cil managed
{
// Line 241:	int isTypeSpecifier()

// Line 242:	{

	.maxstack	2
L_371:
// Line 243:		return is("void") || is("int") || is("char*");

	ldsflda	valuetype 'int8[]' 'L_85'

	call	int32 'is'(void*)
	ldc.i4	0
	bne.un	'L_376'
	ldsflda	valuetype 'int8[]' 'L_86'

	call	int32 'is'(void*)
	ldc.i4	0
	bne.un	'L_376'
	ldsflda	valuetype 'int8[]' 'L_6'

	call	int32 'is'(void*)
	ldc.i4	0
	bne.un	'L_376'
	ldc.i4	0
	br	'L_377'
L_376:
	ldc.i4	1
L_377:
	conv.i4
// Line 244:	}

L_372:
	ret

}
 .method public hidebysig static int32 'isFunctionDefinition'() cil managed
{
// Line 245:	int isFunctionDefinition()

// Line 246:	{

	.maxstack	2
L_381:
// Line 247:		return *Token[tix + 2] == '(';

	ldsfld	int32 'tix'

	ldc.i4	2
	add
	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	40
	ceq
	conv.i4
// Line 248:	}

L_382:
	ret

}
 .method public hidebysig static void 'skip'(void* 's' ) cil managed
{
// Line 249:	void skip(char *s)

// Line 250:	{

	.maxstack	2
L_389:
// Line 251:		if (!ispp(s)) error("'%s' expected", s);

	ldarg	's'
	call	int32 'ispp'(void*)
	ldc.i4	0
	bne.un	'L_392'
	ldsflda	valuetype 'int8[]' 'L_87'

	ldarg	's'
	call	void 'error'(void*, void*)
L_392:
// Line 252:	}

L_390:
	ret

}
 .method public hidebysig static void 'outCode1'(int32 'inst' ) cil managed
{
// Line 254:	void outCode1(int inst)

// Line 255:	{

	.maxstack	2
L_398:
// Line 256:		Inst[nInst++].inst = inst;

	ldsfld	int32 'nInst'

	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldarg	'inst'
	stind.i4
	ldsfld	int32 'nInst'

	ldc.i4	1
	add
	stsfld	int32 'nInst'

// Line 257:	}

L_399:
	ret

}
 .method public hidebysig static void 'outCode3'(int32 'inst' , int32 'imm' , int32 'type' ) cil managed
{
// Line 258:	void outCode3(int inst, int imm, int type)

// Line 259:	{

	.maxstack	2
L_406:
// Line 260:		Inst[nInst].inst = inst;

	ldsfld	int32 'nInst'

	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldarg	'inst'
	stind.i4
// Line 261:		Inst[nInst].type = type;

	ldsfld	int32 'nInst'

	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	12
	add
	ldarg	'type'
	stind.i4
// Line 262:		Inst[nInst++].imm = imm;

	ldsfld	int32 'nInst'

	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	8
	add
	ldarg	'imm'
	stind.i4
	ldsfld	int32 'nInst'

	ldc.i4	1
	add
	stsfld	int32 'nInst'

// Line 263:	}

L_407:
	ret

}
 .method public hidebysig static void 'outDataStr'(void* 'str' ) cil managed
{
// Line 265:	void outDataStr(char *str)

// Line 266:	{

	.locals
	(
		[0] int32 'len/0'
	)
	.maxstack	4
L_414:
// Line 267:		int len = strlen(str);

	ldloca	'len/0'
	ldarg	'str'
	call	uint32 'strlen'(void*)
	conv.i4
	stind.i4
// Line 268:		memcpy(&DataBuf[nData], str + 1, len - 2);

	ldsfld	int32 'nData'

	ldsflda	valuetype 'uint8[4096]' 'DataBuf'

	add
	ldarg	'str'
	ldc.i4	1
	add
	ldloc	'len/0'
	ldc.i4	2
	sub
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 269:		nData += len - 2;

	ldloc	'len/0'
	ldc.i4	2
	sub
	ldsfld	int32 'nData'

	add
	stsfld	int32 'nData'

// Line 270:		DataBuf[nData++] = '\0';

	ldsfld	int32 'nData'

	ldsflda	valuetype 'uint8[4096]' 'DataBuf'

	add
	ldc.i4	0
	stind.i1
	ldsfld	int32 'nData'

	ldc.i4	1
	add
	stsfld	int32 'nData'

// Line 271:	}

L_415:
	ret

}
 .method public hidebysig static void 'outDataInt'(int32 'num' ) cil managed
{
// Line 272:	void outDataInt(int num)

// Line 273:	{

	.maxstack	2
L_422:
// Line 274:		*((int*)&DataBuf[nData]) = num;

	ldsfld	int32 'nData'

	ldsflda	valuetype 'uint8[4096]' 'DataBuf'

	add
	ldarg	'num'
	stind.i4
// Line 275:		nData += 4;

	ldsfld	int32 'nData'

	ldc.i4	4
	add
	stsfld	int32 'nData'

// Line 276:	}

L_423:
	ret

}
 .method public hidebysig static void* 'typeSpecifier'() cil managed
{
// Line 289:	char *typeSpecifier()

// Line 290:	{

	.maxstack	3
L_430:
// Line 291:		if (!isTypeSpecifier()) error("'%s' not typespecfier", Token[tix]);

	call	int32 'isTypeSpecifier'()
	ldc.i4	0
	bne.un	'L_433'
	ldsflda	valuetype 'int8[]' 'L_88'

	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	call	void 'error'(void*, void*)
L_433:
// Line 292:		return Token[tix++];

	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 293:	}

L_431:
	ret

}
 .method public hidebysig static void* 'varDeclarator'(void* 'pSize' ) cil managed
{
// Line 296:	char *varDeclarator(int *pSize)

// Line 297:	{

	.locals
	(
		[0] void* 'name/0'
	)
	.maxstack	4
L_439:
// Line 298:		char *name = Token[tix++];

	ldloca	'name/0'
	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	stind.i4
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 299:		if (ispp("["))

	ldsflda	valuetype 'int8[]' 'L_89'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_442'
// Line 300:		{

// Line 301:			*pSize = atoi(Token[tix++]);

	ldarg	'pSize'
	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

	call	int32 'atol'(void*)
	conv.i4
	stind.i4
// Line 302:			skip("]");

	ldsflda	valuetype 'int8[]' 'L_90'

	call	void 'skip'(void*)
	br	'L_445'
L_442:
// Line 303:		}

// Line 304:		else

// Line 305:		{

// Line 306:			*pSize = 0;

	ldarg	'pSize'
	ldc.i4	0
	stind.i4
L_445:
// Line 307:		}

// Line 308:		return name;

	ldloc	'name/0'
// Line 309:	}

L_440:
	ret

}
 .method public hidebysig static void 'variableDeclaration'(int32 'status' ) cil managed
{
// Line 313:	void variableDeclaration(int status)

// Line 314:	{

	.locals
	(
		[0] void* 'varType/0',
		[1] void* 'pName/1',
		[2] int32 'size/2',
		[3] void* 'varName/3',
		[4] void* 'tk/4'
	)
	.maxstack	7
L_453:
// Line 315:		char *varType = typeSpecifier();

	ldloca	'varType/0'
	call	void* 'typeSpecifier'()
	stind.i4
// Line 316:		do

// Line 317:		{

L_456:
// Line 319:			int size;

// Line 320:			char *varName = varDeclarator(&size);

	ldloca	'varName/3'
	ldloca	'size/2'
	call	void* 'varDeclarator'(void*)
	stind.i4
// Line 321:			if (status == ST_FUNC)

	ldarg	'status'
	ldc.i4	0
	bne.un	'L_460'
// Line 322:			{

// Line 323:				baseSpace -= 4 * (size > 0 ? size : 1);

	ldloc	'size/2'
	ldc.i4	0
	ble	'L_480'
	ldloc	'size/2'
	br	'L_481'
L_480:
	ldc.i4	1
L_481:
	ldc.i4	2
	shl
	neg
	ldsfld	int32 'baseSpace'

	add
	stsfld	int32 'baseSpace'

// Line 324:				pName = appendName(1, NM_VAR, varType, varName, AD_STACK, baseSpace);

	ldc.i4	1
	ldc.i4	1
	ldloc	'varType/0'
	ldloc	'varName/3'
	ldc.i4	1
	ldsfld	int32 'baseSpace'

	call	void* 'appendName'(int32, int32, void*, void*, int32, int32)
	stloc	'pName/1'
// Line 325:				if (is("="))

	ldsflda	valuetype 'int8[]' 'L_91'

	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_466'
// Line 326:				{

// Line 327:					tix--;

	ldsfld	int32 'tix'

	ldc.i4	1
	sub
	stsfld	int32 'tix'

// Line 328:					assign();

	call	void 'assign'()
L_462:
// Line 329:				}

	br	'L_466'
L_460:
// Line 330:			}

// Line 331:			else

// Line 332:			{

// Line 333:				pName = appendName(0, NM_VAR, varType, varName, AD_DATA, nData);

	ldc.i4	0
	ldc.i4	1
	ldloc	'varType/0'
	ldloc	'varName/3'
	ldc.i4	0
	ldsfld	int32 'nData'

	call	void* 'appendName'(int32, int32, void*, void*, int32, int32)
	stloc	'pName/1'
// Line 334:				if (ispp("="))

	ldsflda	valuetype 'int8[]' 'L_91'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_468'
// Line 335:				{

// Line 336:					char *tk = Token[tix++];

	ldloca	'tk/4'
	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	stind.i4
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 337:					if (is_digit(*tk)) outDataInt(atoi(tk));

	ldloc	'tk/4'
	ldind.i1
	conv.i4
	call	int32 'is_digit'(int32)
	ldc.i4	0
	beq	'L_470'
	ldloc	'tk/4'
	call	int32 'atol'(void*)
	conv.i4
	call	void 'outDataInt'(int32)
	br	'L_473'
L_470:
// Line 338:					else error("unsupported: <%s>", tk);

	ldsflda	valuetype 'int8[]' 'L_92'

	ldloc	'tk/4'
	call	void 'error'(void*, void*)
L_471:
	br	'L_473'
L_468:
// Line 339:				}

// Line 340:				else

// Line 341:				{

// Line 342:					nData += 4 * (size > 0 ? size : 1);

	ldloc	'size/2'
	ldc.i4	0
	ble	'L_482'
	ldloc	'size/2'
	br	'L_483'
L_482:
	ldc.i4	1
L_483:
	ldc.i4	2
	shl
	ldsfld	int32 'nData'

	add
	stsfld	int32 'nData'

L_473:
// Line 343:				}

L_466:
// Line 344:			}

// Line 345:			pName->size = size;

	ldloc	'pName/1'
	ldc.i4	20
	add
	ldloc	'size/2'
	stind.i4
L_458:
// Line 346:		} while (ispp(","));

	ldsflda	valuetype 'int8[]' 'L_93'

	call	int32 'ispp'(void*)
	ldc.i4	0
	bne.un	'L_456'
L_457:
// Line 347:	}

L_454:
	ret

}
 .method public hidebysig static void 'functionDefinition'() cil managed
{
// Line 351:	void functionDefinition()

// Line 352:	{

	.locals
	(
		[0] int32 'dummy/0',
		[1] int32 'nSub/1',
		[2] void* 'varType/2',
		[3] void* 'varName/3'
	)
	.maxstack	6
L_487:
// Line 356:		char *varName;

// Line 357:	

// Line 358:		nLocal = 0;

	ldc.i4	0
	stsfld	int32 'nLocal'

// Line 359:		varType = typeSpecifier();

	call	void* 'typeSpecifier'()
	stloc	'varType/2'
// Line 360:		varName = varDeclarator(&dummy);

	ldloca	'dummy/0'
	call	void* 'varDeclarator'(void*)
	stloc	'varName/3'
// Line 361:		outCode3(func, nFunc, IVAL);

	ldc.i4	33
	ldsfld	int32 'nFunc'

	ldc.i4	0
	call	void 'outCode3'(int32, int32, int32)
// Line 362:		appendName(0, NM_FUNC, varType, varName, AD_CODE, nFunc);

	ldc.i4	0
	ldc.i4	2
	ldloc	'varType/2'
	ldloc	'varName/3'
	ldc.i4	2
	ldsfld	int32 'nFunc'

	call	void* 'appendName'(int32, int32, void*, void*, int32, int32)
	pop
// Line 363:		Func[nFunc++].name = varName;

	ldsfld	int32 'nFunc'

	ldc.i4	3
	shl
	ldsflda	valuetype '_Function[100]' 'Func'

	add
	ldc.i4	4
	add
	ldloc	'varName/3'
	stind.i4
	ldsfld	int32 'nFunc'

	ldc.i4	1
	add
	stsfld	int32 'nFunc'

// Line 364:		baseSpace = 2 * 4;

	ldc.i4	8
	stsfld	int32 'baseSpace'

// Line 365:		outCode1(push_ebp);

	ldc.i4	2
	call	void 'outCode1'(int32)
// Line 366:		outCode1(mov_ebp_esp);

	ldc.i4	8
	call	void 'outCode1'(int32)
// Line 367:		nSub = nInst;

	ldsfld	int32 'nInst'

	stloc	'nSub/1'
// Line 368:		outCode3(sub_esp, 0, DISP);

	ldc.i4	16
	ldc.i4	0
	ldc.i4	4
	call	void 'outCode3'(int32, int32, int32)
	ldsflda	valuetype 'int8[]' 'L_94'

	call	void 'skip'(void*)
	br	'L_491'
L_490:
// Line 370:		{

// Line 371:			varType = typeSpecifier();

	call	void* 'typeSpecifier'()
	stloc	'varType/2'
// Line 372:			varName = varDeclarator(&dummy);

	ldloca	'dummy/0'
	call	void* 'varDeclarator'(void*)
	stloc	'varName/3'
// Line 373:			appendName(1, NM_VAR, varType, varName, AD_STACK, baseSpace);

	ldc.i4	1
	ldc.i4	1
	ldloc	'varType/2'
	ldloc	'varName/3'
	ldc.i4	1
	ldsfld	int32 'baseSpace'

	call	void* 'appendName'(int32, int32, void*, void*, int32, int32)
	pop
// Line 374:			baseSpace += 4;

	ldsfld	int32 'baseSpace'

	ldc.i4	4
	add
	stsfld	int32 'baseSpace'

L_493:
	ldsflda	valuetype 'int8[]' 'L_93'

	call	int32 'ispp'(void*)
	pop
// Line 369:		for (skip("("); !ispp(")"); ispp(","))

L_491:
	ldsflda	valuetype 'int8[]' 'L_95'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_490'
L_492:
// Line 375:		}

// Line 376:		baseSpace = 0;

	ldc.i4	0
	stsfld	int32 'baseSpace'

// Line 377:		compoundStatement(0, 0);

	ldc.i4	0
	ldc.i4	0
	call	void 'compoundStatement'(int32, int32)
// Line 378:		Inst[nSub].imm = -baseSpace;

	ldloc	'nSub/1'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	8
	add
	ldsfld	int32 'baseSpace'

	neg
	stind.i4
// Line 379:		if (Inst[nInst - 1].inst != xret) outCode1(xret);

	ldsfld	int32 'nInst'

	ldc.i4	1
	sub
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldind.i4
	ldc.i4	32
	beq	'L_496'
	ldc.i4	32
	call	void 'outCode1'(int32)
L_496:
// Line 380:	}

L_488:
	ret

}
 .method public hidebysig static void 'program'() cil managed
{
// Line 383:	void program()

// Line 384:	{

	.maxstack	4
L_502:
	ldc.i4	0
	stsfld	int32 'tix'

	br	'L_506'
L_505:
// Line 386:		{

// Line 387:			if (fTrace) printf("%3d %s\n", tix, Token[tix]);

	ldsfld	int32 'fTrace'

	ldc.i4	0
	beq	'L_510'
	ldsflda	valuetype 'int8[]' 'L_96'

	ldsfld	int32 'tix'

	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	call	vararg int32 'printf'(void*, ..., int32, void*)
	pop
L_510:
// Line 388:			if (isFunctionDefinition()) functionDefinition();

	call	int32 'isFunctionDefinition'()
	ldc.i4	0
	beq	'L_511'
	call	void 'functionDefinition'()
	br	'L_512'
L_511:
// Line 389:			else

// Line 390:			{

// Line 391:				variableDeclaration(ST_GVAR);

	ldc.i4	1
	call	void 'variableDeclaration'(int32)
// Line 392:				skip(";");

	ldsflda	valuetype 'int8[]' 'L_97'

	call	void 'skip'(void*)
L_512:
// Line 393:			}

L_508:
// Line 385:		for (tix = 0; tix < nToken; )

L_506:
	ldsfld	int32 'tix'

	ldsfld	int32 'nToken'

	blt	'L_505'
L_507:
// Line 394:		}

// Line 395:	}

L_503:
	ret

}
 .method public hidebysig static void 'parser'() cil managed
{
// Line 397:	void parser()

// Line 398:	{

	.maxstack	6
L_521:
// Line 399:		appendName(0, NM_FUNC, "int", "printf", AD_CODE, -1);

	ldc.i4	0
	ldc.i4	2
	ldsflda	valuetype 'int8[]' 'L_86'

	ldsflda	valuetype 'int8[]' 'L_98'

	ldc.i4	2
	ldc.i4	-1
	call	void* 'appendName'(int32, int32, void*, void*, int32, int32)
	pop
// Line 400:		appendName(0, NM_FUNC, "void", "exit", AD_CODE, -1);

	ldc.i4	0
	ldc.i4	2
	ldsflda	valuetype 'int8[]' 'L_85'

	ldsflda	valuetype 'int8[]' 'L_99'

	ldc.i4	2
	ldc.i4	-1
	call	void* 'appendName'(int32, int32, void*, void*, int32, int32)
	pop
// Line 401:		program();

	call	void 'program'()
// Line 402:	}

L_522:
	ret

}
 .method public hidebysig static void 'compoundStatement'(int32 'locBreak' , int32 'locContinue' ) cil managed
{
// Line 406:	void compoundStatement(int locBreak, int locContinue)

// Line 407:	{

	.maxstack	2
L_529:
	ldsflda	valuetype 'int8[]' 'L_100'

	call	void 'skip'(void*)
	br	'L_533'
L_532:
// Line 409:		{

// Line 410:			if (isTypeSpecifier())

	call	int32 'isTypeSpecifier'()
	ldc.i4	0
	beq	'L_537'
// Line 411:			{

// Line 412:				variableDeclaration(ST_FUNC);

	ldc.i4	0
	call	void 'variableDeclaration'(int32)
// Line 413:				skip(";");

	ldsflda	valuetype 'int8[]' 'L_97'

	call	void 'skip'(void*)
	br	'L_540'
L_537:
// Line 414:			}

// Line 415:			else

// Line 416:			{

// Line 417:				statement(locBreak, locContinue);

	ldarg	'locBreak'
	ldarg	'locContinue'
	call	void 'statement'(int32, int32)
L_540:
// Line 418:			}

L_535:
// Line 408:		for (skip("{"); !ispp("}"); )

L_533:
	ldsflda	valuetype 'int8[]' 'L_101'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_532'
L_534:
// Line 419:		}

// Line 420:	}

L_530:
	ret

}
 .method public hidebysig static void 'ifStatement'(int32 'locBreak' , int32 'locContinue' ) cil managed
{
// Line 423:	void ifStatement(int locBreak, int locContinue)

// Line 424:	{

	.locals
	(
		[0] int32 'locElse/0',
		[1] int32 'locEnd/1'
	)
	.maxstack	3
L_549:
// Line 425:		int locElse, locEnd;

// Line 426:		tix++;		

	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 427:		skip("(");

	ldsflda	valuetype 'int8[]' 'L_94'

	call	void 'skip'(void*)
// Line 428:		expression(VAL);

	ldc.i4	0
	call	void 'expression'(int32)
// Line 429:		skip(")");

	ldsflda	valuetype 'int8[]' 'L_95'

	call	void 'skip'(void*)
// Line 430:		outCode1(test_eax_eax);

	ldc.i4	22
	call	void 'outCode1'(int32)
// Line 431:		outCode3(jz, locElse = loc(), LOC);

	ldc.i4	24
	call	int32 'loc'()
	stloc	'locElse/0'
	ldloc	'locElse/0'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
// Line 432:		statement(locBreak, locContinue);	    	

	ldarg	'locBreak'
	ldarg	'locContinue'
	call	void 'statement'(int32, int32)
// Line 433:		if (is("else")) outCode3(jmp, locEnd = loc(), LOC);

	ldsflda	valuetype 'int8[]' 'L_102'

	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_552'
	ldc.i4	23
	call	int32 'loc'()
	stloc	'locEnd/1'
	ldloc	'locEnd/1'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
L_552:
// Line 434:		outCode3(loc_, locElse, LOC);

	ldc.i4	34
	ldloc	'locElse/0'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
// Line 435:		if (ispp("else"))

	ldsflda	valuetype 'int8[]' 'L_102'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_553'
// Line 436:		{

// Line 437:			statement(locBreak, locContinue); 	

	ldarg	'locBreak'
	ldarg	'locContinue'
	call	void 'statement'(int32, int32)
// Line 438:			outCode3(loc_, locEnd, LOC);

	ldc.i4	34
	ldloc	'locEnd/1'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
L_553:
// Line 439:		}

// Line 440:	}

L_550:
	ret

}
 .method public hidebysig static void 'whileStatement'() cil managed
{
// Line 443:	void whileStatement()

// Line 444:	{

	.locals
	(
		[0] int32 'locExpr/0',
		[1] int32 'locNext/1'
	)
	.maxstack	3
L_561:
// Line 445:		int locExpr, locNext;

// Line 446:		tix++;		

	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 447:		skip("(");

	ldsflda	valuetype 'int8[]' 'L_94'

	call	void 'skip'(void*)
// Line 448:		outCode3(loc_, locExpr = loc(), LOC);

	ldc.i4	34
	call	int32 'loc'()
	stloc	'locExpr/0'
	ldloc	'locExpr/0'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
// Line 449:		expression(VAL);

	ldc.i4	0
	call	void 'expression'(int32)
// Line 450:		skip(")");

	ldsflda	valuetype 'int8[]' 'L_95'

	call	void 'skip'(void*)
// Line 451:		outCode1(test_eax_eax);    

	ldc.i4	22
	call	void 'outCode1'(int32)
// Line 452:		outCode3(jz, locNext = loc(), LOC);  

	ldc.i4	24
	call	int32 'loc'()
	stloc	'locNext/1'
	ldloc	'locNext/1'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
// Line 453:		statement(locNext, locExpr);	

	ldloc	'locNext/1'
	ldloc	'locExpr/0'
	call	void 'statement'(int32, int32)
// Line 454:		outCode3(jmp, locExpr, LOC);

	ldc.i4	23
	ldloc	'locExpr/0'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
// Line 455:		outCode3(loc_, locNext, LOC);

	ldc.i4	34
	ldloc	'locNext/1'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
// Line 456:	}

L_562:
	ret

}
 .method public hidebysig static void 'returnStatement'() cil managed
{
// Line 459:	void returnStatement()

// Line 460:	{

	.maxstack	2
L_569:
// Line 461:		tix++;	

	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 462:		if (!is(";")) expression(VAL);

	ldsflda	valuetype 'int8[]' 'L_97'

	call	int32 'is'(void*)
	ldc.i4	0
	bne.un	'L_572'
	ldc.i4	0
	call	void 'expression'(int32)
L_572:
// Line 463:		skip(";");

	ldsflda	valuetype 'int8[]' 'L_97'

	call	void 'skip'(void*)
// Line 464:		outCode1(xret);

	ldc.i4	32
	call	void 'outCode1'(int32)
// Line 465:	}

L_570:
	ret

}
 .method public hidebysig static void 'breakStatement'(int32 'locBreak' ) cil managed
{
// Line 468:	void breakStatement(int locBreak)

// Line 469:	{

	.maxstack	3
L_578:
// Line 470:		tix++;	

	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 471:		skip(";");

	ldsflda	valuetype 'int8[]' 'L_97'

	call	void 'skip'(void*)
// Line 472:		outCode3(jmp, locBreak, LOC);

	ldc.i4	23
	ldarg	'locBreak'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
// Line 473:	}

L_579:
	ret

}
 .method public hidebysig static void 'continueStatement'(int32 'locContinue' ) cil managed
{
// Line 476:	void continueStatement(int locContinue)

// Line 477:	{

	.maxstack	3
L_586:
// Line 478:		tix++;	

	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 479:		skip(";");

	ldsflda	valuetype 'int8[]' 'L_97'

	call	void 'skip'(void*)
// Line 480:		outCode3(jmp, locContinue, LOC);

	ldc.i4	23
	ldarg	'locContinue'
	ldc.i4	1
	call	void 'outCode3'(int32, int32, int32)
// Line 481:	}

L_587:
	ret

}
 .method public hidebysig static void 'statement'(int32 'locBreak' , int32 'locContinue' ) cil managed
{
// Line 485:	void statement(int locBreak, int locContinue)

// Line 486:	{

	.maxstack	2
L_594:
// Line 487:		if (is(";")) tix++;	

	ldsflda	valuetype 'int8[]' 'L_97'

	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_597'
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

	br	'L_598'
L_597:
// Line 488:		else if (is("{")) compoundStatement(locBreak, locContinue);

	ldsflda	valuetype 'int8[]' 'L_100'

	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_599'
	ldarg	'locBreak'
	ldarg	'locContinue'
	call	void 'compoundStatement'(int32, int32)
	br	'L_600'
L_599:
// Line 489:		else if (is("if")) ifStatement(locBreak, locContinue);

	ldsflda	valuetype 'int8[]' 'L_103'

	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_601'
	ldarg	'locBreak'
	ldarg	'locContinue'
	call	void 'ifStatement'(int32, int32)
	br	'L_602'
L_601:
// Line 490:		else if (is("while")) whileStatement();

	ldsflda	valuetype 'int8[]' 'L_104'

	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_603'
	call	void 'whileStatement'()
	br	'L_604'
L_603:
// Line 491:		else if (is("return")) returnStatement();

	ldsflda	valuetype 'int8[]' 'L_105'

	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_605'
	call	void 'returnStatement'()
	br	'L_606'
L_605:
// Line 492:		else if (is("break")) breakStatement(locBreak);

	ldsflda	valuetype 'int8[]' 'L_106'

	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_607'
	ldarg	'locBreak'
	call	void 'breakStatement'(int32)
	br	'L_608'
L_607:
// Line 493:		else if (is("continue")) continueStatement(locContinue);

	ldsflda	valuetype 'int8[]' 'L_107'

	call	int32 'is'(void*)
	ldc.i4	0
	beq	'L_609'
	ldarg	'locContinue'
	call	void 'continueStatement'(int32)
	br	'L_610'
L_609:
// Line 494:		else if (*Token[tix + 1] == '[') assign();

	ldsfld	int32 'tix'

	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	91
	bne.un	'L_611'
	call	void 'assign'()
	br	'L_612'
L_611:
// Line 495:		else

// Line 496:		{

// Line 497:			expression(VAL);

	ldc.i4	0
	call	void 'expression'(int32)
// Line 498:			skip(";");

	ldsflda	valuetype 'int8[]' 'L_97'

	call	void 'skip'(void*)
L_612:
L_610:
L_608:
L_606:
L_604:
L_602:
L_600:
L_598:
// Line 499:		}

// Line 500:	}

L_595:
	ret

}
 .method public hidebysig static void 'assign'() cil managed
{
// Line 503:	void assign()

// Line 504:	{

	.maxstack	1
L_620:
// Line 505:		primaryExpression(ADDR);	

	ldc.i4	1
	call	void 'primaryExpression'(int32)
// Line 506:		skip("=");

	ldsflda	valuetype 'int8[]' 'L_91'

	call	void 'skip'(void*)
// Line 507:		outCode1(push_eax);

	ldc.i4	0
	call	void 'outCode1'(int32)
// Line 508:		expression(VAL);		

	ldc.i4	0
	call	void 'expression'(int32)
// Line 509:		outCode1(pop_ecx);

	ldc.i4	4
	call	void 'outCode1'(int32)
// Line 510:		outCode1(mov_pcx_eax);	

	ldc.i4	11
	call	void 'outCode1'(int32)
// Line 511:	}

L_621:
	ret

}
 .method public hidebysig static void 'expression'(int32 'mode' ) cil managed
{
// Line 513:	void expression(int mode)

// Line 514:	{

	.maxstack	2
L_628:
// Line 515:		if (*Token[tix + 1] == '=' && Token[tix + 1][1] == '\0') assign();

	ldsfld	int32 'tix'

	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	61
	bne.un	'L_631'
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	0
	bne.un	'L_631'
	call	void 'assign'()
	br	'L_632'
L_631:
// Line 516:		else equalityExpression(mode);

	ldarg	'mode'
	call	void 'equalityExpression'(int32)
L_632:
// Line 517:	}

L_629:
	ret

}
 .method public hidebysig static void 'equalityExpression'(int32 'mode' ) cil managed
{
// Line 520:	void equalityExpression(int mode)

// Line 521:	{

	.locals
	(
		[0] int32 'fEQ/0'
	)
	.maxstack	4
L_638:
// Line 522:		int fEQ;

// Line 523:		relationalExpression(mode);

	ldarg	'mode'
	call	void 'relationalExpression'(int32)
// Line 524:		if ((fEQ = ispp("==")) || ispp("!="))

	ldsflda	valuetype 'int8[]' 'L_108'

	call	int32 'ispp'(void*)
	stloc	'fEQ/0'
	ldloc	'fEQ/0'
	ldc.i4	0
	bne.un	'L_646'
	ldsflda	valuetype 'int8[]' 'L_109'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_641'
L_646:
// Line 525:		{

// Line 526:			outCode1(push_eax);

	ldc.i4	0
	call	void 'outCode1'(int32)
// Line 527:			relationalExpression(mode);

	ldarg	'mode'
	call	void 'relationalExpression'(int32)
// Line 528:			outCode1(pop_ecx);

	ldc.i4	4
	call	void 'outCode1'(int32)
// Line 529:			outCode1(cmp_ecx_eax);

	ldc.i4	21
	call	void 'outCode1'(int32)
// Line 530:			outCode3(mov_eax, 1, IVAL);

	ldc.i4	13
	ldc.i4	1
	ldc.i4	0
	call	void 'outCode3'(int32, int32, int32)
// Line 531:			outCode3(fEQ ? jz : jnz, 5, IVAL);

	ldloc	'fEQ/0'
	ldc.i4	0
	beq	'L_647'
	ldc.i4	24
	br	'L_648'
L_647:
	ldc.i4	25
L_648:
	ldc.i4	5
	ldc.i4	0
	call	void 'outCode3'(int32, int32, int32)
// Line 532:			outCode3(mov_eax, 0, IVAL);

	ldc.i4	13
	ldc.i4	0
	ldc.i4	0
	call	void 'outCode3'(int32, int32, int32)
L_641:
// Line 533:		}

// Line 534:	}

L_639:
	ret

}
 .method public hidebysig static void 'relationalExpression'(int32 'mode' ) cil managed
{
// Line 537:	void relationalExpression(int mode)

// Line 538:	{

	.locals
	(
		[0] int32 'fLT/0',
		[1] int32 'fGT/1',
		[2] int32 'fLE/2'
	)
	.maxstack	6
L_652:
// Line 539:		int fLT = 0, fGT = 0, fLE = 0;

	ldloca	'fLT/0'
	ldc.i4	0
	stind.i4
	ldloca	'fGT/1'
	ldc.i4	0
	stind.i4
	ldloca	'fLE/2'
	ldc.i4	0
	stind.i4
// Line 540:		addExpression(mode);

	ldarg	'mode'
	call	void 'addExpression'(int32)
// Line 541:		if ((fLT = ispp("<")) || (fGT = ispp(">")) || (fLE = ispp("<=")) || ispp(">="))

	ldsflda	valuetype 'int8[]' 'L_110'

	call	int32 'ispp'(void*)
	stloc	'fLT/0'
	ldloc	'fLT/0'
	ldc.i4	0
	bne.un	'L_660'
	ldsflda	valuetype 'int8[]' 'L_111'

	call	int32 'ispp'(void*)
	stloc	'fGT/1'
	ldloc	'fGT/1'
	ldc.i4	0
	bne.un	'L_660'
	ldsflda	valuetype 'int8[]' 'L_112'

	call	int32 'ispp'(void*)
	stloc	'fLE/2'
	ldloc	'fLE/2'
	ldc.i4	0
	bne.un	'L_660'
	ldsflda	valuetype 'int8[]' 'L_113'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_655'
L_660:
// Line 542:		{

// Line 543:			outCode1(push_eax);

	ldc.i4	0
	call	void 'outCode1'(int32)
// Line 544:			addExpression(mode);

	ldarg	'mode'
	call	void 'addExpression'(int32)
// Line 545:			outCode1(pop_ecx);

	ldc.i4	4
	call	void 'outCode1'(int32)
// Line 546:			outCode1(cmp_ecx_eax);

	ldc.i4	21
	call	void 'outCode1'(int32)
// Line 547:			outCode3(mov_eax, 1, IVAL);

	ldc.i4	13
	ldc.i4	1
	ldc.i4	0
	call	void 'outCode3'(int32, int32, int32)
// Line 548:			outCode3(fLT ? jl : fGT ? jg : fLE ? jle : jge, 5, IVAL);

	ldloc	'fLT/0'
	ldc.i4	0
	beq	'L_661'
	ldc.i4	26
	br	'L_662'
L_661:
	ldloc	'fGT/1'
	ldc.i4	0
	beq	'L_663'
	ldc.i4	29
	br	'L_664'
L_663:
	ldloc	'fLE/2'
	ldc.i4	0
	beq	'L_665'
	ldc.i4	28
	br	'L_666'
L_665:
	ldc.i4	27
L_666:
L_664:
L_662:
	ldc.i4	5
	ldc.i4	0
	call	void 'outCode3'(int32, int32, int32)
// Line 549:			outCode3(mov_eax, 0, IVAL);

	ldc.i4	13
	ldc.i4	0
	ldc.i4	0
	call	void 'outCode3'(int32, int32, int32)
L_655:
// Line 550:		}

// Line 551:	}

L_653:
	ret

}
 .method public hidebysig static void 'addExpression'(int32 'mode' ) cil managed
{
// Line 554:	void addExpression(int mode)

// Line 555:	{

	.locals
	(
		[0] int32 'fAdd/0'
	)
	.maxstack	3
L_670:
// Line 556:		int fAdd;

// Line 557:		mulExpression(mode);		

	ldarg	'mode'
	call	void 'mulExpression'(int32)
	br	'L_675'
L_673:
// Line 559:		{

// Line 560:			outCode1(push_eax);

	ldc.i4	0
	call	void 'outCode1'(int32)
// Line 561:			mulExpression(mode);		

	ldarg	'mode'
	call	void 'mulExpression'(int32)
// Line 562:			outCode1(mov_ecx_eax);

	ldc.i4	9
	call	void 'outCode1'(int32)
// Line 563:			outCode1(pop_eax);

	ldc.i4	3
	call	void 'outCode1'(int32)
// Line 564:			outCode1(fAdd ? add_eax_ecx : sub_eax_ecx);

	ldloc	'fAdd/0'
	ldc.i4	0
	beq	'L_680'
	ldc.i4	15
	br	'L_681'
L_680:
	ldc.i4	17
L_681:
	call	void 'outCode1'(int32)
L_675:
// Line 558:		while ((fAdd = ispp("+")) || ispp("-"))

	ldsflda	valuetype 'int8[]' 'L_114'

	call	int32 'ispp'(void*)
	stloc	'fAdd/0'
	ldloc	'fAdd/0'
	ldc.i4	0
	bne.un	'L_673'
	ldsflda	valuetype 'int8[]' 'L_115'

	call	int32 'ispp'(void*)
	ldc.i4	0
	bne.un	'L_673'
L_674:
// Line 565:		}

// Line 566:	}

L_671:
	ret

}
 .method public hidebysig static void 'mulExpression'(int32 'mode' ) cil managed
{
// Line 569:	void mulExpression(int mode)

// Line 570:	{

	.locals
	(
		[0] int32 'fMul/0',
		[1] int32 'fDiv/1'
	)
	.maxstack	4
L_685:
// Line 571:		int fMul = 0, fDiv = 0;

	ldloca	'fMul/0'
	ldc.i4	0
	stind.i4
	ldloca	'fDiv/1'
	ldc.i4	0
	stind.i4
// Line 572:		primaryExpression(mode);	

	ldarg	'mode'
	call	void 'primaryExpression'(int32)
	br	'L_690'
L_688:
// Line 574:		{

// Line 575:			outCode1(push_eax);

	ldc.i4	0
	call	void 'outCode1'(int32)
// Line 576:			primaryExpression(mode);	

	ldarg	'mode'
	call	void 'primaryExpression'(int32)
// Line 577:			outCode1(mov_ecx_eax);

	ldc.i4	9
	call	void 'outCode1'(int32)
// Line 578:			outCode1(pop_eax);

	ldc.i4	3
	call	void 'outCode1'(int32)
// Line 579:			outCode1(fMul ? mul_eax_ecx : fDiv ? div_eax_ecx : mod_eax_ecx);

	ldloc	'fMul/0'
	ldc.i4	0
	beq	'L_695'
	ldc.i4	18
	br	'L_696'
L_695:
	ldloc	'fDiv/1'
	ldc.i4	0
	beq	'L_697'
	ldc.i4	19
	br	'L_698'
L_697:
	ldc.i4	20
L_698:
L_696:
	call	void 'outCode1'(int32)
L_690:
// Line 573:		while ((fMul = ispp("*")) || (fDiv = ispp("/")) || ispp("%"))

	ldsflda	valuetype 'int8[]' 'L_116'

	call	int32 'ispp'(void*)
	stloc	'fMul/0'
	ldloc	'fMul/0'
	ldc.i4	0
	bne.un	'L_688'
	ldsflda	valuetype 'int8[]' 'L_117'

	call	int32 'ispp'(void*)
	stloc	'fDiv/1'
	ldloc	'fDiv/1'
	ldc.i4	0
	bne.un	'L_688'
	ldsflda	valuetype 'int8[]' 'L_118'

	call	int32 'ispp'(void*)
	ldc.i4	0
	bne.un	'L_688'
L_689:
// Line 580:		}

// Line 581:	}

L_686:
	ret

}
 .method public hidebysig static void 'functionCall'() cil managed
{
// Line 583:	void functionCall()

// Line 584:	{

	.locals
	(
		[0] int32 'n/0',
		[1] int32 'nP/1',
		[2] valuetype 'int32[20]' 'p/2',
		[3] int32 'nSize/3',
		[4] int32 'dst/4',
		[5] int32 'mv/5',
		[6] void* 'name/6',
		[7] void* 'pName/7'
	)
	.maxstack	5
L_702:
// Line 585:		int n, nP, p[20], nSize, dst, mv;

// Line 586:		char *name = Token[tix++];

	ldloca	'name/6'
	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	stind.i4
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 587:		Name *pName;

// Line 588:		skip("(");

	ldsflda	valuetype 'int8[]' 'L_94'

	call	void 'skip'(void*)
// Line 589:		pName = getNameFromTable(0, NM_FUNC, name);

	ldc.i4	0
	ldc.i4	2
	ldloc	'name/6'
	call	void* 'getNameFromTable'(int32, int32, void*)
	stloc	'pName/7'
// Line 590:		if (pName == NULL) error("'%s' undeclared", name);

	ldloc	'pName/7'
	ldc.i4	0
	bne.un	'L_705'
	ldsflda	valuetype 'int8[]' 'L_119'

	ldloc	'name/6'
	call	void 'error'(void*, void*)
L_705:
	ldc.i4	0
	stloc	'nP/1'
	br	'L_707'
L_706:
// Line 592:		{

// Line 593:			p[nP++] = nInst;

	ldloc	'nP/1'
	ldc.i4	2
	shl
	ldloca	'p/2'
	add
	ldsfld	int32 'nInst'

	stind.i4
	ldloc	'nP/1'
	ldc.i4	1
	add
	stloc	'nP/1'
// Line 594:			expression(VAL);

	ldc.i4	0
	call	void 'expression'(int32)
// Line 595:			outCode1(push_eax);

	ldc.i4	0
	call	void 'outCode1'(int32)
L_709:
	ldsflda	valuetype 'int8[]' 'L_93'

	call	int32 'ispp'(void*)
	pop
// Line 591:		for (nP = 0; !ispp(")"); ispp(","))

L_707:
	ldsflda	valuetype 'int8[]' 'L_95'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_706'
L_708:
// Line 596:		}

// Line 597:		if (nP > 1)

	ldloc	'nP/1'
	ldc.i4	1
	ble	'L_712'
// Line 598:		{

// Line 599:			mv = nInst - p[1];

	ldloca	'p/2'
	ldc.i4	4
	add
	ldind.i4
	neg
	ldsfld	int32 'nInst'

	add
	stloc	'mv/5'
// Line 600:			memmove(&Inst[p[0] + mv], &Inst[p[0]], (nInst - p[0]) * sizeof(INSTRUCT));

	ldloca	'p/2'
	ldind.i4
	ldloc	'mv/5'
	add
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldloca	'p/2'
	ldind.i4
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldloca	'p/2'
	ldind.i4
	neg
	ldsfld	int32 'nInst'

	add
	ldc.i4	4
	shl
	conv.u4
	call	void* 'memmove'(void*, void*, uint32)
	pop
	ldloc	'nP/1'
	stloc	'n/0'
	ldloca	'p/2'
	ldind.i4
	stloc	'dst/4'
	br	'L_715'
L_714:
// Line 602:			{

// Line 603:				nSize = (n + 1 < nP ? p[n + 1] : nInst) - p[n];

	ldloc	'n/0'
	ldc.i4	1
	add
	ldloc	'nP/1'
	bge	'L_725'
	ldloc	'n/0'
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldloca	'p/2'
	add
	ldind.i4
	br	'L_726'
L_725:
	ldsfld	int32 'nInst'

L_726:
	ldloc	'n/0'
	ldc.i4	2
	shl
	ldloca	'p/2'
	add
	ldind.i4
	sub
	stloc	'nSize/3'
// Line 604:				memmove(&Inst[dst], &Inst[mv + p[n]], nSize * sizeof(INSTRUCT));

	ldloc	'dst/4'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldloc	'n/0'
	ldc.i4	2
	shl
	ldloca	'p/2'
	add
	ldind.i4
	ldloc	'mv/5'
	add
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldloc	'nSize/3'
	ldc.i4	4
	shl
	conv.u4
	call	void* 'memmove'(void*, void*, uint32)
	pop
L_717:
	ldloc	'dst/4'
	ldloc	'nSize/3'
	add
	stloc	'dst/4'
// Line 601:			for (n = nP, dst = p[0]; --n > 0; dst += nSize)

L_715:
	ldloc	'n/0'
	ldc.i4	1
	sub
	stloc	'n/0'
	ldloc	'n/0'
	ldc.i4	0
	bgt	'L_714'
L_716:
// Line 605:			}

L_712:
// Line 606:		}

// Line 607:		if (pName->address >= 0) outCode3(call, pName->address, FUNC);

	ldloc	'pName/7'
	ldc.i4	16
	add
	ldind.i4
	ldc.i4	0
	blt	'L_721'
	ldc.i4	30
	ldloc	'pName/7'
	ldc.i4	16
	add
	ldind.i4
	ldc.i4	2
	call	void 'outCode3'(int32, int32, int32)
	br	'L_722'
L_721:
// Line 608:		else outCode3(call_dll, (int)pName->name, DLL);

	ldc.i4	31
	ldloc	'pName/7'
	ldc.i4	8
	add
	ldind.u4
	conv.i4
	ldc.i4	3
	call	void 'outCode3'(int32, int32, int32)
L_722:
// Line 609:		outCode3(add_esp, nP * 4, IVAL);

	ldc.i4	14
	ldloc	'nP/1'
	ldc.i4	2
	shl
	ldc.i4	0
	call	void 'outCode3'(int32, int32, int32)
// Line 610:	}

L_703:
	ret

}
 .method public hidebysig static void 'primaryExpression'(int32 'mode' ) cil managed
{
// Line 613:	void primaryExpression(int mode)

// Line 614:	{

	.locals
	(
		[0] void* 'name/0',
		[1] void* 'pName/1'
	)
	.maxstack	4
L_730:
// Line 615:		if (is_digit(*Token[tix]))  			

	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldind.i1
	conv.i4
	call	int32 'is_digit'(int32)
	ldc.i4	0
	beq	'L_733'
// Line 616:		{

// Line 617:			outCode3(mov_eax, atoi(Token[tix++]), IVAL);

	ldc.i4	13
	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

	call	int32 'atol'(void*)
	conv.i4
	ldc.i4	0
	call	void 'outCode3'(int32, int32, int32)
	br	'L_736'
L_733:
// Line 618:		}

// Line 619:		else if (*Token[tix] == '"')  		

	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_737'
// Line 620:		{

// Line 621:			outCode3(mov_eax, nData, DATA);

	ldc.i4	13
	ldsfld	int32 'nData'

	ldc.i4	6
	call	void 'outCode3'(int32, int32, int32)
// Line 622:			outDataStr(Token[tix++]);

	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

	call	void 'outDataStr'(void*)
	br	'L_740'
L_737:
// Line 623:		}

// Line 624:		else if (ispp("("))  			

	ldsflda	valuetype 'int8[]' 'L_94'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_741'
// Line 625:		{

// Line 626:			expression(VAL);

	ldc.i4	0
	call	void 'expression'(int32)
// Line 627:			skip(")");

	ldsflda	valuetype 'int8[]' 'L_95'

	call	void 'skip'(void*)
	br	'L_744'
L_741:
// Line 628:		}

// Line 629:		else if (*Token[tix + 1] == '(')  		

	ldsfld	int32 'tix'

	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	40
	bne.un	'L_745'
// Line 630:		{

// Line 631:			functionCall();

	call	void 'functionCall'()
	br	'L_748'
L_745:
// Line 632:		}

// Line 633:		else if (isAlpha(*Token[tix]))  		

	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	ldind.i1
	conv.i4
	call	int32 'isAlpha'(int32)
	ldc.i4	0
	beq	'L_749'
// Line 634:		{

// Line 635:			char *name = Token[tix++];

	ldloca	'name/0'
	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	stind.i4
	ldsfld	int32 'tix'

	ldc.i4	1
	add
	stsfld	int32 'tix'

// Line 636:			Name *pName = getNameFromAllTable(NM_VAR, name);

	ldloca	'pName/1'
	ldc.i4	1
	ldloc	'name/0'
	call	void* 'getNameFromAllTable'(int32, void*)
	stind.i4
// Line 637:			if (pName == NULL)

	ldloc	'pName/1'
	ldc.i4	0
	bne.un	'L_751'
// Line 638:				error("primExpr: '%s' undeclared", name);

	ldsflda	valuetype 'int8[]' 'L_120'

	ldloc	'name/0'
	call	void 'error'(void*, void*)
L_751:
// Line 639:	

// Line 640:			if (pName->addrType == AD_STACK)

	ldloc	'pName/1'
	ldc.i4	12
	add
	ldind.i4
	ldc.i4	1
	bne.un	'L_752'
// Line 641:			{

// Line 642:				outCode3(lea_eax_pbp, pName->address, DISP);

	ldc.i4	6
	ldloc	'pName/1'
	ldc.i4	16
	add
	ldind.i4
	ldc.i4	4
	call	void 'outCode3'(int32, int32, int32)
	br	'L_755'
L_752:
// Line 643:			}

// Line 644:			else

// Line 645:			{

// Line 646:				outCode3(mov_eax, pName->address, DATA);

	ldc.i4	13
	ldloc	'pName/1'
	ldc.i4	16
	add
	ldind.i4
	ldc.i4	6
	call	void 'outCode3'(int32, int32, int32)
L_755:
// Line 647:			}

// Line 648:	

// Line 649:			if (ispp("["))

	ldsflda	valuetype 'int8[]' 'L_89'

	call	int32 'ispp'(void*)
	ldc.i4	0
	beq	'L_758'
// Line 650:			{

// Line 651:				outCode1(push_eax);

	ldc.i4	0
	call	void 'outCode1'(int32)
// Line 652:				expression(VAL);		

	ldc.i4	0
	call	void 'expression'(int32)
// Line 653:				skip("]");

	ldsflda	valuetype 'int8[]' 'L_90'

	call	void 'skip'(void*)
// Line 654:				outCode1(pop_edx);

	ldc.i4	5
	call	void 'outCode1'(int32)
// Line 655:				outCode1(lea_eax_da4);	

	ldc.i4	7
	call	void 'outCode1'(int32)
L_758:
// Line 656:			}

// Line 657:			if (mode == VAL) outCode1(mov_eax_pax);

	ldarg	'mode'
	ldc.i4	0
	bne.un	'L_763'
	ldc.i4	10
	call	void 'outCode1'(int32)
L_761:
// Line 658:	

// Line 659:			 
// Line 660:	
// Line 661:	
// Line 662:	
// Line 663:	
// Line 664:	
// Line 665:	
// Line 666:	
// Line 667:	

	br	'L_763'
L_749:
// Line 668:		}

// Line 669:		else

// Line 670:		{

// Line 671:			error("primExpr: <%s>", Token[tix]);

	ldsflda	valuetype 'int8[]' 'L_121'

	ldsfld	int32 'tix'

	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	call	void 'error'(void*, void*)
L_763:
L_748:
L_744:
L_740:
L_736:
// Line 672:		}

// Line 673:	}

L_731:
	ret

}
 .method public hidebysig static void 'exe'(void* 'Code' , int32 'nCode' , void* 'Data' , int32 'nData' , int32 'entryPoint' , void* 'outfile' ) cil managed
{
// Line 706:	void exe(BYTE *Code, int nCode, BYTE *Data, int nData, int entryPoint, char *outfile)

// Line 707:	{

	.locals
	(
		[0] void* 'fpDst/0',
		[1] int32 'posLookupTable/1',
		[2] int32 'sizeLookupTable/2',
		[3] int32 'posImptAddrTable/3',
		[4] int32 'sizeImptAddrTable/4',
		[5] int32 'posName/5',
		[6] valuetype '_IMPORT_SECTION' 'imptSection/6',
		[7] int32 'lenDataSection/7',
		[8] valuetype '_EXE_HEADER' 'exeHeader/8'
	)
	.maxstack	4
L_771:
// Line 708:		FILE *fpDst;

// Line 709:		int posLookupTable = posDataSection + (USE_DLL + 1) * 20;

	ldloca	'posLookupTable/1'
	ldsfld	int32 'posDataSection'

	ldc.i4	40
	add
	stind.i4
// Line 710:		int sizeLookupTable = (USE_DLL + USE_FUNC) * 4;

	ldloca	'sizeLookupTable/2'
	ldc.i4	12
	stind.i4
// Line 711:		int posImptAddrTable = posLookupTable + sizeLookupTable;

	ldloca	'posImptAddrTable/3'
	ldloc	'posLookupTable/1'
	ldloc	'sizeLookupTable/2'
	add
	stind.i4
// Line 712:		int sizeImptAddrTable = sizeLookupTable;

	ldloca	'sizeImptAddrTable/4'
	ldloc	'sizeLookupTable/2'
	stind.i4
// Line 713:		int posName = posLookupTable + sizeLookupTable * 2;

	ldloca	'posName/5'
	ldloc	'sizeLookupTable/2'
	ldc.i4	1
	shl
	ldloc	'posLookupTable/1'
	add
	stind.i4
// Line 714:	

// Line 715:		IMPORT_SECTION imptSection =

	ldloca	'imptSection/6'
	ldc.i4	0
	ldc.i4	192
	initblk
	ldloca	'imptSection/6'
	conv.u4
	ldloc	'posLookupTable/1'
	conv.u4
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	12
	add
	ldloc	'posName/5'
	conv.u4
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	16
	add
	ldloc	'posImptAddrTable/3'
	conv.u4
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	20
	add
	ldc.i4	0
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	24
	add
	ldc.i4	0
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	28
	add
	ldc.i4	0
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	32
	add
	ldc.i4	0
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	36
	add
	ldc.i4	0
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	40
	add
	ldloc	'posName/5'
	ldc.i4	14
	add
	conv.u4
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	44
	add
	ldloc	'posName/5'
	ldc.i4	30
	add
	conv.u4
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	48
	add
	ldc.i4	0
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	52
	add
	ldloc	'posName/5'
	ldc.i4	14
	add
	conv.u4
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	56
	add
	ldloc	'posName/5'
	ldc.i4	30
	add
	conv.u4
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	60
	add
	ldc.i4	0
	stind.i4
	ldloca	'imptSection/6'
	ldc.i4	64
	add
	ldc.i4	109
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	65
	add
	ldc.i4	115
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	66
	add
	ldc.i4	118
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	67
	add
	ldc.i4	99
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	68
	add
	ldc.i4	114
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	69
	add
	ldc.i4	116
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	70
	add
	ldc.i4	46
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	71
	add
	ldc.i4	100
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	72
	add
	ldc.i4	108
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	73
	add
	ldc.i4	108
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	74
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	75
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	76
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	77
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	78
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	79
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	80
	add
	ldc.i4	112
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	81
	add
	ldc.i4	114
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	82
	add
	ldc.i4	105
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	83
	add
	ldc.i4	110
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	84
	add
	ldc.i4	116
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	85
	add
	ldc.i4	102
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	86
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	87
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	88
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	89
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	90
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	91
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	92
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	93
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	94
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	95
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	96
	add
	ldc.i4	101
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	97
	add
	ldc.i4	120
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	98
	add
	ldc.i4	105
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	99
	add
	ldc.i4	116
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	100
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	101
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	102
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	103
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	104
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	105
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	106
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	107
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	108
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	109
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	110
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	111
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	112
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	113
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	114
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	115
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	116
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	117
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	118
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	119
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	120
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	121
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	122
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	123
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	124
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	125
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	126
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	127
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	128
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	129
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	130
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	131
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	132
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	133
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	134
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	135
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	136
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	137
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	138
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	139
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	140
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	141
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	142
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	143
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	144
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	145
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	146
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	147
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	148
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	149
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	150
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	151
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	152
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	153
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	154
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	155
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	156
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	157
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	158
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	159
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	160
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	161
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	162
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	163
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	164
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	165
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	166
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	167
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	168
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	169
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	170
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	171
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	172
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	173
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	174
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	175
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	176
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	177
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	178
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	179
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	180
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	181
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	182
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	183
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	184
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	185
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	186
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	187
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	188
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	189
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	190
	add
	ldc.i4	0
	conv.i1
	stind.i1
	ldloca	'imptSection/6'
	ldc.i4	191
	add
	ldc.i4	0
	conv.i1
	stind.i1
// Line 730:		};

// Line 731:		int lenDataSection = sizeof(imptSection) + nData;

	ldloca	'lenDataSection/7'
	ldarg	'nData'
	ldc.i4	192
	add
	stind.i4
// Line 732:		EXE_HEADER exeHeader =

// Line 733:		{

// Line 734:			{

// Line 735:				

// Line 736:				0x5A4D, 0x90, 3, 0, 4,                

// Line 737:				0, 0xFFFF, 0, 0xB8,	                  

// Line 738:				0,0,0, 0x40, 0, {0,0,0,0}, 0,0, {0,0,0,0,0, 0,0,0,0,0},

// Line 739:				0x0080,                               

// Line 740:			},

// Line 741:			"\x0E\x1F\xBA\x0E\x00\xB4\x09\xCD\x21\xB8\x01\x4C\xCD\x21"

// Line 742:			"This program cannot be run in DOS mode.\r\r\n$",	

// Line 743:			"PE",

// Line 744:			{

// Line 745:				

// Line 746:				0x014c, 2, 0, 0, 0,			  

// Line 747:				sizeof(IMAGE_OPTIONAL_HEADER),0x030F  

// Line 748:			},

// Line 749:			{   	

// Line 750:				0x010B, 0x06, 0x00,			  

// Line 751:				0, 0, 0, posCodeSection + entryPoint,   

// Line 752:				posCodeSection, posDataSection,	  

// Line 753:				ImageBase,	MEMALIGN, RAWALIGN,	  

// Line 754:				4, 0,  0, 0,  4, 0,	 0,		  

// Line 755:				MEMALIGN * 3, MEMALIGN, 0,		  

// Line 756:				3, 0,				  

// Line 757:				0x100000, 0x1000, 0x100000, 0x1000,	  

// Line 758:				0, 0x10,

// Line 759:				{   {0,0}, {posDataSection, sizeDataSection},                     

// Line 760:					{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},

// Line 761:					{posImptAddrTable, sizeImptAddrTable},{0,0},{0,0},{0,0}

// Line 762:				}	    

	ldloca	'exeHeader/8'
	ldc.i4	0
	ldc.i4	456
	initblk
	ldloca	'exeHeader/8'
	conv.u4
	ldc.i4	23117
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	2
	add
	ldc.i4	144
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	4
	add
	ldc.i4	3
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	6
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	8
	add
	ldc.i4	4
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	10
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	12
	add
	ldc.i4	65535
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	14
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	16
	add
	ldc.i4	184
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	18
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	20
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	22
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	24
	add
	ldc.i4	64
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	26
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	28
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	30
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	32
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	34
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	36
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	38
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	40
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	42
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	44
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	46
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	48
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	50
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	52
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	54
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	56
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	58
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	60
	add
	ldc.i4	128
	conv.i4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	64
	add
	ldc.i4	14
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	65
	add
	ldc.i4	31
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	66
	add
	ldc.i4	186
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	67
	add
	ldc.i4	14
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	68
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	69
	add
	ldc.i4	180
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	70
	add
	ldc.i4	9
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	71
	add
	ldc.i4	205
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	72
	add
	ldc.i4	33
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	73
	add
	ldc.i4	184
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	74
	add
	ldc.i4	1
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	75
	add
	ldc.i4	76
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	76
	add
	ldc.i4	205
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	77
	add
	ldc.i4	33
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	78
	add
	ldc.i4	84
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	79
	add
	ldc.i4	104
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	80
	add
	ldc.i4	105
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	81
	add
	ldc.i4	115
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	82
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	83
	add
	ldc.i4	112
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	84
	add
	ldc.i4	114
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	85
	add
	ldc.i4	111
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	86
	add
	ldc.i4	103
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	87
	add
	ldc.i4	114
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	88
	add
	ldc.i4	97
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	89
	add
	ldc.i4	109
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	90
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	91
	add
	ldc.i4	99
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	92
	add
	ldc.i4	97
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	93
	add
	ldc.i4	110
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	94
	add
	ldc.i4	110
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	95
	add
	ldc.i4	111
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	96
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	97
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	98
	add
	ldc.i4	98
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	99
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	100
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	101
	add
	ldc.i4	114
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	102
	add
	ldc.i4	117
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	103
	add
	ldc.i4	110
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	104
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	105
	add
	ldc.i4	105
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	106
	add
	ldc.i4	110
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	107
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	108
	add
	ldc.i4	68
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	109
	add
	ldc.i4	79
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	110
	add
	ldc.i4	83
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	111
	add
	ldc.i4	32
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	112
	add
	ldc.i4	109
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	113
	add
	ldc.i4	111
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	114
	add
	ldc.i4	100
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	115
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	116
	add
	ldc.i4	46
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	117
	add
	ldc.i4	13
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	118
	add
	ldc.i4	13
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	119
	add
	ldc.i4	10
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	120
	add
	ldc.i4	36
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	121
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	122
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	123
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	124
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	125
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	126
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	127
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	128
	add
	ldc.i4	80
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	129
	add
	ldc.i4	69
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	130
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	131
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	132
	add
	ldc.i4	332
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	134
	add
	ldc.i4	2
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	136
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	140
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	144
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	148
	add
	ldc.i4	224
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	150
	add
	ldc.i4	783
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	152
	add
	ldc.i4	267
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	154
	add
	ldc.i4	6
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	155
	add
	ldc.i4	0
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	156
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	160
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	164
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	168
	add
	ldsfld	int32 'posCodeSection'

	ldarg	'entryPoint'
	add
	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	172
	add
	ldsfld	int32 'posCodeSection'

	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	176
	add
	ldsfld	int32 'posDataSection'

	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	180
	add
	ldc.i4	4194304
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	184
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	188
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	192
	add
	ldc.i4	4
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	194
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	196
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	198
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	200
	add
	ldc.i4	4
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	202
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	204
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	208
	add
	ldc.i4	12288
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	212
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	216
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	220
	add
	ldc.i4	3
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	222
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	224
	add
	ldc.i4	1048576
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	228
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	232
	add
	ldc.i4	1048576
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	236
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	240
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	244
	add
	ldc.i4	16
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	248
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	252
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	256
	add
	ldsfld	int32 'posDataSection'

	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	260
	add
	ldsfld	int32 'sizeDataSection'

	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	264
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	268
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	272
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	276
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	280
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	284
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	288
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	292
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	296
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	300
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	304
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	308
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	312
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	316
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	320
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	324
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	328
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	332
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	336
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	340
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	344
	add
	ldloc	'posImptAddrTable/3'
	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	348
	add
	ldloc	'sizeImptAddrTable/4'
	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	352
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	356
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	360
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	364
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	368
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	372
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	376
	add
	ldc.i4	46
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	377
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	378
	add
	ldc.i4	101
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	379
	add
	ldc.i4	120
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	380
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	381
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	382
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	383
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	384
	add
	ldarg	'nCode'
	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	388
	add
	ldsfld	int32 'posCodeSection'

	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	392
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	396
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	400
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	404
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	408
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	410
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	412
	add
	ldc.i4	1610612768
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	416
	add
	ldc.i4	46
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	417
	add
	ldc.i4	100
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	418
	add
	ldc.i4	97
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	419
	add
	ldc.i4	116
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	420
	add
	ldc.i4	97
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	421
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	422
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	423
	add
	ldc.i4	0
	conv.u1
	stind.i1
	ldloca	'exeHeader/8'
	ldc.i4	424
	add
	ldloc	'lenDataSection/7'
	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	428
	add
	ldsfld	int32 'posDataSection'

	conv.u4
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	432
	add
	ldc.i4	4096
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	436
	add
	ldc.i4	8192
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	440
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	444
	add
	ldc.i4	0
	stind.i4
	ldloca	'exeHeader/8'
	ldc.i4	448
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	450
	add
	ldc.i4	0
	conv.u2
	stind.i2
	ldloca	'exeHeader/8'
	ldc.i4	452
	add
	ldc.i4	-1073741760
	stind.i4
// Line 774:		};

// Line 775:		memcpy(bufEXE, &exeHeader, sizeof(exeHeader));

	ldsflda	valuetype 'uint8[12288]' 'bufEXE'

	ldloca	'exeHeader/8'
	conv.u4
	ldc.i4	456
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 776:		memcpy(bufEXE + RAWALIGN, Code, nCode);

	ldsflda	valuetype 'uint8[12288]' 'bufEXE'

	ldc.i4	4096
	add
	ldarg	'Code'
	ldarg	'nCode'
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 777:		memcpy(bufEXE + RAWALIGN * 2, &imptSection, sizeof(imptSection));

	ldsflda	valuetype 'uint8[12288]' 'bufEXE'

	ldc.i4	8192
	add
	ldloca	'imptSection/6'
	conv.u4
	ldc.i4	192
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 778:		

// Line 779:		memcpy(bufEXE + RAWALIGN * 2 + 0xc0, Data, nData); 

	ldc.i4	8384
	ldsflda	valuetype 'uint8[12288]' 'bufEXE'

	add
	ldarg	'Data'
	ldarg	'nData'
	conv.u4
	call	void* 'memcpy'(void*, void*, uint32)
	pop
// Line 780:		fpDst = fopen(outfile, "wb");

	ldarg	'outfile'
	ldsflda	valuetype 'int8[]' 'L_122'

	call	void* 'fopen'(void*, void*)
	stloc	'fpDst/0'
// Line 781:		if (fpDst == NULL)

	ldloc	'fpDst/0'
	ldc.i4	0
	bne.un	'L_774'
// Line 782:		{

// Line 783:			printf("Impossible to create the file %s", outfile);

	ldsflda	valuetype 'int8[]' 'L_123'

	ldarg	'outfile'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
// Line 784:			exit(1);

	ldc.i4	1
	call	void 'exit'(int32)
L_774:
// Line 785:		}

// Line 786:		fwrite(bufEXE, sizeof(bufEXE), 1, fpDst);

	ldsflda	valuetype 'uint8[12288]' 'bufEXE'

	ldc.i4	12288
	conv.u4
	ldc.i4	1
	conv.u4
	ldloc	'fpDst/0'
	call	uint32 'fwrite'(void*, uint32, uint32, void*)
	pop
// Line 787:		fclose(fpDst);

	ldloc	'fpDst/0'
	call	int32 'fclose'(void*)
	pop
// Line 788:	}

L_772:
	ret

}
 .method public hidebysig static int32 'htoi'(int32 'c' ) cil managed
{
// Line 790:	int htoi(int c)

// Line 791:	{

	.maxstack	3
L_782:
// Line 792:		return c >= 'A' ? (c - 'A' + 10) : (c - '0');

	ldarg	'c'
	ldc.i4	65
	blt	'L_787'
	ldarg	'c'
	ldc.i4	-55
	add
	br	'L_788'
L_787:
	ldarg	'c'
	ldc.i4	48
	sub
L_788:
// Line 793:	}

L_783:
	ret

}
 .method public hidebysig static int32 'gen_mcode'() cil managed
{
// Line 794:	int gen_mcode()

// Line 795:	{

	.locals
	(
		[0] int32 'n/0',
		[1] int32 'entryPoint/1',
		[2] int32 'offset/2',
		[3] valuetype 'int32[1000]' 'loc2addr/3',
		[4] int32 'inst/4',
		[5] int32 'imm/5',
		[6] int32 'type/6',
		[7] void* 'q/7',
		[8] void* 'pI/8',
		[9] int32 'pos/9',
		[10] int32 'inst/10',
		[11] int32 'imm/11'
	)
	.maxstack	7
L_792:
// Line 796:		int n, entryPoint = 0, offset = 0;

	ldloca	'entryPoint/1'
	ldc.i4	0
	stind.i4
	ldloca	'offset/2'
	ldc.i4	0
	stind.i4
// Line 797:		int loc2addr[1000];

// Line 798:	

	ldc.i4	0
	stloc	'n/0'
	br	'L_796'
L_795:
// Line 800:		{

// Line 801:			int inst = Inst[n].inst;

	ldloca	'inst/10'
	ldloc	'n/0'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldind.i4
	stind.i4
// Line 802:			int imm = Inst[n].imm;

	ldloca	'imm/11'
	ldloc	'n/0'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	8
	add
	ldind.i4
	stind.i4
// Line 803:			Inst[n].offset = offset;

	ldloc	'n/0'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	4
	add
	ldloc	'offset/2'
	stind.i4
// Line 804:			if (inst == loc_) loc2addr[imm] = offset;

	ldloc	'inst/10'
	ldc.i4	34
	bne.un	'L_800'
	ldloc	'imm/11'
	ldc.i4	2
	shl
	ldloca	'loc2addr/3'
	add
	ldloc	'offset/2'
	stind.i4
L_800:
// Line 805:			if (inst == func)

	ldloc	'inst/10'
	ldc.i4	33
	bne.un	'L_801'
// Line 806:			{

// Line 807:				Func[imm].offset = offset;

	ldloc	'imm/11'
	ldc.i4	3
	shl
	ldsflda	valuetype '_Function[100]' 'Func'

	add
	ldloc	'offset/2'
	stind.i4
// Line 808:				if (strcmp(Func[imm].name, "main") == 0)

	ldloc	'imm/11'
	ldc.i4	3
	shl
	ldsflda	valuetype '_Function[100]' 'Func'

	add
	ldc.i4	4
	add
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_124'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_803'
// Line 809:					entryPoint = offset;

	ldloc	'offset/2'
	stloc	'entryPoint/1'
L_803:
L_801:
// Line 810:			}

// Line 811:			if (inst != func && inst != loc_)

	ldloc	'inst/10'
	ldc.i4	33
	beq	'L_805'
	ldloc	'inst/10'
	ldc.i4	34
	beq	'L_805'
// Line 812:				offset += strlen(insts[inst].hcode) / 2 + insts[inst].fImm * 4;

	ldloc	'inst/10'
	ldc.i4	12
	mul
	ldsflda	valuetype '_INSTS[35]' 'insts'

	add
	ldind.u4
	call	uint32 'strlen'(void*)
	ldc.i4	1
	shr.un
	ldloc	'inst/10'
	ldc.i4	12
	mul
	ldsflda	valuetype '_INSTS[35]' 'insts'

	add
	ldc.i4	8
	add
	ldind.i4
	ldc.i4	2
	shl
	conv.u4
	add
	ldloc	'offset/2'
	conv.u4
	add
	conv.i4
	stloc	'offset/2'
L_805:
// Line 813:			if (fCode)

	ldsfld	int32 'fCode'

	ldc.i4	0
	beq	'L_806'
// Line 814:			{

// Line 815:				printf("%03d:%c", n + 1, (inst == func || inst == loc_) ? ' ' : '\t');

	ldsflda	valuetype 'int8[]' 'L_125'

	ldloc	'n/0'
	ldc.i4	1
	add
	ldloc	'inst/10'
	ldc.i4	33
	beq	'L_849'
	ldloc	'inst/10'
	ldc.i4	34
	bne.un	'L_847'
L_849:
	ldc.i4	32
	br	'L_848'
L_847:
	ldc.i4	9
L_848:
	call	vararg int32 'printf'(void*, ..., int32, int32)
	pop
// Line 816:				printf(insts[inst].mnemo, imm, inst == func ? Func[imm].name : 0);

	ldloc	'inst/10'
	ldc.i4	12
	mul
	ldsflda	valuetype '_INSTS[35]' 'insts'

	add
	ldc.i4	4
	add
	ldind.u4
	ldloc	'imm/11'
	ldloc	'inst/10'
	ldc.i4	33
	bne.un	'L_850'
	ldloc	'imm/11'
	ldc.i4	3
	shl
	ldsflda	valuetype '_Function[100]' 'Func'

	add
	ldc.i4	4
	add
	ldind.u4
	conv.i4
	br	'L_851'
L_850:
	ldc.i4	0
L_851:
	call	vararg int32 'printf'(void*, ..., int32, void*)
	pop
// Line 817:				if (insts[inst].mnemo[0] == 'j' && Inst[n].type == IVAL)

	ldloc	'inst/10'
	ldc.i4	12
	mul
	ldsflda	valuetype '_INSTS[35]' 'insts'

	add
	ldc.i4	4
	add
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	106
	bne.un	'L_808'
	ldloc	'n/0'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	12
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_808'
// Line 818:					printf("[relative addr]");

	ldsflda	valuetype 'int8[]' 'L_126'

	call	vararg int32 'printf'(void*, ...)
	pop
	br	'L_809'
L_808:
// Line 819:				else if (Inst[n].type == DATA)

	ldloc	'n/0'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	12
	add
	ldind.i4
	ldc.i4	6
	bne.un	'L_810'
// Line 820:					printf(" [gvar addr]");

	ldsflda	valuetype 'int8[]' 'L_127'

	call	vararg int32 'printf'(void*, ...)
	pop
L_810:
L_809:
// Line 821:				printf("\n");

	ldsflda	valuetype 'int8[]' 'L_128'

	call	vararg int32 'printf'(void*, ...)
	pop
L_806:
// Line 822:			}

L_798:
	ldloc	'n/0'
	ldc.i4	1
	add
	stloc	'n/0'
// Line 799:		for (n = 0; n < nInst; n++)

L_796:
	ldloc	'n/0'
	ldsfld	int32 'nInst'

	blt	'L_795'
L_797:
// Line 823:		}

	ldc.i4	0
	stloc	'n/0'
	br	'L_814'
L_813:
// Line 825:		{

// Line 826:			int inst = Inst[n].inst;

	ldloca	'inst/4'
	ldloc	'n/0'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldind.i4
	stind.i4
// Line 827:			int imm = Inst[n].imm;

	ldloca	'imm/5'
	ldloc	'n/0'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	8
	add
	ldind.i4
	stind.i4
// Line 828:			int type = Inst[n].type;

	ldloca	'type/6'
	ldloc	'n/0'
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	12
	add
	ldind.i4
	stind.i4
// Line 829:			char *q = insts[inst].hcode;

	ldloca	'q/7'
	ldloc	'inst/4'
	ldc.i4	12
	mul
	ldsflda	valuetype '_INSTS[35]' 'insts'

	add
	ldind.u4
	stind.i4
// Line 830:			if (q == NULL) continue;

	ldloc	'q/7'
	ldc.i4	0
	beq	'L_816'
L_818:
	br	'L_820'
L_819:
// Line 832:				CodeBuf[nCode++] = (htoi(*q) << 4) + htoi(q[1]);

	ldsfld	int32 'nCode'

	ldsflda	valuetype 'uint8[4096]' 'CodeBuf'

	add
	ldloc	'q/7'
	ldind.i1
	conv.i4
	ldsfld	int32 'nCode'

	ldc.i4	1
	add
	stsfld	int32 'nCode'

	call	int32 'htoi'(int32)
	ldc.i4	4
	shl
	ldloc	'q/7'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	call	int32 'htoi'(int32)
	add
	conv.u1
	stind.i1
L_822:
	ldloc	'q/7'
	ldc.i4	2
	add
	stloc	'q/7'
// Line 831:			for (; *q != '\0'; q += 2)

L_820:
	ldloc	'q/7'
	ldind.i1
	conv.i4
	ldc.i4	0
	bne.un	'L_819'
L_821:
// Line 833:			if (insts[inst].fImm)

	ldloc	'inst/4'
	ldc.i4	12
	mul
	ldsflda	valuetype '_INSTS[35]' 'insts'

	add
	ldc.i4	8
	add
	ldind.i4
	ldc.i4	0
	beq	'L_823'
// Line 834:			{

// Line 835:				int *pI = (int*)&CodeBuf[nCode];

	ldloca	'pI/8'
	ldsfld	int32 'nCode'

	ldsflda	valuetype 'uint8[4096]' 'CodeBuf'

	add
	stind.i4
// Line 836:				if (type == DATA)

	ldloc	'type/6'
	ldc.i4	6
	bne.un	'L_825'
// Line 837:				{

// Line 838:					*pI = ImageBase + posDataSection + POSDATA + imm;

	ldloc	'pI/8'
	ldsfld	int32 'posDataSection'

	ldc.i4	4194496
	add
	ldloc	'imm/5'
	add
	stind.i4
	br	'L_828'
L_825:
// Line 839:				}

// Line 840:				else if (type == DLL)

	ldloc	'type/6'
	ldc.i4	3
	bne.un	'L_829'
// Line 841:				{

// Line 842:					int pos = strcmp((char*)imm, "printf") == 0 ? 0 : 4;

	ldloca	'pos/9'
	ldloc	'imm/5'
	conv.u4
	ldsflda	valuetype 'int8[]' 'L_98'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_852'
	ldc.i4	0
	br	'L_853'
L_852:
	ldc.i4	4
L_853:
	stind.i4
// Line 843:					*pI = ImageBase + posDataSection + IMPT + pos;

	ldloc	'pI/8'
	ldsfld	int32 'posDataSection'

	ldc.i4	4194356
	add
	ldloc	'pos/9'
	add
	stind.i4
	br	'L_832'
L_829:
// Line 844:				}

// Line 845:				else if (type == FUNC)

	ldloc	'type/6'
	ldc.i4	2
	bne.un	'L_833'
// Line 846:				{

// Line 847:					*pI = Func[imm].offset - Inst[n + 1].offset;

	ldloc	'pI/8'
	ldloc	'n/0'
	ldc.i4	1
	add
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	4
	add
	ldind.i4
	neg
	ldloc	'imm/5'
	ldc.i4	3
	shl
	ldsflda	valuetype '_Function[100]' 'Func'

	add
	ldind.i4
	add
	stind.i4
	br	'L_836'
L_833:
// Line 848:				}

// Line 849:				else if (type == LOC)

	ldloc	'type/6'
	ldc.i4	1
	bne.un	'L_837'
// Line 850:				{

// Line 851:					*pI = loc2addr[imm] - Inst[n + 1].offset;

	ldloc	'pI/8'
	ldloc	'n/0'
	ldc.i4	1
	add
	ldc.i4	4
	shl
	ldsflda	valuetype '_INSTRUCT[1000]' 'Inst'

	add
	ldc.i4	4
	add
	ldind.i4
	neg
	ldloc	'imm/5'
	ldc.i4	2
	shl
	ldloca	'loc2addr/3'
	add
	ldind.i4
	add
	stind.i4
	br	'L_840'
L_837:
// Line 852:				}

// Line 853:				else

// Line 854:				{

// Line 855:					*pI = imm;

	ldloc	'pI/8'
	ldloc	'imm/5'
	stind.i4
L_840:
L_836:
L_832:
L_828:
// Line 856:				}

// Line 857:				nCode += 4;

	ldsfld	int32 'nCode'

	ldc.i4	4
	add
	stsfld	int32 'nCode'

L_823:
// Line 858:			}

L_816:
	ldloc	'n/0'
	ldc.i4	1
	add
	stloc	'n/0'
// Line 824:		for (n = 0; n < nInst; n++)

L_814:
	ldloc	'n/0'
	ldsfld	int32 'nInst'

	blt	'L_813'
L_815:
// Line 859:		}

// Line 860:		return entryPoint;

	ldloc	'entryPoint/1'
// Line 861:	}

L_793:
	ret

}
 .field public static int32 'fToken' at $fToken
.data $fToken = bytearray (0 0 0 0 
)
.field public static int32 'fTrace' at $fTrace
.data $fTrace = bytearray (0 0 0 0 
)
.field public static int32 'fCode' at $fCode
.data $fCode = bytearray (0 0 0 0 
)
.field public static valuetype 'void*[1000]' 'Token' at $Token
.data $Token = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static int32 'nToken' at $nToken
.data $nToken = bytearray (0 0 0 0 
)
.field public static int32 'tix' at $tix
.data $tix = bytearray (ff ff ff ff 
)
.field public static valuetype 'void*[1000]' 'GlobalName' at $GlobalName
.data $GlobalName = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'void*[1000]' 'LocalName' at $LocalName
.data $LocalName = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static int32 'nGlobal' at $nGlobal
.data $nGlobal = bytearray (0 0 0 0 
)
.field public static int32 'nLocal' at $nLocal
.data $nLocal = bytearray (0 0 0 0 
)
.field public static valuetype '_INSTS[35]' 'insts' at $insts
.data $insts = bytearray (0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	1 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	1 0 0 0 0 0 0 0 
	0 0 0 0 1 0 0 0 
	0 0 0 0 0 0 0 0 
	1 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	1 0 0 0 0 0 0 0 
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
	1 0 0 0 0 0 0 0 
	0 0 0 0 1 0 0 0 
	0 0 0 0 0 0 0 0 
	1 0 0 0 0 0 0 0 
	0 0 0 0 1 0 0 0 
	0 0 0 0 0 0 0 0 
	1 0 0 0 0 0 0 0 
	0 0 0 0 1 0 0 0 
	0 0 0 0 0 0 0 0 
	1 0 0 0 0 0 0 0 
	0 0 0 0 1 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 1 0 0 0 
	0 0 0 0 0 0 0 0 
	1 0 0 0 
)
.field public static int32 'baseSpace' at $baseSpace
.data $baseSpace = bytearray (0 0 0 0 
)
.field public static valuetype '_INSTRUCT[1000]' 'Inst' at $Inst
.data $Inst = bytearray (0 0 0 0 0 0 0 0 
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
	
)
.field public static int32 'nInst' at $nInst
.data $nInst = bytearray (0 0 0 0 
)
.field public static valuetype '_Function[100]' 'Func' at $Func
.data $Func = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static int32 'nFunc' at $nFunc
.data $nFunc = bytearray (0 0 0 0 
)
.field public static valuetype 'uint8[4096]' 'CodeBuf' at $CodeBuf
.data $CodeBuf = bytearray (0 0 0 0 0 0 0 0 
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
	
)
.field public static valuetype 'uint8[4096]' 'DataBuf' at $DataBuf
.data $DataBuf = bytearray (0 0 0 0 0 0 0 0 
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
	
)
.field public static int32 'nCode' at $nCode
.data $nCode = bytearray (0 0 0 0 
)
.field public static int32 'nData' at $nData
.data $nData = bytearray (0 0 0 0 
)
.field public static int32 'numLabel' at $numLabel
.data $numLabel = bytearray (1 0 0 0 
)
.field public static int32 'sizeCodeSection' at $sizeCodeSection
.data $sizeCodeSection = bytearray (0 10 0 0 
)
.field public static int32 'sizeDataSection' at $sizeDataSection
.data $sizeDataSection = bytearray (0 10 0 0 
)
.field public static int32 'posCodeSection' at $posCodeSection
.data $posCodeSection = bytearray (0 10 0 0 
)
.field public static int32 'posDataSection' at $posDataSection
.data $posDataSection = bytearray (0 20 0 0 
)
.field public static valuetype 'uint8[12288]' 'bufEXE' at $bufEXE
.data $bufEXE = bytearray (0 0 0 0 0 0 0 0 
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
	
)
.method private hidebysig static void '__DYNAMIC_STARTUP___3426729176'() cil managed
{
	.maxstack	2
L_857:
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldsflda	valuetype 'int8[]' 'L_17'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	4
	add
	ldsflda	valuetype 'int8[]' 'L_18'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	12
	add
	ldsflda	valuetype 'int8[]' 'L_19'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	16
	add
	ldsflda	valuetype 'int8[]' 'L_20'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	24
	add
	ldsflda	valuetype 'int8[]' 'L_21'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	28
	add
	ldsflda	valuetype 'int8[]' 'L_22'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	36
	add
	ldsflda	valuetype 'int8[]' 'L_23'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	40
	add
	ldsflda	valuetype 'int8[]' 'L_24'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	48
	add
	ldsflda	valuetype 'int8[]' 'L_25'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	52
	add
	ldsflda	valuetype 'int8[]' 'L_26'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	60
	add
	ldsflda	valuetype 'int8[]' 'L_27'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	64
	add
	ldsflda	valuetype 'int8[]' 'L_28'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	72
	add
	ldsflda	valuetype 'int8[]' 'L_29'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	76
	add
	ldsflda	valuetype 'int8[]' 'L_30'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	84
	add
	ldsflda	valuetype 'int8[]' 'L_31'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	88
	add
	ldsflda	valuetype 'int8[]' 'L_32'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	96
	add
	ldsflda	valuetype 'int8[]' 'L_33'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	100
	add
	ldsflda	valuetype 'int8[]' 'L_34'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	108
	add
	ldsflda	valuetype 'int8[]' 'L_35'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	112
	add
	ldsflda	valuetype 'int8[]' 'L_36'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	120
	add
	ldsflda	valuetype 'int8[]' 'L_37'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	124
	add
	ldsflda	valuetype 'int8[]' 'L_38'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	132
	add
	ldsflda	valuetype 'int8[]' 'L_39'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	136
	add
	ldsflda	valuetype 'int8[]' 'L_40'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	144
	add
	ldsflda	valuetype 'int8[]' 'L_41'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	148
	add
	ldsflda	valuetype 'int8[]' 'L_42'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	156
	add
	ldsflda	valuetype 'int8[]' 'L_43'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	160
	add
	ldsflda	valuetype 'int8[]' 'L_44'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	168
	add
	ldsflda	valuetype 'int8[]' 'L_45'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	172
	add
	ldsflda	valuetype 'int8[]' 'L_46'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	180
	add
	ldsflda	valuetype 'int8[]' 'L_47'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	184
	add
	ldsflda	valuetype 'int8[]' 'L_48'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	192
	add
	ldsflda	valuetype 'int8[]' 'L_49'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	196
	add
	ldsflda	valuetype 'int8[]' 'L_50'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	204
	add
	ldsflda	valuetype 'int8[]' 'L_51'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	208
	add
	ldsflda	valuetype 'int8[]' 'L_52'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	216
	add
	ldsflda	valuetype 'int8[]' 'L_53'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	220
	add
	ldsflda	valuetype 'int8[]' 'L_54'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	228
	add
	ldsflda	valuetype 'int8[]' 'L_55'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	232
	add
	ldsflda	valuetype 'int8[]' 'L_56'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	240
	add
	ldsflda	valuetype 'int8[]' 'L_57'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	244
	add
	ldsflda	valuetype 'int8[]' 'L_58'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	252
	add
	ldsflda	valuetype 'int8[]' 'L_59'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	256
	add
	ldsflda	valuetype 'int8[]' 'L_60'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	264
	add
	ldsflda	valuetype 'int8[]' 'L_61'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	268
	add
	ldsflda	valuetype 'int8[]' 'L_62'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	276
	add
	ldsflda	valuetype 'int8[]' 'L_63'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	280
	add
	ldsflda	valuetype 'int8[]' 'L_64'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	288
	add
	ldsflda	valuetype 'int8[]' 'L_65'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	292
	add
	ldsflda	valuetype 'int8[]' 'L_66'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	300
	add
	ldsflda	valuetype 'int8[]' 'L_67'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	304
	add
	ldsflda	valuetype 'int8[]' 'L_68'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	312
	add
	ldsflda	valuetype 'int8[]' 'L_69'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	316
	add
	ldsflda	valuetype 'int8[]' 'L_70'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	324
	add
	ldsflda	valuetype 'int8[]' 'L_71'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	328
	add
	ldsflda	valuetype 'int8[]' 'L_72'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	336
	add
	ldsflda	valuetype 'int8[]' 'L_73'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	340
	add
	ldsflda	valuetype 'int8[]' 'L_74'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	348
	add
	ldsflda	valuetype 'int8[]' 'L_75'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	352
	add
	ldsflda	valuetype 'int8[]' 'L_76'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	360
	add
	ldsflda	valuetype 'int8[]' 'L_77'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	364
	add
	ldsflda	valuetype 'int8[]' 'L_78'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	372
	add
	ldsflda	valuetype 'int8[]' 'L_79'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	376
	add
	ldsflda	valuetype 'int8[]' 'L_80'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	384
	add
	ldsflda	valuetype 'int8[]' 'L_81'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	388
	add
	ldsflda	valuetype 'int8[]' 'L_82'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	400
	add
	ldsflda	valuetype 'int8[]' 'L_83'

	stind.i4
	ldsflda	valuetype '_INSTS[35]' 'insts'

	ldc.i4	412
	add
	ldsflda	valuetype 'int8[]' 'L_84'

	stind.i4
L_858:
	ret

}
 .field public static valuetype 'int8[]' 'L_132' at $L_132
.data $L_132 = bytearray (61 2e 65 78 65 0 
)
.field public static valuetype 'int8[]' 'L_131' at $L_131
.data $L_131 = bytearray (2d 63 6f 64 65 0 
)
.field public static valuetype 'int8[]' 'L_130' at $L_130
.data $L_130 = bytearray (2d 74 72 61 63 65 0 
)
.field public static valuetype 'int8[]' 'L_129' at $L_129
.data $L_129 = bytearray (2d 74 6f 6b 65 6e 0 
)
.field public static valuetype 'int8[]' 'L_128' at $L_128
.data $L_128 = bytearray (a 0 
)
.field public static valuetype 'int8[]' 'L_127' at $L_127
.data $L_127 = bytearray (20 5b 67 76 61 72 20 61 
	64 64 72 5d 0 
)
.field public static valuetype 'int8[]' 'L_126' at $L_126
.data $L_126 = bytearray (5b 72 65 6c 61 74 69 76 
	65 20 61 64 64 72 5d 0 
	
)
.field public static valuetype 'int8[]' 'L_125' at $L_125
.data $L_125 = bytearray (25 30 33 64 3a 25 63 0 
	
)
.field public static valuetype 'int8[]' 'L_124' at $L_124
.data $L_124 = bytearray (6d 61 69 6e 0 
)
.field public static valuetype 'int8[]' 'L_123' at $L_123
.data $L_123 = bytearray (49 6d 70 6f 73 73 69 62 
	6c 65 20 74 6f 20 63 72 
	65 61 74 65 20 74 68 65 
	20 66 69 6c 65 20 25 73 
	0 
)
.field public static valuetype 'int8[]' 'L_122' at $L_122
.data $L_122 = bytearray (77 62 0 
)
.field public static valuetype 'int8[]' 'L_121' at $L_121
.data $L_121 = bytearray (70 72 69 6d 45 78 70 72 
	3a 20 3c 25 73 3e 0 
)
.field public static valuetype 'int8[]' 'L_120' at $L_120
.data $L_120 = bytearray (70 72 69 6d 45 78 70 72 
	3a 20 27 25 73 27 20 75 
	6e 64 65 63 6c 61 72 65 
	64 0 
)
.field public static valuetype 'int8[]' 'L_119' at $L_119
.data $L_119 = bytearray (27 25 73 27 20 75 6e 64 
	65 63 6c 61 72 65 64 0 
	
)
.field public static valuetype 'int8[]' 'L_118' at $L_118
.data $L_118 = bytearray (25 0 
)
.field public static valuetype 'int8[]' 'L_117' at $L_117
.data $L_117 = bytearray (2f 0 
)
.field public static valuetype 'int8[]' 'L_116' at $L_116
.data $L_116 = bytearray (2a 0 
)
.field public static valuetype 'int8[]' 'L_115' at $L_115
.data $L_115 = bytearray (2d 0 
)
.field public static valuetype 'int8[]' 'L_114' at $L_114
.data $L_114 = bytearray (2b 0 
)
.field public static valuetype 'int8[]' 'L_113' at $L_113
.data $L_113 = bytearray (3e 3d 0 
)
.field public static valuetype 'int8[]' 'L_112' at $L_112
.data $L_112 = bytearray (3c 3d 0 
)
.field public static valuetype 'int8[]' 'L_111' at $L_111
.data $L_111 = bytearray (3e 0 
)
.field public static valuetype 'int8[]' 'L_110' at $L_110
.data $L_110 = bytearray (3c 0 
)
.field public static valuetype 'int8[]' 'L_109' at $L_109
.data $L_109 = bytearray (21 3d 0 
)
.field public static valuetype 'int8[]' 'L_108' at $L_108
.data $L_108 = bytearray (3d 3d 0 
)
.field public static valuetype 'int8[]' 'L_107' at $L_107
.data $L_107 = bytearray (63 6f 6e 74 69 6e 75 65 
	0 
)
.field public static valuetype 'int8[]' 'L_106' at $L_106
.data $L_106 = bytearray (62 72 65 61 6b 0 
)
.field public static valuetype 'int8[]' 'L_105' at $L_105
.data $L_105 = bytearray (72 65 74 75 72 6e 0 
)
.field public static valuetype 'int8[]' 'L_104' at $L_104
.data $L_104 = bytearray (77 68 69 6c 65 0 
)
.field public static valuetype 'int8[]' 'L_103' at $L_103
.data $L_103 = bytearray (69 66 0 
)
.field public static valuetype 'int8[]' 'L_102' at $L_102
.data $L_102 = bytearray (65 6c 73 65 0 
)
.field public static valuetype 'int8[]' 'L_101' at $L_101
.data $L_101 = bytearray (7d 0 
)
.field public static valuetype 'int8[]' 'L_100' at $L_100
.data $L_100 = bytearray (7b 0 
)
.field public static valuetype 'int8[]' 'L_99' at $L_99
.data $L_99 = bytearray (65 78 69 74 0 
)
.field public static valuetype 'int8[]' 'L_98' at $L_98
.data $L_98 = bytearray (70 72 69 6e 74 66 0 
)
.field public static valuetype 'int8[]' 'L_97' at $L_97
.data $L_97 = bytearray (3b 0 
)
.field public static valuetype 'int8[]' 'L_96' at $L_96
.data $L_96 = bytearray (25 33 64 20 25 73 a 0 
	
)
.field public static valuetype 'int8[]' 'L_95' at $L_95
.data $L_95 = bytearray (29 0 
)
.field public static valuetype 'int8[]' 'L_94' at $L_94
.data $L_94 = bytearray (28 0 
)
.field public static valuetype 'int8[]' 'L_93' at $L_93
.data $L_93 = bytearray (2c 0 
)
.field public static valuetype 'int8[]' 'L_92' at $L_92
.data $L_92 = bytearray (75 6e 73 75 70 70 6f 72 
	74 65 64 3a 20 3c 25 73 
	3e 0 
)
.field public static valuetype 'int8[]' 'L_91' at $L_91
.data $L_91 = bytearray (3d 0 
)
.field public static valuetype 'int8[]' 'L_90' at $L_90
.data $L_90 = bytearray (5d 0 
)
.field public static valuetype 'int8[]' 'L_89' at $L_89
.data $L_89 = bytearray (5b 0 
)
.field public static valuetype 'int8[]' 'L_88' at $L_88
.data $L_88 = bytearray (27 25 73 27 20 6e 6f 74 
	20 74 79 70 65 73 70 65 
	63 66 69 65 72 0 
)
.field public static valuetype 'int8[]' 'L_87' at $L_87
.data $L_87 = bytearray (27 25 73 27 20 65 78 70 
	65 63 74 65 64 0 
)
.field public static valuetype 'int8[]' 'L_86' at $L_86
.data $L_86 = bytearray (69 6e 74 0 
)
.field public static valuetype 'int8[]' 'L_85' at $L_85
.data $L_85 = bytearray (76 6f 69 64 0 
)
.field public static valuetype 'int8[]' 'L_84' at $L_84
.data $L_84 = bytearray (6c 6f 63 5f 25 30 33 64 
	3a 0 
)
.field public static valuetype 'int8[]' 'L_83' at $L_83
.data $L_83 = bytearray (66 75 6e 63 5f 25 30 32 
	64 20 25 73 3a 0 
)
.field public static valuetype 'int8[]' 'L_82' at $L_82
.data $L_82 = bytearray (6c 65 61 76 65 26 72 65 
	74 0 
)
.field public static valuetype 'int8[]' 'L_81' at $L_81
.data $L_81 = bytearray (43 39 43 33 0 
)
.field public static valuetype 'int8[]' 'L_80' at $L_80
.data $L_80 = bytearray (63 61 6c 6c 20 25 73 0 
	
)
.field public static valuetype 'int8[]' 'L_79' at $L_79
.data $L_79 = bytearray (46 46 31 35 0 
)
.field public static valuetype 'int8[]' 'L_78' at $L_78
.data $L_78 = bytearray (63 61 6c 6c 20 66 6e 5f 
	25 30 32 64 0 
)
.field public static valuetype 'int8[]' 'L_77' at $L_77
.data $L_77 = bytearray (45 38 0 
)
.field public static valuetype 'int8[]' 'L_76' at $L_76
.data $L_76 = bytearray (6a 67 20 6c 6f 63 5f 25 
	30 33 64 0 
)
.field public static valuetype 'int8[]' 'L_75' at $L_75
.data $L_75 = bytearray (30 46 38 46 0 
)
.field public static valuetype 'int8[]' 'L_74' at $L_74
.data $L_74 = bytearray (6a 6c 65 20 6c 6f 63 5f 
	25 30 33 64 0 
)
.field public static valuetype 'int8[]' 'L_73' at $L_73
.data $L_73 = bytearray (30 46 38 45 0 
)
.field public static valuetype 'int8[]' 'L_72' at $L_72
.data $L_72 = bytearray (6a 67 65 20 6c 6f 63 5f 
	25 30 33 64 0 
)
.field public static valuetype 'int8[]' 'L_71' at $L_71
.data $L_71 = bytearray (30 46 38 44 0 
)
.field public static valuetype 'int8[]' 'L_70' at $L_70
.data $L_70 = bytearray (6a 6c 20 6c 6f 63 5f 25 
	30 33 64 0 
)
.field public static valuetype 'int8[]' 'L_69' at $L_69
.data $L_69 = bytearray (30 46 38 43 0 
)
.field public static valuetype 'int8[]' 'L_68' at $L_68
.data $L_68 = bytearray (6a 6e 7a 20 6c 6f 63 5f 
	25 30 33 64 0 
)
.field public static valuetype 'int8[]' 'L_67' at $L_67
.data $L_67 = bytearray (30 46 38 35 0 
)
.field public static valuetype 'int8[]' 'L_66' at $L_66
.data $L_66 = bytearray (6a 7a 20 6c 6f 63 5f 25 
	30 33 64 0 
)
.field public static valuetype 'int8[]' 'L_65' at $L_65
.data $L_65 = bytearray (30 46 38 34 0 
)
.field public static valuetype 'int8[]' 'L_64' at $L_64
.data $L_64 = bytearray (6a 6d 70 20 6c 6f 63 5f 
	25 30 33 64 0 
)
.field public static valuetype 'int8[]' 'L_63' at $L_63
.data $L_63 = bytearray (45 39 0 
)
.field public static valuetype 'int8[]' 'L_62' at $L_62
.data $L_62 = bytearray (74 65 73 74 20 65 61 78 
	2c 65 61 78 0 
)
.field public static valuetype 'int8[]' 'L_61' at $L_61
.data $L_61 = bytearray (38 35 43 30 0 
)
.field public static valuetype 'int8[]' 'L_60' at $L_60
.data $L_60 = bytearray (63 6d 70 20 65 63 78 2c 
	65 61 78 0 
)
.field public static valuetype 'int8[]' 'L_59' at $L_59
.data $L_59 = bytearray (33 42 43 38 0 
)
.field public static valuetype 'int8[]' 'L_58' at $L_58
.data $L_58 = bytearray (6d 6f 64 20 65 61 78 2c 
	65 63 78 0 
)
.field public static valuetype 'int8[]' 'L_57' at $L_57
.data $L_57 = bytearray (39 39 46 37 46 39 38 39 
	44 30 0 
)
.field public static valuetype 'int8[]' 'L_56' at $L_56
.data $L_56 = bytearray (64 69 76 20 65 61 78 2c 
	65 63 78 0 
)
.field public static valuetype 'int8[]' 'L_55' at $L_55
.data $L_55 = bytearray (39 39 46 37 46 39 0 
)
.field public static valuetype 'int8[]' 'L_54' at $L_54
.data $L_54 = bytearray (6d 75 6c 20 65 61 78 2c 
	65 63 78 0 
)
.field public static valuetype 'int8[]' 'L_53' at $L_53
.data $L_53 = bytearray (30 46 41 46 43 31 0 
)
.field public static valuetype 'int8[]' 'L_52' at $L_52
.data $L_52 = bytearray (73 75 62 20 65 61 78 2c 
	65 63 78 0 
)
.field public static valuetype 'int8[]' 'L_51' at $L_51
.data $L_51 = bytearray (32 42 43 31 0 
)
.field public static valuetype 'int8[]' 'L_50' at $L_50
.data $L_50 = bytearray (73 75 62 20 65 73 70 2c 
	25 64 0 
)
.field public static valuetype 'int8[]' 'L_49' at $L_49
.data $L_49 = bytearray (38 31 45 43 0 
)
.field public static valuetype 'int8[]' 'L_48' at $L_48
.data $L_48 = bytearray (61 64 64 20 65 61 78 2c 
	65 63 78 0 
)
.field public static valuetype 'int8[]' 'L_47' at $L_47
.data $L_47 = bytearray (30 33 43 31 0 
)
.field public static valuetype 'int8[]' 'L_46' at $L_46
.data $L_46 = bytearray (61 64 64 20 65 73 70 2c 
	25 64 0 
)
.field public static valuetype 'int8[]' 'L_45' at $L_45
.data $L_45 = bytearray (38 31 43 34 0 
)
.field public static valuetype 'int8[]' 'L_44' at $L_44
.data $L_44 = bytearray (6d 6f 76 20 65 61 78 2c 
	25 64 0 
)
.field public static valuetype 'int8[]' 'L_43' at $L_43
.data $L_43 = bytearray (42 38 0 
)
.field public static valuetype 'int8[]' 'L_42' at $L_42
.data $L_42 = bytearray (6d 6f 76 20 65 61 78 2c 
	5b 65 62 70 25 2b 64 5d 
	0 
)
.field public static valuetype 'int8[]' 'L_41' at $L_41
.data $L_41 = bytearray (38 42 38 35 0 
)
.field public static valuetype 'int8[]' 'L_40' at $L_40
.data $L_40 = bytearray (6d 6f 76 20 5b 65 63 78 
	5d 2c 65 61 78 0 
)
.field public static valuetype 'int8[]' 'L_39' at $L_39
.data $L_39 = bytearray (38 39 30 31 0 
)
.field public static valuetype 'int8[]' 'L_38' at $L_38
.data $L_38 = bytearray (6d 6f 76 20 65 61 78 2c 
	5b 65 61 78 5d 0 
)
.field public static valuetype 'int8[]' 'L_37' at $L_37
.data $L_37 = bytearray (38 42 30 30 0 
)
.field public static valuetype 'int8[]' 'L_36' at $L_36
.data $L_36 = bytearray (6d 6f 76 20 65 63 78 2c 
	65 61 78 0 
)
.field public static valuetype 'int8[]' 'L_35' at $L_35
.data $L_35 = bytearray (38 42 43 38 0 
)
.field public static valuetype 'int8[]' 'L_34' at $L_34
.data $L_34 = bytearray (6d 6f 76 20 65 62 70 2c 
	65 73 70 0 
)
.field public static valuetype 'int8[]' 'L_33' at $L_33
.data $L_33 = bytearray (38 39 45 35 0 
)
.field public static valuetype 'int8[]' 'L_32' at $L_32
.data $L_32 = bytearray (6c 65 61 20 65 61 78 2c 
	5b 65 64 78 2b 65 61 78 
	2a 34 5d 0 
)
.field public static valuetype 'int8[]' 'L_31' at $L_31
.data $L_31 = bytearray (38 44 30 34 38 32 0 
)
.field public static valuetype 'int8[]' 'L_30' at $L_30
.data $L_30 = bytearray (6c 65 61 20 65 61 78 2c 
	5b 65 62 70 25 2b 64 5d 
	0 
)
.field public static valuetype 'int8[]' 'L_29' at $L_29
.data $L_29 = bytearray (38 44 38 35 0 
)
.field public static valuetype 'int8[]' 'L_28' at $L_28
.data $L_28 = bytearray (70 6f 70 20 65 64 78 0 
	
)
.field public static valuetype 'int8[]' 'L_27' at $L_27
.data $L_27 = bytearray (35 41 0 
)
.field public static valuetype 'int8[]' 'L_26' at $L_26
.data $L_26 = bytearray (70 6f 70 20 65 63 78 0 
	
)
.field public static valuetype 'int8[]' 'L_25' at $L_25
.data $L_25 = bytearray (35 39 0 
)
.field public static valuetype 'int8[]' 'L_24' at $L_24
.data $L_24 = bytearray (70 6f 70 20 65 61 78 0 
	
)
.field public static valuetype 'int8[]' 'L_23' at $L_23
.data $L_23 = bytearray (35 38 0 
)
.field public static valuetype 'int8[]' 'L_22' at $L_22
.data $L_22 = bytearray (70 75 73 68 20 65 62 70 
	0 
)
.field public static valuetype 'int8[]' 'L_21' at $L_21
.data $L_21 = bytearray (35 35 0 
)
.field public static valuetype 'int8[]' 'L_20' at $L_20
.data $L_20 = bytearray (70 75 73 68 20 65 63 78 
	0 
)
.field public static valuetype 'int8[]' 'L_19' at $L_19
.data $L_19 = bytearray (35 31 0 
)
.field public static valuetype 'int8[]' 'L_18' at $L_18
.data $L_18 = bytearray (70 75 73 68 20 65 61 78 
	0 
)
.field public static valuetype 'int8[]' 'L_17' at $L_17
.data $L_17 = bytearray (35 30 0 
)
.field public static valuetype 'int8[]' 'L_16' at $L_16
.data $L_16 = bytearray (46 61 69 6c 20 69 6e 20 
	61 70 70 65 6e 64 4e 61 
	6d 65 0 
)
.field public static valuetype 'int8[]' 'L_15' at $L_15
.data $L_15 = bytearray (46 61 69 6c 20 74 6f 20 
	61 6c 6c 6f 63 61 74 65 
	20 6d 65 6d 6f 72 79 20 
	69 6e 20 61 70 70 65 6e 
	64 4e 61 6d 65 0 
)
.field public static valuetype 'int8[]' 'L_14' at $L_14
.data $L_14 = bytearray (25 73 20 0 
)
.field public static valuetype 'int8[]' 'L_13' at $L_13
.data $L_13 = bytearray (25 73 a 0 
)
.field public static valuetype 'int8[]' 'L_12' at $L_12
.data $L_12 = bytearray (3b 7b 7d 0 
)
.field public static valuetype 'int8[]' 'L_11' at $L_11
.data $L_11 = bytearray (0 
)
.field public static valuetype 'int8[]' 'L_10' at $L_10
.data $L_10 = bytearray (54 6f 6b 65 6e 20 69 73 
	20 74 6f 20 62 69 67 0 
	
)
.field public static valuetype 'int8[]' 'L_9' at $L_9
.data $L_9 = bytearray (25 2e 2a 73 0 
)
.field public static valuetype 'int8[]' 'L_8' at $L_8
.data $L_8 = bytearray (3d 3d 20 21 3d 20 3c 3d 
	20 3e 3d 20 7c 3d 20 2b 
	3d 20 2d 3d 20 2a 3d 20 
	2f 3d 20 3e 3e 20 3c 3c 
	20 2b 2b 20 2d 2d 20 26 
	26 20 7c 7c 20 2d 3e 20 
	0 
)
.field public static valuetype 'int8[]' 'L_7' at $L_7
.data $L_7 = bytearray (25 63 25 63 20 0 
)
.field public static valuetype 'int8[]' 'L_6' at $L_6
.data $L_6 = bytearray (63 68 61 72 2a 0 
)
.field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (45 78 70 65 63 74 65 64 
	20 27 22 27 20 3c 25 73 
	3e 0 
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (72 6e 22 74 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (66 69 6c 65 20 27 25 73 
	27 20 63 61 6e 27 74 20 
	62 65 20 6f 70 65 6e 65 
	64 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (72 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (74 69 78 3d 25 64 3a 20 
	0 
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
	call void __DYNAMIC_STARTUP___3426729176()
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
.class private value explicit ansi sealed '_INSTS' {.pack 1 .size 12}
.class private value explicit ansi sealed '_INSTS[35]' {.pack 1 .size 420}
.class private value explicit ansi sealed 'uint8[12288]' {.pack 1 .size 12288}
.class private value explicit ansi sealed 'uint8[4096]' {.pack 1 .size 4096}
.class private value explicit ansi sealed '_Function' {.pack 1 .size 8}
.class private value explicit ansi sealed '_Function[100]' {.pack 1 .size 800}
.class private value explicit ansi sealed '_INSTRUCT' {.pack 1 .size 16}
.class private value explicit ansi sealed '_INSTRUCT[1000]' {.pack 1 .size 16000}
.class private value explicit ansi sealed 'void*[1000]' {.pack 1 .size 4000}
.class private value explicit ansi sealed 'void*[1000]' {.pack 1 .size 4000}
.class private value explicit ansi sealed 'int32[1000]' {.pack 1 .size 4000}
.class private value explicit ansi sealed '_EXE_HEADER' {.pack 1 .size 456}
.class private value explicit ansi sealed '_IMPORT_SECTION' {.pack 1 .size 192}
.class private value explicit ansi sealed 'int32[20]' {.pack 1 .size 80}
.class private value explicit ansi sealed '_Name' {.pack 1 .size 24}
.class private value explicit ansi sealed 'int8[4]' {.pack 1 .size 4}
.class private value explicit ansi sealed 'int8[128]' {.pack 1 .size 128}
.class private value explicit ansi sealed 'int8[256]' {.pack 1 .size 256}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strstr'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strchr'(void*, int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'strncmp'(void*, void*, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'strlen'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strcpy'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'strcmp'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'memmove'(void*, void*, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'memcpy'(void*, void*, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'strtoul'(void*, void*, int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'calloc'(uint32, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'atol'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'sprintf'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'fwrite'(void*, uint32, uint32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'fopen'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'fgets'(void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fclose'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'malloc'(uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
