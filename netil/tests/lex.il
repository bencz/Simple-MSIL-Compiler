//File lex.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'isAlpha'(int32 'c' ) cil managed
{
// Line 14:	int isAlpha(int c)

// Line 15:	{

	.maxstack	2
L_1:
// Line 16:		return (isalpha(c) || c == '_');

	ldarg	'c'
	call	int32 'isalpha'(int32)
	ldc.i4	0
	bne.un	'L_6'
	ldarg	'c'
	ldc.i4	95
	beq	'L_6'
	ldc.i4	0
	br	'L_7'
L_6:
	ldc.i4	1
L_7:
	conv.i4
// Line 17:	}

L_2:
	ret

}
 .method public hidebysig static int32 'isAlNum'(int32 'c' ) cil managed
{
// Line 19:	int isAlNum(int c)

// Line 20:	{

	.maxstack	2
L_11:
// Line 21:		return isAlpha(c) || isdigit(c);

	ldarg	'c'
	call	int32 'isAlpha'(int32)
	ldc.i4	0
	bne.un	'L_16'
	ldarg	'c'
	call	int32 'isdigit'(int32)
	ldc.i4	0
	bne.un	'L_16'
	ldc.i4	0
	br	'L_17'
L_16:
	ldc.i4	1
L_17:
	conv.i4
// Line 22:	}

L_12:
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
L_21:
// Line 25:	    char *d = (char*)malloc (strlen (s) + 1);   

	ldloca	'd/0'
	ldc.i4	0
	add
	ldarg	's'
	call	uint32 'strlen'(void*)
	ldc.i4	1
	add
	call	void* 'malloc'(uint32)
	stind.i4
// Line 26:	    if (d == NULL) return NULL;         

	ldloc	'd/0'
	ldc.i4	0
	bne.un	'L_24'
	ldc.i4	0
	conv.u4
	br	'L_22'
L_24:
// Line 27:	    strcpy (d,s);                       

	ldloc	'd/0'
	ldarg	's'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 28:	    return d;                          

	ldloc	'd/0'
// Line 29:	}

L_22:
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
L_42:
// Line 33:		char linebuf[256], buf[128], op2[4], *p, *pBgn;

// Line 34:		FILE *fpSrc = fopen(srcfile, "r");

	ldloca	'fpSrc/5'
	ldc.i4	0
	add
	ldarg	'srcfile'
	ldsflda	valuetype 'int8[]' 'L_30'

	call	void* 'fopen'(void*, void*)
	stind.i4
// Line 35:		if (fpSrc == NULL) 

	ldloc	'fpSrc/5'
	ldc.i4	0
	bne.un	'L_48'
// Line 36:			printf("file '%s' can't be opened", srcfile);

	ldsflda	valuetype 'int8[]' 'L_31'

	ldarg	'srcfile'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
L_45:
	br	'L_48'
L_46:
// Line 38:		{

	ldloca	'linebuf/0'
	stloc	'p/3'
	br	'L_51'
L_50:
// Line 40:			{

// Line 41:				if (*p <= ' ')

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	32
	bgt	'L_55'
// Line 42:				{

// Line 43:					p++;

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
// Line 44:					continue;

	br	'L_53'
L_55:
// Line 45:				}

// Line 46:				if (p[0] == '/' && p[1] == '/') break;

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	47
	bne.un	'L_58'
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	47
	beq	'L_52'
L_58:
// Line 47:				pBgn = p;

	ldloc	'p/3'
	stloc	'pBgn/4'
// Line 48:				if (*p == '"')

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_59'
// Line 49:				{

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
	br	'L_62'
L_61:
// Line 51:					{

// Line 52:						if (*p == '\\' && strchr("rn\"t", p[1]) != NULL)  

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	92
	bne.un	'L_66'
	ldsflda	valuetype 'int8[]' 'L_32'

	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	call	void* 'strchr'(void*, int32)
	ldc.i4	0
	beq	'L_66'
// Line 53:						{

// Line 54:							*p = p[1] == 'r' ? '\r' : p[1] == 'n' ? '\n' : p[1] == '"' ? '\"' : '\t';

	ldloc	'p/3'
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	114
	bne.un	'L_101'
	ldc.i4	13
	br	'L_102'
L_101:
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	110
	bne.un	'L_103'
	ldc.i4	10
	br	'L_104'
L_103:
	ldloc	'p/3'
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_105'
	ldc.i4	34
	br	'L_106'
L_105:
	ldc.i4	9
L_106:
L_104:
L_102:
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
	br	'L_69'
L_66:
// Line 56:						}

// Line 57:						else if (*p == '\\')

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	92
	bne.un	'L_70'
// Line 58:						{

// Line 59:							p++;

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
L_70:
L_69:
// Line 60:						}

L_64:
	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
// Line 50:					for (p++; *p != '\0' && *p != '"'; p++)

L_62:
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	beq	'L_107'
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	34
	bne.un	'L_61'
L_107:
L_63:
// Line 61:					}

// Line 62:					if (*p++ != '"') 

	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	34
	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
	beq	'L_76'
// Line 63:						printf("Expected '\"' <%s>", pBgn);

	ldsflda	valuetype 'int8[]' 'L_33'

	ldloc	'pBgn/4'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
L_74:
	br	'L_76'
L_59:
// Line 64:				}

// Line 65:				else if (isdigit(*p))

	ldloc	'p/3'
	ldind.i1
	conv.i4
	call	int32 'isdigit'(int32)
	ldc.i4	0
	beq	'L_77'
// Line 66:				{

// Line 67:					strtoul(p, &p, 10); 

	ldloc	'p/3'
	ldloca	'p/3'
	ldc.i4	10
	call	uint32 'strtoul'(void*, void*, int32)
	pop
	br	'L_80'
L_77:
// Line 68:				}

// Line 69:				else if (strncmp(pBgn, "char*", 5) == 0)  	

	ldloc	'pBgn/4'
	ldsflda	valuetype 'int8[]' 'L_34'

	ldc.i4	5
	conv.u4
	call	int32 'strncmp'(void*, void*, uint32)
	ldc.i4	0
	bne.un	'L_81'
// Line 70:				{

// Line 71:					p += 5;

	ldloc	'p/3'
	ldc.i4	5
	add
	stloc	'p/3'
	br	'L_84'
L_81:
// Line 72:				}

// Line 73:				else if (isAlpha(*p))

	ldloc	'p/3'
	ldind.i1
	conv.i4
	call	int32 'isAlpha'(int32)
	ldc.i4	0
	beq	'L_85'
// Line 74:				{

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
	br	'L_88'
L_87:
// Line 76:						p++;

	ldloc	'p/3'
	ldc.i4	1
	add
	stloc	'p/3'
L_90:
// Line 75:					for (p++; *p != '\0' && isAlNum(*p); ) 

L_88:
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	beq	'L_108'
	ldloc	'p/3'
	ldind.i1
	conv.i4
	call	int32 'isAlNum'(int32)
	ldc.i4	0
	bne.un	'L_87'
L_108:
L_89:
	br	'L_92'
L_85:
// Line 77:				}

// Line 78:				else

// Line 79:				{

// Line 80:					sprintf(op2, "%c%c ", p[0], p[1]);

	ldloca	'op2/2'
	ldsflda	valuetype 'int8[]' 'L_35'

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

	ldsflda	valuetype 'int8[]' 'L_36'

	ldloca	'op2/2'
	call	void* 'strstr'(void*, void*)
	ldc.i4	0
	beq	'L_109'
	ldc.i4	2
	br	'L_110'
L_109:
	ldc.i4	1
L_110:
	conv.u4
	ldloc	'p/3'
	add
	stloc	'p/3'
L_92:
L_84:
L_80:
L_76:
// Line 82:				}

// Line 83:				sprintf(buf, "%.*s", p - pBgn, pBgn);

	ldloca	'buf/1'
	ldsflda	valuetype 'int8[]' 'L_37'

	ldloc	'p/3'
	ldloc	'pBgn/4'
	sub
	ldloc	'pBgn/4'
	call	vararg int32 'sprintf'(void*, void*, ..., int32, void*)
	pop
// Line 84:				if (nToken == SIZETOKEN)

	ldsfld	int32 'nToken'

	ldc.i4	1000
	bne.un	'L_95'
// Line 85:					printf("Token is to big");

	ldsflda	valuetype 'int8[]' 'L_38'

	call	vararg int32 'printf'(void*, ...)
	pop
L_95:
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
	beq	'L_96'
// Line 88:					printf(strchr(";{}", *buf) != NULL ? "%s\n" : "%s ", buf);

	ldsflda	valuetype 'int8[]' 'L_39'

	ldloc	'buf/1'
	conv.i4
	call	void* 'strchr'(void*, int32)
	ldc.i4	0
	beq	'L_111'
	ldsflda	valuetype 'int8[]' 'L_40'

	br	'L_112'
L_111:
	ldsflda	valuetype 'int8[]' 'L_41'

L_112:
	ldloca	'buf/1'
	call	vararg int32 'printf'(void*, ..., void*)
	pop
L_96:
L_53:
// Line 39:			for (p = linebuf; *p != '\0'; )

L_51:
	ldloc	'p/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	bne.un	'L_50'
L_52:
// Line 89:			} 

L_48:
// Line 37:		while (fgets(linebuf, sizeof(linebuf), fpSrc) != NULL)

	ldloca	'linebuf/0'
	ldc.i4	256
	ldloc	'fpSrc/5'
	call	void* 'fgets'(void*, int32, void*)
	ldc.i4	0
	bne.un	'L_46'
L_47:
// Line 90:		}

// Line 91:		fclose(fpSrc);

	ldloc	'fpSrc/5'
	call	int32 'fclose'(void*)
	pop
// Line 92:	}

L_43:
	ret

}
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
L_117:
// Line 96:	  int i = 0;

	ldloca	'i/0'
	ldc.i4	0
	add
	ldc.i4	0
	stind.i4
// Line 97:	  char* fileName = "test.c";

	ldloca	'fileName/1'
	ldc.i4	0
	add
	ldsflda	valuetype 'int8[]' 'L_116'

	stind.i4
// Line 98:	  lex(fileName);

	ldloc	'fileName/1'
	call	void 'lex'(void*)
// Line 99:	  

	ldc.i4	0
	stloc	'i/0'
	br	'L_121'
L_120:
// Line 101:	    printf("%s\n", Token[i]);

	ldsflda	valuetype 'int8[]' 'L_40'

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsflda	valuetype 'void*[1000]' 'Token'

	add
	ldind.u4
	call	vararg int32 'printf'(void*, ..., void*)
	pop
L_123:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 100:	  for(i=0;i<nToken;i++)

L_121:
	ldloc	'i/0'
	ldsfld	int32 'nToken'

	blt	'L_120'
L_122:
// Line 102:	  

// Line 103:	  return 0;

	ldc.i4	0
// Line 104:	}
L_118:
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
.field public static valuetype 'int8[]' 'L_116' at $L_116
.data $L_116 = bytearray (74 65 73 74 2e 63 0 
)
.field public static valuetype 'int8[]' 'L_41' at $L_41
.data $L_41 = bytearray (25 73 20 0 
)
.field public static valuetype 'int8[]' 'L_40' at $L_40
.data $L_40 = bytearray (25 73 a 0 
)
.field public static valuetype 'int8[]' 'L_39' at $L_39
.data $L_39 = bytearray (3b 7b 7d 0 
)
.field public static valuetype 'int8[]' 'L_38' at $L_38
.data $L_38 = bytearray (54 6f 6b 65 6e 20 69 73 
	20 74 6f 20 62 69 67 0 
	
)
.field public static valuetype 'int8[]' 'L_37' at $L_37
.data $L_37 = bytearray (25 2e 2a 73 0 
)
.field public static valuetype 'int8[]' 'L_36' at $L_36
.data $L_36 = bytearray (3d 3d 20 21 3d 20 3c 3d 
	20 3e 3d 20 7c 3d 20 2b 
	3d 20 2d 3d 20 2a 3d 20 
	2f 3d 20 3e 3e 20 3c 3c 
	20 2b 2b 20 2d 2d 20 26 
	26 20 7c 7c 20 2d 3e 20 
	0 
)
.field public static valuetype 'int8[]' 'L_35' at $L_35
.data $L_35 = bytearray (25 63 25 63 20 0 
)
.field public static valuetype 'int8[]' 'L_34' at $L_34
.data $L_34 = bytearray (63 68 61 72 2a 0 
)
.field public static valuetype 'int8[]' 'L_33' at $L_33
.data $L_33 = bytearray (45 78 70 65 63 74 65 64 
	20 27 22 27 20 3c 25 73 
	3e 0 
)
.field public static valuetype 'int8[]' 'L_32' at $L_32
.data $L_32 = bytearray (72 6e 22 74 0 
)
.field public static valuetype 'int8[]' 'L_31' at $L_31
.data $L_31 = bytearray (66 69 6c 65 20 27 25 73 
	27 20 63 61 6e 27 74 20 
	62 65 20 6f 70 65 6e 65 
	64 0 
)
.field public static valuetype 'int8[]' 'L_30' at $L_30
.data $L_30 = bytearray (72 0 
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
.class private value explicit ansi sealed 'void*[1000]' {.pack 1 .size 4000}
.class private value explicit ansi sealed 'int8[4]' {.pack 1 .size 4}
.class private value explicit ansi sealed 'int8[128]' {.pack 1 .size 128}
.class private value explicit ansi sealed 'int8[256]' {.pack 1 .size 256}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'isdigit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'isalpha'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strstr'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strchr'(void*, int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'strncmp'(void*, void*, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'strlen'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strcpy'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'strtoul'(void*, void*, int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'malloc'(uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'sprintf'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'fopen'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'fgets'(void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fclose'(void*) preservesig {}
