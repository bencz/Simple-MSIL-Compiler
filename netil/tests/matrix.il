//File matrix.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 34:	int main()

// Line 35:	{

	.locals
	(
		[0] valuetype 'int32[3][2]' 'matrizA/0',
		[1] valuetype 'int32[2][3]' 'matrizB/1',
		[2] valuetype 'int32[3][3]' 'matrizC/2'
	)
	.maxstack	7
L_3:
// Line 36:	  

// Line 37:	  int matrizA[3][2] = {{1,4},{2,5},{3,6}};

	ldloca	'matrizA/0'
	ldc.i4	0
	ldc.i4	24
	initblk
	ldloca	'matrizA/0'
	conv.u4
	ldc.i4	1
	stind.i4
	ldloca	'matrizA/0'
	ldc.i4	4
	add
	ldc.i4	4
	stind.i4
	ldloca	'matrizA/0'
	ldc.i4	8
	add
	ldc.i4	2
	stind.i4
	ldloca	'matrizA/0'
	ldc.i4	12
	add
	ldc.i4	5
	stind.i4
	ldloca	'matrizA/0'
	ldc.i4	16
	add
	ldc.i4	3
	stind.i4
	ldloca	'matrizA/0'
	ldc.i4	20
	add
	ldc.i4	6
	stind.i4
// Line 38:	  int matrizB[2][3] = {{7,8,9},{10,11,12}};

	ldloca	'matrizB/1'
	ldc.i4	0
	ldc.i4	24
	initblk
	ldloca	'matrizB/1'
	conv.u4
	ldc.i4	7
	stind.i4
	ldloca	'matrizB/1'
	ldc.i4	4
	add
	ldc.i4	8
	stind.i4
	ldloca	'matrizB/1'
	ldc.i4	8
	add
	ldc.i4	9
	stind.i4
	ldloca	'matrizB/1'
	ldc.i4	12
	add
	ldc.i4	10
	stind.i4
	ldloca	'matrizB/1'
	ldc.i4	16
	add
	ldc.i4	11
	stind.i4
	ldloca	'matrizB/1'
	ldc.i4	20
	add
	ldc.i4	12
	stind.i4
// Line 39:	  int matrizC[3][3];

// Line 40:	  

// Line 41:	  zeraMatriz(matrizC,3,3);

	ldloca	'matrizC/2'
	ldc.i4	3
	ldc.i4	3
	call	void 'zeraMatriz'(void*, int32, int32)
// Line 42:	  produtoMatriz(matrizA, matrizB, matrizC, 3, 2, 2, 3); 

	ldloca	'matrizA/0'
	ldloca	'matrizB/1'
	ldloca	'matrizC/2'
	ldc.i4	3
	ldc.i4	2
	ldc.i4	2
	ldc.i4	3
	call	void 'produtoMatriz'(void*, void*, void*, int32, int32, int32, int32)
// Line 43:	  printMatriz(matrizC, 3, 3);

	ldloca	'matrizC/2'
	ldc.i4	3
	ldc.i4	3
	call	void 'printMatriz'(void*, int32, int32)
// Line 44:	

// Line 45:	  return 0;

	ldc.i4	0
// Line 46:	}

L_4:
	ret

}
 .method public hidebysig static void 'produtoMatriz'(void* 'A' , void* 'B' , void* 'C' , int32 'nLA' , int32 'nCA' , int32 'nLB' , int32 'nCB' ) cil managed
{
// Line 3:	void produtoMatriz(int A[][2], int B[][3], int C[][3],

// Line 4:	                   int nLA, int nCA, 

// Line 5:	                   int nLB, int nCB)

// Line 6:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'j/1',
		[2] int32 'k/2'
	)
	.maxstack	5
L_11:
// Line 7:	  int i, j, k;

// Line 8:	  

	ldc.i4	0
	stloc	'i/0'
	br	'L_15'
L_14:
	ldc.i4	0
	stloc	'j/1'
	br	'L_19'
L_18:
	ldc.i4	0
	stloc	'k/2'
	br	'L_23'
L_22:
// Line 12:	        C[i][j] += A[i][k] * B[k][j];

	ldloc	'i/0'
	ldc.i4	12
	mul
	ldarg	'C'
	add
	ldloc	'j/1'
	ldc.i4	2
	shl
	add
	ldloc	'i/0'
	ldc.i4	3
	shl
	ldarg	'A'
	add
	ldloc	'k/2'
	ldc.i4	2
	shl
	add
	ldind.i4
	ldloc	'k/2'
	ldc.i4	12
	mul
	ldarg	'B'
	add
	ldloc	'j/1'
	ldc.i4	2
	shl
	add
	ldind.i4
	mul
	ldloc	'i/0'
	ldc.i4	12
	mul
	ldarg	'C'
	add
	ldloc	'j/1'
	ldc.i4	2
	shl
	add
	ldind.i4
	add
	stind.i4
L_25:
	ldloc	'k/2'
	ldc.i4	1
	add
	stloc	'k/2'
// Line 11:	      for(k=0;k<nLB;k++)

L_23:
	ldloc	'k/2'
	ldarg	'nLB'
	blt	'L_22'
L_24:
L_21:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
// Line 10:	    for(j=0;j<nCB;j++)

L_19:
	ldloc	'j/1'
	ldarg	'nCB'
	blt	'L_18'
L_20:
L_17:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 9:	  for(i=0;i<nLA;i++)

L_15:
	ldloc	'i/0'
	ldarg	'nLA'
	blt	'L_14'
L_16:
// Line 13:	}

L_12:
	ret

}
 .method public hidebysig static void 'zeraMatriz'(void* 'matriz' , int32 'nL' , int32 'nC' ) cil managed
{
// Line 15:	void zeraMatriz(int matriz[][3], int nL, int nC)

// Line 16:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'j/1'
	)
	.maxstack	3
L_31:
// Line 17:	  int i, j;

	ldc.i4	0
	stloc	'i/0'
	br	'L_35'
L_34:
	ldc.i4	0
	stloc	'j/1'
	br	'L_39'
L_38:
// Line 20:	      matriz[i][j] = 0;

	ldloc	'i/0'
	ldc.i4	12
	mul
	ldarg	'matriz'
	add
	ldloc	'j/1'
	ldc.i4	2
	shl
	add
	ldc.i4	0
	stind.i4
L_41:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
// Line 19:	    for(j=0;j<nC;j++)

L_39:
	ldloc	'j/1'
	ldarg	'nC'
	blt	'L_38'
L_40:
L_37:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 18:	  for(i=0;i<nL;i++)

L_35:
	ldloc	'i/0'
	ldarg	'nL'
	blt	'L_34'
L_36:
// Line 21:	}

L_32:
	ret

}
 .method public hidebysig static void 'printMatriz'(void* 'matriz' , int32 'nL' , int32 'nC' ) cil managed
{
// Line 23:	void printMatriz(int matriz[][3], int nL, int nC)

// Line 24:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'j/1'
	)
	.maxstack	4
L_47:
// Line 25:	  int i, j;

	ldc.i4	0
	stloc	'i/0'
	br	'L_51'
L_50:
// Line 27:	  {

	ldc.i4	0
	stloc	'j/1'
	br	'L_56'
L_55:
// Line 29:	      printf("%d ", matriz[i][j]);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldloc	'i/0'
	ldc.i4	12
	mul
	ldarg	'matriz'
	add
	ldloc	'j/1'
	ldc.i4	2
	shl
	add
	ldind.i4
	call	vararg int32 'printf'(void*, ..., int32)
	pop
L_58:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
// Line 28:	    for(j=0;j<nC;j++)

L_56:
	ldloc	'j/1'
	ldarg	'nC'
	blt	'L_55'
L_57:
// Line 30:	    printf("\n");

	ldsflda	valuetype 'int8[]' 'L_2'

	call	vararg int32 'printf'(void*, ...)
	pop
L_53:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 26:	  for(i=0;i<nL;i++)

L_51:
	ldloc	'i/0'
	ldarg	'nL'
	blt	'L_50'
L_52:
// Line 31:	  }   

// Line 32:	}

L_48:
	ret

}
 .field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (a 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (25 64 20 0 
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
.class private value explicit ansi sealed 'int32[3][3]' {.pack 1 .size 36}
.class private value explicit ansi sealed 'int32[2][3]' {.pack 1 .size 24}
.class private value explicit ansi sealed 'int32[3][2]' {.pack 1 .size 24}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
