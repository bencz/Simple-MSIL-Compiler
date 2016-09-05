//File stack_using_linkedlist.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 337:	int main()

// Line 338:	{

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
// Line 340:	  int valor;

// Line 341:		bool sucesso = true;

	ldloca	'sucesso/2'
	ldc.i4	1
	stind.i4
// Line 342:		pilha* pl = inicializapilha(20);

	ldloca	'pl/3'
	ldc.i4	20
	call	void* 'inicializapilha'(int32)
	stind.i4
// Line 343:		printf("---------- Empilhando ----------\n");

	ldsflda	valuetype 'int8[]' 'L_1'

	call	vararg int32 'printf'(void*, ...)
	pop
	ldc.i4	0
	stloc	'i/0'
	br	'L_12'
L_11:
// Line 345:		{

// Line 346:			valor = i * 10;

	ldloc	'i/0'
	ldc.i4	10
	mul
	stloc	'valor/1'
// Line 347:			pl_push(pl, valor, &sucesso);

	ldloc	'pl/3'
	ldloc	'valor/1'
	ldloca	'sucesso/2'
	call	void 'pl_push'(void*, int32, void*)
// Line 348:			if (sucesso)

	ldloc	'sucesso/2'
	ldc.i4	0
	beq	'L_16'
// Line 349:				printf("%d\n", valor);

	ldsflda	valuetype 'int8[]' 'L_2'

	ldloc	'valor/1'
	call	vararg int32 'printf'(void*, ..., int32)
	pop
L_16:
L_14:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 344:		for (i = 0; (sucesso == true); i++)

L_12:
	ldloc	'sucesso/2'
	ldc.i4	1
	beq	'L_11'
L_13:
// Line 350:		}

// Line 351:		printf("-----------------------------------\n\n");

	ldsflda	valuetype 'int8[]' 'L_3'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 352:	

// Line 353:		printf("-----------------------------------\n");

	ldsflda	valuetype 'int8[]' 'L_4'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 354:		printf("TOPO = %d\n", pl_topo(pl, &sucesso));

	ldsflda	valuetype 'int8[]' 'L_5'

	ldloc	'pl/3'
	ldloca	'sucesso/2'
	call	int32 'pl_topo'(void*, void*)
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 355:		printf("BASE = %d\n", pl_base(pl, &sucesso));

	ldsflda	valuetype 'int8[]' 'L_6'

	ldloc	'pl/3'
	ldloca	'sucesso/2'
	call	int32 'pl_base'(void*, void*)
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 356:		printf("-----------------------------------\n\n");

	ldsflda	valuetype 'int8[]' 'L_3'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 357:	

// Line 358:		printf("---------- Desempilhando ----------\n");

	ldsflda	valuetype 'int8[]' 'L_7'

	call	vararg int32 'printf'(void*, ...)
	pop
L_18:
// Line 360:		{

// Line 361:			int valor = pl_pop(pl, &sucesso);

	ldloca	'valor/4'
	ldloc	'pl/3'
	ldloca	'sucesso/2'
	call	int32 'pl_pop'(void*, void*)
	stind.i4
// Line 362:			if (sucesso == false)

	ldloc	'sucesso/2'
	ldc.i4	0
	beq	'L_19'
// Line 363:				break;

L_22:
// Line 364:			printf("%d\n", valor);

	ldsflda	valuetype 'int8[]' 'L_2'

	ldloc	'valor/4'
	call	vararg int32 'printf'(void*, ..., int32)
	pop
L_20:
// Line 359:		while (true)

	br	'L_18'
L_19:
// Line 365:		}

// Line 366:		printf("-----------------------------------\n");

	ldsflda	valuetype 'int8[]' 'L_4'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 367:	

// Line 368:		pl_liberapilha(pl);

	ldloc	'pl/3'
	call	void 'pl_liberapilha'(void*)
// Line 369:		return 0;

	ldc.i4	0
// Line 370:	}

L_9:
	ret

}
 .method public hidebysig static void* 'll_inicializalista'() cil managed
{
// Line 59:	lista* ll_inicializalista()

// Line 60:	{

	.locals
	(
		[0] void* 'tmp/0'
	)
	.maxstack	2
L_29:
// Line 61:		lista* tmp = (lista*)malloc(sizeof(lista));

	ldloca	'tmp/0'
	ldc.i4	20
	conv.u4
	call	void* 'malloc'(uint32)
	stind.i4
// Line 62:		tmp->indexcounter = 0;

	ldloc	'tmp/0'
	ldc.i4	0
	stind.i4
// Line 63:		tmp->tamanho = 0;

	ldloc	'tmp/0'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
// Line 64:		tmp->listanoh = NULL;

	ldloc	'tmp/0'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 65:		tmp->head = NULL;

	ldloc	'tmp/0'
	ldc.i4	12
	add
	ldc.i4	0
	stind.i4
// Line 66:		tmp->tail = NULL;

	ldloc	'tmp/0'
	ldc.i4	16
	add
	ldc.i4	0
	stind.i4
// Line 67:		return tmp;

	ldloc	'tmp/0'
// Line 68:	}

L_30:
	ret

}
 .method public hidebysig static void* 'crianoh'() cil managed
{
// Line 70:	noh* crianoh()

// Line 71:	{

	.locals
	(
		[0] void* 'novo/0'
	)
	.maxstack	2
L_37:
// Line 72:		noh* novo = (noh*)malloc(sizeof(noh));

	ldloca	'novo/0'
	ldc.i4	16
	conv.u4
	call	void* 'malloc'(uint32)
	stind.i4
// Line 73:		novo->conteudo = 0;

	ldloc	'novo/0'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
// Line 74:		novo->proximo = NULL;

	ldloc	'novo/0'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 75:		novo->anterior = NULL;

	ldloc	'novo/0'
	ldc.i4	12
	add
	ldc.i4	0
	stind.i4
// Line 76:		return novo;

	ldloc	'novo/0'
// Line 77:	}

L_38:
	ret

}
 .method public hidebysig static void 'll_inserirfinal'(void* 'lst' , int32 'valor' ) cil managed
{
// Line 79:	void ll_inserirfinal(lista* lst, int valor)

// Line 80:	{

	.locals
	(
		[0] void* 'novo/0',
		[1] void* 'tmp/1'
	)
	.maxstack	4
L_45:
// Line 81:		noh* novo = crianoh();

	ldloca	'novo/0'
	call	void* 'crianoh'()
	stind.i4
// Line 82:		novo->conteudo = valor;

	ldloc	'novo/0'
	ldc.i4	4
	add
	ldarg	'valor'
	stind.i4
// Line 83:	

// Line 84:		if (lst->listanoh == NULL)

	ldarg	'lst'
	ldc.i4	8
	add
	ldind.u4
	ldc.i4	0
	bne.un	'L_48'
// Line 85:		{

// Line 86:			novo->index = lst->indexcounter++;

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
// Line 87:			lst->listanoh = lst->head = lst->tail = novo;

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
// Line 88:			lst->tamanho++;

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
// Line 89:		}

// Line 90:		else

// Line 91:		{

// Line 92:			noh* tmp = lst->tail;

	ldloca	'tmp/1'
	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	stind.i4
// Line 93:			novo->index = lst->indexcounter++;

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
// Line 94:			lst->tail->proximo = novo;

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	8
	add
	ldloc	'novo/0'
	stind.i4
// Line 95:			lst->tail = novo;		

	ldarg	'lst'
	ldc.i4	16
	add
	ldloc	'novo/0'
	stind.i4
// Line 96:			lst->tail->anterior = tmp;

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	12
	add
	ldloc	'tmp/1'
	stind.i4
// Line 97:			lst->tamanho++;

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
// Line 98:		}

// Line 99:	}

L_46:
	ret

}
 .method public hidebysig static void 'll_inseririnicio'(void* 'lst' , int32 'valor' ) cil managed
{
// Line 101:	void ll_inseririnicio(lista* lst, int valor)

// Line 102:	{

	.locals
	(
		[0] void* 'novo/0'
	)
	.maxstack	4
L_59:
// Line 103:		noh* novo = crianoh();

	ldloca	'novo/0'
	call	void* 'crianoh'()
	stind.i4
// Line 104:		novo->conteudo = valor;

	ldloc	'novo/0'
	ldc.i4	4
	add
	ldarg	'valor'
	stind.i4
// Line 105:	

// Line 106:		if (lst->listanoh == NULL)

	ldarg	'lst'
	ldc.i4	8
	add
	ldind.u4
	ldc.i4	0
	bne.un	'L_62'
// Line 107:		{

// Line 108:			novo->index = lst->indexcounter++;

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
// Line 109:			lst->listanoh = lst->head = lst->tail = novo;

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
// Line 110:			lst->tamanho++;

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
// Line 111:		}

// Line 112:		else

// Line 113:		{

// Line 114:			novo->index = lst->indexcounter++;

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
// Line 115:			novo->proximo = lst->head;

	ldloc	'novo/0'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 116:			lst->head->anterior = novo;

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	12
	add
	ldloc	'novo/0'
	stind.i4
// Line 117:			lst->head = novo;

	ldarg	'lst'
	ldc.i4	12
	add
	ldloc	'novo/0'
	stind.i4
// Line 118:			lst->listanoh = lst->head;

	ldarg	'lst'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 119:			lst->tamanho++;

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
// Line 120:		}

// Line 121:	}

L_60:
	ret

}
 .method public hidebysig static void 'll_removernoh'(void* 'lst' , int32 'index' ) cil managed
{
// Line 123:	void ll_removernoh(lista *lst, int index)

// Line 124:	{

	.locals
	(
		[0] void* 'aux/0',
		[1] void* 'ant/1'
	)
	.maxstack	3
L_73:
// Line 125:		noh* aux = NULL;

	ldloca	'aux/0'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 126:		noh* ant = NULL;

	ldloca	'ant/1'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 127:	

// Line 128:		if (lst->tamanho == 0)

	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
	ldc.i4	0
	beq	'L_74'
// Line 129:			return;

L_76:
// Line 130:	    

// Line 131:	  aux = lst->head;

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stloc	'aux/0'
	br	'L_79'
L_77:
// Line 134:		{

// Line 135:			if (aux->index == index)

	ldloc	'aux/0'
	ldind.i4
	ldarg	'index'
	bne.un	'L_81'
// Line 136:			{

// Line 137:				if (aux == lst->head)

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldloc	'aux/0'
	bne.un	'L_83'
// Line 138:				{

// Line 139:					lst->head = lst->head->proximo;

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
// Line 140:					lst->head->anterior = NULL;

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	12
	add
	ldc.i4	0
	stind.i4
// Line 141:					lst->listanoh = lst->head;

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
// Line 142:				}

// Line 143:				else if (aux == lst->tail)

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldloc	'aux/0'
	bne.un	'L_87'
// Line 144:				{

// Line 145:					ant->proximo = NULL;

	ldloc	'ant/1'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 146:					lst->tail = ant;

	ldarg	'lst'
	ldc.i4	16
	add
	ldloc	'ant/1'
	stind.i4
	br	'L_90'
L_87:
// Line 147:				}

// Line 148:				else

// Line 149:				{

// Line 150:					aux->proximo->anterior = ant;

	ldloc	'aux/0'
	ldc.i4	8
	add
	ldind.u4
	ldc.i4	12
	add
	ldloc	'ant/1'
	stind.i4
// Line 151:					ant->proximo = aux->proximo;

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
// Line 152:				}

// Line 153:	

// Line 154:				free(aux);

	ldloc	'aux/0'
	call	void 'free'(void*)
// Line 155:				lst->tamanho--;

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
// Line 156:				break;

	br	'L_78'
L_81:
// Line 157:			}

// Line 158:			ant = aux;

	ldloc	'aux/0'
	stloc	'ant/1'
// Line 159:			aux = aux->proximo;

	ldloc	'aux/0'
	ldc.i4	8
	add
	ldind.u4
	stloc	'aux/0'
L_79:
// Line 132:	

// Line 133:		while (aux != NULL)

	ldloc	'aux/0'
	ldc.i4	0
	bne.un	'L_77'
L_78:
// Line 160:		}

// Line 161:	}

L_74:
	ret

}
 .method public hidebysig static int32 'll_removertail'(void* 'lst' ) cil managed
{
// Line 163:	int ll_removertail(lista *lst)

// Line 164:	{

	.locals
	(
		[0] int32 'valor/0',
		[1] void* 'ant/1'
	)
	.maxstack	4
L_100:
// Line 165:		int valor = 0;

	ldloca	'valor/0'
	ldc.i4	0
	stind.i4
// Line 166:		valor = lst->tail->conteudo;

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	4
	add
	ldind.i4
	stloc	'valor/0'
// Line 167:	

// Line 168:		if (lst->tail->anterior != NULL) 

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	0
	beq	'L_103'
// Line 169:		{

// Line 170:			noh* ant = lst->tail->anterior;

	ldloca	'ant/1'
	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 171:			ant->proximo = NULL;

	ldloc	'ant/1'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 172:			lst->tail = ant;

	ldarg	'lst'
	ldc.i4	16
	add
	ldloc	'ant/1'
	stind.i4
	br	'L_106'
L_103:
// Line 173:		}

// Line 174:		else 

// Line 175:			lst->listanoh = lst->head = lst->tail = NULL;

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
// Line 176:	

// Line 177:		lst->tamanho--;

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
// Line 178:		return valor;

	ldloc	'valor/0'
// Line 179:	}

L_101:
	ret

}
 .method public hidebysig static int32 'll_removerhead'(void* 'lst' ) cil managed
{
// Line 181:	int ll_removerhead(lista *lst)

// Line 182:	{

	.locals
	(
		[0] int32 'valor/0'
	)
	.maxstack	3
L_112:
// Line 183:		int valor = lst->head->conteudo;

	ldloca	'valor/0'
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	4
	add
	ldind.i4
	stind.i4
// Line 184:		if (lst->head->proximo != NULL)

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	ldc.i4	8
	add
	ldind.u4
	ldc.i4	0
	beq	'L_115'
// Line 185:		{

// Line 186:			lst->head = lst->head->proximo;

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
// Line 187:			lst->head->anterior = NULL;

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
// Line 188:		}

// Line 189:		else

// Line 190:			lst->head = lst->tail  = NULL;

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
// Line 191:		

// Line 192:		lst->listanoh = lst->head;

	ldarg	'lst'
	ldc.i4	8
	add
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 193:		lst->tamanho--;

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
// Line 194:		return valor;

	ldloc	'valor/0'
// Line 195:	}

L_113:
	ret

}
 .method public hidebysig static void 'll_removertudo'(void* 'lst' ) cil managed
{
// Line 197:	void ll_removertudo(lista *lst)

// Line 198:	{

	.maxstack	2
L_124:
// Line 199:		free(lst->tail);

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
	call	void 'free'(void*)
// Line 200:		free(lst->head);

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	call	void 'free'(void*)
// Line 201:	

// Line 202:		lst->indexcounter = 0;

	ldarg	'lst'
	ldc.i4	0
	stind.i4
// Line 203:		lst->tamanho = 0;

	ldarg	'lst'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
// Line 204:		lst->listanoh = NULL;

	ldarg	'lst'
	ldc.i4	8
	add
	ldc.i4	0
	stind.i4
// Line 205:		lst->head = NULL;

	ldarg	'lst'
	ldc.i4	12
	add
	ldc.i4	0
	stind.i4
// Line 206:		lst->tail = NULL;

	ldarg	'lst'
	ldc.i4	16
	add
	ldc.i4	0
	stind.i4
// Line 207:	}

L_125:
	ret

}
 .method public hidebysig static void* 'll_buscanoh'(void* 'lst' , int32 'index' ) cil managed
{
// Line 209:	noh* ll_buscanoh(lista *lst, int index)

// Line 210:	{

	.locals
	(
		[0] void* 'aux/0'
	)
	.maxstack	3
L_132:
// Line 211:		noh* aux = lst->head;

	ldloca	'aux/0'
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
	br	'L_137'
L_135:
// Line 213:		{

// Line 214:			if (aux->index == index)

	ldloc	'aux/0'
	ldind.i4
	ldarg	'index'
	bne.un	'L_139'
// Line 215:				return aux;

	ldloc	'aux/0'
	br	'L_133'
L_139:
// Line 216:			aux = aux->proximo;

	ldloc	'aux/0'
	ldc.i4	8
	add
	ldind.u4
	stloc	'aux/0'
L_137:
// Line 212:		while (aux != NULL)

	ldloc	'aux/0'
	ldc.i4	0
	bne.un	'L_135'
L_136:
// Line 217:		}

// Line 218:		return NULL;

	ldc.i4	0
	conv.u4
// Line 219:	}

L_133:
	ret

}
 .method public hidebysig static void* 'll_head'(void* 'lst' ) cil managed
{
// Line 221:	noh* ll_head(lista *lst)

// Line 222:	{

	.maxstack	2
L_146:
// Line 223:		return lst->head;

	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
// Line 224:	}

L_147:
	ret

}
 .method public hidebysig static void* 'll_tail'(void* 'lst' ) cil managed
{
// Line 226:	noh* ll_tail(lista *lst)

// Line 227:	{

	.maxstack	2
L_154:
// Line 228:		return lst->tail;

	ldarg	'lst'
	ldc.i4	16
	add
	ldind.u4
// Line 229:	}

L_155:
	ret

}
 .method public hidebysig static void 'll_reindexar'(void* 'lst' ) cil managed
{
// Line 231:	void ll_reindexar(lista *lst)

// Line 232:	{

	.locals
	(
		[0] void* 'aux/0',
		[1] int32 'i/1'
	)
	.maxstack	3
L_162:
// Line 233:		noh* aux = lst->head;

	ldloca	'aux/0'
	ldarg	'lst'
	ldc.i4	12
	add
	ldind.u4
	stind.i4
// Line 234:		int i = 0;

	ldloca	'i/1'
	ldc.i4	0
	stind.i4
	br	'L_166'
L_165:
// Line 236:		{

// Line 237:			aux->index = i;

	ldloc	'aux/0'
	ldloc	'i/1'
	stind.i4
// Line 238:			aux = aux->proximo;

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
// Line 235:		for (; aux != NULL;i++)

L_166:
	ldloc	'aux/0'
	ldc.i4	0
	bne.un	'L_165'
L_167:
// Line 239:		}

// Line 240:		lst->indexcounter = i;

	ldarg	'lst'
	ldloc	'i/1'
	stind.i4
// Line 241:	}

L_163:
	ret

}
 .method public hidebysig static int32 'll_tamanho'(void* 'lst' ) cil managed
{
// Line 243:	int ll_tamanho(lista *lst)

// Line 244:	{

	.maxstack	2
L_176:
// Line 245:		return lst->tamanho;

	ldarg	'lst'
	ldc.i4	4
	add
	ldind.i4
// Line 246:	}

L_177:
	ret

}
 .method public hidebysig static void 'll_liberalista'(void* 'lst' ) cil managed
{
// Line 248:	void ll_liberalista(lista* lst)

// Line 249:	{

	.maxstack	1
L_184:
// Line 250:		free(lst);

	ldarg	'lst'
	call	void 'free'(void*)
// Line 251:	}

L_185:
	ret

}
 .method public hidebysig static void* 'inicializapilha'(int32 'tamanho' ) cil managed
{
// Line 254:	pilha* inicializapilha(int tamanho)

// Line 255:	{

	.locals
	(
		[0] void* 'tmp/0'
	)
	.maxstack	2
L_192:
// Line 256:		pilha* tmp = (pilha*)malloc(sizeof(pilha));

	ldloca	'tmp/0'
	ldc.i4	8
	conv.u4
	call	void* 'malloc'(uint32)
	stind.i4
// Line 257:		tmp->tamanho = tamanho;

	ldloc	'tmp/0'
	ldarg	'tamanho'
	stind.i4
// Line 258:		tmp->lst = ll_inicializalista();

	ldloc	'tmp/0'
	ldc.i4	4
	add
	call	void* 'll_inicializalista'()
	stind.i4
// Line 259:		return tmp;

	ldloc	'tmp/0'
// Line 260:	}

L_193:
	ret

}
 .method public hidebysig static void 'pl_push'(void* 'pl' , int32 'elemento' , void* 'sucesso' ) cil managed
{
// Line 262:	void pl_push(pilha* pl, int elemento, bool* sucesso)

// Line 263:	{

	.maxstack	2
L_200:
// Line 264:		if (pl_pilhacheia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhacheia'(void*)
	ldc.i4	0
	beq	'L_203'
// Line 265:		{

// Line 266:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 267:			return;

	br	'L_201'
L_203:
// Line 268:		}

// Line 269:	

// Line 270:		ll_inserirfinal(pl->lst, elemento);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	ldarg	'elemento'
	call	void 'll_inserirfinal'(void*, int32)
// Line 271:		*sucesso = true;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
// Line 272:	}

L_201:
	ret

}
 .method public hidebysig static int32 'pl_pop'(void* 'pl' , void* 'sucesso' ) cil managed
{
// Line 274:	int pl_pop(pilha* pl, bool* sucesso)

// Line 275:	{

	.locals
	(
		[0] int32 'v/0'
	)
	.maxstack	3
L_211:
// Line 276:	  int v;

// Line 277:		if (pl_pilhavazia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhavazia'(void*)
	ldc.i4	0
	beq	'L_214'
// Line 278:		{

// Line 279:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 280:			return -1;

	ldc.i4	-1
	br	'L_212'
L_214:
// Line 281:		}

// Line 282:	

// Line 283:		v = ll_removertail(pl->lst);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	int32 'll_removertail'(void*)
	stloc	'v/0'
// Line 284:		*sucesso = true;

	ldarg	'sucesso'
	ldc.i4	1
	stind.i4
// Line 285:		return v;

	ldloc	'v/0'
// Line 286:	}

L_212:
	ret

}
 .method public hidebysig static int32 'pl_topo'(void* 'pl' , void* 'sucesso' ) cil managed
{
// Line 288:	int pl_topo(pilha *pl, bool* sucesso)

// Line 289:	{

	.maxstack	3
L_222:
// Line 290:		if (pl_pilhavazia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhavazia'(void*)
	ldc.i4	0
	beq	'L_225'
// Line 291:		{

// Line 292:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 293:			return -1;

	ldc.i4	-1
	br	'L_223'
L_225:
// Line 294:		}

// Line 295:		return ll_tail(pl->lst)->conteudo;

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	void* 'll_tail'(void*)
	ldc.i4	4
	add
	ldind.i4
// Line 296:	}

L_223:
	ret

}
 .method public hidebysig static int32 'pl_base'(void* 'pl' , void* 'sucesso' ) cil managed
{
// Line 298:	int pl_base(pilha* pl, bool *sucesso)

// Line 299:	{

	.maxstack	3
L_233:
// Line 300:		if (pl_pilhavazia(pl))

	ldarg	'pl'
	call	int32 'pl_pilhavazia'(void*)
	ldc.i4	0
	beq	'L_236'
// Line 301:		{

// Line 302:			*sucesso = false;

	ldarg	'sucesso'
	ldc.i4	0
	stind.i4
// Line 303:			return -1;

	ldc.i4	-1
	br	'L_234'
L_236:
// Line 304:		}

// Line 305:		return ll_head(pl->lst)->conteudo;

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	void* 'll_head'(void*)
	ldc.i4	4
	add
	ldind.i4
// Line 306:	}

L_234:
	ret

}
 .method public hidebysig static int32 'pl_pilhacheia'(void* 'pl' ) cil managed
{
// Line 308:	bool pl_pilhacheia(pilha* pl)

// Line 309:	{

	.maxstack	3
L_244:
// Line 310:		return ll_tamanho(pl->lst) >= pl->tamanho;

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
// Line 311:	}

L_245:
	ret

}
 .method public hidebysig static int32 'pl_pilhavazia'(void* 'pl' ) cil managed
{
// Line 313:	bool pl_pilhavazia(pilha* pl)

// Line 314:	{

	.maxstack	2
L_252:
// Line 315:		return ll_tamanho(pl->lst) == 0;

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	int32 'll_tamanho'(void*)
	ldc.i4	0
	ceq
	conv.i4
// Line 316:	}

L_253:
	ret

}
 .method public hidebysig static int32 'pl_tamanho'(void* 'pl' ) cil managed
{
// Line 318:	int pl_tamanho(pilha* pl)

// Line 319:	{

	.maxstack	2
L_260:
// Line 320:		return ll_tamanho(pl->lst);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	int32 'll_tamanho'(void*)
// Line 321:	}

L_261:
	ret

}
 .method public hidebysig static void 'pl_liberapilha'(void* 'pl' ) cil managed
{
// Line 323:	void pl_liberapilha(pilha* pl)

// Line 324:	{

	.maxstack	2
L_268:
// Line 325:		ll_liberalista(pl->lst);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	void 'll_liberalista'(void*)
// Line 326:		free(pl);

	ldarg	'pl'
	call	void 'free'(void*)
// Line 327:	}

L_269:
	ret

}
 .method public hidebysig static void 'pl_esvaziarpilha'(void* 'pl' ) cil managed
{
// Line 329:	void pl_esvaziarpilha(pilha *pl)

// Line 330:	{

	.maxstack	2
L_276:
// Line 331:		ll_removertudo(pl->lst);

	ldarg	'pl'
	ldc.i4	4
	add
	ldind.u4
	call	void 'll_removertudo'(void*)
// Line 332:		pl->tamanho = 0;

	ldarg	'pl'
	ldc.i4	0
	stind.i4
// Line 333:	}

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
