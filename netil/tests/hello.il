//File hello.c
//Compiler version 6.0.8.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 6:	int main()

// Line 7:	#else

// Line 8:	void main()

// Line 9:	#endif

// Line 10:	{

	.maxstack	1
L_2:
// Line 11:	  printf("Hello World! :)\n");

	ldsflda	valuetype 'int8[]' 'L_1'

	call	vararg int32 'printf'(void*, ...)
	pop
// Line 12:	#if __ORANGEC__

// Line 13:	  return 0;

	ldc.i4	0
// Line 14:	#else

// Line 15:	  exit(0);

// Line 16:	#endif

// Line 17:	}
L_3:
	ret

}
 .field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (48 65 6c 6c 6f 20 57 6f 
	72 6c 64 21 20 3a 29 a 
	0 
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
