//File test2.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 164:	int main()

// Line 165:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'sucesso/1',
		[2] void* 'pl/2',
		[3] int32 'valor/3',
		[4] int32 'valor/4'
	)
	.maxstack	3
L_8:
// Line 166:		int i;

// Line 167:		int sucesso = 1;

	ldloca	'sucesso/1'
	ldc.i4	1
	stind.i4
// Line 168:		pilha* pl = pl_inicializapilha(5);  

	ldloca	'pl/2'
	ldc.i4	5
	call	void* 'pl_inicializapilha'(int32)
	stind.i4
// Line 169:		printf("---------- Empilhando ----------\n");

	ldsflda	valuetype 'int8[]' 'L_1'

	call	vararg int32 'printf'(void*, ...)
	pop
	ldc.i4	0
	stloc	'i/0'
	br	'L_12'
L_11:
// Line 171:		{

// Line 172:			int valor = i * 10;

	ldloca	'valor/4'
	ldloc	'i/0'
	ldc.i4	10
	mul
	stind.i4
// Line 173:			pl_push(pl, valor, &sucesso);

	ldloc	'pl/2'
	ldloc	'valor/4'
	ldloca	'sucesso/1'
	call	void 'pl_push'(void*, int32, void*)
// Line 174:			if (sucesso == 1)

	ldloc	'sucesso/1'
	ldc.i4	1
	bne.un	'L_16'
// Line 175:				printf("%d\n", valor);

	ldsflda	valuetype 'int8[]' 'L_2'

	ldloc	'valor/4'
	call	vararg int32 'printf'(void*, ..., int32)
	pop
L_16:
L_14:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 170:		for (i = 0; (sucesso == 1); i++)

L_12:
	ldloc	'sucesso/1'
	ldc.i4	1
	beq	'L_11'
L_13:
// Line 176:		}

// Line 177:		printf("-----------------------------------\n\n");

	ldsflda	valuetype 'int8[]' 'L_3'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 178:	  

// Line 179:	  printf("-----------------------------------\n");

	ldsflda	valuetype 'int8[]' 'L_4'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 180:		printf("TOPO = %d\n", pl_topo(pl, &sucesso));

	ldsflda	valuetype 'int8[]' 'L_5'

	ldloc	'pl/2'
	ldloca	'sucesso/1'
	call	int32 'pl_topo'(void*, void*)
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 181:		printf("BASE = %d\n", pl_base(pl, &sucesso));

	ldsflda	valuetype 'int8[]' 'L_6'

	ldloc	'pl/2'
	ldloca	'sucesso/1'
	call	int32 'pl_base'(void*, void*)
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 182:		printf("-----------------------------------\n\n");

	ldsflda	valuetype 'int8[]' 'L_3'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 183:	

// Line 184:		printf("---------- Desempilhando ----------\n");

	ldsflda	valuetype 'int8[]' 'L_7'

	call	vararg int32 'printf'(void*, ...)
	pop
L_18:
// Line 186:		{

// Line 187:			int valor = pl_pop(pl, &sucesso);

	ldloca	'valor/3'
	ldloc	'pl/2'
	ldloca	'sucesso/1'
	call	int32 'pl_pop'(void*, void*)
	stind.i4
// Line 188:			if (sucesso == 0)

	ldloc	'sucesso/1'
	ldc.i4	0
	beq	'L_19'
// Line 189:				break;

L_22:
// Line 190:			printf("%d\n", valor);

	ldsflda	valuetype 'int8[]' 'L_2'

	ldloc	'valor/3'
	call	vararg int32 'printf'(void*, ..., int32)
	pop
L_20:
// Line 185:		while (1)

	br	'L_18'
L_19:
// Line 191:		}

// Line 192:		printf("-----------------------------------\n");

	ldsflda	valuetype 'int8[]' 'L_4'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 193:	  

// Line 194:		pl_liberapilha(pl);

	ldloc	'pl/2'
	call	void 'pl_liberapilha'(void*)
// Line 195:		return 0;

	ldc.i4	0
// Line 196:	}
L_9:
	ret

}
 .method public hidebysig static void* 'pl_inicializapilha'(int32 'tamanho' ) cil managed
{
// Line 23:	pilha* pl_inicializapilha(int tamanho)

// Line 24:	{

	.locals
	(
		[0] void* 'pl/0'
	)
	.maxstack	3
L_29:
// Line 25:		pilha* pl = (pilha*)malloc(sizeof(pilha));

	ldloca	'pl/0'
	ldc.i4	12
	conv.u4
	call	void* 'malloc'(uint32)
	stind.i4
// Line 26:		pl->pilha = (int*)malloc(sizeof(int) * tamanho);

	ldloc	'pl/0'
	ldc.i4	8
	add
	ldarg	'tamanho'
	ldc.i4	2
	shl
	conv.u4
	call	void* 'malloc'(uint32)
	stind.i4
// Line 27:		pl->tamanho = tamanho;

	ldloc	'pl/0'
	ldarg	'tamanho'
	stind.i4
// Line 28:		pl->totaldeelementos = 0;

	ldloc	'pl/0'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
// Line 29:		return pl;

	ldloc	'pl/0'
// Line 30:	}

L_30:
	ret

}
 .method public hidebysig static void 'pl_push'(void* 'pl' , int32 'elemento' , void* 'sucesso' ) cil managed
{
// Line 32:	void pl_push(pilha* pl, int elemento, int* sucesso)

// Line 33:	{           

	.maxstack	3
L_37:
// Line 34:	  if (!pl_pilhacheia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhacheia'(void*)
	ldc.i4	0
	bne.un	'L_40'
// Line 35:		{

// Line 36:			pl->pilha[pl->totaldeelementos++] = elemento;   

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	2
	shl
	ldarg	'pl'
	ldc.i4	8
	add
	ldind.u4
	add
	ldarg	'elemento'
	stind.i4
	ldarg	'pl'
	ldc.i4	4
	add
	ldarg	'pl'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 37:	     
// Line 38:	
// Line 39:	
// Line 40:	
// Line 41:	
// Line 42:	
// Line 43:	
// Line 44:	
// Line 45:	
// Line 46:	
// Line 47:	
// Line 48:	
// Line 49:	
// Line 50:	
// Line 51:	
// Line 52:	
// Line 53:	
// Line 54:	
// Line 55:	
// Line 56:	
// Line 57:	
// Line 58:	
// Line 59:	
// Line 60:	
// Line 61:	
// Line 62:	
// Line 63:	
// Line 64:	
// Line 65:	
// Line 66:	
// Line 67:	
// Line 68:	
// Line 69:	
// Line 70:	

// Line 71:			*sucesso = 1;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
	br	'L_43'
L_40:
// Line 72:		}

// Line 73:		else

// Line 74:			*sucesso = 0;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
L_43:
// Line 75:	}

L_38:
	ret

}
 .method public hidebysig static int32 'pl_pop'(void* 'pl' , void* 'sucesso' ) cil managed
{
// Line 77:	int pl_pop(pilha* pl, int* sucesso)

// Line 78:	{                 

	.maxstack	3
L_49:
// Line 79:		if (!pl_pilhavazia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhavazia'(void*)
	ldc.i4	0
	bne.un	'L_52'
// Line 80:		{                

// Line 81:			*sucesso = 1;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
// Line 82:			return pl->pilha[--pl->totaldeelementos];

	ldarg	'pl'
	ldc.i4	4
	add
	ldarg	'pl'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
	ldarg	'pl'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	2
	shl
	ldarg	'pl'
	ldc.i4	8
	add
	ldind.u4
	add
	ldind.i4
	br	'L_50'
L_52:
// Line 83:		}

// Line 84:		else

// Line 85:		{

// Line 86:			*sucesso = 0;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 87:			return -1;

	ldc.i4	-1
L_55:
// Line 88:		}

// Line 89:	}

L_50:
	ret

}
 .method public hidebysig static int32 'pl_topo'(void* 'pl' , void* 'sucesso' ) cil managed
{
// Line 91:	int pl_topo(pilha *pl, int* sucesso)

// Line 92:	{

	.maxstack	4
L_63:
// Line 93:		if (pl_pilhavazia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhavazia'(void*)
	ldc.i4	0
	beq	'L_66'
// Line 94:		{

// Line 95:			*sucesso = 0;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 96:			return -1;

	ldc.i4	-1
	br	'L_64'
L_66:
// Line 97:		}

// Line 98:		else

// Line 99:		{

// Line 100:			*sucesso = 1;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
// Line 101:			return pl->pilha[pl->totaldeelementos-1];

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	sub
	ldc.i4	2
	shl
	ldarg	'pl'
	ldc.i4	8
	add
	ldind.u4
	add
	ldind.i4
L_69:
// Line 102:		}

// Line 103:	}

L_64:
	ret

}
 .method public hidebysig static int32 'pl_base'(void* 'pl' , void* 'sucesso' ) cil managed
{
// Line 105:	int pl_base(pilha* pl, int *sucesso)

// Line 106:	{

	.maxstack	3
L_77:
// Line 107:		if (pl_pilhavazia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhavazia'(void*)
	ldc.i4	0
	beq	'L_80'
// Line 108:		{

// Line 109:			*sucesso = 0;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 110:			return -1;

	ldc.i4	-1
	br	'L_78'
L_80:
// Line 111:		}

// Line 112:		else

// Line 113:		{

// Line 114:			*sucesso = 1;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
// Line 115:			return pl->pilha[0];

	ldarg	'pl'
	ldc.i4	8
	add
	ldind.u4
	ldind.i4
L_83:
// Line 116:		}

// Line 117:	}

L_78:
	ret

}
 .method public hidebysig static int32 'pl_pilhacheia'(void* 'pl' ) cil managed
{
// Line 119:	int pl_pilhacheia(pilha* pl)

// Line 120:	{

	.maxstack	3
L_91:
// Line 121:	   
// Line 122:	
// Line 123:	
// Line 124:	
// Line 125:	
// Line 126:	
// Line 127:	
// Line 128:	
// Line 129:	
// Line 130:	
// Line 131:	
// Line 132:	
// Line 133:	
// Line 134:	
// Line 135:	
// Line 136:	
// Line 137:	
// Line 138:	
// Line 139:	
// Line 140:	
// Line 141:	
// Line 142:	

// Line 143:	  return pl->totaldeelementos >= pl->tamanho;

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.i4
	ldarg	'pl'
	ldind.i4
	clt
	ldc.i4.1
	xor
	conv.i4
// Line 144:	}

L_92:
	ret

}
 .method public hidebysig static int32 'pl_pilhavazia'(void* 'pl' ) cil managed
{
// Line 146:	int pl_pilhavazia(pilha* pl)

// Line 147:	{

	.maxstack	2
L_99:
// Line 148:		return pl->totaldeelementos == 0;

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	0
	ceq
	conv.i4
// Line 149:	}

L_100:
	ret

}
 .method public hidebysig static void 'pl_liberapilha'(void* 'pl' ) cil managed
{
// Line 151:	void pl_liberapilha(pilha* pl)

// Line 152:	{

	.maxstack	2
L_107:
// Line 153:		free(pl->pilha);

	ldarg	'pl'
	ldc.i4	8
	add
	ldind.u4
	call	void 'free'(void*)
// Line 154:		free(pl);

	ldarg	'pl'
	call	void 'free'(void*)
// Line 155:	}

L_108:
	ret

}
 .method public hidebysig static void 'pl_esvaziapilha'(void* 'pl' ) cil managed
{
// Line 157:	void pl_esvaziapilha(pilha *pl)

// Line 158:	{

	.maxstack	3
L_115:
// Line 159:	  pl->pilha = malloc(sizeof(int) * pl->tamanho);

	ldarg	'pl'
	ldc.i4	8
	add
	ldarg	'pl'
	ldind.i4
	ldc.i4	2
	shl
	conv.u4
	call	void* 'malloc'(uint32)
	stind.i4
// Line 160:		pl->totaldeelementos = 0;

	ldarg	'pl'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
// Line 161:	}

L_116:
	ret

}
 .field public static valuetype 'int8[]' 'L_7' at $L_7
.data $L_7 = bytearray (2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 20 44 65 73 65 6d 
	70 69 6c 68 61 6e 64 6f 
	20 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 2d a 0 
)
.field public static valuetype 'int8[]' 'L_6' at $L_6
.data $L_6 = bytearray (42 41 53 45 20 3d 20 25 
	64 a 0 
)
.field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (54 4f 50 4f 20 3d 20 25 
	64 a 0 
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 2d a 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 2d a a 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (2d 2d 2d 2d 2d 2d 2d 2d 
	2d 2d 20 45 6d 70 69 6c 
	68 61 6e 64 6f 20 2d 2d 
	2d 2d 2d 2d 2d 2d 2d 2d 
	a 0 
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
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'free'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'malloc'(uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
