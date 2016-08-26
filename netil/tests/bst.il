//File bst.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 204:	int main()

// Line 205:	{

	.locals
	(
		[0] void* 'raiz/0',
		[1] int32 'counter/1',
		[2] int32 'sucesso/2',
		[3] int32 'numero/3'
	)
	.maxstack	3
L_2:
// Line 206:		node* raiz = NULL;

	ldloca	'raiz/0'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 207:		int counter = 0;

	ldloca	'counter/1'
	ldc.i4	0
	stind.i4
// Line 208:		bool sucesso = false;  

	ldloca	'sucesso/2'
	ldc.i4	0
	stind.i4
// Line 209:		srand(time(NULL));

	ldc.i4	0
	conv.u4
	call	int32 'time'(void*)
	conv.u4
	call	void 'srand'(uint32)
L_5:
// Line 211:		{

// Line 212:			int numero = rand() % 1000;

	ldloca	'numero/3'
	call	int32 'rand'()
	ldc.i4	-1
	and
	stind.i4
// Line 213:			if (!valorExiste(numero))

	ldloc	'numero/3'
	call	int32 'valorExiste'(int32)
	ldc.i4	0
	bne.un	'L_5'
// Line 214:			{

// Line 215:				raiz = ab_inserirnode(raiz, numero, &sucesso);

	ldloc	'raiz/0'
	ldloc	'numero/3'
	ldloca	'sucesso/2'
	call	void* 'ab_inserirnode'(void*, int32, void*)
	stloc	'raiz/0'
// Line 216:				listaNumeros[counter] = numero;

	ldloc	'counter/1'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[50]' 'listaNumeros'

	add
	ldloc	'numero/3'
	stind.i4
// Line 217:				counter++;

	ldloc	'counter/1'
	ldc.i4	1
	add
	stloc	'counter/1'
L_9:
L_12:
// Line 221:	

// Line 222:			if (counter >= TAMANHO)

	ldloc	'counter/1'
	ldc.i4	50
	bge	'L_6'
// Line 223:				break;

L_13:
L_7:
// Line 210:		while (1)

	br	'L_5'
L_6:
// Line 224:		}

// Line 225:	

// Line 226:		ab_imprimiremordem(raiz);

	ldloc	'raiz/0'
	call	void 'ab_imprimiremordem'(void*)
// Line 227:	

// Line 228:	#if USE_QSORT

// Line 229:		q_sort(listaNumeros, TAMANHO, sizeof(int), cmpfunc);

// Line 230:	#endif

// Line 231:		ab_deletarnode(&raiz, listaNumeros[TAMANHO-2], &sucesso);

	ldloca	'raiz/0'
	ldsflda	valuetype 'int32[50]' 'listaNumeros'

	ldc.i4	192
	add
	ldind.i4
	ldloca	'sucesso/2'
	call	int32 'ab_deletarnode'(void*, int32, void*)
	pop
// Line 232:		ab_imprimiremordem(raiz);

	ldloc	'raiz/0'
	call	void 'ab_imprimiremordem'(void*)
// Line 233:		ab_liberaarvore(raiz);

	ldloc	'raiz/0'
	call	void 'ab_liberaarvore'(void*)
// Line 234:	

// Line 235:		return 0;

	ldc.i4	0
// Line 236:	}

L_3:
	ret

}
 .method public hidebysig static void* 'ab_novonode'() cil managed
{
// Line 26:	node* ab_novonode()

// Line 27:	{

	.locals
	(
		[0] void* 'tmp/0'
	)
	.maxstack	2
L_20:
// Line 28:		node* tmp = (node*)malloc(sizeof(node));

	ldloca	'tmp/0'
	ldc.i4	12
	conv.u4
	call	void* 'malloc'(uint32)
	stind.i4
// Line 29:		return tmp;

	ldloc	'tmp/0'
// Line 30:	}

L_21:
	ret

}
 .method public hidebysig static void 'ab_setanode'(void* 'noh' , int32 'conteudo' , void* 'esquerda' , void* 'direita' ) cil managed
{
// Line 32:	void ab_setanode(node* noh, int conteudo, node* esquerda, node* direita)

// Line 33:	{

	.maxstack	2
L_28:
// Line 34:		noh->conteudo = conteudo;

	ldarg	'noh'
	ldarg	'conteudo'
	stind.i4
// Line 35:		noh->esquerda = esquerda;

	ldarg	'noh'
	ldc.i4	8
	add
	ldarg	'esquerda'
	stind.i4
// Line 36:		noh->direita = direita;

	ldarg	'noh'
	ldc.i4	4
	add
	ldarg	'direita'
	stind.i4
// Line 37:	}

L_29:
	ret

}
 .method public hidebysig static void* 'ab_inserirnode'(void* 'noh' , int32 'conteudo' , void* 'sucesso' ) cil managed
{
// Line 39:	node* ab_inserirnode(node* noh, int conteudo, bool* sucesso)

// Line 40:	{

	.maxstack	5
L_36:
// Line 41:		if (noh == NULL)

	ldarg	'noh'
	ldc.i4	0
	bne.un	'L_39'
// Line 42:		{

// Line 43:			noh = ab_novonode();

	call	void* 'ab_novonode'()
	starg	'noh'
// Line 44:			ab_setanode(noh, conteudo, NULL, NULL);

	ldarg	'noh'
	ldarg	'conteudo'
	ldc.i4	0
	conv.u4
	ldc.i4	0
	conv.u4
	call	void 'ab_setanode'(void*, int32, void*, void*)
	br	'L_42'
L_39:
// Line 45:		}

// Line 46:		else if (conteudo == noh->conteudo)

	ldarg	'noh'
	ldind.i4
	ldarg	'conteudo'
	bne.un	'L_43'
// Line 47:		{

// Line 48:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 49:			return NULL;

	ldc.i4	0
	conv.u4
	br	'L_37'
L_43:
// Line 50:		}

// Line 51:		else if (conteudo < noh->conteudo)

	ldarg	'conteudo'
	ldarg	'noh'
	ldind.i4
	bge	'L_47'
// Line 52:			noh->esquerda = ab_inserirnode(noh->esquerda, conteudo, sucesso);

	ldarg	'noh'
	ldc.i4	8
	add
	ldarg	'noh'
	ldc.i4	8
	add
	ldind.u4
	ldarg	'conteudo'
	ldarg	'sucesso'
	call	void* 'ab_inserirnode'(void*, int32, void*)
	stind.i4
	br	'L_48'
L_47:
// Line 53:		else

// Line 54:			noh->direita = ab_inserirnode(noh->direita, conteudo, sucesso);

	ldarg	'noh'
	ldc.i4	4
	add
	ldarg	'noh'
	ldc.i4	4
	add
	ldind.u4
	ldarg	'conteudo'
	ldarg	'sucesso'
	call	void* 'ab_inserirnode'(void*, int32, void*)
	stind.i4
L_48:
L_46:
L_42:
// Line 55:	

// Line 56:		*sucesso = true;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
// Line 57:		return noh;

	ldarg	'noh'
// Line 58:	}

L_37:
	ret

}
 .method public hidebysig static void* 'ab_buscarnode'(void* 'noh' , int32 'conteudo' , void* 'sucesso' ) cil managed
{
// Line 60:	node* ab_buscarnode(node* noh, int conteudo, bool* sucesso)

// Line 61:	{

	.maxstack	6
L_54:
// Line 62:		if (noh == NULL)

	ldarg	'noh'
	ldc.i4	0
	bne.un	'L_57'
// Line 63:		{

// Line 64:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 65:			return NULL;

	ldc.i4	0
	conv.u4
	br	'L_55'
L_57:
// Line 66:		}

// Line 67:		else if (conteudo == noh->conteudo)

	ldarg	'noh'
	ldind.i4
	ldarg	'conteudo'
	bne.un	'L_61'
// Line 68:			return noh;

	ldarg	'noh'
	br	'L_55'
L_61:
// Line 69:		else if (conteudo < noh->conteudo)

	ldarg	'conteudo'
	ldarg	'noh'
	ldind.i4
	bge	'L_63'
// Line 70:			return ab_buscarnode(noh->esquerda, conteudo, sucesso);

	ldarg	'noh'
	ldc.i4	8
	add
	ldind.u4
	ldarg	'conteudo'
	ldarg	'sucesso'
	call	void* 'ab_buscarnode'(void*, int32, void*)
	br	'L_55'
L_63:
// Line 71:		else

// Line 72:			return ab_buscarnode(noh->direita, conteudo, sucesso);

	ldarg	'noh'
	ldc.i4	4
	add
	ldind.u4
	ldarg	'conteudo'
	ldarg	'sucesso'
	call	void* 'ab_buscarnode'(void*, int32, void*)
L_64:
L_62:
L_60:
// Line 73:	}

L_55:
	ret

}
 .method public hidebysig static int32 'ab_deletarnode'(void* 'raiz' , int32 'conteudo' , void* 'sucesso' ) cil managed
{
// Line 75:	int ab_deletarnode(node** raiz, int conteudo, bool* sucesso)

// Line 76:	{

	.locals
	(
		[0] void* 'proximo/0',
		[1] void* 'tmp/1',
		[2] void* 'esquerda/2',
		[3] void* 'p/3'
	)
	.maxstack	4
L_70:
// Line 80:		node** esquerda;

// Line 81:		node** p = raiz;

	ldloca	'p/3'
	ldarg	'raiz'
	stind.i4
// Line 82:	

L_73:
// Line 84:		{

// Line 85:			if (*p == NULL)

	ldloc	'p/3'
	ldind.u4
	ldc.i4	0
	bne.un	'L_77'
// Line 86:			{

// Line 87:				*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 88:				return -1;

	ldc.i4	-1
	br	'L_71'
L_77:
// Line 89:			}

// Line 90:			else if (conteudo == (*p)->conteudo)

	ldloc	'p/3'
	ldind.u4
	ldind.i4
	ldarg	'conteudo'
	beq	'L_74'
// Line 91:				break;

L_81:
// Line 92:			else if (conteudo < (*p)->conteudo)

	ldarg	'conteudo'
	ldloc	'p/3'
	ldind.u4
	ldind.i4
	bge	'L_83'
// Line 93:				p = &((*p)->esquerda);

	ldloc	'p/3'
	ldind.u4
	ldc.i4	8
	add
	stloc	'p/3'
	br	'L_84'
L_83:
// Line 94:			else

// Line 95:				p = &((*p)->direita);

	ldloc	'p/3'
	ldind.u4
	ldc.i4	4
	add
	stloc	'p/3'
L_84:
L_82:
L_80:
L_75:
// Line 83:		while (true)

	br	'L_73'
L_74:
// Line 96:		}

// Line 97:	

// Line 98:		if ((*p)->esquerda == NULL)

	ldloc	'p/3'
	ldind.u4
	ldc.i4	8
	add
	ldind.u4
	ldc.i4	0
	bne.un	'L_86'
// Line 99:			proximo = (*p)->direita;

	ldloc	'p/3'
	ldind.u4
	ldc.i4	4
	add
	ldind.u4
	stloc	'proximo/0'
	br	'L_87'
L_86:
// Line 100:		else

// Line 101:		{

// Line 102:			esquerda = &((*p)->esquerda);

	ldloc	'p/3'
	ldind.u4
	ldc.i4	8
	add
	stloc	'esquerda/2'
	br	'L_91'
L_89:
// Line 104:				esquerda = &(*esquerda)->direita;

	ldloc	'esquerda/2'
	ldind.u4
	ldc.i4	4
	add
	stloc	'esquerda/2'
L_91:
// Line 103:			while ((*esquerda)->direita != NULL)

	ldloc	'esquerda/2'
	ldind.u4
	ldc.i4	4
	add
	ldind.u4
	ldc.i4	0
	bne.un	'L_89'
L_90:
// Line 105:			proximo = *esquerda;

	ldloc	'esquerda/2'
	ldind.u4
	stloc	'proximo/0'
// Line 106:			*esquerda = (*esquerda)->esquerda;

	ldloc	'esquerda/2'
	ldloc	'esquerda/2'
	ldind.u4
	ldc.i4	8
	add
	ldind.u4
	stind.i4
// Line 107:			proximo->esquerda = (*p)->esquerda;

	ldloc	'proximo/0'
	ldc.i4	8
	add
	ldloc	'p/3'
	ldind.u4
	ldc.i4	8
	add
	ldind.u4
	stind.i4
// Line 108:			proximo->direita = (*p)->direita;

	ldloc	'proximo/0'
	ldc.i4	4
	add
	ldloc	'p/3'
	ldind.u4
	ldc.i4	4
	add
	ldind.u4
	stind.i4
L_87:
// Line 109:		}

// Line 110:		tmp = *p;

	ldloc	'p/3'
	ldind.u4
	stloc	'tmp/1'
// Line 111:		*p = proximo;

	ldloc	'p/3'
	ldloc	'proximo/0'
	stind.i4
// Line 112:		free(tmp);

	ldloc	'tmp/1'
	call	void 'free'(void*)
// Line 113:		*sucesso = true;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
// Line 114:		return 0;

	ldc.i4	0
// Line 115:	}

L_71:
	ret

}
 .method public hidebysig static void 'ab_imprimeconteudo'(void* 'noh' ) cil managed
{
// Line 117:	void ab_imprimeconteudo(node* noh)

// Line 118:	{

	.maxstack	2
L_98:
// Line 119:		printf("%02d\n", noh->conteudo);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldarg	'noh'
	ldind.i4
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 120:	}

L_99:
	ret

}
 .method public hidebysig static void 'ab_imprimiremordem'(void* 'noh' ) cil managed
{
// Line 122:	void ab_imprimiremordem(node* noh)

// Line 123:	{

	.maxstack	2
L_106:
// Line 124:		if (noh)

	ldarg	'noh'
	ldc.i4	0
	beq	'L_109'
// Line 125:		{

// Line 126:			ab_imprimiremordem(noh->esquerda);

	ldarg	'noh'
	ldc.i4	8
	add
	ldind.u4
	call	void 'ab_imprimiremordem'(void*)
// Line 127:			ab_imprimeconteudo(noh);

	ldarg	'noh'
	call	void 'ab_imprimeconteudo'(void*)
// Line 128:			ab_imprimiremordem(noh->direita);

	ldarg	'noh'
	ldc.i4	4
	add
	ldind.u4
	call	void 'ab_imprimiremordem'(void*)
L_109:
// Line 129:		}

// Line 130:	}

L_107:
	ret

}
 .method public hidebysig static void 'ab_imprimirempreordem'(void* 'noh' ) cil managed
{
// Line 132:	void ab_imprimirempreordem(node* noh)

// Line 133:	{

	.maxstack	2
L_117:
// Line 134:		if (noh)

	ldarg	'noh'
	ldc.i4	0
	beq	'L_120'
// Line 135:		{

// Line 136:			ab_imprimeconteudo(noh);

	ldarg	'noh'
	call	void 'ab_imprimeconteudo'(void*)
// Line 137:			ab_imprimiremordem(noh->esquerda);

	ldarg	'noh'
	ldc.i4	8
	add
	ldind.u4
	call	void 'ab_imprimiremordem'(void*)
// Line 138:			ab_imprimiremordem(noh->direita);

	ldarg	'noh'
	ldc.i4	4
	add
	ldind.u4
	call	void 'ab_imprimiremordem'(void*)
L_120:
// Line 139:		}

// Line 140:	}

L_118:
	ret

}
 .method public hidebysig static void 'ab_imprimiremprosordem'(void* 'noh' ) cil managed
{
// Line 142:	void ab_imprimiremprosordem(node* noh)

// Line 143:	{

	.maxstack	2
L_128:
// Line 144:		if (noh)

	ldarg	'noh'
	ldc.i4	0
	beq	'L_131'
// Line 145:		{

// Line 146:			ab_imprimiremordem(noh->esquerda);

	ldarg	'noh'
	ldc.i4	8
	add
	ldind.u4
	call	void 'ab_imprimiremordem'(void*)
// Line 147:			ab_imprimiremordem(noh->direita);

	ldarg	'noh'
	ldc.i4	4
	add
	ldind.u4
	call	void 'ab_imprimiremordem'(void*)
// Line 148:			ab_imprimeconteudo(noh);

	ldarg	'noh'
	call	void 'ab_imprimeconteudo'(void*)
L_131:
// Line 149:		}

// Line 150:	}

L_129:
	ret

}
 .method public hidebysig static void 'ab_liberaarvore'(void* 'noh' ) cil managed
{
// Line 152:	void ab_liberaarvore(node* noh)

// Line 153:	{

	.maxstack	2
L_139:
// Line 154:		if (noh)

	ldarg	'noh'
	ldc.i4	0
	beq	'L_142'
// Line 155:		{

// Line 156:			ab_liberaarvore(noh->esquerda);

	ldarg	'noh'
	ldc.i4	8
	add
	ldind.u4
	call	void 'ab_liberaarvore'(void*)
// Line 157:			ab_liberaarvore(noh->direita);

	ldarg	'noh'
	ldc.i4	4
	add
	ldind.u4
	call	void 'ab_liberaarvore'(void*)
// Line 158:			free(noh);

	ldarg	'noh'
	call	void 'free'(void*)
L_142:
// Line 159:		}

// Line 160:	}

L_140:
	ret

}
 .method public hidebysig static int32 'valorExiste'(int32 'valor' ) cil managed
{
// Line 165:	bool valorExiste(int valor)

// Line 166:	{

	.locals
	(
		[0] int32 'i/0'
	)
	.maxstack	3
L_150:
// Line 167:	  int i;

	ldc.i4	0
	stloc	'i/0'
	br	'L_154'
L_153:
// Line 169:			if (listaNumeros[i] == valor)

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[50]' 'listaNumeros'

	add
	ldind.i4
	ldarg	'valor'
	bne.un	'L_157'
// Line 170:				return true;

	ldc.i4	1
	br	'L_151'
L_157:
L_156:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 168:		for (i = 0; i < TAMANHO; i++)

L_154:
	ldloc	'i/0'
	ldc.i4	50
	blt	'L_153'
L_155:
// Line 171:		return false;

	ldc.i4	0
// Line 172:	}

L_151:
	ret

}
 .method public hidebysig static int32 'cmpfunc'(void* 'a' , void* 'b' ) cil managed
{
// Line 174:	int cmpfunc(const void * a, const void * b)

// Line 175:	{

	.maxstack	2
L_163:
// Line 176:		return (*(int*)a - *(int*)b);

	ldarg	'a'
	ldind.i4
	ldarg	'b'
	ldind.i4
	sub
// Line 177:	}

L_164:
	ret

}
 .method public hidebysig static void 'swap'(void* 'v' , int32 'i' , int32 'j' ) cil managed
{
// Line 179:	void swap(void *v[], int i, int j)

// Line 180:	{

	.locals
	(
		[0] void* 'temp/0'
	)
	.maxstack	3
L_171:
// Line 181:	    void *temp;

// Line 182:	

// Line 183:	    temp = v[i];

	ldarg	'i'
	ldc.i4	2
	shl
	ldarg	'v'
	add
	ldind.u4
	stloc	'temp/0'
// Line 184:	    v[i] = v[j];

	ldarg	'i'
	ldc.i4	2
	shl
	ldarg	'v'
	add
	ldarg	'j'
	ldc.i4	2
	shl
	ldarg	'v'
	add
	ldind.u4
	stind.i4
// Line 185:	    v[j] = temp;

	ldarg	'j'
	ldc.i4	2
	shl
	ldarg	'v'
	add
	ldloc	'temp/0'
	stind.i4
// Line 186:	}

L_172:
	ret

}
 .method public hidebysig static void 'q_sort'(void* 'v' , int32 'left' , int32 'right' , method 	int32 *(void*, void*) 'comp' ) cil managed
{
// Line 188:	void q_sort(void *v[], int left, int right, int (*comp)(const void *, const void *))

// Line 189:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'last/1'
	)
	.maxstack	4
L_179:
// Line 190:	    int i, last;

// Line 191:	

// Line 192:	    if (left >= right) return;

	ldarg	'left'
	ldarg	'right'
	bge	'L_180'
L_182:
// Line 193:	    swap(v, left, (left + right) / 2);

	ldarg	'v'
	ldarg	'left'
	ldarg	'left'
	ldarg	'right'
	add
	ldc.i4	1
	shr.un
	call	void 'swap'(void*, int32, int32)
// Line 194:	    last = left;

	ldarg	'left'
	stloc	'last/1'
	ldarg	'left'
	ldc.i4	1
	add
	stloc	'i/0'
	br	'L_184'
L_183:
// Line 196:	        if ((*comp)(v[i], v[left]) < 0)

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldarg	'v'
	add
	ldind.u4
	ldarg	'left'
	ldc.i4	2
	shl
	ldarg	'v'
	add
	ldind.u4
	ldarg	'comp'
	calli		int32 *(void*, void*)
	ldc.i4	0
	bge	'L_188'
// Line 197:	            swap(v, ++last, i);

	ldarg	'v'
	ldloc	'last/1'
	ldc.i4	1
	add
	stloc	'last/1'
	ldloc	'last/1'
	ldloc	'i/0'
	call	void 'swap'(void*, int32, int32)
L_188:
L_186:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 195:	    for (i = left + 1; i <= right; i++) {

L_184:
	ldloc	'i/0'
	ldarg	'right'
	ble	'L_183'
L_185:
// Line 198:	    }

// Line 199:	    swap(v, left, last);

	ldarg	'v'
	ldarg	'left'
	ldloc	'last/1'
	call	void 'swap'(void*, int32, int32)
// Line 200:	    sort(v, left, last - 1, comp);

	ldarg	'v'
	ldarg	'left'
	ldloc	'last/1'
	ldc.i4	1
	sub
	ldarg	'comp'
	call	int32 'sort'()
	pop
// Line 201:	    sort(v, last + 1, right, comp);

	ldarg	'v'
	ldloc	'last/1'
	ldc.i4	1
	add
	ldarg	'right'
	ldarg	'comp'
	call	int32 'sort'()
	pop
// Line 202:	}

L_180:
	ret

}
 .field public static valuetype 'int32[50]' 'listaNumeros' at $listaNumeros
.data $listaNumeros = bytearray (0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
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
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (25 30 32 64 a 0 
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
.class private value explicit ansi sealed 'int32[50]' {.pack 1 .size 200}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'sort'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'time'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'srand'(uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'rand'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'malloc'(uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'free'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
