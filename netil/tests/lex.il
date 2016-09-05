//File lex.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 94:	int main()

// Line 95:	{

	.locals
	(
		[0] int32 'i/0',
		[1] void* 'fileName/1'
	)
	.maxstack	3
L_14:
// Line 96:	  int i = 0;

	ldloca	'i/0'
	ldc.i4	0
	stind.i4
// Line 97:	  char* fileName = "test.c";

	ldloca	'fileName/1'
	ldsflda	valuetype 'int8[]' 'L_13'

	stind.i4
// Line 98:	  lex(fileName);

	ldloc	'fileName/1'
	call	void 'lex'(void*)
// Line 99:	  

	ldc.i4	0
	stloc	'i/0'
	br	'L_18'
L_17:
// Line 101:	    printf("%s\n", Token[i]);

	ldsflda	valuetype 'int8[]' 'L_11'

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	call	vararg int32 'printf'(void*, ..., void*)
	pop
L_20:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 100:	  for(i=0;i<nToken;i++)

L_18:
	ldloc	'i/0'
	ldsfld	int32 'nToken'

	blt	'L_17'
L_19:
// Line 102:	  

// Line 103:	  return 0;

	ldc.i4	0
// Line 104:	}
L_15:
	ret

}
 .method public hidebysig static int32 'isAlpha'(int32 'c' ) cil managed
{
// Line 14:	int isAlpha(int c)

// Line 15:	{

	.maxstack	2
L_26:
// Line 16:		return (isalpha(c) || c == '_');

	ldarg	'c'
	call	int32 'isalpha'(int32)
	ldc.i4	0
	bne.un	'L_31'
	ldarg	'c'
	ldc.i4	95
	beq	'L_31'
	ldc.i4	0
	br	'L_32'
L_31:
	ldc.i4	1
L_32:
	conv.i4
// Line 17:	}

L_27:
	ret

}
 .method public hidebysig static int32 'isAlNum'(int32 'c' ) cil managed
{
// Line 19:	int isAlNum(int c)

// Line 20:	{

	.maxstack	2
L_36:
// Line 21:		return isAlpha(c) || isdigit(c);

	ldarg	'c'
	call	int32 'isAlpha'(int32)
	ldc.i4	0
	bne.un	'L_41'
	ldarg	'c'
	call	int32 'isdigit'(int32)
	ldc.i4	0
	bne.un	'L_41'
	ldc.i4	0
	br	'L_42'
L_41:
	ldc.i4	1
L_42:
	conv.i4
// Line 22:	}

L_37:
	ret

}
 .method public hidebysig static void* 'strdup'(void* 's' ) cil managed
{
// Line 24:	char *strdup (const char *s) {

	.locals
	(
		[0] void* 'd/0'
	)
	.maxstack	3
L_46:
// Line 25:	    char *d = (char*)malloc (strlen (s) + 1);   

	ldloca	'd/0'
	ldarg	's'
	call	uint32 'strlen'(void*)
	ldc.i4	1
	add
	call	void* 'malloc'(uint32)
	stind.i4
// Line 26:	    if (d == NULL) return NULL;         

	ldloc	'd/0'
	ldc.i4	0
	bne.un	'L_49'
	ldc.i4	0
	conv.u4
	br	'L_47'
L_49:
// Line 27:	    strcpy (d,s);                       

	ldloc	'd/0'
	ldarg	's'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 28:	    return d;                          

	ldloc	'd/0'
// Line 29:	}

L_47:
	ret

}
 .method public hidebysig static void 'lex'(void* 'srcfile' ) cil managed
{
// Line 31:	void lex(const char *srcfile)

// Line 32:	{

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
L_55:
// Line 33:		char linebuf[256], buf[128], op2[4], *p, *pBgn;

// Line 34:		FILE *fpSrc = fopen(srcfile, "r");

	ldloca	'fpSrc/5'
	ldarg	'srcfile'
	ldsflda	valuetype 'int8[]' 'L_1'

	call	void* 'fopen'(void*, void*)
	stind.i4
// Line 35:		if (fpSrc == NULL) 

	ldloc	'fpSrc/5'
	ldc.i4	0
	bne.un	'L_61'
// Line 36:			printf("file '%s' can't be opened", srcfile);

	ldsflda	valuetype 'int8[]' 'L_2'

	ldarg	'srcfile'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
L_58:
	br	'L_61'
L_59:
// Line 38:		{

	ldloca	'linebuf/0'
	stloc	'p/3'
	br	'L_64'
L_63:
// Line 40:			{

// Line 41:				if (*p <= ' ')

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	32
	bgt	'L_68'
// Line 42:				{

// Line 43:					p++;

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
// Line 44:					continue;

	br	'L_66'
L_68:
// Line 45:				}

// Line 46:				if (p[0] == '/' && p[1] == '/') break;

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	47
	bne.un	'L_114'
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	47
	beq	'L_65'
L_114:
L_71:
// Line 47:				pBgn = p;

	ldloc	'p/3'
	stloc	'pBgn/4'
// Line 48:				if (*p == '"')

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_72'
// Line 49:				{

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
	br	'L_75'
L_74:
// Line 51:					{

// Line 52:						if (*p == '\\' && strchr("rn\"t", p[1]) != NULL)  

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	92
	bne.un	'L_79'
	ldsflda	valuetype 'int8[]' 'L_3'

	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	call	void* 'strchr'(void*, int32)
	ldc.i4	0
	beq	'L_79'
// Line 53:						{

// Line 54:							*p = p[1] == 'r' ? '\r' : p[1] == 'n' ? '\n' : p[1] == '"' ? '\"' : '\t';

	ldloc	'p/3'
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	114
	bne.un	'L_115'
	ldc.i4	13
	br	'L_116'
L_115:
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	110
	bne.un	'L_117'
	ldc.i4	10
	br	'L_118'
L_117:
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_119'
	ldc.i4	34
	br	'L_120'
L_119:
	ldc.i4	9
L_120:
L_118:
L_116:
	conv.i1
	stind.i1
// Line 55:							strcpy(p + 1, p + 2);

	ldloc	'p/3'
	ldc.i4	1
	add
	ldloc	'p/3'
	ldc.i4	2
	add
	call	void* 'strcpy'(void*, void*)
	pop
	br	'L_82'
L_79:
// Line 56:						}

// Line 57:						else if (*p == '\\')

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	92
	bne.un	'L_83'
// Line 58:						{

// Line 59:							p++;

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
L_83:
L_82:
// Line 60:						}

L_77:
	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
// Line 50:					for (p++; *p != '\0' && *p != '"'; p++)

L_75:
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	beq	'L_121'
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_74'
L_121:
L_76:
// Line 61:					}

// Line 62:					if (*p++ != '"') 

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
	ldc.i4	34
	beq	'L_89'
// Line 63:						printf("Expected '\"' <%s>", pBgn);

	ldsflda	valuetype 'int8[]' 'L_4'

	ldloc	'pBgn/4'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
L_87:
	br	'L_89'
L_72:
// Line 64:				}

// Line 65:				else if (isdigit(*p))

	ldloc	'p/3'
	ldind.i1
	conv.i4
	call	int32 'isdigit'(int32)
	ldc.i4	0
	beq	'L_90'
// Line 66:				{

// Line 67:					strtoul(p, &p, 10); 

	ldloc	'p/3'
	ldloca	'p/3'
	ldc.i4	10
	call	uint32 'strtoul'(void*, void*, int32)
	pop
	br	'L_93'
L_90:
// Line 68:				}

// Line 69:				else if (strncmp(pBgn, "char*", 5) == 0)  	

	ldloc	'pBgn/4'
	ldsflda	valuetype 'int8[]' 'L_5'

	ldc.i4	5
	conv.u4
	call	int32 'strncmp'(void*, void*, uint32)
	ldc.i4	0
	bne.un	'L_94'
// Line 70:				{

// Line 71:					p += 5;

	ldloc	'p/3'
	ldc.i4	5
	add
	stloc	'p/3'
	br	'L_97'
L_94:
// Line 72:				}

// Line 73:				else if (isAlpha(*p))

	ldloc	'p/3'
	ldind.i1
	conv.i4
	call	int32 'isAlpha'(int32)
	ldc.i4	0
	beq	'L_98'
// Line 74:				{

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
	br	'L_101'
L_100:
// Line 76:						p++;

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
L_103:
// Line 75:					for (p++; *p != '\0' && isAlNum(*p); ) 

L_101:
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	beq	'L_122'
	ldloc	'p/3'
	ldind.i1
	conv.i4
	call	int32 'isAlNum'(int32)
	ldc.i4	0
	bne.un	'L_100'
L_122:
L_102:
	br	'L_105'
L_98:
// Line 77:				}

// Line 78:				else

// Line 79:				{

// Line 80:					sprintf(op2, "%c%c ", p[0], p[1]);

	ldloca	'op2/2'
	ldsflda	valuetype 'int8[]' 'L_6'

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
// Line 81:					p += strstr(OPERATOR2, op2) != NULL ? 2 : 1;

	ldsflda	valuetype 'int8[]' 'L_7'

	ldloca	'op2/2'
	call	void* 'strstr'(void*, void*)
	ldc.i4	0
	beq	'L_123'
	ldc.i4	2
	br	'L_124'
L_123:
	ldc.i4	1
L_124:
	conv.u4
	ldloc	'p/3'
	add
	stloc	'p/3'
L_105:
L_97:
L_93:
L_89:
// Line 82:				}

// Line 83:				sprintf(buf, "%.*s", p - pBgn, pBgn);

	ldloca	'buf/1'
	ldsflda	valuetype 'int8[]' 'L_8'

	ldloc	'p/3'
	ldloc	'pBgn/4'
	sub
	ldloc	'pBgn/4'
	call	vararg int32 'sprintf'(void*, void*, ..., int32, void*)
	pop
// Line 84:				if (nToken == SIZETOKEN)

	ldsfld	int32 'nToken'

	ldc.i4	1000
	bne.un	'L_108'
// Line 85:					printf("Token is to big");

	ldsflda	valuetype 'int8[]' 'L_9'

	call	vararg int32 'printf'(void*, ...)
	pop
L_108:
// Line 86:				Token[nToken++] = strdup(buf);

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
// Line 87:				if (fToken) 

	ldsfld	int32 'fToken'

	ldc.i4	0
	beq	'L_109'
// Line 88:					printf(strchr(";{}", *buf) != NULL ? "%s\n" : "%s ", buf);

	ldsflda	valuetype 'int8[]' 'L_10'

	ldloc	'buf/1'
	conv.i4
	call	void* 'strchr'(void*, int32)
	ldc.i4	0
	beq	'L_125'
	ldsflda	valuetype 'int8[]' 'L_11'

	br	'L_126'
L_125:
	ldsflda	valuetype 'int8[]' 'L_12'

L_126:
	ldloca	'buf/1'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
L_109:
L_66:
// Line 39:			for (p = linebuf; *p != '\0'; )

L_64:
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	bne.un	'L_63'
L_65:
// Line 89:			} 

L_61:
// Line 37:		while (fgets(linebuf, sizeof(linebuf), fpSrc) != NULL)

	ldloca	'linebuf/0'
	ldc.i4	256
	ldloc	'fpSrc/5'
	call	void* 'fgets'(void*, int32, void*)
	ldc.i4	0
	bne.un	'L_59'
L_60:
// Line 90:		}

// Line 91:		fclose(fpSrc);

	ldloc	'fpSrc/5'
	call	int32 'fclose'(void*)
	pop
// Line 92:	}

L_56:
	ret

}
 .field public static int32 'nToken' at $nToken
.data $nToken = bytearray (0 0 0 0 
)
.field public static int32 'fToken' at $fToken
.data $fToken = bytearray (0 0 0 0 
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
.field public static valuetype 'int8[]' 'L_13' at $L_13
.data $L_13 = bytearray (74 65 73 74 2e 63 0 
)
.field public static valuetype 'int8[]' 'L_12' at $L_12
.data $L_12 = bytearray (25 73 20 0 
)
.field public static valuetype 'int8[]' 'L_11' at $L_11
.data $L_11 = bytearray (25 73 a 0 
)
.field public static valuetype 'int8[]' 'L_10' at $L_10
.data $L_10 = bytearray (3b 7b 7d 0 
)
.field public static valuetype 'int8[]' 'L_9' at $L_9
.data $L_9 = bytearray (54 6f 6b 65 6e 20 69 73 
	20 74 6f 20 62 69 67 0 
	
)
.field public static valuetype 'int8[]' 'L_8' at $L_8
.data $L_8 = bytearray (25 2e 2a 73 0 
)
.field public static valuetype 'int8[]' 'L_7' at $L_7
.data $L_7 = bytearray (3d 3d 20 21 3d 20 3c 3d 
	20 3e 3d 20 7c 3d 20 2b 
	3d 20 2d 3d 20 2a 3d 20 
	2f 3d 20 3e 3e 20 3c 3c 
	20 2b 2b 20 2d 2d 20 26 
	26 20 7c 7c 20 2d 3e 20 
	0 
)
.field public static valuetype 'int8[]' 'L_6' at $L_6
.data $L_6 = bytearray (25 63 25 63 20 0 
)
.field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (63 68 61 72 2a 0 
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (45 78 70 65 63 74 65 64 
	20 27 22 27 20 3c 25 73 
	3e 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (72 6e 22 74 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (66 69 6c 65 20 27 25 73 
	27 20 63 61 6e 27 74 20 
	62 65 20 6f 70 65 6e 65 
	64 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (72 0 
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
.class private value explicit ansi sealed 'void*[1000]' {.pack 1 .size 4000}
.class private value explicit ansi sealed 'int8[4]' {.pack 1 .size 4}
.class private value explicit ansi sealed 'int8[128]' {.pack 1 .size 128}
.class private value explicit ansi sealed 'int8[256]' {.pack 1 .size 256}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'isdigit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'isalpha'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strstr'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strchr'(void*, int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'strncmp'(void*, void*, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'strlen'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strcpy'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'strtoul'(void*, void*, int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'sprintf'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'fopen'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'fgets'(void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fclose'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'malloc'(uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
