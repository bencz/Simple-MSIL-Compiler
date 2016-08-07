.assembly HelloWorld
{
}

.assembly extern mscorlib { }

.namespace DefaultNamespace
{
	.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* malloc(int32) preservesig {}
	.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void free(void*) preservesig {}
	.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void exit(int32) preservesig {}
	.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void printf(void *,...) preservesig {}

	.class private auto ansi beforefieldinit MainClass
	{
		.method public hidebysig static void* pl_inicializapilha(int32) cil managed
		{
			.locals 
			(
				[0] void* 'pl',
				[1] void* '1',
				[2] void* '2'
			)
			.maxstack 2
      
			ldc.i4 12  // struct size
			call void* malloc(int32)
			stloc 1    // load the variable '1'
			ldloc 1
			stloc 0    // store the malloc in 'pl' variable...
      
			ldarg 0    // load the 'pl' variable...
			conv.u4    // Convert to unsigned int32, pushing int32 on stack.
			ldc.i4 2   // put the value '2' on stack...
			shl        // do the shift "<<"
			call void* malloc(int32)
			stloc 2    // store the malloc on variable '2'
      
			// pl->pilha = (int*)malloc(sizeof(int) * tamanho);
			ldloc 0    // load the variable 'pl'
			ldc.i4 8   // put the value '8' on stack
			add        // sum the '8' value in 'pl' variable... (pl + 8)
			ldloc 2    // load the variable '2'
			stind.i4   // set the new value to pl->pilha
      
			ldloc 0    // load the 'pl'
			ldarg 0    // load the argument 'tamanho ( first argument )'
			stind.i4   // set the argument to pl->tamanho
      
			ldloc 0    // load the 'pl'
			ldc.i4 4   // put on stack the value 4
			add        // add the pl with 4 (pl + 4)
			ldc.i4 0   // load the '0' value to stack
			stind.i4   // set the new pl memory position to 0 (pl+4) = 0
      
			ldloc 0  // put on stack the variable 'pl'
			ret
		}

		.method public hidebysig static void pl_liberapilha(void*) cil managed 
		{
			.maxstack 2
			ldarg 0
			ldc.i4 8
			add
			ldind.u4
			call void free(void*)
			ldarg 0
			call void free(void*)
			ret
		}

		.method public hidebysig static void Main(string[] args) cil managed
		{
			.locals 
			(
				[0] void* 'pl',
				[1] void* '1'
			)
			.entrypoint
			.maxstack 2
            ldstr "hello world!"
            call void [mscorlib]System.Console::WriteLine(string)
			ldc.i4 5
			call void* DefaultNamespace.MainClass::pl_inicializapilha(int32)
			stloc 1
			ldloc 1
			stloc 0

			ldloc 0
			ldind.i4
	            call void [mscorlib]System.Console::WriteLine(int32)

			ldloc 0
			call void DefaultNamespace.MainClass::pl_liberapilha(void*)
			ldc.i4 0
			call void exit(int32)
			ret
		}
	}
}
