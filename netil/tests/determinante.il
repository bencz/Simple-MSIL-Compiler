//File determinante.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 4:	int main()

// Line 5:	{

	.locals
	(
		[0] int32 'm/0',
		[1] void* 'a/1',
		[2] int32 'i/2',
		[3] int32 'j/3',
		[4] int32 'k/4',
		[5] float64 'factor/5',
		[6] float64 'temp/6',
		[7] int32 'count/7'
	)
	.maxstack	5
L_11:
// Line 6:	    int m = 0;

	ldloca	'm/0'
	ldc.i4	0
	stind.i4
// Line 7:	    double **a = 0;    

	ldloca	'a/1'
	ldc.i4	0
	conv.u4
	stind.i4
// Line 8:	    int i = 0, j = 0, k = 0;	

	ldloca	'i/2'
	ldc.i4	0
	stind.i4
	ldloca	'j/3'
	ldc.i4	0
	stind.i4
	ldloca	'k/4'
	ldc.i4	0
	stind.i4
// Line 9:	    double factor = 0;	

	ldloca	'factor/5'
	ldc.r8	0.0
	stind.r8
// Line 10:	    double temp = 0;	

	ldloca	'temp/6'
	ldc.r8	0.0
	stind.r8
// Line 11:	    int count = 0;	

	ldloca	'count/7'
	ldc.i4	0
	stind.i4
// Line 12:	

// Line 13:	    printf("dimensao => ");

	ldsflda	valuetype 'int8[]' 'L_1'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 14:	    scanf("%d", &m);

	ldsflda	valuetype 'int8[]' 'L_2'

	ldloca	'm/0'
	call	vararg int32 'scanf'(void*, ..., void*)
	pop
// Line 15:	

// Line 16:	    a = (double **) calloc(m, sizeof(double *));

	ldloc	'm/0'
	conv.u4
	ldc.i4	4
	conv.u4
	call	void* 'calloc'(uint32, uint32)
	stloc	'a/1'
	ldc.i4	0
	stloc	'i/2'
	br	'L_15'
L_14:
// Line 18:	    {

// Line 19:	        a[i] = (double *) calloc(m, sizeof(double));

	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldloc	'm/0'
	conv.u4
	ldc.i4	8
	conv.u4
	call	void* 'calloc'(uint32, uint32)
	stind.i4
L_17:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 17:	    for(i = 0; i < m; i++)

L_15:
	ldloc	'i/2'
	ldloc	'm/0'
	blt	'L_14'
L_16:
// Line 20:	    }

// Line 21:	

// Line 22:	    printf("\n\nEntre com o conteudo da matriz\n\n");

	ldsflda	valuetype 'int8[]' 'L_3'

	call	vararg int32 'printf'(void*, ...)
	pop
	ldc.i4	0
	stloc	'i/2'
	br	'L_21'
L_20:
// Line 24:	    {

	ldc.i4	0
	stloc	'j/3'
	br	'L_26'
L_25:
// Line 26:	        {

// Line 27:	            printf("A[%d ; %d] => ", i+1, j+1);

	ldsflda	valuetype 'int8[]' 'L_4'

	ldloc	'i/2'
	ldc.i4	1
	add
	ldloc	'j/3'
	ldc.i4	1
	add
	call	vararg int32 'printf'(void*, ..., int32, int32)
	pop
// Line 28:	            scanf("%lf", &a[i][j]);

	ldsflda	valuetype 'int8[]' 'L_5'

	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'j/3'
	ldc.i4	3
	shl
	add
	call	vararg int32 'scanf'(void*, ..., void*)
	pop
L_28:
	ldloc	'j/3'
	ldc.i4	1
	add
	stloc	'j/3'
// Line 25:	        for(j = 0; j < m; j++)

L_26:
	ldloc	'j/3'
	ldloc	'm/0'
	blt	'L_25'
L_27:
// Line 29:	        }

L_23:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 23:	    for(i = 0; i < m; i++)

L_21:
	ldloc	'i/2'
	ldloc	'm/0'
	blt	'L_20'
L_22:
// Line 30:	    }

// Line 31:	

// Line 32:	    

// Line 33:	    printf("\nMatriz digitada:\n");

	ldsflda	valuetype 'int8[]' 'L_6'

	call	vararg int32 'printf'(void*, ...)
	pop
	ldc.i4	0
	stloc	'i/2'
	br	'L_33'
L_32:
// Line 35:	    {

	ldc.i4	0
	stloc	'j/3'
	br	'L_38'
L_37:
// Line 37:	        {

// Line 38:	            printf("%8.3f ", a[i][j]);

	ldsflda	valuetype 'int8[]' 'L_7'

	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'j/3'
	ldc.i4	3
	shl
	add
	ldind.r8
	call	vararg int32 'printf'(void*, ..., float64)
	pop
L_40:
	ldloc	'j/3'
	ldc.i4	1
	add
	stloc	'j/3'
// Line 36:	        for(j = 0; j < m; j++)

L_38:
	ldloc	'j/3'
	ldloc	'm/0'
	blt	'L_37'
L_39:
// Line 39:	        }

// Line 40:	        printf("\n");

	ldsflda	valuetype 'int8[]' 'L_8'

	call	vararg int32 'printf'(void*, ...)
	pop
L_35:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 34:	    for(i = 0; i < m; i++)

L_33:
	ldloc	'i/2'
	ldloc	'm/0'
	blt	'L_32'
L_34:
// Line 41:	    }

// Line 42:	

// Line 43:	    

	ldc.i4	0
	stloc	'i/2'
	br	'L_45'
L_44:
// Line 45:	    {

// Line 46:	        if(a[i][i] == 0)

	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'i/2'
	ldc.i4	3
	shl
	add
	ldind.r8
	ldc.r8	0.0
	bne.un	'L_49'
// Line 47:	        {

	ldloc	'i/2'
	stloc	'k/4'
	br	'L_52'
L_51:
// Line 49:	            {

// Line 50:	                if(a[k][i] != 0)

	ldloc	'k/4'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'i/2'
	ldc.i4	3
	shl
	add
	ldind.r8
	ldc.r8	0.0
	beq	'L_56'
// Line 51:	                {

	ldc.i4	0
	stloc	'j/3'
	br	'L_59'
L_58:
// Line 53:	                    {

// Line 54:	                        temp = a[i][j];

	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'j/3'
	ldc.i4	3
	shl
	add
	ldind.r8
	stloc	'temp/6'
// Line 55:	                        a[i][j] = a[k][j];

	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'j/3'
	ldc.i4	3
	shl
	add
	ldloc	'k/4'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'j/3'
	ldc.i4	3
	shl
	add
	ldind.r8
	stind.r8
// Line 56:	                        a[k][j] = temp;

	ldloc	'k/4'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'j/3'
	ldc.i4	3
	shl
	add
	ldloc	'temp/6'
	stind.r8
L_61:
	ldloc	'j/3'
	ldc.i4	1
	add
	stloc	'j/3'
// Line 52:	                    for(j = 0; j < m; j++)

L_59:
	ldloc	'j/3'
	ldloc	'm/0'
	blt	'L_58'
L_60:
// Line 57:	                    }

// Line 58:	                    k = m;

	ldloc	'm/0'
	stloc	'k/4'
L_56:
// Line 59:	                }

L_54:
	ldloc	'k/4'
	ldc.i4	1
	add
	stloc	'k/4'
// Line 48:	            for(k = i; k < m; k++)

L_52:
	ldloc	'k/4'
	ldloc	'm/0'
	blt	'L_51'
L_53:
// Line 60:	            }

// Line 61:	            count++;

	ldloc	'count/7'
	ldc.i4	1
	add
	stloc	'count/7'
L_49:
// Line 62:	        }

// Line 63:	

// Line 64:	        if(a[i][i] != 0)

	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'i/2'
	ldc.i4	3
	shl
	add
	ldind.r8
	ldc.r8	0.0
	beq	'L_67'
// Line 65:	        {

	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'k/4'
	br	'L_70'
L_69:
// Line 67:	            {

// Line 68:	                factor = -1.0 * a[k][i] /  a[i][i];

	ldloc	'k/4'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'i/2'
	ldc.i4	3
	shl
	add
	ldind.r8
	neg
	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'i/2'
	ldc.i4	3
	shl
	add
	ldind.r8
	div
	stloc	'factor/5'
	ldloc	'i/2'
	stloc	'j/3'
	br	'L_75'
L_74:
// Line 70:	                {

// Line 71:	                    a[k][j] = a[k][j] + (factor * a[i][j]);

	ldloc	'k/4'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'j/3'
	ldc.i4	3
	shl
	add
	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'j/3'
	ldc.i4	3
	shl
	add
	ldind.r8
	ldloc	'factor/5'
	mul
	ldloc	'k/4'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'j/3'
	ldc.i4	3
	shl
	add
	ldind.r8
	add
	stind.r8
L_77:
	ldloc	'j/3'
	ldc.i4	1
	add
	stloc	'j/3'
// Line 69:	                for(j = i; j < m; j++)

L_75:
	ldloc	'j/3'
	ldloc	'm/0'
	blt	'L_74'
L_76:
// Line 72:	                }

L_72:
	ldloc	'k/4'
	ldc.i4	1
	add
	stloc	'k/4'
// Line 66:	            for(k = i + 1; k < m; k++)

L_70:
	ldloc	'k/4'
	ldloc	'm/0'
	blt	'L_69'
L_71:
// Line 73:	            }

L_67:
// Line 74:	        }

L_47:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 44:	    for(i = 0; i < m - 1; i++)

L_45:
	ldloc	'i/2'
	ldloc	'm/0'
	ldc.i4	1
	sub
	blt	'L_44'
L_46:
// Line 75:	    }

// Line 76:	

// Line 77:	    temp = 1.0;

	ldc.r8	1.0000000000000000000000
	stloc	'temp/6'
// Line 78:	    

	ldc.i4	0
	stloc	'i/2'
	br	'L_84'
L_83:
// Line 80:	        temp *= a[i][i];

	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloc	'a/1'
	add
	ldind.u4
	ldloc	'i/2'
	ldc.i4	3
	shl
	add
	ldind.r8
	ldloc	'temp/6'
	mul
	stloc	'temp/6'
L_86:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 79:	    for(i = 0; i < m; i++)

L_84:
	ldloc	'i/2'
	ldloc	'm/0'
	blt	'L_83'
L_85:
// Line 81:	

// Line 82:	    printf("\nDeterminante:\n");

	ldsflda	valuetype 'int8[]' 'L_9'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 83:	    if(count % 2 == 0)

	ldloc	'count/7'
	ldc.i4	1
	and
	ldc.i4	0
	bne.un	'L_87'
// Line 84:	        printf("%8.3f \n", temp);

	ldsflda	valuetype 'int8[]' 'L_10'

	ldloc	'temp/6'
	call	vararg int32 'printf'(void*, ..., float64)
	pop
	br	'L_88'
L_87:
// Line 85:	    else

// Line 86:	        printf("%8.3f \n", -1.0 * temp);

	ldsflda	valuetype 'int8[]' 'L_10'

	ldloc	'temp/6'
	neg
	call	vararg int32 'printf'(void*, ..., float64)
	pop
L_88:
// Line 87:	

// Line 88:	    return 0;

	ldc.i4	0
// Line 89:	}
L_12:
	ret

}
 .field public static valuetype 'int8[]' 'L_10' at $L_10
.data $L_10 = bytearray (25 38 2e 33 66 20 a 0 
	
)
.field public static valuetype 'int8[]' 'L_9' at $L_9
.data $L_9 = bytearray (a 44 65 74 65 72 6d 69 
	6e 61 6e 74 65 3a a 0 
	
)
.field public static valuetype 'int8[]' 'L_8' at $L_8
.data $L_8 = bytearray (a 0 
)
.field public static valuetype 'int8[]' 'L_7' at $L_7
.data $L_7 = bytearray (25 38 2e 33 66 20 0 
)
.field public static valuetype 'int8[]' 'L_6' at $L_6
.data $L_6 = bytearray (a 4d 61 74 72 69 7a 20 
	64 69 67 69 74 61 64 61 
	3a a 0 
)
.field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (25 6c 66 0 
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (41 5b 25 64 20 3b 20 25 
	64 5d 20 3d 3e 20 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (a a 45 6e 74 72 65 20 
	63 6f 6d 20 6f 20 63 6f 
	6e 74 65 75 64 6f 20 64 
	61 20 6d 61 74 72 69 7a 
	a a 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (25 64 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (64 69 6d 65 6e 73 61 6f 
	20 3d 3e 20 0 
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
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'calloc'(uint32, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'scanf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
