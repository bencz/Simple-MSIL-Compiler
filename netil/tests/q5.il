//File q5.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 argc, void * argv)  cil managed
{
// Line 18:	int main(int argc, char *argv[])

// Line 19:	{

	.maxstack	3
L_2:
// Line 20:	    argc ^= (unsigned)RAND_MASK;

	ldsfld	int32 'rNToGo'

	ldc.i4	1
	bne.un	'L_7'
	ldc.i4	1
	br	'L_8'
L_7:
	ldc.i4	0
L_8:
	conv.u4
	ldarg	'argc'
	conv.u4
	xor
	conv.i4
	starg	'argc'
// Line 21:	    return argc;

	ldarg	'argc'
// Line 22:	}
L_3:
	ret

}
 .method public hidebysig static void 'zz'(int32 'aa' ) cil managed
{
// Line 14:	void zz(int aa)

// Line 15:	{

	.maxstack	3
L_12:
// Line 16:	    printf("%d\n", 1 << aa);

	ldsflda	valuetype 'int8[]' 'L_1'

	ldc.i4	1
	ldarg	'aa'
	shl
	call	vararg int32 'printf'(void*, ..., int32)
	pop
// Line 17:	}

L_13:
	ret

}
 .field public static int32 'rNToGo' at $rNToGo
.data $rNToGo = bytearray (0 0 0 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (25 64 a 0 
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
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'printf'(void*) preservesig {}
