//File pi00.c
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 88:	int main() {

	.locals
	(
		[0] int32 'n/0',
		[1] int32 'k/1',
		[2] valuetype 'int32[10000]' 'data/2',
		[3] void* 'pai1/3',
		[4] void* 'pai2/4'
	)
	.maxstack	5
L_6:
// Line 92:	    string pai2; 

// Line 93:	    pai1 = "3.1415 9265 3589 7932 3846 2643 3832 7950 2884 1971 6939 9375 1058 2097 ";

	ldsflda	valuetype 'int8[]' 'L_1'

	stloc	'pai1/3'
// Line 94:	    pai2 = "4944 5923 0781 6406 2862 0899 8628 0348 2534 2117 0679 8214 8086 5132 8230 6647";

	ldsflda	valuetype 'int8[]' 'L_2'

	stloc	'pai2/4'
// Line 95:	

// Line 96:	    n = 1000;

	ldc.i4	1000
	stloc	'n/0'
// Line 97:	    printf("n=%d%c", n, 10);

	ldsflda	valuetype 'int8[]' 'L_3'

	ldc.i4	1000
	ldc.i4	10
	call	vararg int32 'printf'(void*, ..., int32, int32)
	pop
// Line 98:	

// Line 99:	    k = 0;

	ldc.i4	0
	stloc	'k/1'
	br	'L_11'
L_9:
// Line 101:	        data[k] = 0;

	ldloc	'k/1'
	ldc.i4	2
	shl
	ldloca	'data/2'
	add
	ldc.i4	0
	stind.i4
// Line 102:	        k = k + 1;

	ldloc	'k/1'
	ldc.i4	1
	add
	stloc	'k/1'
L_11:
// Line 100:	    while (k < 10000) {

	ldloc	'k/1'
	ldc.i4	10000
	blt	'L_9'
L_10:
// Line 103:	    }

// Line 104:	

// Line 105:	    pi(data, n);

	ldloca	'data/2'
	ldc.i4	1000
	call	int32 'pi'(void*, int32)
	pop
// Line 106:	    k = 0;

	ldc.i4	0
	stloc	'k/1'
	br	'L_16'
L_14:
// Line 108:	        printf("%04d ", data[k]);

	ldsflda	valuetype 'int8[]' 'L_4'

	ldloc	'k/1'
	ldc.i4	2
	shl
	ldloca	'data/2'
	add
	ldind.i4
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 109:	        k = k + 1;

	ldloc	'k/1'
	ldc.i4	1
	add
	stloc	'k/1'
L_16:
// Line 107:	    while (k < (n-1)/4 + 2) {

	ldloc	'k/1'
	ldc.i4	251
	blt	'L_14'
L_15:
// Line 110:	    }

// Line 111:	    printf("%c‰ð:%s%s%c", 10, pai1, pai2, 10);

	ldsflda	valuetype 'int8[]' 'L_5'

	ldc.i4	10
	ldloc	'pai1/3'
	ldloc	'pai2/4'
	ldc.i4	10
	call	vararg int32 'printf'(void*, ..., int32, void*, void*, int32)
	pop
// Line 112:	    return 0;

	ldc.i4	0
// Line 113:	} 

L_7:
	ret

}
 .method public hidebysig static int32 'series'(void* 'data' , int32 'keta' , int32 'maxItem' , int32 'bunsi' , int32 'bunbo' , int32 'plusMinus' ) cil managed
{
// Line 5:	int series(int data[], int keta, int maxItem, int bunsi, int bunbo, int plusMinus) {

	.locals
	(
		[0] int32 'bunbo2/0',
		[1] valuetype 'int32[260]' 'item/1',
		[2] valuetype 'int32[260]' 'itemDiv/2',
		[3] int32 'len/3',
		[4] int32 'i/4',
		[5] int32 'j/5',
		[6] int32 'k/6',
		[7] int32 'x/7'
	)
	.maxstack	4
L_24:
// Line 10:	    int  x;

// Line 11:	

// Line 12:	    len = (keta-1)/4 + 2 + 1;

	ldarg	'keta'
	ldc.i4	1
	sub
	ldc.i4	2
	shr.un
	ldc.i4	3
	add
	stloc	'len/3'
// Line 13:	    i = 0;

	ldc.i4	0
	stloc	'i/4'
	br	'L_29'
L_27:
// Line 15:	        item[i] = 0;

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'item/1'
	add
	ldc.i4	0
	stind.i4
// Line 16:	        i = i + 1;

	ldloc	'i/4'
	ldc.i4	1
	add
	stloc	'i/4'
L_29:
// Line 14:	    while (i < len) {

	ldloc	'i/4'
	ldloc	'len/3'
	blt	'L_27'
L_28:
// Line 17:	    }

// Line 18:	

// Line 19:	    item[0] = bunsi * bunbo * 4;

	ldloca	'item/1'
	ldarg	'bunsi'
	ldarg	'bunbo'
	mul
	ldc.i4	2
	shl
	stind.i4
// Line 20:	    bunbo2  = bunbo * bunbo;

	ldarg	'bunbo'
	ldarg	'bunbo'
	mul
	stloc	'bunbo2/0'
// Line 21:	

// Line 22:	    j = 1;

	ldc.i4	1
	stloc	'j/5'
	br	'L_34'
L_32:
// Line 24:	        maxItem = maxItem - 1;

	ldarg	'maxItem'
	ldc.i4	1
	sub
	starg	'maxItem'
// Line 25:	        x = 0;

	ldc.i4	0
	stloc	'x/7'
// Line 26:	        i = 0;

	ldc.i4	0
	stloc	'i/4'
	br	'L_38'
L_36:
// Line 28:	            x = x * 10000 + item[i];

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'item/1'
	add
	ldind.i4
	ldloc	'x/7'
	ldc.i4	10000
	mul
	add
	stloc	'x/7'
// Line 29:	            item[i] = x / bunbo2;

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'item/1'
	add
	ldloc	'x/7'
	ldloc	'bunbo2/0'
	div
	stind.i4
// Line 30:	            x = x % bunbo2;

	ldloc	'x/7'
	ldloc	'bunbo2/0'
	rem
	stloc	'x/7'
// Line 31:	            i = i + 1;

	ldloc	'i/4'
	ldc.i4	1
	add
	stloc	'i/4'
L_38:
// Line 27:	        while (i < len) {

	ldloc	'i/4'
	ldloc	'len/3'
	blt	'L_36'
L_37:
// Line 32:	        }

// Line 33:	        if (j == 1) {

	ldloc	'j/5'
	ldc.i4	1
	bne.un	'L_41'
// Line 34:	            i = 0;

	ldc.i4	0
	stloc	'i/4'
	br	'L_45'
L_43:
// Line 36:	                itemDiv[i] = item[i];

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'itemDiv/2'
	add
	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'item/1'
	add
	ldind.i4
	stind.i4
// Line 37:	                i = i + 1;

	ldloc	'i/4'
	ldc.i4	1
	add
	stloc	'i/4'
L_45:
// Line 35:	            while (i < len) {

	ldloc	'i/4'
	ldloc	'len/3'
	blt	'L_43'
L_44:
// Line 38:	            }

	br	'L_49'
L_41:
// Line 39:	        } else {

// Line 40:	            x = 0;

	ldc.i4	0
	stloc	'x/7'
// Line 41:	            i = 0;

	ldc.i4	0
	stloc	'i/4'
	br	'L_53'
L_51:
// Line 43:	                x = x * 10000 + item[i];

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'item/1'
	add
	ldind.i4
	ldloc	'x/7'
	ldc.i4	10000
	mul
	add
	stloc	'x/7'
// Line 44:	                itemDiv[i] = x / j;

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'itemDiv/2'
	add
	ldloc	'x/7'
	ldloc	'j/5'
	div
	stind.i4
// Line 45:	                x = x % j;

	ldloc	'x/7'
	ldloc	'j/5'
	rem
	stloc	'x/7'
// Line 46:	                i = i + 1;

	ldloc	'i/4'
	ldc.i4	1
	add
	stloc	'i/4'
L_53:
// Line 42:	            while (i < len) {

	ldloc	'i/4'
	ldloc	'len/3'
	blt	'L_51'
L_52:
// Line 47:	            }

L_49:
// Line 48:	        }

// Line 49:	        k = 0;

	ldc.i4	0
	stloc	'k/6'
// Line 50:	        if (plusMinus % 2 == 1) {

	ldarg	'plusMinus'
	ldc.i4	1
	and
	ldc.i4	1
	bne.un	'L_57'
// Line 51:	            i = len - 1;

	ldloc	'len/3'
	ldc.i4	1
	sub
	stloc	'i/4'
	br	'L_61'
L_59:
// Line 53:	                data[i] = data[i] + itemDiv[i] + k;

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldind.i4
	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'itemDiv/2'
	add
	ldind.i4
	add
	ldloc	'k/6'
	add
	stind.i4
// Line 54:	                if (data[i] < 10000) k = 0;

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldind.i4
	ldc.i4	10000
	bge	'L_63'
	ldc.i4	0
	stloc	'k/6'
	br	'L_64'
L_63:
// Line 55:	                else { data[i] = data[i] - 10000; k = 1; }

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldind.i4
	ldc.i4	10000
	sub
	stind.i4
	ldc.i4	1
	stloc	'k/6'
L_64:
// Line 56:	                i = i - 1;

	ldloc	'i/4'
	ldc.i4	1
	sub
	stloc	'i/4'
L_61:
// Line 52:	            while (i >= 0) {

	ldloc	'i/4'
	ldc.i4	0
	bge	'L_59'
L_60:
// Line 57:	            }

	br	'L_69'
L_57:
// Line 58:	        } else {

// Line 59:	            i = len - 1;

	ldloc	'len/3'
	ldc.i4	1
	sub
	stloc	'i/4'
	br	'L_73'
L_71:
// Line 61:	                data[i] = data[i] - (itemDiv[i] + k);

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'itemDiv/2'
	add
	ldind.i4
	ldloc	'k/6'
	add
	neg
	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldind.i4
	add
	stind.i4
// Line 62:	                if (data[i] >= 0) k = 0;

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldind.i4
	ldc.i4	0
	blt	'L_75'
	ldc.i4	0
	stloc	'k/6'
	br	'L_76'
L_75:
// Line 63:	                else { data[i] = data[i] + 10000; k = 1; }

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldind.i4
	ldc.i4	10000
	add
	stind.i4
	ldc.i4	1
	stloc	'k/6'
L_76:
// Line 64:	                i = i - 1;

	ldloc	'i/4'
	ldc.i4	1
	sub
	stloc	'i/4'
L_73:
// Line 60:	            while (i >= 0) {

	ldloc	'i/4'
	ldc.i4	0
	bge	'L_71'
L_72:
// Line 65:	            }

L_69:
// Line 66:	        }

// Line 67:	        plusMinus = plusMinus + 1;

	ldarg	'plusMinus'
	ldc.i4	1
	add
	starg	'plusMinus'
// Line 68:	        j = j + 2;

	ldloc	'j/5'
	ldc.i4	2
	add
	stloc	'j/5'
L_34:
// Line 23:	    while (maxItem > 0) {

	ldarg	'maxItem'
	ldc.i4	0
	bgt	'L_32'
L_33:
// Line 69:	    }

// Line 70:	    return 0;

	ldc.i4	0
// Line 71:	}

L_25:
	ret

}
 .method public hidebysig static int32 'pi'(void* 'data' , int32 'keta' ) cil managed
{
// Line 73:	int pi(int data[], int keta) {

	.locals
	(
		[0] int32 'maxItem_5/0',
		[1] int32 'maxItem_239/1',
		[2] int32 'i/2'
	)
	.maxstack	7
L_87:
// Line 74:	    int maxItem_5, maxItem_239, i;

// Line 75:	

// Line 76:	    maxItem_5   = keta * 500 /  699 + 2;

	ldarg	'keta'
	ldc.i4	500
	mul
	ldc.i4	699
	div
	ldc.i4	2
	add
	stloc	'maxItem_5/0'
// Line 77:	    maxItem_239 = keta * 500 / 2378 + 2;

	ldarg	'keta'
	ldc.i4	500
	mul
	ldc.i4	2378
	div
	ldc.i4	2
	add
	stloc	'maxItem_239/1'
// Line 78:	    i = 0;

	ldc.i4	0
	stloc	'i/2'
	br	'L_92'
L_90:
// Line 80:	        data[i] = 0;

	ldloc	'i/2'
	ldc.i4	2
	shl
	ldarg	'data'
	add
	ldc.i4	0
	stind.i4
// Line 81:	        i = i + 1;

	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
L_92:
// Line 79:	    while (i < (keta-1)/4+2) {

	ldloc	'i/2'
	ldarg	'keta'
	ldc.i4	1
	sub
	ldc.i4	2
	shr.un
	ldc.i4	2
	add
	blt	'L_90'
L_91:
// Line 82:	    }

// Line 83:	    if (series(data, keta, maxItem_5, 4, 5, 1) != 0) return 1;

	ldarg	'data'
	ldarg	'keta'
	ldloc	'maxItem_5/0'
	ldc.i4	4
	ldc.i4	5
	ldc.i4	1
	call	int32 'series'(void*, int32, int32, int32, int32, int32)
	ldc.i4	0
	beq	'L_95'
	ldc.i4	1
	br	'L_88'
L_95:
// Line 84:	    if (series(data, keta, maxItem_239, 1, 239, 0) != 0) return 1;

	ldarg	'data'
	ldarg	'keta'
	ldloc	'maxItem_239/1'
	ldc.i4	1
	ldc.i4	239
	ldc.i4	0
	call	int32 'series'(void*, int32, int32, int32, int32, int32)
	ldc.i4	0
	beq	'L_96'
	ldc.i4	1
	br	'L_88'
L_96:
// Line 85:	    return 0;

	ldc.i4	0
// Line 86:	}

L_88:
	ret

}
 .field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (25 63 89 f0 3a 25 73 25 
	73 25 63 0 
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (25 30 34 64 20 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (6e 3d 25 64 25 63 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (34 39 34 34 20 35 39 32 
	33 20 30 37 38 31 20 36 
	34 30 36 20 32 38 36 32 
	20 30 38 39 39 20 38 36 
	32 38 20 30 33 34 38 20 
	32 35 33 34 20 32 31 31 
	37 20 30 36 37 39 20 38 
	32 31 34 20 38 30 38 36 
	20 35 31 33 32 20 38 32 
	33 30 20 36 36 34 37 0 
	
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (33 2e 31 34 31 35 20 39 
	32 36 35 20 33 35 38 39 
	20 37 39 33 32 20 33 38 
	34 36 20 32 36 34 33 20 
	33 38 33 32 20 37 39 35 
	30 20 32 38 38 34 20 31 
	39 37 31 20 36 39 33 39 
	20 39 33 37 35 20 31 30 
	35 38 20 32 30 39 37 20 
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
.class private value explicit ansi sealed 'int32[260]' {.pack 1 .size 1040}
.class private value explicit ansi sealed 'int32[10000]' {.pack 1 .size 40000}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
