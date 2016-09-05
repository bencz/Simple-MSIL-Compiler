//File base_conv.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 39:	int main()

// Line 40:	{

	.locals
	(
		[0] int32 'valor/0',
		[1] int32 'base/1'
	)
	.maxstack	3
L_6:
// Line 42:	  int base;

// Line 43:	  

// Line 44:	  do

// Line 45:	  {

L_9:
// Line 46:	    printf("Digite um valor para converter: ");

	ldsflda	valuetype 'int8[]' 'L_2'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 47:	    scanf("%d", &valor);

	ldsflda	valuetype 'int8[]' 'L_3'

	ldloca	'valor/0'
	call	vararg int32 'scanf'(void*, ..., void*)
	pop
L_11:
// Line 48:	  }while(valor < 0);

	ldloc	'valor/0'
	ldc.i4	0
	blt	'L_9'
L_10:
// Line 49:	  

// Line 50:	  do

// Line 51:	  {

L_14:
// Line 52:	    printf("Digite a base para qual você quer converter: ");

	ldsflda	valuetype 'int8[]' 'L_4'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 53:	    scanf("%d", &base);

	ldsflda	valuetype 'int8[]' 'L_3'

	ldloca	'base/1'
	call	vararg int32 'scanf'(void*, ..., void*)
	pop
L_16:
// Line 54:	  }while(base < 2 || base > 36);

	ldloc	'base/1'
	ldc.i4	2
	blt	'L_14'
	ldloc	'base/1'
	ldc.i4	36
	bgt	'L_14'
L_15:
// Line 55:	  

// Line 56:	  printf("%s\n", converterBase(valor, base));  

	ldsflda	valuetype 'int8[]' 'L_5'

	ldloc	'valor/0'
	ldloc	'base/1'
	call	void* 'converterBase'(int32, int32)
	call	vararg int32 'printf'(void*, ..., void*)
	pop
// Line 57:	  

// Line 58:	  return 0;

	ldc.i4	0
// Line 59:	}

L_7:
	ret

}
 .method public hidebysig static void 'strReverser'(void* 'p' ) cil managed
{
// Line 6:	void strReverser(char *p)

// Line 7:	{

	.locals
	(
		[0] void* 'q/0'
	)
	.maxstack	3
L_24:
// Line 8:	  char *q = p;

	ldloca	'q/0'
	ldarg	'p'
	stind.i4
	br	'L_29'
L_27:
// Line 10:	    ++q;

	ldloc	'q/0'
	ldc.i4	1
	add
	stloc	'q/0'
L_29:
// Line 9:	  while(q && *q) 

	ldloc	'q/0'
	ldc.i4	0
	beq	'L_36'
	ldloc	'q/0'
	ldind.i1
	ldc.i4	0
	bne.un	'L_27'
L_36:
L_28:
	ldloc	'q/0'
	ldc.i4	1
	sub
	stloc	'q/0'
	br	'L_31'
L_30:
// Line 12:	    XOR_SWAP(*p,*q);

	ldarg	'p'
	ldarg	'p'
	ldind.i1
	ldloc	'q/0'
	ldind.i1
	xor
	stind.i1
	ldloc	'q/0'
	ldloc	'q/0'
	ldind.i1
	ldarg	'p'
	ldind.i1
	xor
	stind.i1
	ldarg	'p'
	ldarg	'p'
	ldind.i1
	ldloc	'q/0'
	ldind.i1
	xor
	stind.i1
L_33:
	ldarg	'p'
	ldc.i4	1
	add
	starg	'p'
	ldloc	'q/0'
	ldc.i4	1
	sub
	stloc	'q/0'
// Line 11:	  for(--q; p < q; ++p, --q)

L_31:
	ldarg	'p'
	ldloc	'q/0'
	blt	'L_30'
L_32:
// Line 13:	}

L_25:
	ret

}
 .method public hidebysig static void* 'converterBase'(int32 'valorEmDec' , int32 'base' ) cil managed
{
// Line 15:	char *converterBase(int valorEmDec, int base)

// Line 16:	{

	.locals
	(
		[0] int8 'aux/0',
		[1] void* 'result/1',
		[2] int32 'i/2',
		[3] valuetype 'int8[37]' 'map/3'
	)
	.maxstack	4
L_40:
// Line 18:	  char *result;

// Line 19:	  int i=0;

	ldloca	'i/2'
	ldc.i4	0
	stind.i4
// Line 20:	  char map[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

	ldloca	'map/3'
	ldc.i4	0
	ldc.i4	37
	initblk
	ldloca	'map/3'
	conv.u4
	ldc.i4	48
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	1
	add
	ldc.i4	49
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	2
	add
	ldc.i4	50
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	3
	add
	ldc.i4	51
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	4
	add
	ldc.i4	52
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	5
	add
	ldc.i4	53
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	6
	add
	ldc.i4	54
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	7
	add
	ldc.i4	55
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	8
	add
	ldc.i4	56
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	9
	add
	ldc.i4	57
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	10
	add
	ldc.i4	65
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	11
	add
	ldc.i4	66
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	12
	add
	ldc.i4	67
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	13
	add
	ldc.i4	68
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	14
	add
	ldc.i4	69
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	15
	add
	ldc.i4	70
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	16
	add
	ldc.i4	71
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	17
	add
	ldc.i4	72
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	18
	add
	ldc.i4	73
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	19
	add
	ldc.i4	74
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	20
	add
	ldc.i4	75
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	21
	add
	ldc.i4	76
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	22
	add
	ldc.i4	77
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	23
	add
	ldc.i4	78
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	24
	add
	ldc.i4	79
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	25
	add
	ldc.i4	80
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	26
	add
	ldc.i4	81
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	27
	add
	ldc.i4	82
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	28
	add
	ldc.i4	83
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	29
	add
	ldc.i4	84
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	30
	add
	ldc.i4	85
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	31
	add
	ldc.i4	86
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	32
	add
	ldc.i4	87
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	33
	add
	ldc.i4	88
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	34
	add
	ldc.i4	89
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	35
	add
	ldc.i4	90
	conv.i1
	stind.i1
	ldloca	'map/3'
	ldc.i4	36
	add
	ldc.i4	0
	conv.i1
	stind.i1
// Line 21:	  

// Line 22:	  if(valorEmDec == 0)

	ldarg	'valorEmDec'
	ldc.i4	0
	bne.un	'L_43'
// Line 23:	    return "0";

	ldsflda	valuetype 'int8[]' 'L_1'

	br	'L_41'
L_43:
// Line 24:	  else

// Line 25:	    result = (char*)calloc(100, sizeof(char));

	ldc.i4	100
	conv.u4
	ldc.i4	1
	conv.u4
	call	void* 'calloc'(uint32, uint32)
	stloc	'result/1'
L_44:
	br	'L_47'
L_45:
// Line 28:	  {

// Line 29:	    result[i++] = map[valorEmDec % base];

	ldloc	'i/2'
	ldloc	'result/1'
	add
	ldarg	'valorEmDec'
	ldarg	'base'
	rem
	ldloca	'map/3'
	add
	ldind.i1
	stind.i1
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 30:	    valorEmDec /= base;

	ldarg	'valorEmDec'
	ldarg	'base'
	div
	starg	'valorEmDec'
L_47:
// Line 26:	  

// Line 27:	  while(valorEmDec > 0)

	ldarg	'valorEmDec'
	ldc.i4	0
	bgt	'L_45'
L_46:
// Line 31:	  }

// Line 32:	  

// Line 33:	  result[i++] = '\0';

	ldloc	'i/2'
	ldloc	'result/1'
	add
	ldc.i4	0
	stind.i1
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 34:	  strReverser(result);

	ldloc	'result/1'
	call	void 'strReverser'(void*)
// Line 35:	  

// Line 36:	  return result;

	ldloc	'result/1'
// Line 37:	}

L_41:
	ret

}
 .field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (25 73 a 0 
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (44 69 67 69 74 65 20 61 
	20 62 61 73 65 20 70 61 
	72 61 20 71 75 61 6c 20 
	76 6f 63 ea 20 71 75 65 
	72 20 63 6f 6e 76 65 72 
	74 65 72 3a 20 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (25 64 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (44 69 67 69 74 65 20 75 
	6d 20 76 61 6c 6f 72 20 
	70 61 72 61 20 63 6f 6e 
	76 65 72 74 65 72 3a 20 
	0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (30 0 
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
.class private value explicit ansi sealed 'int8[37]' {.pack 1 .size 37}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'calloc'(uint32, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'scanf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
