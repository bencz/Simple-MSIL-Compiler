//File stack_using_linkedlist.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 342:	int main()

// Line 343:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'valor/1',
		[2] int32 'sucesso/2',
		[3] void* 'pl/3',
		[4] int32 'valor/4'
	)
	.maxstack	3
L_8:
// Line 345:	  int valor;

// Line 346:		bool sucesso = true;

	ldloca	'sucesso/2'
	ldc.i4	1
	stind.i4
// Line 347:		pilha* pl = inicializapilha(20);

	ldloca	'pl/3'
	ldc.i4	20
	call	void* 'inicializapilha'(int32)
	stind.i4
// Line 348:		printf("---------- Empilhando ----------\n");

	ldsflda	valuetype 'int8[]' 'L_1'

	call	vararg void 'printf'(void*, ...)
	ldc.i4	0
	stloc	'i/0'
	br	'L_12'
L_11:
// Line 350:		{

// Line 351:			valor = i * 10;

	ldloc	'i/0'
	ldc.i4	10
	mul
	stloc	'valor/1'
// Line 352:			pl_push(pl, valor, &sucesso);

	ldloc	'pl/3'
	ldloc	'valor/1'
	ldloca	'sucesso/2'
	call	void 'pl_push'(void*, int32, void*)
// Line 353:			if (sucesso)

	ldloc	'sucesso/2'
	ldc.i4	0
	beq	'L_16'
// Line 354:				printf("%d\n", valor);

	ldsflda	valuetype 'int8[]' 'L_2'

	ldloc	'valor/1'
	call	vararg void 'printf'(void*, ..., int32)
L_16:
L_14:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 349:		for (i = 0; (sucesso == true); i++)

L_12:
	ldloc	'sucesso/2'
	ldc.i4	1
	beq	'L_11'
L_13:
// Line 355:		}

// Line 356:		printf("-----------------------------------\n\n");

	ldsflda	valuetype 'int8[]' 'L_3'

	call	vararg void 'printf'(void*, ...)
// Line 357:	

// Line 358:		printf("-----------------------------------\n");

	ldsflda	valuetype 'int8[]' 'L_4'

	call	vararg void 'printf'(void*, ...)
// Line 359:		printf("TOPO = %d\n", pl_topo(pl, &sucesso));

	ldsflda	valuetype 'int8[]' 'L_5'

	ldloc	'pl/3'
	ldloca	'sucesso/2'
	call	int32 'pl_topo'(void*, void*)
	call	vararg void 'printf'(void*, ..., int32)
// Line 360:		printf("BASE = %d\n", pl_base(pl, &sucesso));

	ldsflda	valuetype 'int8[]' 'L_6'

	ldloc	'pl/3'
	ldloca	'sucesso/2'
	call	int32 'pl_base'(void*, void*)
	call	vararg void 'printf'(void*, ..., int32)
// Line 361:		printf("-----------------------------------\n\n");

	ldsflda	valuetype 'int8[]' 'L_3'

	call	vararg void 'printf'(void*, ...)
// Line 362:	

// Line 363:		printf("---------- Desempilhando ----------\n");

	ldsflda	valuetype 'int8[]' 'L_7'

	call	vararg void 'printf'(void*, ...)
L_18:
// Line 365:		{

// Line 366:			int valor = pl_pop(pl, &sucesso);

	ldloca	'valor/4'
	ldloc	'pl/3'
	ldloca	'sucesso/2'
	call	int32 'pl_pop'(void*, void*)
	stind.i4
// Line 367:			if (sucesso == false)

	ldloc	'sucesso/2'
	ldc.i4	0
	beq	'L_19'
// Line 368:				break;

L_22:
// Line 369:			printf("%d\n", valor);

	ldsflda	valuetype 'int8[]' 'L_2'

	ldloc	'valor/4'
	call	vararg void 'printf'(void*, ..., int32)
L_20:
// Line 364:		while (true)

	br	'L_18'
L_19:
// Line 370:		}

// Line 371:		printf("-----------------------------------\n");

	ldsflda	valuetype 'int8[]' 'L_4'

	call	vararg void 'printf'(void*, ...)
// Line 372:	

// Line 373:		pl_liberapilha(pl);

	ldloc	'pl/3'
	call	void 'pl_liberapilha'(void*)
// Line 374:		return 0;

	ldc.i4	0
// Line 375:	}

L_9:
	ret

}
 .method public hidebysig static void* 'll_inicializalista'() cil managed
{
// Line 64:	lista* ll_inicializalista()

// Line 65:	{

	.locals
	(
		[0] void* 'tmp/0'
	)
	.maxstack	2
L_29:
// Line 66:		lista* tmp = (lista*)malloc(sizeof(lista));

	ldloca	'tmp/0'
	ldc.i4	20
	call	void* 'malloc'(int32)
	stind.i4
// Line 67:		tmp->indexcounter = 0;

	ldloc	'tmp/0'
	ldc.i4	0
	stind.i4
// Line 68:		tmp->tamanho = 0;

	ldloc	'tmp/0'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
// Line 69:		tmp->listanoh = NULL;

	ldloc	'tmp/0'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 70:		tmp->head = NULL;

	ldloc	'tmp/0'
	ldc.i4	12
	add
	ldc.i4	0
	stind.i4
// Line 71:		tmp->tail = NULL;

	ldloc	'tmp/0'
	ldc.i4	16
	add
	ldc.i4	0
	stind.i4
// Line 72:		return tmp;

	ldloc	'tmp/0'
// Line 73:	}

L_30:
	ret

}
 .method public hidebysig static void* 'crianoh'() cil managed
{
// Line 75:	noh* crianoh()

// Line 76:	{

	.locals
	(
		[0] void* 'novo/0'
	)
	.maxstack	2
L_37:
// Line 77:		noh* novo = (noh*)malloc(sizeof(noh));

	ldloca	'novo/0'
	ldc.i4	16
	call	void* 'malloc'(int32)
	stind.i4
// Line 78:		novo->conteudo = 0;

	ldloc	'novo/0'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
// Line 79:		novo->proximo = NULL;

	ldloc	'novo/0'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 80:		novo->anterior = NULL;

	ldloc	'novo/0'
	ldc.i4	12
	add
	ldc.i4	0
	stind.i4
// Line 81:		return novo;

	ldloc	'novo/0'
// Line 82:	}

L_38:
	ret

}
 .method public hidebysig static void 'll_inserirfinal'(void* 'lst' , int32 'valor' ) cil managed
{
// Line 84:	void ll_inserirfinal(lista* lst, int valor)

// Line 85:	{

	.locals
	(
		[0] void* 'novo/0',
		[1] void* 'tmp/1'
	)
	.maxstack	4
L_45:
// Line 86:		noh* novo = crianoh();

	ldloca	'novo/0'
	call	void* 'crianoh'()
	stind.i4
// Line 87:		novo->conteudo = valor;

	ldloc	'novo/0'
	ldc.i4	4
	add
	ldarg	'valor'
	stind.i4
// Line 88:	

// Line 89:		if (lst->listanoh == NULL)

	ldarg	'lst'
	ldc.i4	8
	add
	ldind.u4
	ldc.i4	0
	bne.un	'L_48'
// Line 90:		{

// Line 91:			novo->index = lst->indexcounter++;

	ldloc	'novo/0'
	ldarg	'lst'
	ldind.i4
	stind.i4
	ldarg	'lst'
	ldarg	'lst'
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 92:			lst->listanoh = lst->head = lst->tail = novo;

	ldarg	'lst'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldarg	'lst'
	ldc.i4	16
	add
	ldloc	'novo/0'
	stind.i4
	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	stind.i4
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 93:			lst->tamanho++;

	ldarg	'lst'
	ldc.i4	4
	add
	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_51'
L_48:
// Line 94:		}

// Line 95:		else

// Line 96:		{

// Line 97:			noh* tmp = lst->tail;

	ldloca	'tmp/1'
	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	stind.i4
// Line 98:			novo->index = lst->indexcounter++;

	ldloc	'novo/0'
	ldarg	'lst'
	ldind.i4
	stind.i4
	ldarg	'lst'
	ldarg	'lst'
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 99:			lst->tail->proximo = novo;

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	8
	add
	ldloc	'novo/0'
	stind.i4
// Line 100:			lst->tail = novo;		

	ldarg	'lst'
	ldc.i4	16
	add
	ldloc	'novo/0'
	stind.i4
// Line 101:			lst->tail->anterior = tmp;

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	12
	add
	ldloc	'tmp/1'
	stind.i4
// Line 102:			lst->tamanho++;

	ldarg	'lst'
	ldc.i4	4
	add
	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_51:
// Line 103:		}

// Line 104:	}

L_46:
	ret

}
 .method public hidebysig static void 'll_inseririnicio'(void* 'lst' , int32 'valor' ) cil managed
{
// Line 106:	void ll_inseririnicio(lista* lst, int valor)

// Line 107:	{

	.locals
	(
		[0] void* 'novo/0'
	)
	.maxstack	4
L_59:
// Line 108:		noh* novo = crianoh();

	ldloca	'novo/0'
	call	void* 'crianoh'()
	stind.i4
// Line 109:		novo->conteudo = valor;

	ldloc	'novo/0'
	ldc.i4	4
	add
	ldarg	'valor'
	stind.i4
// Line 110:	

// Line 111:		if (lst->listanoh == NULL)

	ldarg	'lst'
	ldc.i4	8
	add
	ldind.u4
	ldc.i4	0
	bne.un	'L_62'
// Line 112:		{

// Line 113:			novo->index = lst->indexcounter++;

	ldloc	'novo/0'
	ldarg	'lst'
	ldind.i4
	stind.i4
	ldarg	'lst'
	ldarg	'lst'
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 114:			lst->listanoh = lst->head = lst->tail = novo;

	ldarg	'lst'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldarg	'lst'
	ldc.i4	16
	add
	ldloc	'novo/0'
	stind.i4
	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	stind.i4
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 115:			lst->tamanho++;

	ldarg	'lst'
	ldc.i4	4
	add
	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_65'
L_62:
// Line 116:		}

// Line 117:		else

// Line 118:		{

// Line 119:			novo->index = lst->indexcounter++;

	ldloc	'novo/0'
	ldarg	'lst'
	ldind.i4
	stind.i4
	ldarg	'lst'
	ldarg	'lst'
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 120:			novo->proximo = lst->head;

	ldloc	'novo/0'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 121:			lst->head->anterior = novo;

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	12
	add
	ldloc	'novo/0'
	stind.i4
// Line 122:			lst->head = novo;

	ldarg	'lst'
	ldc.i4	12
	add
	ldloc	'novo/0'
	stind.i4
// Line 123:			lst->listanoh = lst->head;

	ldarg	'lst'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 124:			lst->tamanho++;

	ldarg	'lst'
	ldc.i4	4
	add
	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_65:
// Line 125:		}

// Line 126:	}

L_60:
	ret

}
 .method public hidebysig static void 'll_removernoh'(void* 'lst' , int32 'index' ) cil managed
{
// Line 128:	void ll_removernoh(lista *lst, int index)

// Line 129:	{

	.locals
	(
		[0] void* 'aux/0',
		[1] void* 'ant/1'
	)
	.maxstack	3
L_73:
// Line 130:		noh* aux = NULL;

	ldloca	'aux/0'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 131:		noh* ant = NULL;

	ldloca	'ant/1'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 132:	

// Line 133:		if (lst->tamanho == 0)

	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	0
	beq	'L_74'
// Line 134:			return;

L_76:
// Line 135:	    

// Line 136:	  aux = lst->head;

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stloc	'aux/0'
	br	'L_79'
L_77:
// Line 139:		{

// Line 140:			if (aux->index == index)

	ldloc	'aux/0'
	ldind.i4
	ldarg	'index'
	bne.un	'L_81'
// Line 141:			{

// Line 142:				if (aux == lst->head)

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldloc	'aux/0'
	bne.un	'L_83'
// Line 143:				{

// Line 144:					lst->head = lst->head->proximo;

	ldarg	'lst'
	ldc.i4	12
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	8
	add
	ldind.u4
	stind.i4
// Line 145:					lst->head->anterior = NULL;

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	12
	add
	ldc.i4	0
	stind.i4
// Line 146:					lst->listanoh = lst->head;

	ldarg	'lst'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
	br	'L_86'
L_83:
// Line 147:				}

// Line 148:				else if (aux == lst->tail)

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldloc	'aux/0'
	bne.un	'L_87'
// Line 149:				{

// Line 150:					ant->proximo = NULL;

	ldloc	'ant/1'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 151:					lst->tail = ant;

	ldarg	'lst'
	ldc.i4	16
	add
	ldloc	'ant/1'
	stind.i4
	br	'L_90'
L_87:
// Line 152:				}

// Line 153:				else

// Line 154:				{

// Line 155:					aux->proximo->anterior = ant;

	ldloc	'aux/0'
	ldc.i4	8
	add
	ldind.u4
	ldc.i4	12
	add
	ldloc	'ant/1'
	stind.i4
// Line 156:					ant->proximo = aux->proximo;

	ldloc	'ant/1'
	ldc.i4	8
	add
	ldloc	'aux/0'
	ldc.i4	8
	add
	ldind.u4
	stind.i4
L_90:
L_86:
// Line 157:				}

// Line 158:	

// Line 159:				free(aux);

	ldloc	'aux/0'
	call	void 'free'(void*)
// Line 160:				lst->tamanho--;

	ldarg	'lst'
	ldc.i4	4
	add
	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 161:				break;

	br	'L_78'
L_81:
// Line 162:			}

// Line 163:			ant = aux;

	ldloc	'aux/0'
	stloc	'ant/1'
// Line 164:			aux = aux->proximo;

	ldloc	'aux/0'
	ldc.i4	8
	add
	ldind.u4
	stloc	'aux/0'
L_79:
// Line 137:	

// Line 138:		while (aux != NULL)

	ldloc	'aux/0'
	ldc.i4	0
	bne.un	'L_77'
L_78:
// Line 165:		}

// Line 166:	}

L_74:
	ret

}
 .method public hidebysig static int32 'll_removertail'(void* 'lst' ) cil managed
{
// Line 168:	int ll_removertail(lista *lst)

// Line 169:	{

	.locals
	(
		[0] int32 'valor/0',
		[1] void* 'ant/1'
	)
	.maxstack	4
L_100:
// Line 170:		int valor = 0;

	ldloca	'valor/0'
	ldc.i4	0
	stind.i4
// Line 171:		valor = lst->tail->conteudo;

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	4
	add
	ldind.i4
	stloc	'valor/0'
// Line 172:	

// Line 173:		if (lst->tail->anterior != NULL) 

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	0
	beq	'L_103'
// Line 174:		{

// Line 175:			noh* ant = lst->tail->anterior;

	ldloca	'ant/1'
	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 176:			ant->proximo = NULL;

	ldloc	'ant/1'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 177:			lst->tail = ant;

	ldarg	'lst'
	ldc.i4	16
	add
	ldloc	'ant/1'
	stind.i4
	br	'L_106'
L_103:
// Line 178:		}

// Line 179:		else 

// Line 180:			lst->listanoh = lst->head = lst->tail = NULL;

	ldarg	'lst'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldarg	'lst'
	ldc.i4	16
	add
	ldc.i4	0
	stind.i4
	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	stind.i4
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
L_106:
// Line 181:	

// Line 182:		lst->tamanho--;

	ldarg	'lst'
	ldc.i4	4
	add
	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 183:		return valor;

	ldloc	'valor/0'
// Line 184:	}

L_101:
	ret

}
 .method public hidebysig static int32 'll_removerhead'(void* 'lst' ) cil managed
{
// Line 186:	int ll_removerhead(lista *lst)

// Line 187:	{

	.locals
	(
		[0] int32 'valor/0'
	)
	.maxstack	3
L_112:
// Line 188:		int valor = lst->head->conteudo;

	ldloca	'valor/0'
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	4
	add
	ldind.i4
	stind.i4
// Line 189:		if (lst->head->proximo != NULL)

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	8
	add
	ldind.u4
	ldc.i4	0
	beq	'L_115'
// Line 190:		{

// Line 191:			lst->head = lst->head->proximo;

	ldarg	'lst'
	ldc.i4	12
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	8
	add
	ldind.u4
	stind.i4
// Line 192:			lst->head->anterior = NULL;

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	12
	add
	ldc.i4	0
	stind.i4
	br	'L_118'
L_115:
// Line 193:		}

// Line 194:		else

// Line 195:			lst->head = lst->tail  = NULL;

	ldarg	'lst'
	ldc.i4	12
	add
	ldarg	'lst'
	ldc.i4	16
	add
	ldc.i4	0
	stind.i4
	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	stind.i4
L_118:
// Line 196:		

// Line 197:		lst->listanoh = lst->head;

	ldarg	'lst'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 198:		lst->tamanho--;

	ldarg	'lst'
	ldc.i4	4
	add
	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 199:		return valor;

	ldloc	'valor/0'
// Line 200:	}

L_113:
	ret

}
 .method public hidebysig static void 'll_removertudo'(void* 'lst' ) cil managed
{
// Line 202:	void ll_removertudo(lista *lst)

// Line 203:	{

	.maxstack	2
L_124:
// Line 204:		free(lst->tail);

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	call	void 'free'(void*)
// Line 205:		free(lst->head);

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	call	void 'free'(void*)
// Line 206:	

// Line 207:		lst->indexcounter = 0;

	ldarg	'lst'
	ldc.i4	0
	stind.i4
// Line 208:		lst->tamanho = 0;

	ldarg	'lst'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
// Line 209:		lst->listanoh = NULL;

	ldarg	'lst'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 210:		lst->head = NULL;

	ldarg	'lst'
	ldc.i4	12
	add
	ldc.i4	0
	stind.i4
// Line 211:		lst->tail = NULL;

	ldarg	'lst'
	ldc.i4	16
	add
	ldc.i4	0
	stind.i4
// Line 212:	}

L_125:
	ret

}
 .method public hidebysig static void* 'll_buscanoh'(void* 'lst' , int32 'index' ) cil managed
{
// Line 214:	noh* ll_buscanoh(lista *lst, int index)

// Line 215:	{

	.locals
	(
		[0] void* 'aux/0'
	)
	.maxstack	3
L_132:
// Line 216:		noh* aux = lst->head;

	ldloca	'aux/0'
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
	br	'L_137'
L_135:
// Line 218:		{

// Line 219:			if (aux->index == index)

	ldloc	'aux/0'
	ldind.i4
	ldarg	'index'
	bne.un	'L_139'
// Line 220:				return aux;

	ldloc	'aux/0'
	br	'L_133'
L_139:
// Line 221:			aux = aux->proximo;

	ldloc	'aux/0'
	ldc.i4	8
	add
	ldind.u4
	stloc	'aux/0'
L_137:
// Line 217:		while (aux != NULL)

	ldloc	'aux/0'
	ldc.i4	0
	bne.un	'L_135'
L_136:
// Line 222:		}

// Line 223:		return NULL;

	ldc.i4	0
	conv.u4
// Line 224:	}

L_133:
	ret

}
 .method public hidebysig static void* 'll_head'(void* 'lst' ) cil managed
{
// Line 226:	noh* ll_head(lista *lst)

// Line 227:	{

	.maxstack	2
L_146:
// Line 228:		return lst->head;

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
// Line 229:	}

L_147:
	ret

}
 .method public hidebysig static void* 'll_tail'(void* 'lst' ) cil managed
{
// Line 231:	noh* ll_tail(lista *lst)

// Line 232:	{

	.maxstack	2
L_154:
// Line 233:		return lst->tail;

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
// Line 234:	}

L_155:
	ret

}
 .method public hidebysig static void 'll_reindexar'(void* 'lst' ) cil managed
{
// Line 236:	void ll_reindexar(lista *lst)

// Line 237:	{

	.locals
	(
		[0] void* 'aux/0',
		[1] int32 'i/1'
	)
	.maxstack	3
L_162:
// Line 238:		noh* aux = lst->head;

	ldloca	'aux/0'
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 239:		int i = 0;

	ldloca	'i/1'
	ldc.i4	0
	stind.i4
	br	'L_166'
L_165:
// Line 241:		{

// Line 242:			aux->index = i;

	ldloc	'aux/0'
	ldloc	'i/1'
	stind.i4
// Line 243:			aux = aux->proximo;

	ldloc	'aux/0'
	ldc.i4	8
	add
	ldind.u4
	stloc	'aux/0'
L_168:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 240:		for (; aux != NULL;i++)

L_166:
	ldloc	'aux/0'
	ldc.i4	0
	bne.un	'L_165'
L_167:
// Line 244:		}

// Line 245:		lst->indexcounter = i;

	ldarg	'lst'
	ldloc	'i/1'
	stind.i4
// Line 246:	}

L_163:
	ret

}
 .method public hidebysig static int32 'll_tamanho'(void* 'lst' ) cil managed
{
// Line 248:	int ll_tamanho(lista *lst)

// Line 249:	{

	.maxstack	2
L_176:
// Line 250:		return lst->tamanho;

	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
// Line 251:	}

L_177:
	ret

}
 .method public hidebysig static void 'll_liberalista'(void* 'lst' ) cil managed
{
// Line 253:	void ll_liberalista(lista* lst)

// Line 254:	{

	.maxstack	1
L_184:
// Line 255:		free(lst);

	ldarg	'lst'
	call	void 'free'(void*)
// Line 256:	}

L_185:
	ret

}
 .method public hidebysig static void* 'inicializapilha'(int32 'tamanho' ) cil managed
{
// Line 259:	pilha* inicializapilha(int tamanho)

// Line 260:	{

	.locals
	(
		[0] void* 'tmp/0'
	)
	.maxstack	2
L_192:
// Line 261:		pilha* tmp = (pilha*)malloc(sizeof(pilha));

	ldloca	'tmp/0'
	ldc.i4	8
	call	void* 'malloc'(int32)
	stind.i4
// Line 262:		tmp->tamanho = tamanho;

	ldloc	'tmp/0'
	ldarg	'tamanho'
	stind.i4
// Line 263:		tmp->lst = ll_inicializalista();

	ldloc	'tmp/0'
	ldc.i4	4
	add
	call	void* 'll_inicializalista'()
	stind.i4
// Line 264:		return tmp;

	ldloc	'tmp/0'
// Line 265:	}

L_193:
	ret

}
 .method public hidebysig static void 'pl_push'(void* 'pl' , int32 'elemento' , void* 'sucesso' ) cil managed
{
// Line 267:	void pl_push(pilha* pl, int elemento, bool* sucesso)

// Line 268:	{

	.maxstack	2
L_200:
// Line 269:		if (pl_pilhacheia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhacheia'(void*)
	ldc.i4	0
	beq	'L_203'
// Line 270:		{

// Line 271:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 272:			return;

	br	'L_201'
L_203:
// Line 273:		}

// Line 274:	

// Line 275:		ll_inserirfinal(pl->lst, elemento);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	ldarg	'elemento'
	call	void 'll_inserirfinal'(void*, int32)
// Line 276:		*sucesso = true;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
// Line 277:	}

L_201:
	ret

}
 .method public hidebysig static int32 'pl_pop'(void* 'pl' , void* 'sucesso' ) cil managed
{
// Line 279:	int pl_pop(pilha* pl, bool* sucesso)

// Line 280:	{

	.locals
	(
		[0] int32 'v/0'
	)
	.maxstack	3
L_211:
// Line 281:	  int v;

// Line 282:		if (pl_pilhavazia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhavazia'(void*)
	ldc.i4	0
	beq	'L_214'
// Line 283:		{

// Line 284:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 285:			return -1;

	ldc.i4	-1
	br	'L_212'
L_214:
// Line 286:		}

// Line 287:	

// Line 288:		v = ll_removertail(pl->lst);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	int32 'll_removertail'(void*)
	stloc	'v/0'
// Line 289:		*sucesso = true;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
// Line 290:		return v;

	ldloc	'v/0'
// Line 291:	}

L_212:
	ret

}
 .method public hidebysig static int32 'pl_topo'(void* 'pl' , void* 'sucesso' ) cil managed
{
// Line 293:	int pl_topo(pilha *pl, bool* sucesso)

// Line 294:	{

	.maxstack	3
L_222:
// Line 295:		if (pl_pilhavazia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhavazia'(void*)
	ldc.i4	0
	beq	'L_225'
// Line 296:		{

// Line 297:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 298:			return -1;

	ldc.i4	-1
	br	'L_223'
L_225:
// Line 299:		}

// Line 300:		return ll_tail(pl->lst)->conteudo;

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	void* 'll_tail'(void*)
	ldc.i4	4
	add
	ldind.i4
// Line 301:	}

L_223:
	ret

}
 .method public hidebysig static int32 'pl_base'(void* 'pl' , void* 'sucesso' ) cil managed
{
// Line 303:	int pl_base(pilha* pl, bool *sucesso)

// Line 304:	{

	.maxstack	3
L_233:
// Line 305:		if (pl_pilhavazia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhavazia'(void*)
	ldc.i4	0
	beq	'L_236'
// Line 306:		{

// Line 307:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 308:			return -1;

	ldc.i4	-1
	br	'L_234'
L_236:
// Line 309:		}

// Line 310:		return ll_head(pl->lst)->conteudo;

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	void* 'll_head'(void*)
	ldc.i4	4
	add
	ldind.i4
// Line 311:	}

L_234:
	ret

}
 .method public hidebysig static int32 'pl_pilhacheia'(void* 'pl' ) cil managed
{
// Line 313:	bool pl_pilhacheia(pilha* pl)

// Line 314:	{

	.maxstack	3
L_244:
// Line 315:		return ll_tamanho(pl->lst) >= pl->tamanho;

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	int32 'll_tamanho'(void*)
	ldarg	'pl'
	ldind.i4
	clt
	ldc.i4.1
	xor
	conv.i4
// Line 316:	}

L_245:
	ret

}
 .method public hidebysig static int32 'pl_pilhavazia'(void* 'pl' ) cil managed
{
// Line 318:	bool pl_pilhavazia(pilha* pl)

// Line 319:	{

	.maxstack	2
L_252:
// Line 320:		return ll_tamanho(pl->lst) == 0;

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	int32 'll_tamanho'(void*)
	ldc.i4	0
	ceq
	conv.i4
// Line 321:	}

L_253:
	ret

}
 .method public hidebysig static int32 'pl_tamanho'(void* 'pl' ) cil managed
{
// Line 323:	int pl_tamanho(pilha* pl)

// Line 324:	{

	.maxstack	2
L_260:
// Line 325:		return ll_tamanho(pl->lst);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	int32 'll_tamanho'(void*)
// Line 326:	}

L_261:
	ret

}
 .method public hidebysig static void 'pl_liberapilha'(void* 'pl' ) cil managed
{
// Line 328:	void pl_liberapilha(pilha* pl)

// Line 329:	{

	.maxstack	2
L_268:
// Line 330:		ll_liberalista(pl->lst);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	void 'll_liberalista'(void*)
// Line 331:		free(pl);

	ldarg	'pl'
	call	void 'free'(void*)
// Line 332:	}

L_269:
	ret

}
 .method public hidebysig static void 'pl_esvaziarpilha'(void* 'pl' ) cil managed
{
// Line 334:	void pl_esvaziarpilha(pilha *pl)

// Line 335:	{

	.maxstack	2
L_276:
// Line 336:		ll_removertudo(pl->lst);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	void 'll_removertudo'(void*)
// Line 337:		pl->tamanho = 0;

	ldarg	'pl'
	ldc.i4	0
	stind.i4
// Line 338:	}

L_277:
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
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'free'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'malloc'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg void 'printf'(void*) preservesig {}
