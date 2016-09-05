//File bzip2.C
//Compiler version 6.0.0.1

.corflags 2 // 32-bit
.assembly test { }

.assembly extern mscorlib { }

.assembly extern lsmsilcrtl { }


.method public hidebysig static int32 'main'(int32 'argc', void * 'argv')  cil managed
{
// Line 3951:	IntNative main ( IntNative argc, Char *argv[] )

// Line 3952:	{

	.locals
	(
		[0] int32 '$anontemp1/0',
		[1] int32 'i/1',
		[2] int32 'j/2',
		[3] void* 'tmp/3',
		[4] void* 'argList/4',
		[5] void* 'aa/5'
	)
	.maxstack	64
L_126:
// Line 3956:	   Cell   *aa;

// Line 3957:	

// Line 3958:	

// Line 3959:	   PRINTLOC;

// Line 3960:	

// Line 3961:	   #if DEBUG

// Line 3962:	      fprintf ( stderr, "bzip2: *** compiled with debugging ON ***\n" );

// Line 3963:	   #endif

// Line 3964:	

// Line 3965:	    

// Line 3966:	   if (sizeof(Int32) != 4 || sizeof(UInt32) != 4  ||

// Line 3967:	       sizeof(Int16) != 2 || sizeof(UInt16) != 2  ||

// Line 3968:	       sizeof(Char)  != 1 || sizeof(UChar)  != 1) {

L_129:
// Line 3976:	   }

// Line 3977:	

// Line 3978:	

// Line 3979:	    

// Line 3980:	#ifdef XXXXX

// Line 3981:	   signal (SIGINT,  mySignalCatcher);

// Line 3982:	   signal (SIGTERM, mySignalCatcher);

// Line 3983:	   signal (SIGSEGV, mySIGSEGVorSIGBUScatcher);

// Line 3984:	   #if BZ_UNIX

// Line 3985:	   signal (SIGHUP,  mySignalCatcher);

// Line 3986:	   signal (SIGBUS,  mySIGSEGVorSIGBUScatcher);

// Line 3987:	   #endif

// Line 3988:	#endif

// Line 3989:	

// Line 3990:	    

// Line 3991:	   outputHandleJustInCase  = NULL;

	ldc.i4	0
	stsfld	void* 'outputHandleJustInCase'

// Line 3992:	   ftab                    = NULL;

	ldc.i4	0
	stsfld	void* 'ftab'

// Line 3993:	   ll4                     = NULL;

	ldc.i4	0
	stsfld	void* 'll4'

// Line 3994:	   ll16                    = NULL;

	ldc.i4	0
	stsfld	void* 'll16'

// Line 3995:	   ll8                     = NULL;

	ldc.i4	0
	stsfld	void* 'll8'

// Line 3996:	   tt                      = NULL;

	ldc.i4	0
	stsfld	void* 'tt'

// Line 3997:	   block                   = NULL;

	ldc.i4	0
	stsfld	void* 'block'

// Line 3998:	   zptr                    = NULL;

	ldc.i4	0
	stsfld	void* 'zptr'

// Line 3999:	   smallMode               = False;

	ldc.i4	0
	stsfld	uint8 'smallMode'

// Line 4000:	   keepInputFiles          = False;

	ldc.i4	0
	stsfld	uint8 'keepInputFiles'

// Line 4001:	   verbosity               = 0;

	ldc.i4	0
	stsfld	int32 'verbosity'

// Line 4002:	   blockSize100k           = 9;

	ldc.i4	9
	stsfld	int32 'blockSize100k'

// Line 4003:	   testFailsExist          = False;

	ldc.i4	0
	stsfld	uint8 'testFailsExist'

// Line 4004:	   bsStream                = NULL;

	ldc.i4	0
	stsfld	void* 'bsStream'

// Line 4005:	   numFileNames            = 0;

	ldc.i4	0
	stsfld	int32 'numFileNames'

// Line 4006:	   numFilesProcessed       = 0;

	ldc.i4	0
	stsfld	int32 'numFilesProcessed'

// Line 4007:	   workFactor              = 30;

	ldc.i4	30
	stsfld	int32 'workFactor'

// Line 4008:	

// Line 4009:	   strcpy ( inName,  "(none)" );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[]' 'L_98'

	call	void* 'strcpy'(void*, void*)
	pop
// Line 4010:	   strcpy ( outName, "(none)" );

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldsflda	valuetype 'int8[]' 'L_98'

	call	void* 'strcpy'(void*, void*)
	pop
// Line 4011:	

// Line 4012:	   strcpy ( progNameReally, argv[0] );

	ldsflda	valuetype 'int8[1024]' 'progNameReally'

	ldarg	'argv'
	ldind.u4
	call	void* 'strcpy'(void*, void*)
	pop
// Line 4013:	   progName = &progNameReally[0];

	ldsflda	valuetype 'int8[1024]' 'progNameReally'

	stsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'progNameReally'

	stloc	'tmp/3'
	br	'L_133'
L_132:
// Line 4015:	      if (*tmp == PATH_SEP) progName = tmp + 1;

	ldloc	'tmp/3'
	ldind.i1
	conv.i4
	ldc.i4	92
	bne.un	'L_136'
	ldloc	'tmp/3'
	ldc.i4	1
	add
	stsfld	void* 'progName'

L_136:
L_135:
	ldloc	'tmp/3'
	ldc.i4	1
	add
	stloc	'tmp/3'
// Line 4014:	   for (tmp = &progNameReally[0]; *tmp != '\0'; tmp++)

L_133:
	ldloc	'tmp/3'
	ldind.i1
	conv.i4
	ldc.i4	0
	bne.un	'L_132'
L_134:
// Line 4016:	

// Line 4017:	

// Line 4018:	    

// Line 4019:	   argList = NULL;

	ldc.i4	0
	stloc	'argList/4'
	ldc.i4	1
	stloc	'i/1'
	br	'L_138'
L_137:
// Line 4021:	      APPEND_FILESPEC(argList, argv[i]);

	ldloc	'argList/4'
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldarg	'argv'
	add
	ldind.u4
	call	void* 'snocString'(void*, void*)
	stloc	'argList/4'
L_140:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 4020:	   for (i = 1; i <= argc-1; i++)

L_138:
	ldloc	'i/1'
	ldarg	'argc'
	ldc.i4	1
	sub
	ble	'L_137'
L_139:
// Line 4022:	

// Line 4023:	

// Line 4024:	    

// Line 4025:	   longestFileName = 7;

	ldc.i4	7
	stsfld	int32 'longestFileName'

// Line 4026:	   numFileNames    = 0;

	ldc.i4	0
	stsfld	int32 'numFileNames'

	ldloc	'argList/4'
	stloc	'aa/5'
	br	'L_142'
L_141:
// Line 4028:	      if (aa->name[0] != '-') {

	ldloc	'aa/5'
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	45
	beq	'L_145'
// Line 4029:	         numFileNames++;

	ldsfld	int32 'numFileNames'

	ldc.i4	1
	add
	stsfld	int32 'numFileNames'

// Line 4030:	         if (longestFileName < (Int32)strlen(aa->name) )

	ldsfld	int32 'longestFileName'

	ldloc	'aa/5'
	ldind.u4
	call	uint32 'strlen'(void*)
	conv.i4
	bge	'L_147'
// Line 4031:	            longestFileName = (Int32)strlen(aa->name);

	ldloc	'aa/5'
	ldind.u4
	call	uint32 'strlen'(void*)
	conv.i4
	stsfld	int32 'longestFileName'

L_147:
L_145:
L_144:
	ldloc	'aa/5'
	ldc.i4	4
	add
	ldind.u4
	stloc	'aa/5'
// Line 4027:	   for (aa = argList; aa != NULL; aa = aa->link)

L_142:
	ldloc	'aa/5'
	ldc.i4	0
	bne.un	'L_141'
L_143:
// Line 4032:	      }

// Line 4033:	

// Line 4034:	    

// Line 4035:	    

// Line 4036:	   opMode = OM_Z;

	ldc.i4	1
	stsfld	int32 'opMode'

// Line 4037:	

// Line 4038:	   if ( (strcmp ( "bunzip2",     progName ) == 0) ||

// Line 4039:	        (strcmp ( "BUNZIP2",     progName ) == 0) ||

// Line 4040:	        (strcmp ( "bunzip2.exe", progName ) == 0) ||

// Line 4041:	        (strcmp ( "BUNZIP2.EXE", progName ) == 0) )

	ldsflda	valuetype 'int8[]' 'L_104'

	ldsfld	void* 'progName'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	beq	'L_272'
	ldsflda	valuetype 'int8[]' 'L_105'

	ldsfld	void* 'progName'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	beq	'L_272'
	ldsflda	valuetype 'int8[]' 'L_106'

	ldsfld	void* 'progName'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	beq	'L_272'
	ldsflda	valuetype 'int8[]' 'L_107'

	ldsfld	void* 'progName'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_149'
L_272:
// Line 4042:	      opMode = OM_UNZ;

	ldc.i4	2
	stsfld	int32 'opMode'

L_149:
// Line 4043:	

// Line 4044:	

// Line 4045:	    

// Line 4046:	   if (numFileNames == 0)

	ldsfld	int32 'numFileNames'

	ldc.i4	0
	bne.un	'L_150'
// Line 4047:	      srcMode = SM_I2O; else srcMode = SM_F2F;

	ldc.i4	1
	stsfld	int32 'srcMode'

	br	'L_151'
L_150:
	ldc.i4	3
	stsfld	int32 'srcMode'

L_151:
// Line 4048:	

// Line 4049:	    

	ldloc	'argList/4'
	stloc	'aa/5'
	br	'L_153'
L_152:
// Line 4051:	      if (aa->name[0] == '-' && aa->name[1] != '-')

	ldloc	'aa/5'
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	45
	bne.un	'L_156'
	ldloc	'aa/5'
	ldind.u4
	ldc.i4	1
	add
	ldind.i1
	conv.i4
	ldc.i4	45
	beq	'L_156'
	ldc.i4	1
	stloc	'j/2'
	br	'L_158'
L_157:
// Line 4053:	            switch (aa->name[j]) {

	ldloc	'aa/5'
	ldind.u4
	ldloc	'j/2'
	add
	ldind.i1
	conv.i4
	stloc	'$anontemp1/0'
	ldloc	'$anontemp1/0'
	ldc.i4	76
	beq	'L_179'
	ldloc	'$anontemp1/0'
	ldc.i4	76
	bgt	'L_275'
	ldloc	'$anontemp1/0'
	ldc.i4	53
	beq	'L_173'
	ldloc	'$anontemp1/0'
	ldc.i4	53
	bgt	'L_277'
	ldloc	'$anontemp1/0'
	ldc.i4	51
	beq	'L_171'
	ldloc	'$anontemp1/0'
	ldc.i4	51
	bgt	'L_279'
	ldloc	'$anontemp1/0'
	ldc.i4	50
	beq	'L_170'
	ldloc	'$anontemp1/0'
	ldc.i4	50
	bgt	'L_182'
	ldloc	'$anontemp1/0'
	ldc.i4	49
	beq	'L_169'
	br	'L_182'
L_279:
	ldloc	'$anontemp1/0'
	ldc.i4	52
	beq	'L_172'
	br	'L_182'
L_277:
	ldloc	'$anontemp1/0'
	ldc.i4	56
	beq	'L_176'
	ldloc	'$anontemp1/0'
	ldc.i4	56
	bgt	'L_284'
	ldloc	'$anontemp1/0'
	ldc.i4	55
	beq	'L_175'
	ldloc	'$anontemp1/0'
	ldc.i4	55
	bgt	'L_182'
	ldloc	'$anontemp1/0'
	ldc.i4	54
	beq	'L_174'
	br	'L_182'
L_284:
	ldloc	'$anontemp1/0'
	ldc.i4	57
	beq	'L_177'
	br	'L_182'
L_275:
	ldloc	'$anontemp1/0'
	ldc.i4	104
	beq	'L_181'
	ldloc	'$anontemp1/0'
	ldc.i4	104
	bgt	'L_289'
	ldloc	'$anontemp1/0'
	ldc.i4	100
	beq	'L_164'
	ldloc	'$anontemp1/0'
	ldc.i4	100
	bgt	'L_291'
	ldloc	'$anontemp1/0'
	ldc.i4	99
	beq	'L_163'
	ldloc	'$anontemp1/0'
	ldc.i4	99
	bgt	'L_182'
	ldloc	'$anontemp1/0'
	ldc.i4	86
	beq	'L_178'
	br	'L_182'
L_291:
	ldloc	'$anontemp1/0'
	ldc.i4	102
	beq	'L_165'
	br	'L_182'
L_289:
	ldloc	'$anontemp1/0'
	ldc.i4	116
	beq	'L_166'
	ldloc	'$anontemp1/0'
	ldc.i4	116
	bgt	'L_296'
	ldloc	'$anontemp1/0'
	ldc.i4	115
	beq	'L_168'
	ldloc	'$anontemp1/0'
	ldc.i4	115
	bgt	'L_182'
	ldloc	'$anontemp1/0'
	ldc.i4	107
	beq	'L_167'
	br	'L_182'
L_296:
	ldloc	'$anontemp1/0'
	ldc.i4	118
	beq	'L_180'
	br	'L_182'
L_163:
// Line 4054:	               case 'c': srcMode          = SM_F2O; break;

	ldc.i4	2
	stsfld	int32 'srcMode'

	br	'L_161'
L_164:
// Line 4055:	               case 'd': opMode           = OM_UNZ; break;

	ldc.i4	2
	stsfld	int32 'opMode'

	br	'L_161'
L_165:
// Line 4056:	               case 'f': opMode           = OM_Z; break;

	ldc.i4	1
	stsfld	int32 'opMode'

	br	'L_161'
L_166:
// Line 4057:	               case 't': opMode           = OM_TEST; break;

	ldc.i4	3
	stsfld	int32 'opMode'

	br	'L_161'
L_167:
// Line 4058:	               case 'k': keepInputFiles   = True; break;

	ldc.i4	1
	stsfld	uint8 'keepInputFiles'

	br	'L_161'
L_168:
// Line 4059:	               case 's': smallMode        = True; break;

	ldc.i4	1
	stsfld	uint8 'smallMode'

	br	'L_161'
L_169:
// Line 4060:	               case '1': blockSize100k    = 1; break;

	ldc.i4	1
	stsfld	int32 'blockSize100k'

	br	'L_161'
L_170:
// Line 4061:	               case '2': blockSize100k    = 2; break;

	ldc.i4	2
	stsfld	int32 'blockSize100k'

	br	'L_161'
L_171:
// Line 4062:	               case '3': blockSize100k    = 3; break;

	ldc.i4	3
	stsfld	int32 'blockSize100k'

	br	'L_161'
L_172:
// Line 4063:	               case '4': blockSize100k    = 4; break;

	ldc.i4	4
	stsfld	int32 'blockSize100k'

	br	'L_161'
L_173:
// Line 4064:	               case '5': blockSize100k    = 5; break;

	ldc.i4	5
	stsfld	int32 'blockSize100k'

	br	'L_161'
L_174:
// Line 4065:	               case '6': blockSize100k    = 6; break;

	ldc.i4	6
	stsfld	int32 'blockSize100k'

	br	'L_161'
L_175:
// Line 4066:	               case '7': blockSize100k    = 7; break;

	ldc.i4	7
	stsfld	int32 'blockSize100k'

	br	'L_161'
L_176:
// Line 4067:	               case '8': blockSize100k    = 8; break;

	ldc.i4	8
	stsfld	int32 'blockSize100k'

	br	'L_161'
L_177:
// Line 4068:	               case '9': blockSize100k    = 9; break;

	ldc.i4	9
	stsfld	int32 'blockSize100k'

	br	'L_161'
L_178:
L_179:
// Line 4069:	               case 'V':

// Line 4070:	               case 'L': license();            break;

	call	void 'license'()
	br	'L_161'
L_180:
// Line 4071:	               case 'v': verbosity++; break;

	ldsfld	int32 'verbosity'

	ldc.i4	1
	add
	stsfld	int32 'verbosity'

	br	'L_161'
L_181:
// Line 4072:	               case 'h': usage ( progName );

	ldsfld	void* 'progName'

	call	void 'usage'(void*)
// Line 4073:	                         exit ( 1 );

	ldc.i4	1
	call	void 'exit'(int32)
// Line 4074:	                         break;

	br	'L_161'
L_182:
// Line 4075:	               default:  fprintf ( stderr, "%s: Bad flag `%s'\n",

// Line 4076:	                                   progName, aa->name );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_108'

	ldsfld	void* 'progName'

	ldloc	'aa/5'
	ldind.u4
	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 4077:	                         usage ( progName );

	ldsfld	void* 'progName'

	call	void 'usage'(void*)
// Line 4078:	                         exit ( 1 );

	ldc.i4	1
	call	void 'exit'(int32)
// Line 4079:	                         break;

L_161:
L_160:
	ldloc	'j/2'
	ldc.i4	1
	add
	stloc	'j/2'
// Line 4052:	         for (j = 1; aa->name[j] != '\0'; j++)

L_158:
	ldloc	'aa/5'
	ldind.u4
	ldloc	'j/2'
	add
	ldind.i1
	conv.i4
	ldc.i4	0
	bne.un	'L_157'
L_159:
L_156:
L_155:
	ldloc	'aa/5'
	ldc.i4	4
	add
	ldind.u4
	stloc	'aa/5'
// Line 4050:	   for (aa = argList; aa != NULL; aa = aa->link)

L_153:
	ldloc	'aa/5'
	ldc.i4	0
	bne.un	'L_152'
L_154:
// Line 4080:	         }

// Line 4081:	

// Line 4082:	    

	ldloc	'argList/4'
	stloc	'aa/5'
	br	'L_185'
L_184:
// Line 4084:	      if (ISFLAG("--stdout"))            srcMode          = SM_F2O;  else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_109'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_189'
	ldc.i4	2
	stsfld	int32 'srcMode'

	br	'L_190'
L_189:
// Line 4085:	      if (ISFLAG("--decompress"))        opMode           = OM_UNZ;  else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_110'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_191'
	ldc.i4	2
	stsfld	int32 'opMode'

	br	'L_192'
L_191:
// Line 4086:	      if (ISFLAG("--compress"))          opMode           = OM_Z;    else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_111'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_193'
	ldc.i4	1
	stsfld	int32 'opMode'

	br	'L_194'
L_193:
// Line 4087:	      if (ISFLAG("--test"))              opMode           = OM_TEST; else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_112'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_195'
	ldc.i4	3
	stsfld	int32 'opMode'

	br	'L_196'
L_195:
// Line 4088:	      if (ISFLAG("--keep"))              keepInputFiles   = True;    else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_113'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_197'
	ldc.i4	1
	stsfld	uint8 'keepInputFiles'

	br	'L_198'
L_197:
// Line 4089:	      if (ISFLAG("--small"))             smallMode        = True;    else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_114'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_199'
	ldc.i4	1
	stsfld	uint8 'smallMode'

	br	'L_200'
L_199:
// Line 4090:	      if (ISFLAG("--version"))           license();                  else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_115'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_201'
	call	void 'license'()
	br	'L_202'
L_201:
// Line 4091:	      if (ISFLAG("--license"))           license();                  else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_116'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_203'
	call	void 'license'()
	br	'L_204'
L_203:
// Line 4092:	      if (ISFLAG("--repetitive-fast"))   workFactor = 5;             else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_117'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_205'
	ldc.i4	5
	stsfld	int32 'workFactor'

	br	'L_206'
L_205:
// Line 4093:	      if (ISFLAG("--repetitive-best"))   workFactor = 150;           else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_118'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_207'
	ldc.i4	150
	stsfld	int32 'workFactor'

	br	'L_208'
L_207:
// Line 4094:	      if (ISFLAG("--verbose"))           verbosity++;                else

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_119'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_209'
	ldsfld	int32 'verbosity'

	ldc.i4	1
	add
	stsfld	int32 'verbosity'

	br	'L_210'
L_209:
// Line 4095:	      if (ISFLAG("--help"))              { usage ( progName ); exit ( 1 ); }

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_120'

	call	int32 'strcmp'(void*, void*)
	ldc.i4	0
	bne.un	'L_211'
	ldsfld	void* 'progName'

	call	void 'usage'(void*)
	ldc.i4	1
	call	void 'exit'(int32)
	br	'L_214'
L_211:
// Line 4096:	         else

// Line 4097:	         if (strncmp ( aa->name, "--", 2) == 0) {

	ldloc	'aa/5'
	ldind.u4
	ldsflda	valuetype 'int8[]' 'L_121'

	ldc.i4	2
	conv.u4
	call	int32 'strncmp'(void*, void*, uint32)
	ldc.i4	0
	bne.un	'L_215'
// Line 4098:	            fprintf ( stderr, "%s: Bad flag `%s'\n", progName, aa->name );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_108'

	ldsfld	void* 'progName'

	ldloc	'aa/5'
	ldind.u4
	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 4099:	            usage ( progName );

	ldsfld	void* 'progName'

	call	void 'usage'(void*)
// Line 4100:	            exit ( 1 );

	ldc.i4	1
	call	void 'exit'(int32)
L_215:
L_214:
L_210:
L_208:
L_206:
L_204:
L_202:
L_200:
L_198:
L_196:
L_194:
L_192:
L_190:
// Line 4101:	         }

L_187:
	ldloc	'aa/5'
	ldc.i4	4
	add
	ldind.u4
	stloc	'aa/5'
// Line 4083:	   for (aa = argList; aa != NULL; aa = aa->link) {

L_185:
	ldloc	'aa/5'
	ldc.i4	0
	bne.un	'L_184'
L_186:
// Line 4102:	   }

// Line 4103:	

// Line 4104:	   if (opMode == OM_Z && smallMode) blockSize100k = 2;

	ldsfld	int32 'opMode'

	ldc.i4	1
	bne.un	'L_219'
	ldsfld	uint8 'smallMode'

	ldc.i4	0
	beq	'L_219'
	ldc.i4	2
	stsfld	int32 'blockSize100k'

L_219:
// Line 4105:	

// Line 4106:	   if (opMode == OM_Z && srcMode == SM_F2O && numFileNames > 1) {

	ldsfld	int32 'opMode'

	ldc.i4	1
	bne.un	'L_220'
	ldsfld	int32 'srcMode'

	ldc.i4	2
	bne.un	'L_220'
	ldsfld	int32 'numFileNames'

	ldc.i4	1
	ble	'L_220'
// Line 4107:	      fprintf ( stderr, "%s: I won't compress multiple files to stdout.\n",

// Line 4108:	                progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_122'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 4109:	      exit ( 1 );

	ldc.i4	1
	call	void 'exit'(int32)
L_220:
// Line 4110:	   }

// Line 4111:	

// Line 4112:	   if (srcMode == SM_F2O && numFileNames == 0) {

	ldsfld	int32 'srcMode'

	ldc.i4	2
	bne.un	'L_223'
	ldsfld	int32 'numFileNames'

	ldc.i4	0
	bne.un	'L_223'
// Line 4113:	      fprintf ( stderr, "%s: -c expects at least one filename.\n",

// Line 4114:	                progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_123'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 4115:	      exit ( 1 );

	ldc.i4	1
	call	void 'exit'(int32)
L_223:
// Line 4116:	   }

// Line 4117:	

// Line 4118:	   if (opMode == OM_TEST && srcMode == SM_F2O) {

	ldsfld	int32 'opMode'

	ldc.i4	3
	bne.un	'L_226'
	ldsfld	int32 'srcMode'

	ldc.i4	2
	bne.un	'L_226'
// Line 4119:	      fprintf ( stderr, "%s: -c and -t cannot be used together.\n",

// Line 4120:	                progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_124'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 4121:	      exit ( 1 );

	ldc.i4	1
	call	void 'exit'(int32)
L_226:
// Line 4122:	   }

// Line 4123:	

// Line 4124:	   if (opMode != OM_Z) blockSize100k = 0;

	ldsfld	int32 'opMode'

	ldc.i4	1
	beq	'L_229'
	ldc.i4	0
	stsfld	int32 'blockSize100k'

L_229:
// Line 4125:	

// Line 4126:	   if (opMode == OM_Z) {

	ldsfld	int32 'opMode'

	ldc.i4	1
	bne.un	'L_230'
// Line 4127:	      allocateCompressStructures();

	call	void 'allocateCompressStructures'()
// Line 4128:	      if (srcMode == SM_I2O)

	ldsfld	int32 'srcMode'

	ldc.i4	1
	bne.un	'L_232'
// Line 4129:	         compress ( NULL );

	ldc.i4	0
	conv.u4
	call	void 'compress'(void*)
	br	'L_242'
L_232:
// Line 4130:	         else

	ldloc	'argList/4'
	stloc	'aa/5'
	br	'L_235'
L_234:
// Line 4132:	            if (aa->name[0] != '-') {

	ldloc	'aa/5'
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	45
	beq	'L_238'
// Line 4133:	               numFilesProcessed++;

	ldsfld	int32 'numFilesProcessed'

	ldc.i4	1
	add
	stsfld	int32 'numFilesProcessed'

// Line 4134:	               compress ( aa->name );

	ldloc	'aa/5'
	ldind.u4
	call	void 'compress'(void*)
L_238:
L_237:
	ldloc	'aa/5'
	ldc.i4	4
	add
	ldind.u4
	stloc	'aa/5'
// Line 4131:	         for (aa = argList; aa != NULL; aa = aa->link)

L_235:
	ldloc	'aa/5'
	ldc.i4	0
	bne.un	'L_234'
L_236:
L_233:
// Line 4135:	            }

	br	'L_242'
L_230:
// Line 4136:	   } else

// Line 4137:	   if (opMode == OM_UNZ) {

	ldsfld	int32 'opMode'

	ldc.i4	2
	bne.un	'L_243'
// Line 4138:	      if (srcMode == SM_I2O)

	ldsfld	int32 'srcMode'

	ldc.i4	1
	bne.un	'L_245'
// Line 4139:	         uncompress ( NULL );

	ldc.i4	0
	conv.u4
	call	void 'uncompress'(void*)
	br	'L_255'
L_245:
// Line 4140:	         else

	ldloc	'argList/4'
	stloc	'aa/5'
	br	'L_248'
L_247:
// Line 4142:	            if (aa->name[0] != '-') {

	ldloc	'aa/5'
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	45
	beq	'L_251'
// Line 4143:	               numFilesProcessed++;

	ldsfld	int32 'numFilesProcessed'

	ldc.i4	1
	add
	stsfld	int32 'numFilesProcessed'

// Line 4144:	               uncompress ( aa->name );

	ldloc	'aa/5'
	ldind.u4
	call	void 'uncompress'(void*)
L_251:
L_250:
	ldloc	'aa/5'
	ldc.i4	4
	add
	ldind.u4
	stloc	'aa/5'
// Line 4141:	         for (aa = argList; aa != NULL; aa = aa->link)

L_248:
	ldloc	'aa/5'
	ldc.i4	0
	bne.un	'L_247'
L_249:
L_246:
// Line 4145:	            }

	br	'L_255'
L_243:
// Line 4146:	   } else {

// Line 4147:	      testFailsExist = False;

	ldc.i4	0
	stsfld	uint8 'testFailsExist'

// Line 4148:	      if (srcMode == SM_I2O)

	ldsfld	int32 'srcMode'

	ldc.i4	1
	bne.un	'L_257'
// Line 4149:	         testf ( NULL );

	ldc.i4	0
	conv.u4
	call	void 'testf'(void*)
	br	'L_258'
L_257:
// Line 4150:	         else

	ldloc	'argList/4'
	stloc	'aa/5'
	br	'L_260'
L_259:
// Line 4152:	            if (aa->name[0] != '-') {

	ldloc	'aa/5'
	ldind.u4
	ldind.i1
	conv.i4
	ldc.i4	45
	beq	'L_263'
// Line 4153:	               numFilesProcessed++;

	ldsfld	int32 'numFilesProcessed'

	ldc.i4	1
	add
	stsfld	int32 'numFilesProcessed'

// Line 4154:	               testf ( aa->name );

	ldloc	'aa/5'
	ldind.u4
	call	void 'testf'(void*)
L_263:
L_262:
	ldloc	'aa/5'
	ldc.i4	4
	add
	ldind.u4
	stloc	'aa/5'
// Line 4151:	         for (aa = argList; aa != NULL; aa = aa->link)

L_260:
	ldloc	'aa/5'
	ldc.i4	0
	bne.un	'L_259'
L_261:
L_258:
// Line 4155:	            }

// Line 4156:	      if (testFailsExist) {

	ldsfld	uint8 'testFailsExist'

	ldc.i4	0
	beq	'L_266'
// Line 4157:	         fprintf ( stderr,

// Line 4158:	           "\n"

// Line 4159:	           "You can use the `bzip2recover' program to *attempt* to recover\n"

// Line 4160:	           "data from undamaged sections of corrupted files.\n\n"

// Line 4161:	         );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_125'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
// Line 4162:	         exit(2);

	ldc.i4	2
	call	void 'exit'(int32)
L_266:
// Line 4163:	      }

L_255:
L_242:
// Line 4164:	   }

// Line 4165:	   return 0;

	ldc.i4	0
// Line 4166:	}

L_127:
	ret

}
 .method public hidebysig static void 'initialiseCRC'() cil managed
{
// Line 658:	void initialiseCRC ( void )

// Line 659:	{

	.maxstack	1
L_302:
// Line 660:	   globalCrc = 0xffffffffUL;

	ldc.i4	-1
	stsfld	uint32 'globalCrc'

// Line 661:	}

L_303:
	ret

}
 .method public hidebysig static uint32 'getFinalCRC'() cil managed
{
// Line 665:	UInt32 getFinalCRC ( void )

// Line 666:	{

	.maxstack	1
L_310:
// Line 667:	   return ~globalCrc;

	ldsfld	uint32 'globalCrc'

	not
// Line 668:	}

L_311:
	ret

}
 .method public hidebysig static uint32 'getGlobalCRC'() cil managed
{
// Line 672:	UInt32 getGlobalCRC ( void )

// Line 673:	{

	.maxstack	1
L_318:
// Line 674:	   return globalCrc;

	ldsfld	uint32 'globalCrc'

// Line 675:	}

L_319:
	ret

}
 .method public hidebysig static void 'setGlobalCRC'(uint32 'newCrc' ) cil managed
{
// Line 679:	void setGlobalCRC ( UInt32 newCrc )

// Line 680:	{

	.maxstack	1
L_326:
// Line 681:	   globalCrc = newCrc;

	ldarg	'newCrc'
	stsfld	uint32 'globalCrc'

// Line 682:	}

L_327:
	ret

}
 .method public hidebysig static void 'bsSetStream'(void* 'f' , uint8 'wr' ) cil managed
{
// Line 706:	void bsSetStream ( FILE* f, Bool wr )

// Line 707:	{

	.maxstack	2
L_334:
// Line 708:	   if (bsStream != NULL) panic ( "bsSetStream" );

	ldsfld	void* 'bsStream'

	ldc.i4	0
	beq	'L_337'
	ldsflda	valuetype 'int8[]' 'L_1'

	call	void 'panic'(void*)
L_337:
// Line 709:	   bsStream = f;

	ldarg	'f'
	stsfld	void* 'bsStream'

// Line 710:	   bsLive = 0;

	ldc.i4	0
	stsfld	int32 'bsLive'

// Line 711:	   bsBuff = 0;

	ldc.i4	0
	stsfld	uint32 'bsBuff'

// Line 712:	   bytesOut = 0;

	ldc.i4	0
	stsfld	uint32 'bytesOut'

// Line 713:	   bytesIn = 0;

	ldc.i4	0
	stsfld	uint32 'bytesIn'

// Line 714:	   bsWriting = wr;

	ldarg	'wr'
	stsfld	uint8 'bsWriting'

// Line 715:	}

L_335:
	ret

}
 .method public hidebysig static void 'bsFinishedWithStream'() cil managed
{
// Line 719:	void bsFinishedWithStream ( void )

// Line 720:	{

	.maxstack	2
L_343:
// Line 721:	   if (bsWriting)

	ldsfld	uint8 'bsWriting'

	ldc.i4	0
	beq	'L_346'
	br	'L_349'
L_347:
// Line 723:	         fputc ( (UChar)(bsBuff >> 24), bsStream );

	ldsfld	uint32 'bsBuff'

	ldc.i4	24
	shr.un
	conv.u1
	conv.i4
	ldsfld	void* 'bsStream'

	call	int32 'fputc'(int32, void*)
	pop
// Line 724:	         bsBuff <<= 8;

	ldsfld	uint32 'bsBuff'

	ldc.i4	8
	shl
	stsfld	uint32 'bsBuff'

// Line 725:	         bsLive -= 8;

	ldsfld	int32 'bsLive'

	ldc.i4	8
	sub
	stsfld	int32 'bsLive'

// Line 726:	         bytesOut++;

	ldsfld	uint32 'bytesOut'

	ldc.i4	1
	add
	stsfld	uint32 'bytesOut'

L_349:
// Line 722:	      while (bsLive > 0) {

	ldsfld	int32 'bsLive'

	ldc.i4	0
	bgt	'L_347'
L_348:
L_346:
// Line 727:	      }

// Line 728:	   bsStream = NULL;

	ldc.i4	0
	stsfld	void* 'bsStream'

// Line 729:	}

L_344:
	ret

}
 .method public hidebysig static uint32 'bsR'(int32 'n' ) cil managed
{
// Line 767:	INLINE UInt32 bsR ( Int32 n )

// Line 768:	{

	.locals
	(
		[0] uint32 'v/0',
		[1] int32 'zzi/1'
	)
	.maxstack	4
L_357:
// Line 769:	   UInt32 v;

// Line 770:	   bsNEEDR ( n );

	br	'L_363'
L_361:
	ldloca	'zzi/1'
	ldsfld	void* 'bsStream'

	call	int32 'fgetc'(void*)
	stind.i4
	ldloc	'zzi/1'
	ldc.i4	-1
	bne.un	'L_365'
	call	void 'compressedStreamEOF'()
L_365:
	ldsfld	uint32 'bsBuff'

	ldc.i4	8
	shl
	conv.i4
	ldloc	'zzi/1'
	conv.i4
	ldc.i4	255
	and
	or
	conv.u4
	stsfld	uint32 'bsBuff'

	ldsfld	int32 'bsLive'

	ldc.i4	8
	add
	stsfld	int32 'bsLive'

L_363:
	ldsfld	int32 'bsLive'

	ldarg	'n'
	blt	'L_361'
L_362:
// Line 771:	   v = (bsBuff >> (bsLive-n)) & ((1 << n)-1);

	ldc.i4	1
	ldarg	'n'
	shl
	ldc.i4	1
	sub
	conv.u4
	ldsfld	uint32 'bsBuff'

	ldsfld	int32 'bsLive'

	ldarg	'n'
	sub
	shr.un
	and
	stloc	'v/0'
// Line 772:	   bsLive -= n;

	ldsfld	int32 'bsLive'

	ldarg	'n'
	sub
	stsfld	int32 'bsLive'

// Line 773:	   return v;

	ldloc	'v/0'
// Line 774:	}

L_358:
	ret

}
 .method public hidebysig static void 'bsW'(int32 'n' , uint32 'v' ) cil managed
{
// Line 778:	INLINE void bsW ( Int32 n, UInt32 v )

// Line 779:	{

	.maxstack	3
L_373:
// Line 780:	   bsNEEDW ( n );

	br	'L_379'
L_377:
	ldsfld	uint32 'bsBuff'

	ldc.i4	24
	shr.un
	conv.u1
	conv.i4
	ldsfld	void* 'bsStream'

	call	int32 'fputc'(int32, void*)
	pop
	ldsfld	uint32 'bsBuff'

	ldc.i4	8
	shl
	stsfld	uint32 'bsBuff'

	ldsfld	int32 'bsLive'

	ldc.i4	8
	sub
	stsfld	int32 'bsLive'

	ldsfld	uint32 'bytesOut'

	ldc.i4	1
	add
	stsfld	uint32 'bytesOut'

L_379:
	ldsfld	int32 'bsLive'

	ldc.i4	8
	bge	'L_377'
L_378:
// Line 781:	   bsBuff |= (v << (32 - bsLive - n));

	ldarg	'v'
	ldsfld	int32 'bsLive'

	neg
	ldc.i4	32
	add
	ldarg	'n'
	sub
	shl
	ldsfld	uint32 'bsBuff'

	or
	stsfld	uint32 'bsBuff'

// Line 782:	   bsLive += n;

	ldsfld	int32 'bsLive'

	ldarg	'n'
	add
	stsfld	int32 'bsLive'

// Line 783:	}

L_374:
	ret

}
 .method public hidebysig static uint8 'bsGetUChar'() cil managed
{
// Line 787:	UChar bsGetUChar ( void )

// Line 788:	{

	.maxstack	1
L_388:
// Line 789:	   return (UChar)bsR(8);

	ldc.i4	8
	call	uint32 'bsR'(int32)
	conv.u1
	conv.i4
// Line 790:	}

L_389:
	ret

}
 .method public hidebysig static void 'bsPutUChar'(uint8 'c' ) cil managed
{
// Line 794:	void bsPutUChar ( UChar c )

// Line 795:	{

	.maxstack	2
L_396:
// Line 796:	   bsW(8, (UInt32)c );

	ldc.i4	8
	ldarg	'c'
	conv.u4
	call	void 'bsW'(int32, uint32)
// Line 797:	}

L_397:
	ret

}
 .method public hidebysig static int32 'bsGetUInt32'() cil managed
{
// Line 801:	Int32 bsGetUInt32 ( void )

// Line 802:	{

	.locals
	(
		[0] uint32 'u/0'
	)
	.maxstack	3
L_404:
// Line 803:	   UInt32 u;

// Line 804:	   u = 0;

	ldc.i4	0
	stloc	'u/0'
// Line 805:	   u = (u << 8) | bsR(8);

	ldc.i4	8
	call	uint32 'bsR'(int32)
	ldc.i4	0
	ldc.i4	8
	shl
	or
	stloc	'u/0'
// Line 806:	   u = (u << 8) | bsR(8);

	ldc.i4	8
	call	uint32 'bsR'(int32)
	ldloc	'u/0'
	ldc.i4	8
	shl
	or
	stloc	'u/0'
// Line 807:	   u = (u << 8) | bsR(8);

	ldc.i4	8
	call	uint32 'bsR'(int32)
	ldloc	'u/0'
	ldc.i4	8
	shl
	or
	stloc	'u/0'
// Line 808:	   u = (u << 8) | bsR(8);

	ldc.i4	8
	call	uint32 'bsR'(int32)
	ldloc	'u/0'
	ldc.i4	8
	shl
	or
	stloc	'u/0'
// Line 809:	   return u;

	ldloc	'u/0'
	conv.i4
// Line 810:	}

L_405:
	ret

}
 .method public hidebysig static uint32 'bsGetIntVS'(uint32 'numBits' ) cil managed
{
// Line 814:	UInt32 bsGetIntVS ( UInt32 numBits )

// Line 815:	{

	.maxstack	1
L_412:
// Line 816:	   return (UInt32)bsR(numBits);

	ldarg	'numBits'
	conv.i4
	call	uint32 'bsR'(int32)
// Line 817:	}

L_413:
	ret

}
 .method public hidebysig static uint32 'bsGetInt32'() cil managed
{
// Line 821:	UInt32 bsGetInt32 ( void )

// Line 822:	{

	.maxstack	1
L_420:
// Line 823:	   return (Int32)bsGetUInt32();

	call	int32 'bsGetUInt32'()
	conv.u4
// Line 824:	}

L_421:
	ret

}
 .method public hidebysig static void 'bsPutUInt32'(uint32 'u' ) cil managed
{
// Line 828:	void bsPutUInt32 ( UInt32 u )

// Line 829:	{

	.maxstack	3
L_428:
// Line 830:	   bsW ( 8, (u >> 24) & 0xffL );

	ldc.i4	8
	ldarg	'u'
	ldc.i4	24
	shr.un
	conv.i4
	ldc.i4	255
	and
	conv.u4
	call	void 'bsW'(int32, uint32)
// Line 831:	   bsW ( 8, (u >> 16) & 0xffL );

	ldc.i4	8
	ldarg	'u'
	ldc.i4	16
	shr.un
	conv.i4
	ldc.i4	255
	and
	conv.u4
	call	void 'bsW'(int32, uint32)
// Line 832:	   bsW ( 8, (u >>  8) & 0xffL );

	ldc.i4	8
	ldarg	'u'
	ldc.i4	8
	shr.un
	conv.i4
	ldc.i4	255
	and
	conv.u4
	call	void 'bsW'(int32, uint32)
// Line 833:	   bsW ( 8,  u        & 0xffL );

	ldc.i4	8
	ldarg	'u'
	conv.i4
	ldc.i4	255
	and
	conv.u4
	call	void 'bsW'(int32, uint32)
// Line 834:	}

L_429:
	ret

}
 .method public hidebysig static void 'bsPutInt32'(int32 'c' ) cil managed
{
// Line 838:	void bsPutInt32 ( Int32 c )

// Line 839:	{

	.maxstack	1
L_436:
// Line 840:	   bsPutUInt32 ( (UInt32)c );

	ldarg	'c'
	conv.u4
	call	void 'bsPutUInt32'(uint32)
// Line 841:	}

L_437:
	ret

}
 .method public hidebysig static void 'bsPutIntVS'(int32 'numBits' , uint32 'c' ) cil managed
{
// Line 845:	void bsPutIntVS ( Int32 numBits, UInt32 c )

// Line 846:	{

	.maxstack	2
L_444:
// Line 847:	   bsW ( numBits, c );

	ldarg	'numBits'
	ldarg	'c'
	call	void 'bsW'(int32, uint32)
// Line 848:	}

L_445:
	ret

}
 .method public hidebysig static void 'hbMakeCodeLengths'(void* 'len' , void* 'freq' , int32 'alphaSize' , int32 'maxLen' ) cil managed
{
// Line 893:	void hbMakeCodeLengths ( UChar *len,

// Line 894:	                         Int32 *freq,

// Line 895:	                         Int32 alphaSize,

// Line 896:	                         Int32 maxLen )

// Line 897:	{

	.locals
	(
		[0] int32 'nNodes/0',
		[1] int32 'nHeap/1',
		[2] int32 'n1/2',
		[3] int32 'n2/3',
		[4] int32 'i/4',
		[5] int32 'j/5',
		[6] int32 'k/6',
		[7] uint8 'tooLong/7',
		[8] valuetype 'int32[260]' 'heap/8',
		[9] valuetype 'int32[516]' 'weight/9',
		[10] valuetype 'int32[516]' 'parent/10',
		[11] int32 'zz/11',
		[12] int32 'tmp/12',
		[13] int32 'zz/13',
		[14] int32 'yy/14',
		[15] int32 'tmp/15',
		[16] int32 'zz/16',
		[17] int32 'yy/17',
		[18] int32 'tmp/18',
		[19] int32 'zz/19',
		[20] int32 'tmp/20'
	)
	.maxstack	7
L_452:
// Line 907:	   Int32 parent [ MAX_ALPHA_SIZE * 2 ];

// Line 908:	

// Line 909:	   PRINTLOC;

// Line 910:	

	ldc.i4	0
	stloc	'i/4'
	br	'L_456'
L_455:
// Line 912:	      weight[i+1] = (freq[i] == 0 ? 1 : freq[i]) << 8;

	ldloc	'i/4'
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'freq'
	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_532'
	ldc.i4	1
	br	'L_533'
L_532:
	ldloc	'i/4'
	ldc.i4	2
	shl
	ldarg	'freq'
	add
	ldind.i4
L_533:
	ldc.i4	8
	shl
	stind.i4
L_458:
	ldloc	'i/4'
	ldc.i4	1
	add
	stloc	'i/4'
// Line 911:	   for (i = 0; i < alphaSize; i++)

L_456:
	ldloc	'i/4'
	ldarg	'alphaSize'
	blt	'L_455'
L_457:
L_459:
// Line 915:	

// Line 916:	      nNodes = alphaSize;

	ldarg	'alphaSize'
	stloc	'nNodes/0'
// Line 917:	      nHeap = 0;

	ldc.i4	0
	stloc	'nHeap/1'
// Line 918:	

// Line 919:	      heap[0] = 0;

	ldloca	'heap/8'
	ldc.i4	0
	stind.i4
// Line 920:	      weight[0] = 0;

	ldloca	'weight/9'
	ldc.i4	0
	stind.i4
// Line 921:	      parent[0] = -2;

	ldloca	'parent/10'
	ldc.i4	-2
	stind.i4
// Line 922:	

	ldc.i4	1
	stloc	'i/4'
	br	'L_464'
L_463:
// Line 924:	         parent[i] = -1;

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'parent/10'
	add
	ldc.i4	-1
	stind.i4
// Line 925:	         nHeap++;

	ldloc	'nHeap/1'
	ldc.i4	1
	add
	stloc	'nHeap/1'
// Line 926:	         heap[nHeap] = i;

	ldloc	'nHeap/1'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'i/4'
	stind.i4
// Line 927:	         UPHEAP(nHeap);

	ldloc	'nHeap/1'
	stloc	'zz/19'
	ldloc	'zz/19'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stloc	'tmp/20'
	br	'L_471'
L_469:
	ldloc	'zz/19'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'zz/19'
	ldc.i4	1
	shr
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stind.i4
	ldloc	'zz/19'
	ldc.i4	1
	shr
	stloc	'zz/19'
L_471:
	ldloc	'tmp/20'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldloc	'zz/19'
	ldc.i4	1
	shr
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	blt	'L_469'
L_470:
	ldloc	'zz/19'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'tmp/20'
	stind.i4
L_466:
	ldloc	'i/4'
	ldc.i4	1
	add
	stloc	'i/4'
// Line 923:	      for (i = 1; i <= alphaSize; i++) {

L_464:
	ldloc	'i/4'
	ldarg	'alphaSize'
	ble	'L_463'
L_465:
// Line 928:	      }

// Line 929:	      if (!(nHeap < (MAX_ALPHA_SIZE+2)))

	ldloc	'nHeap/1'
	ldc.i4	260
	blt	'L_479'
// Line 930:	         panic ( "hbMakeCodeLengths(1)" );

	ldsflda	valuetype 'int8[]' 'L_2'

	call	void 'panic'(void*)
L_476:
	br	'L_479'
L_477:
// Line 933:	         n1 = heap[1]; heap[1] = heap[nHeap]; nHeap--; DOWNHEAP(1);

	ldloca	'heap/8'
	ldc.i4	4
	add
	ldind.i4
	stloc	'n1/2'
	ldloca	'heap/8'
	ldc.i4	4
	add
	ldloc	'nHeap/1'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stind.i4
	ldloc	'nHeap/1'
	ldc.i4	1
	sub
	stloc	'nHeap/1'
	ldc.i4	1
	stloc	'zz/16'
	ldc.i4	1
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stloc	'tmp/18'
L_482:
	ldloc	'zz/16'
	ldc.i4	1
	shl
	stloc	'yy/17'
	ldloc	'yy/17'
	ldloc	'nHeap/1'
	bgt	'L_483'
L_486:
	ldloc	'yy/17'
	ldloc	'nHeap/1'
	bge	'L_487'
	ldloc	'yy/17'
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldloc	'yy/17'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	bge	'L_487'
	ldloc	'yy/17'
	ldc.i4	1
	add
	stloc	'yy/17'
L_487:
	ldloc	'tmp/18'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldloc	'yy/17'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	blt	'L_483'
L_488:
	ldloc	'zz/16'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'yy/17'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stind.i4
	ldloc	'yy/17'
	stloc	'zz/16'
L_484:
	br	'L_482'
L_483:
	ldloc	'zz/16'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'tmp/18'
	stind.i4
// Line 934:	         n2 = heap[1]; heap[1] = heap[nHeap]; nHeap--; DOWNHEAP(1);

	ldloca	'heap/8'
	ldc.i4	4
	add
	ldind.i4
	stloc	'n2/3'
	ldloca	'heap/8'
	ldc.i4	4
	add
	ldloc	'nHeap/1'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stind.i4
	ldloc	'nHeap/1'
	ldc.i4	1
	sub
	stloc	'nHeap/1'
	ldc.i4	1
	stloc	'zz/13'
	ldc.i4	1
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stloc	'tmp/15'
L_492:
	ldloc	'zz/13'
	ldc.i4	1
	shl
	stloc	'yy/14'
	ldloc	'yy/14'
	ldloc	'nHeap/1'
	bgt	'L_493'
L_496:
	ldloc	'yy/14'
	ldloc	'nHeap/1'
	bge	'L_497'
	ldloc	'yy/14'
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldloc	'yy/14'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	bge	'L_497'
	ldloc	'yy/14'
	ldc.i4	1
	add
	stloc	'yy/14'
L_497:
	ldloc	'tmp/15'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldloc	'yy/14'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	blt	'L_493'
L_498:
	ldloc	'zz/13'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'yy/14'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stind.i4
	ldloc	'yy/14'
	stloc	'zz/13'
L_494:
	br	'L_492'
L_493:
	ldloc	'zz/13'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'tmp/15'
	stind.i4
// Line 935:	         nNodes++;

	ldloc	'nNodes/0'
	ldc.i4	1
	add
	stloc	'nNodes/0'
// Line 936:	         parent[n1] = parent[n2] = nNodes;

	ldloc	'n1/2'
	ldc.i4	2
	shl
	ldloca	'parent/10'
	add
	ldloc	'n2/3'
	ldc.i4	2
	shl
	ldloca	'parent/10'
	add
	ldloc	'nNodes/0'
	stind.i4
	ldloc	'n2/3'
	ldc.i4	2
	shl
	ldloca	'parent/10'
	add
	ldind.i4
	stind.i4
// Line 937:	         weight[nNodes] = ADDWEIGHTS(weight[n1], weight[n2]);

	ldloc	'nNodes/0'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldloc	'n1/2'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldc.i4	255
	and
	ldloc	'n2/3'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldc.i4	255
	and
	ble	'L_534'
	ldloc	'n1/2'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldc.i4	255
	and
	br	'L_535'
L_534:
	ldloc	'n2/3'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldc.i4	255
	and
L_535:
	ldc.i4	1
	add
	conv.u4
	ldloc	'n1/2'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	conv.u4
	ldc.i4	-256
	and
	ldloc	'n2/3'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	conv.u4
	ldc.i4	-256
	and
	add
	or
	conv.i4
	stind.i4
// Line 938:	         parent[nNodes] = -1;

	ldloc	'nNodes/0'
	ldc.i4	2
	shl
	ldloca	'parent/10'
	add
	ldc.i4	-1
	stind.i4
// Line 939:	         nHeap++;

	ldloc	'nHeap/1'
	ldc.i4	1
	add
	stloc	'nHeap/1'
// Line 940:	         heap[nHeap] = nNodes;

	ldloc	'nHeap/1'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'nNodes/0'
	stind.i4
// Line 941:	         UPHEAP(nHeap);

	ldloc	'nHeap/1'
	stloc	'zz/11'
	ldloc	'zz/11'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stloc	'tmp/12'
	br	'L_504'
L_502:
	ldloc	'zz/11'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'zz/11'
	ldc.i4	1
	shr
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	stind.i4
	ldloc	'zz/11'
	ldc.i4	1
	shr
	stloc	'zz/11'
L_504:
	ldloc	'tmp/12'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldloc	'zz/11'
	ldc.i4	1
	shr
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	blt	'L_502'
L_503:
	ldloc	'zz/11'
	ldc.i4	2
	shl
	ldloca	'heap/8'
	add
	ldloc	'tmp/12'
	stind.i4
L_479:
// Line 931:	

// Line 932:	      while (nHeap > 1) {

	ldloc	'nHeap/1'
	ldc.i4	1
	bgt	'L_477'
L_478:
// Line 942:	      }

// Line 943:	      if (!(nNodes < (MAX_ALPHA_SIZE * 2)))

	ldloc	'nNodes/0'
	ldc.i4	516
	blt	'L_509'
// Line 944:	         panic ( "hbMakeCodeLengths(2)" );

	ldsflda	valuetype 'int8[]' 'L_3'

	call	void 'panic'(void*)
L_509:
// Line 945:	

// Line 946:	      tooLong = False;

	ldc.i4	0
	stloc	'tooLong/7'
	ldc.i4	1
	stloc	'i/4'
	br	'L_511'
L_510:
// Line 948:	         j = 0;

	ldc.i4	0
	stloc	'j/5'
// Line 949:	         k = i;

	ldloc	'i/4'
	stloc	'k/6'
	br	'L_517'
L_515:
	ldloc	'k/6'
	ldc.i4	2
	shl
	ldloca	'parent/10'
	add
	ldind.i4
	stloc	'k/6'
	ldloc	'j/5'
	ldc.i4	1
	add
	stloc	'j/5'
L_517:
// Line 950:	         while (parent[k] >= 0) { k = parent[k]; j++; }

	ldloc	'k/6'
	ldc.i4	2
	shl
	ldloca	'parent/10'
	add
	ldind.i4
	ldc.i4	0
	bge	'L_515'
L_516:
// Line 951:	         len[i-1] = j;

	ldloc	'i/4'
	ldc.i4	1
	sub
	ldarg	'len'
	add
	ldloc	'j/5'
	conv.u1
	stind.i1
// Line 952:	         if (j > maxLen) tooLong = True;

	ldloc	'j/5'
	ldarg	'maxLen'
	ble	'L_520'
	ldc.i4	1
	stloc	'tooLong/7'
L_520:
L_513:
	ldloc	'i/4'
	ldc.i4	1
	add
	stloc	'i/4'
// Line 947:	      for (i = 1; i <= alphaSize; i++) {

L_511:
	ldloc	'i/4'
	ldarg	'alphaSize'
	ble	'L_510'
L_512:
// Line 953:	      }

// Line 954:	

// Line 955:	      if (! tooLong) break;

	ldloc	'tooLong/7'
	ldc.i4	0
	beq	'L_460'
L_522:
// Line 956:	

	ldc.i4	1
	stloc	'i/4'
	br	'L_524'
L_523:
// Line 958:	         j = weight[i] >> 8;

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldind.i4
	ldc.i4	8
	shr
	stloc	'j/5'
// Line 959:	         j = 1 + (j / 2);

	ldloc	'j/5'
	ldc.i4	1
	shr.un
	ldc.i4	1
	add
	stloc	'j/5'
// Line 960:	         weight[i] = j << 8;

	ldloc	'i/4'
	ldc.i4	2
	shl
	ldloca	'weight/9'
	add
	ldloc	'j/5'
	ldc.i4	8
	shl
	stind.i4
L_526:
	ldloc	'i/4'
	ldc.i4	1
	add
	stloc	'i/4'
// Line 957:	      for (i = 1; i < alphaSize; i++) {

L_524:
	ldloc	'i/4'
	ldarg	'alphaSize'
	blt	'L_523'
L_525:
// Line 961:	      }

L_461:
// Line 913:	

// Line 914:	   while (True) {

	br	'L_459'
L_460:
// Line 962:	   }

// Line 963:	}

L_453:
	ret

}
 .method public hidebysig static void 'hbAssignCodes'(void* 'code' , void* 'length' , int32 'minLen' , int32 'maxLen' , int32 'alphaSize' ) cil managed
{
// Line 967:	void hbAssignCodes ( Int32 *code,

// Line 968:	                     UChar *length,

// Line 969:	                     Int32 minLen,

// Line 970:	                     Int32 maxLen,

// Line 971:	                     Int32 alphaSize )

// Line 972:	{

	.locals
	(
		[0] int32 'n/0',
		[1] int32 'vec/1',
		[2] int32 'i/2'
	)
	.maxstack	2
L_539:
// Line 973:	   Int32 n, vec, i;

// Line 974:	

// Line 975:	

// Line 976:	   PRINTLOC;

// Line 977:	

// Line 978:	   vec = 0;

	ldc.i4	0
	stloc	'vec/1'
	ldarg	'minLen'
	stloc	'n/0'
	br	'L_543'
L_542:
	ldc.i4	0
	stloc	'i/2'
	br	'L_548'
L_547:
// Line 981:	         if (length[i] == n) { code[i] = vec; vec++; };

	ldloc	'i/2'
	ldarg	'length'
	add
	ldind.u1
	conv.i4
	ldloc	'n/0'
	bne.un	'L_551'
	ldloc	'i/2'
	ldc.i4	2
	shl
	ldarg	'code'
	add
	ldloc	'vec/1'
	stind.i4
	ldloc	'vec/1'
	ldc.i4	1
	add
	stloc	'vec/1'
L_551:
L_550:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 980:	      for (i = 0; i < alphaSize; i++)

L_548:
	ldloc	'i/2'
	ldarg	'alphaSize'
	blt	'L_547'
L_549:
// Line 982:	      vec <<= 1;

	ldloc	'vec/1'
	ldc.i4	1
	shl
	stloc	'vec/1'
L_545:
	ldloc	'n/0'
	ldc.i4	1
	add
	stloc	'n/0'
// Line 979:	   for (n = minLen; n <= maxLen; n++) {

L_543:
	ldloc	'n/0'
	ldarg	'maxLen'
	ble	'L_542'
L_544:
// Line 983:	   }

// Line 984:	}

L_540:
	ret

}
 .method public hidebysig static void 'hbCreateDecodeTables'(void* 'limit' , void* 'base' , void* 'perm' , void* 'length' , int32 'minLen' , int32 'maxLen' , int32 'alphaSize' ) cil managed
{
// Line 988:	void hbCreateDecodeTables ( Int32 *limit,

// Line 989:	                            Int32 *base,

// Line 990:	                            Int32 *perm,

// Line 991:	                            UChar *length,

// Line 992:	                            Int32 minLen,

// Line 993:	                            Int32 maxLen,

// Line 994:	                            Int32 alphaSize )

// Line 995:	{

	.locals
	(
		[0] int32 'pp/0',
		[1] int32 'i/1',
		[2] int32 'j/2',
		[3] int32 'vec/3'
	)
	.maxstack	4
L_560:
// Line 996:	   Int32 pp, i, j, vec;

// Line 997:	

// Line 998:	

// Line 999:	   PRINTLOC;

// Line 1000:	

// Line 1001:	   pp = 0;

	ldc.i4	0
	stloc	'pp/0'
	ldarg	'minLen'
	stloc	'i/1'
	br	'L_564'
L_563:
	ldc.i4	0
	stloc	'j/2'
	br	'L_568'
L_567:
// Line 1004:	         if (length[j] == i) { perm[pp] = j; pp++; };

	ldloc	'j/2'
	ldarg	'length'
	add
	ldind.u1
	conv.i4
	ldloc	'i/1'
	bne.un	'L_571'
	ldloc	'pp/0'
	ldc.i4	2
	shl
	ldarg	'perm'
	add
	ldloc	'j/2'
	stind.i4
	ldloc	'pp/0'
	ldc.i4	1
	add
	stloc	'pp/0'
L_571:
L_570:
	ldloc	'j/2'
	ldc.i4	1
	add
	stloc	'j/2'
// Line 1003:	      for (j = 0; j < alphaSize; j++)

L_568:
	ldloc	'j/2'
	ldarg	'alphaSize'
	blt	'L_567'
L_569:
L_566:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 1002:	   for (i = minLen; i <= maxLen; i++)

L_564:
	ldloc	'i/1'
	ldarg	'maxLen'
	ble	'L_563'
L_565:
// Line 1005:	

	ldc.i4	0
	stloc	'i/1'
	br	'L_575'
L_574:
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldc.i4	0
	stind.i4
L_577:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 1006:	   for (i = 0; i < MAX_CODE_LEN; i++) base[i] = 0;

L_575:
	ldloc	'i/1'
	ldc.i4	23
	blt	'L_574'
L_576:
	ldc.i4	0
	stloc	'i/1'
	br	'L_579'
L_578:
	ldloc	'i/1'
	ldarg	'length'
	add
	ldind.u1
	conv.i4
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldloc	'i/1'
	ldarg	'length'
	add
	ldind.u1
	conv.i4
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_581:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 1007:	   for (i = 0; i < alphaSize; i++) base[length[i]+1]++;

L_579:
	ldloc	'i/1'
	ldarg	'alphaSize'
	blt	'L_578'
L_580:
// Line 1008:	

	ldc.i4	1
	stloc	'i/1'
	br	'L_583'
L_582:
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldloc	'i/1'
	ldc.i4	1
	sub
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldind.i4
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldind.i4
	add
	stind.i4
L_585:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 1009:	   for (i = 1; i < MAX_CODE_LEN; i++) base[i] += base[i-1];

L_583:
	ldloc	'i/1'
	ldc.i4	23
	blt	'L_582'
L_584:
// Line 1010:	

	ldc.i4	0
	stloc	'i/1'
	br	'L_587'
L_586:
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldarg	'limit'
	add
	ldc.i4	0
	stind.i4
L_589:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 1011:	   for (i = 0; i < MAX_CODE_LEN; i++) limit[i] = 0;

L_587:
	ldloc	'i/1'
	ldc.i4	23
	blt	'L_586'
L_588:
// Line 1012:	   vec = 0;

	ldc.i4	0
	stloc	'vec/3'
// Line 1013:	

	ldarg	'minLen'
	stloc	'i/1'
	br	'L_591'
L_590:
// Line 1015:	      vec += (base[i+1] - base[i]);

	ldloc	'i/1'
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldind.i4
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldind.i4
	sub
	ldloc	'vec/3'
	add
	stloc	'vec/3'
// Line 1016:	      limit[i] = vec-1;

	ldloc	'i/1'
	ldc.i4	2
	shl
	ldarg	'limit'
	add
	ldloc	'vec/3'
	ldc.i4	1
	sub
	stind.i4
// Line 1017:	      vec <<= 1;

	ldloc	'vec/3'
	ldc.i4	1
	shl
	stloc	'vec/3'
L_593:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 1014:	   for (i = minLen; i <= maxLen; i++) {

L_591:
	ldloc	'i/1'
	ldarg	'maxLen'
	ble	'L_590'
L_592:
// Line 1018:	   }

	ldarg	'minLen'
	ldc.i4	1
	add
	stloc	'i/1'
	br	'L_597'
L_596:
// Line 1020:	      base[i] = ((limit[i-1] + 1) << 1) - base[i];

	ldloc	'i/1'
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldloc	'i/1'
	ldc.i4	1
	sub
	ldc.i4	2
	shl
	ldarg	'limit'
	add
	ldind.i4
	ldc.i4	1
	add
	ldc.i4	1
	shl
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldarg	'base'
	add
	ldind.i4
	sub
	stind.i4
L_599:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 1019:	   for (i = minLen + 1; i <= maxLen; i++)

L_597:
	ldloc	'i/1'
	ldarg	'maxLen'
	ble	'L_596'
L_598:
// Line 1021:	}

L_561:
	ret

}
 .method public hidebysig static void 'allocateCompressStructures'() cil managed
{
// Line 1065:	void allocateCompressStructures ( void )

// Line 1066:	{

	.locals
	(
		[0] int32 'n/0',
		[1] int32 'totalDraw/1'
	)
	.maxstack	4
L_605:
// Line 1067:	   Int32 n  = 100000 * blockSize100k;

	ldloca	'n/0'
	ldsfld	int32 'blockSize100k'

	ldc.i4	100000
	mul
	stind.i4
// Line 1068:	   block    = malloc ( (n + 1 + NUM_OVERSHOOT_BYTES) * sizeof(UChar) );

	ldloc	'n/0'
	ldc.i4	21
	add
	conv.u4
	call	void* 'malloc'(uint32)
	stsfld	void* 'block'

// Line 1069:	   quadrant = malloc ( (n     + NUM_OVERSHOOT_BYTES) * sizeof(Int16) );

	ldloc	'n/0'
	ldc.i4	20
	add
	ldc.i4	1
	shl
	conv.u4
	call	void* 'malloc'(uint32)
	stsfld	void* 'quadrant'

// Line 1070:	   zptr     = malloc ( n                             * sizeof(Int32) );

	ldloc	'n/0'
	ldc.i4	2
	shl
	conv.u4
	call	void* 'malloc'(uint32)
	stsfld	void* 'zptr'

// Line 1071:	   ftab     = malloc ( 65537                         * sizeof(Int32) );

	ldc.i4	262148
	conv.u4
	call	void* 'malloc'(uint32)
	stsfld	void* 'ftab'

// Line 1072:	

// Line 1073:	

// Line 1074:	   PRINTLOC;

// Line 1075:	

// Line 1076:	   if (block == NULL || quadrant == NULL ||

// Line 1077:	       zptr == NULL  || ftab == NULL) {

	ldsfld	void* 'block'

	ldc.i4	0
	beq	'L_613'
	ldsfld	void* 'quadrant'

	ldc.i4	0
	beq	'L_613'
	ldsfld	void* 'zptr'

	ldc.i4	0
	beq	'L_613'
	ldsfld	void* 'ftab'

	ldc.i4	0
	bne.un	'L_608'
L_613:
// Line 1078:	      Int32 totalDraw

// Line 1079:	         = (n + 1 + NUM_OVERSHOOT_BYTES) * sizeof(UChar) +

	ldloca	'totalDraw/1'
	ldloc	'n/0'
	ldc.i4	20
	add
	ldc.i4	1
	shl
	ldloc	'n/0'
	ldc.i4	21
	add
	add
	ldloc	'n/0'
	ldc.i4	2
	shl
	add
	ldc.i4	262148
	add
	stind.i4
// Line 1082:	           65537                         * sizeof(Int32);

// Line 1083:	

// Line 1084:	      compressOutOfMemory ( totalDraw, n );

	ldloc	'totalDraw/1'
	ldloc	'n/0'
	call	void 'compressOutOfMemory'(int32, int32)
L_608:
// Line 1085:	   }

// Line 1086:	

// Line 1087:	    
// Line 1088:	
// Line 1089:	
// Line 1090:	
// Line 1091:	

// Line 1092:	   block++;

	ldsfld	void* 'block'

	ldc.i4	1
	add
	stsfld	void* 'block'

// Line 1093:	

// Line 1094:	    
// Line 1095:	
// Line 1096:	
// Line 1097:	
// Line 1098:	
// Line 1099:	
// Line 1100:	
// Line 1101:	
// Line 1102:	
// Line 1103:	

// Line 1104:	   szptr = (UInt16*)zptr;

	ldsfld	void* 'zptr'

	stsfld	void* 'szptr'

// Line 1105:	}

L_606:
	ret

}
 .method public hidebysig static void 'setDecompressStructureSizes'(int32 'newSize100k' ) cil managed
{
// Line 1109:	void setDecompressStructureSizes ( Int32 newSize100k )

// Line 1110:	{

	.locals
	(
		[0] int32 'n/0',
		[1] int32 'totalDraw/1',
		[2] int32 'n/2',
		[3] int32 'totalDraw/3'
	)
	.maxstack	4
L_617:
// Line 1111:	

// Line 1112:	   PRINTLOC;

// Line 1113:	

// Line 1114:	   if (! (0 <= newSize100k   && newSize100k   <= 9 &&

// Line 1115:	          0 <= blockSize100k && blockSize100k <= 9))

	ldc.i4	0
	ldarg	'newSize100k'
	bgt	'L_641'
	ldarg	'newSize100k'
	ldc.i4	9
	bgt	'L_641'
	ldc.i4	0
	ldsfld	int32 'blockSize100k'

	bgt	'L_641'
	ldsfld	int32 'blockSize100k'

	ldc.i4	9
	ble	'L_620'
L_641:
// Line 1116:	      panic ( "setDecompressStructureSizes" );

	ldsflda	valuetype 'int8[]' 'L_4'

	call	void 'panic'(void*)
L_620:
// Line 1117:	

// Line 1118:	   if (newSize100k == blockSize100k) return;

	ldarg	'newSize100k'
	ldsfld	int32 'blockSize100k'

	beq	'L_618'
L_621:
// Line 1119:	

// Line 1120:	   blockSize100k = newSize100k;

	ldarg	'newSize100k'
	stsfld	int32 'blockSize100k'

// Line 1121:	

// Line 1122:	   if (ll16  != NULL) free ( ll16  );

	ldsfld	void* 'll16'

	ldc.i4	0
	beq	'L_622'
	ldsfld	void* 'll16'

	call	void 'free'(void*)
L_622:
// Line 1123:	   if (ll4   != NULL) free ( ll4   );

	ldsfld	void* 'll4'

	ldc.i4	0
	beq	'L_623'
	ldsfld	void* 'll4'

	call	void 'free'(void*)
L_623:
// Line 1124:	   if (ll8   != NULL) free ( ll8   );

	ldsfld	void* 'll8'

	ldc.i4	0
	beq	'L_624'
	ldsfld	void* 'll8'

	call	void 'free'(void*)
L_624:
// Line 1125:	   if (tt    != NULL) free ( tt    );

	ldsfld	void* 'tt'

	ldc.i4	0
	beq	'L_625'
	ldsfld	void* 'tt'

	call	void 'free'(void*)
L_625:
// Line 1126:	

// Line 1127:	   if (newSize100k == 0) return;

	ldarg	'newSize100k'
	ldc.i4	0
	beq	'L_618'
L_626:
// Line 1128:	

// Line 1129:	   if (smallMode) {

	ldsfld	uint8 'smallMode'

	ldc.i4	0
	beq	'L_627'
// Line 1130:	

// Line 1131:	      Int32 n = 100000 * newSize100k;

	ldloca	'n/2'
	ldarg	'newSize100k'
	ldc.i4	100000
	mul
	stind.i4
// Line 1132:	      ll16    = malloc ( n * sizeof(UInt16) );

	ldloc	'n/2'
	ldc.i4	1
	shl
	conv.u4
	call	void* 'malloc'(uint32)
	stsfld	void* 'll16'

// Line 1133:	      ll4     = malloc ( ((n+1) >> 1) * sizeof(UChar) );

	ldloc	'n/2'
	ldc.i4	1
	add
	ldc.i4	1
	shr
	conv.u4
	call	void* 'malloc'(uint32)
	stsfld	void* 'll4'

// Line 1134:	

// Line 1135:	      if (ll4 == NULL || ll16 == NULL) {

	ldsfld	void* 'll4'

	ldc.i4	0
	beq	'L_642'
	ldsfld	void* 'll16'

	ldc.i4	0
	bne.un	'L_633'
L_642:
// Line 1136:	         Int32 totalDraw

// Line 1137:	            = n * sizeof(Int16) + ((n+1) >> 1) * sizeof(UChar);

	ldloca	'totalDraw/3'
	ldloc	'n/2'
	ldc.i4	1
	add
	ldc.i4	1
	shr
	ldloc	'n/2'
	ldc.i4	1
	shl
	add
	stind.i4
// Line 1138:	         uncompressOutOfMemory ( totalDraw, n );

	ldloc	'totalDraw/3'
	ldloc	'n/2'
	call	void 'uncompressOutOfMemory'(int32, int32)
L_629:
// Line 1139:	      }

// Line 1140:	

	br	'L_633'
L_627:
// Line 1141:	   } else {

// Line 1142:	

// Line 1143:	      Int32 n = 100000 * newSize100k;

	ldloca	'n/0'
	ldarg	'newSize100k'
	ldc.i4	100000
	mul
	stind.i4
// Line 1144:	      ll8     = malloc ( n * sizeof(UChar) );

	ldloc	'n/0'
	conv.u4
	call	void* 'malloc'(uint32)
	stsfld	void* 'll8'

// Line 1145:	      tt      = malloc ( n * sizeof(Int32) );

	ldloc	'n/0'
	ldc.i4	2
	shl
	conv.u4
	call	void* 'malloc'(uint32)
	stsfld	void* 'tt'

// Line 1146:	

// Line 1147:	      if (ll8 == NULL || tt == NULL) {

	ldsfld	void* 'll8'

	ldc.i4	0
	beq	'L_643'
	ldsfld	void* 'tt'

	ldc.i4	0
	bne.un	'L_635'
L_643:
// Line 1148:	         Int32 totalDraw

// Line 1149:	            = n * sizeof(UChar) + n * sizeof(UInt32);

	ldloca	'totalDraw/1'
	ldloc	'n/0'
	ldc.i4	2
	shl
	ldloc	'n/0'
	add
	stind.i4
// Line 1150:	         uncompressOutOfMemory ( totalDraw, n );

	ldloc	'totalDraw/1'
	ldloc	'n/0'
	call	void 'uncompressOutOfMemory'(int32, int32)
L_635:
// Line 1151:	      }

// Line 1152:	

L_633:
// Line 1153:	   }

// Line 1154:	}

L_618:
	ret

}
 .method public hidebysig static void 'makeMaps'() cil managed
{
// Line 1163:	void makeMaps ( void )

// Line 1164:	{

	.locals
	(
		[0] int32 'i/0'
	)
	.maxstack	2
L_647:
// Line 1165:	   Int32 i;

// Line 1166:	

// Line 1167:	   PRINTLOC;

// Line 1168:	

// Line 1169:	   nInUse = 0;

	ldc.i4	0
	stsfld	int32 'nInUse'

	ldc.i4	0
	stloc	'i/0'
	br	'L_651'
L_650:
// Line 1171:	      if (inUse[i]) {

	ldloc	'i/0'
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldind.u1
	ldc.i4	0
	beq	'L_654'
// Line 1172:	         seqToUnseq[nInUse] = i;

	ldsfld	int32 'nInUse'

	ldsflda	valuetype 'uint8[256]' 'seqToUnseq'

	add
	ldloc	'i/0'
	conv.u1
	stind.i1
// Line 1173:	         unseqToSeq[i] = nInUse;

	ldloc	'i/0'
	ldsflda	valuetype 'uint8[256]' 'unseqToSeq'

	add
	ldsfld	int32 'nInUse'

	conv.u1
	stind.i1
// Line 1174:	         nInUse++;

	ldsfld	int32 'nInUse'

	ldc.i4	1
	add
	stsfld	int32 'nInUse'

L_654:
L_653:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1170:	   for (i = 0; i < 256; i++)

L_651:
	ldloc	'i/0'
	ldc.i4	256
	blt	'L_650'
L_652:
// Line 1175:	      }

// Line 1176:	}

L_648:
	ret

}
 .method public hidebysig static void 'generateMTFValues'() cil managed
{
// Line 1180:	void generateMTFValues ( void )

// Line 1181:	{

	.locals
	(
		[0] int32 '$anontemp2/0',
		[1] int32 '$anontemp3/1',
		[2] valuetype 'uint8[256]' 'yy/2',
		[3] int32 'i/3',
		[4] int32 'j/4',
		[5] uint8 'tmp/5',
		[6] uint8 'tmp2/6',
		[7] int32 'zPend/7',
		[8] int32 'wr/8',
		[9] int32 'EOB/9',
		[10] uint8 'll_i/10'
	)
	.maxstack	3
L_662:
// Line 1188:	   Int32  EOB;

// Line 1189:	

// Line 1190:	   PRINTLOC;

// Line 1191:	

// Line 1192:	   makeMaps();

	call	void 'makeMaps'()
// Line 1193:	   EOB = nInUse+1;

	ldsfld	int32 'nInUse'

	ldc.i4	1
	add
	stloc	'EOB/9'
// Line 1194:	

	ldc.i4	0
	stloc	'i/3'
	br	'L_666'
L_665:
	ldloc	'i/3'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	add
	ldc.i4	0
	stind.i4
L_668:
	ldloc	'i/3'
	ldc.i4	1
	add
	stloc	'i/3'
// Line 1195:	   for (i = 0; i <= EOB; i++) mtfFreq[i] = 0;

L_666:
	ldloc	'i/3'
	ldloc	'EOB/9'
	ble	'L_665'
L_667:
// Line 1196:	

// Line 1197:	   wr = 0;

	ldc.i4	0
	stloc	'wr/8'
// Line 1198:	   zPend = 0;

	ldc.i4	0
	stloc	'zPend/7'
	ldc.i4	0
	stloc	'i/3'
	br	'L_670'
L_669:
	ldloc	'i/3'
	ldloca	'yy/2'
	add
	ldloc	'i/3'
	conv.u1
	stind.i1
L_672:
	ldloc	'i/3'
	ldc.i4	1
	add
	stloc	'i/3'
// Line 1199:	   for (i = 0; i < nInUse; i++) yy[i] = (UChar) i;

L_670:
	ldloc	'i/3'
	ldsfld	int32 'nInUse'

	blt	'L_669'
L_671:
// Line 1200:	

// Line 1201:	

	ldc.i4	0
	stloc	'i/3'
	br	'L_674'
L_673:
// Line 1203:	      UChar ll_i;

// Line 1204:	

// Line 1205:	      #if DEBUG

// Line 1206:	         assert (wr <= i);

// Line 1207:	      #endif

// Line 1208:	

// Line 1209:	      ll_i = unseqToSeq[block[zptr[i] - 1]];

	ldloc	'i/3'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldc.i4	1
	sub
	ldsfld	void* 'block'

	add
	ldind.u1
	conv.i4
	ldsflda	valuetype 'uint8[256]' 'unseqToSeq'

	add
	ldind.u1
	stloc	'll_i/10'
// Line 1210:	      #if DEBUG

// Line 1211:	         assert (ll_i < nInUse);

// Line 1212:	      #endif

// Line 1213:	      j = 0;

	ldc.i4	0
	stloc	'j/4'
// Line 1214:	      tmp = yy[j];

	ldc.i4	0
	ldloca	'yy/2'
	add
	ldind.u1
	stloc	'tmp/5'
	br	'L_680'
L_678:
// Line 1216:	         j++;

	ldloc	'j/4'
	ldc.i4	1
	add
	stloc	'j/4'
// Line 1217:	         tmp2 = tmp;

	ldloc	'tmp/5'
	stloc	'tmp2/6'
// Line 1218:	         tmp = yy[j];

	ldloc	'j/4'
	ldloca	'yy/2'
	add
	ldind.u1
	stloc	'tmp/5'
// Line 1219:	         yy[j] = tmp2;

	ldloc	'j/4'
	ldloca	'yy/2'
	add
	ldloc	'tmp2/6'
	stind.i1
L_680:
// Line 1215:	      while ( ll_i != tmp ) {

	ldloc	'll_i/10'
	conv.i4
	ldloc	'tmp/5'
	conv.i4
	bne.un	'L_678'
L_679:
// Line 1220:	      };

// Line 1221:	      yy[0] = tmp;

	ldloca	'yy/2'
	ldloc	'tmp/5'
	stind.i1
// Line 1222:		  if (j == 0) {

	ldloc	'j/4'
	ldc.i4	0
	bne.un	'L_683'
// Line 1223:	         zPend++;

	ldloc	'zPend/7'
	ldc.i4	1
	add
	stloc	'zPend/7'
	br	'L_686'
L_683:
// Line 1224:	      } else {

// Line 1225:	         if (zPend > 0) {

	ldloc	'zPend/7'
	ldc.i4	0
	ble	'L_688'
// Line 1226:	            zPend--;

	ldloc	'zPend/7'
	ldc.i4	1
	sub
	stloc	'zPend/7'
L_690:
// Line 1228:	               switch (zPend % 2) {

	ldloc	'zPend/7'
	ldc.i4	1
	and
	conv.i4
	stloc	'$anontemp2/0'
	ldloc	'$anontemp2/0'
	ldc.i4	0
	beq	'L_696'
	ldloc	'$anontemp2/0'
	ldc.i4	1
	beq	'L_697'
	br	'L_699'
L_696:
// Line 1229:	                  case 0: szptr[wr] = RUNA; wr++; mtfFreq[RUNA]++; break;

	ldloc	'wr/8'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldc.i4	0
	stind.i2
	ldloc	'wr/8'
	ldc.i4	1
	add
	stloc	'wr/8'
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_694'
L_697:
// Line 1230:	                  case 1: szptr[wr] = RUNB; wr++; mtfFreq[RUNB]++; break;

	ldloc	'wr/8'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldc.i4	1
	stind.i2
	ldloc	'wr/8'
	ldc.i4	1
	add
	stloc	'wr/8'
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	ldc.i4	4
	add
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_699:
L_694:
// Line 1231:	               };

// Line 1232:	               if (zPend < 2) break;

	ldloc	'zPend/7'
	ldc.i4	2
	blt	'L_691'
L_700:
// Line 1233:	               zPend = (zPend - 2) / 2;

	ldloc	'zPend/7'
	ldc.i4	2
	sub
	ldc.i4	1
	shr.un
	stloc	'zPend/7'
L_692:
// Line 1227:	            while (True) {

	br	'L_690'
L_691:
// Line 1234:	            };

// Line 1235:	            zPend = 0;

	ldc.i4	0
	stloc	'zPend/7'
L_688:
// Line 1236:	         }

// Line 1237:	         szptr[wr] = j+1; wr++; mtfFreq[j+1]++;

	ldloc	'wr/8'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldloc	'j/4'
	ldc.i4	1
	add
	conv.u2
	stind.i2
	ldloc	'wr/8'
	ldc.i4	1
	add
	stloc	'wr/8'
	ldloc	'j/4'
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	add
	ldloc	'j/4'
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_686:
// Line 1238:	      }

L_676:
	ldloc	'i/3'
	ldc.i4	1
	add
	stloc	'i/3'
// Line 1202:	   for (i = 0; i <= last; i++) {

L_674:
	ldloc	'i/3'
	ldsfld	int32 'last'

	ble	'L_673'
L_675:
// Line 1239:	   }

// Line 1240:	

// Line 1241:	   if (zPend > 0) {

	ldloc	'zPend/7'
	ldc.i4	0
	ble	'L_705'
// Line 1242:	      zPend--;

	ldloc	'zPend/7'
	ldc.i4	1
	sub
	stloc	'zPend/7'
L_707:
// Line 1244:	         switch (zPend % 2) {

	ldloc	'zPend/7'
	ldc.i4	1
	and
	conv.i4
	stloc	'$anontemp3/1'
	ldloc	'$anontemp3/1'
	ldc.i4	0
	beq	'L_713'
	ldloc	'$anontemp3/1'
	ldc.i4	1
	beq	'L_714'
	br	'L_716'
L_713:
// Line 1245:	            case 0:  szptr[wr] = RUNA; wr++; mtfFreq[RUNA]++; break;

	ldloc	'wr/8'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldc.i4	0
	stind.i2
	ldloc	'wr/8'
	ldc.i4	1
	add
	stloc	'wr/8'
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	ldind.i4
	ldc.i4	1
	add
	stind.i4
	br	'L_711'
L_714:
// Line 1246:	            case 1:  szptr[wr] = RUNB; wr++; mtfFreq[RUNB]++; break;

	ldloc	'wr/8'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldc.i4	1
	stind.i2
	ldloc	'wr/8'
	ldc.i4	1
	add
	stloc	'wr/8'
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	ldc.i4	4
	add
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	ldc.i4	4
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_716:
L_711:
// Line 1247:	         };

// Line 1248:	         if (zPend < 2) break;

	ldloc	'zPend/7'
	ldc.i4	2
	blt	'L_708'
L_717:
// Line 1249:	         zPend = (zPend - 2) / 2;

	ldloc	'zPend/7'
	ldc.i4	2
	sub
	ldc.i4	1
	shr.un
	stloc	'zPend/7'
L_709:
// Line 1243:	      while (True) {

	br	'L_707'
L_708:
// Line 1250:	      };

L_705:
// Line 1251:	   }

// Line 1252:	

// Line 1253:	   szptr[wr] = EOB; wr++; mtfFreq[EOB]++;

	ldloc	'wr/8'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldloc	'EOB/9'
	conv.u2
	stind.i2
	ldloc	'wr/8'
	ldc.i4	1
	add
	stloc	'wr/8'
	ldloc	'EOB/9'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	add
	ldloc	'EOB/9'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1254:	

// Line 1255:	   nMTF = wr;

	ldloc	'wr/8'
	stsfld	int32 'nMTF'

// Line 1256:	}

L_663:
	ret

}
 .method public hidebysig static void 'sendMTFValues'() cil managed
{
// Line 1262:	void sendMTFValues ( void )

// Line 1263:	{

	.locals
	(
		[0] int32 'v/0',
		[1] int32 't/1',
		[2] int32 'i/2',
		[3] int32 'j/3',
		[4] int32 'gs/4',
		[5] int32 'ge/5',
		[6] int32 'totc/6',
		[7] int32 'bt/7',
		[8] int32 'bc/8',
		[9] int32 'iter/9',
		[10] int32 'nSelectors/10',
		[11] int32 'alphaSize/11',
		[12] int32 'minLen/12',
		[13] int32 'maxLen/13',
		[14] int32 'selCtr/14',
		[15] int32 'nGroups/15',
		[16] int32 'nBytes/16',
		[17] valuetype 'uint16[6]' 'cost/17',
		[18] valuetype 'int32[6]' 'fave/18',
		[19] int32 'curr/19',
		[20] valuetype 'uint8[16]' 'inUse16/20',
		[21] valuetype 'uint8[6]' 'pos/21',
		[22] uint8 'll_i/22',
		[23] uint8 'tmp2/23',
		[24] uint8 'tmp/24',
		[25] uint16 'icv/25',
		[26] uint16 'cost0/26',
		[27] uint16 'cost1/27',
		[28] uint16 'cost2/28',
		[29] uint16 'cost3/29',
		[30] uint16 'cost4/30',
		[31] uint16 'cost5/31',
		[32] uint16 'icv/32',
		[33] int32 'nPart/33',
		[34] int32 'remF/34',
		[35] int32 'tFreq/35',
		[36] int32 'aFreq/36'
	)
	.maxstack	8
L_725:
// Line 1280:	   Int32  fave[N_GROUPS];

// Line 1281:	

// Line 1282:	

// Line 1283:	   PRINTLOC;

// Line 1284:	

// Line 1285:	   if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_728'
// Line 1286:	      fprintf ( stderr,

// Line 1287:	                "      %d in block, %d after MTF & 1-2 coding, %d+2 syms in use\n",

// Line 1288:	                last+1, nMTF, nInUse );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_5'

	ldsfld	int32 'last'

	ldc.i4	1
	add
	ldsfld	int32 'nMTF'

	ldsfld	int32 'nInUse'

	call	vararg int32 'fprintf'(void*, void*, ..., int32, int32, int32)
	pop
L_728:
// Line 1289:	

// Line 1290:	   alphaSize = nInUse+2;

	ldsfld	int32 'nInUse'

	ldc.i4	2
	add
	stloc	'alphaSize/11'
	ldc.i4	0
	stloc	't/1'
	br	'L_730'
L_729:
	ldc.i4	0
	stloc	'v/0'
	br	'L_734'
L_733:
// Line 1293:	         len[t][v] = GREATER_ICOST;

	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'v/0'
	add
	ldc.i4	15
	stind.i1
L_736:
	ldloc	'v/0'
	ldc.i4	1
	add
	stloc	'v/0'
// Line 1292:	      for (v = 0; v < alphaSize; v++)

L_734:
	ldloc	'v/0'
	ldloc	'alphaSize/11'
	blt	'L_733'
L_735:
L_732:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1291:	   for (t = 0; t < N_GROUPS; t++)

L_730:
	ldloc	't/1'
	ldc.i4	6
	blt	'L_729'
L_731:
// Line 1294:	

// Line 1295:	    

// Line 1296:	   if (nMTF <= 0) panic ( "sendMTFValues(0)" );

	ldsfld	int32 'nMTF'

	ldc.i4	0
	bgt	'L_737'
	ldsflda	valuetype 'int8[]' 'L_6'

	call	void 'panic'(void*)
L_737:
// Line 1297:	   if (nMTF < 200) nGroups = 2; else

	ldsfld	int32 'nMTF'

	ldc.i4	200
	bge	'L_738'
	ldc.i4	2
	stloc	'nGroups/15'
	br	'L_739'
L_738:
// Line 1298:	   if (nMTF < 800) nGroups = 4; else

	ldsfld	int32 'nMTF'

	ldc.i4	800
	bge	'L_740'
	ldc.i4	4
	stloc	'nGroups/15'
	br	'L_741'
L_740:
// Line 1299:	                   nGroups = 6;

	ldc.i4	6
	stloc	'nGroups/15'
L_741:
L_739:
// Line 1300:	

// Line 1301:	    

// Line 1302:	   {

// Line 1303:	      Int32 nPart, remF, tFreq, aFreq;

// Line 1304:	

// Line 1305:	      nPart = nGroups;

	ldloc	'nGroups/15'
	stloc	'nPart/33'
// Line 1306:	      remF  = nMTF;

	ldsfld	int32 'nMTF'

	stloc	'remF/34'
// Line 1307:	      gs = 0;

	ldc.i4	0
	stloc	'gs/4'
	br	'L_745'
L_743:
// Line 1309:	         tFreq = remF / nPart;

	ldloc	'remF/34'
	ldloc	'nPart/33'
	div
	stloc	'tFreq/35'
// Line 1310:	         ge = gs-1;

	ldloc	'gs/4'
	ldc.i4	1
	sub
	stloc	'ge/5'
// Line 1311:	         aFreq = 0;

	ldc.i4	0
	stloc	'aFreq/36'
	br	'L_749'
L_747:
// Line 1313:	            ge++;

	ldloc	'ge/5'
	ldc.i4	1
	add
	stloc	'ge/5'
// Line 1314:	            aFreq += mtfFreq[ge];

	ldloc	'ge/5'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	add
	ldind.i4
	ldloc	'aFreq/36'
	add
	stloc	'aFreq/36'
L_749:
// Line 1312:	         while (aFreq < tFreq && ge < alphaSize-1) {

	ldloc	'aFreq/36'
	ldloc	'tFreq/35'
	bge	'L_954'
	ldloc	'ge/5'
	ldloc	'alphaSize/11'
	ldc.i4	1
	sub
	blt	'L_747'
L_954:
L_748:
// Line 1315:	         }

// Line 1316:	         if (ge > gs

// Line 1317:	             && nPart != nGroups && nPart != 1

// Line 1318:	             && ((nGroups-nPart) % 2 == 1)) {

	ldloc	'ge/5'
	ldloc	'gs/4'
	ble	'L_752'
	ldloc	'nPart/33'
	ldloc	'nGroups/15'
	beq	'L_752'
	ldloc	'nPart/33'
	ldc.i4	1
	beq	'L_752'
	ldloc	'nGroups/15'
	ldloc	'nPart/33'
	sub
	ldc.i4	1
	and
	ldc.i4	1
	bne.un	'L_752'
// Line 1319:	            aFreq -= mtfFreq[ge];

	ldloc	'ge/5'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[258]' 'mtfFreq'

	add
	ldind.i4
	neg
	ldloc	'aFreq/36'
	add
	stloc	'aFreq/36'
// Line 1320:	            ge--;

	ldloc	'ge/5'
	ldc.i4	1
	sub
	stloc	'ge/5'
L_752:
// Line 1321:	         }

// Line 1322:	

// Line 1323:	         if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_755'
// Line 1324:	            fprintf ( stderr,

// Line 1325:	                      "      initial group %d, [%d .. %d], has %d syms (%4.1f%%)\n",

// Line 1326:	                              nPart, gs, ge, aFreq,

// Line 1327:	                              (100.0 * (float)aFreq) / (float)nMTF );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_7'

	ldloc	'nPart/33'
	ldloc	'gs/4'
	ldloc	'ge/5'
	ldloc	'aFreq/36'
	ldloc	'aFreq/36'
	conv.r4
	conv.r8
	ldc.r8	1.0000000000000000000000E+2
	mul
	ldsfld	int32 'nMTF'

	conv.r4
	conv.r8
	div
	call	vararg int32 'fprintf'(void*, void*, ..., int32, int32, int32, int32, float64)
	pop
L_755:
// Line 1328:	

	ldc.i4	0
	stloc	'v/0'
	br	'L_757'
L_756:
// Line 1330:	            if (v >= gs && v <= ge)

	ldloc	'v/0'
	ldloc	'gs/4'
	blt	'L_760'
	ldloc	'v/0'
	ldloc	'ge/5'
	bgt	'L_760'
// Line 1331:	               len[nPart-1][v] = LESSER_ICOST; else

	ldloc	'nPart/33'
	ldc.i4	1
	sub
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'v/0'
	add
	ldc.i4	0
	stind.i1
	br	'L_761'
L_760:
// Line 1332:	               len[nPart-1][v] = GREATER_ICOST;

	ldloc	'nPart/33'
	ldc.i4	1
	sub
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'v/0'
	add
	ldc.i4	15
	stind.i1
L_761:
L_759:
	ldloc	'v/0'
	ldc.i4	1
	add
	stloc	'v/0'
// Line 1329:	         for (v = 0; v < alphaSize; v++)

L_757:
	ldloc	'v/0'
	ldloc	'alphaSize/11'
	blt	'L_756'
L_758:
// Line 1333:	

// Line 1334:	         nPart--;

	ldloc	'nPart/33'
	ldc.i4	1
	sub
	stloc	'nPart/33'
// Line 1335:	         gs = ge+1;

	ldloc	'ge/5'
	ldc.i4	1
	add
	stloc	'gs/4'
// Line 1336:	         remF -= aFreq;

	ldloc	'remF/34'
	ldloc	'aFreq/36'
	sub
	stloc	'remF/34'
L_745:
// Line 1308:	      while (nPart > 0) {

	ldloc	'nPart/33'
	ldc.i4	0
	bgt	'L_743'
L_744:
// Line 1337:	      }

// Line 1338:	   }

// Line 1339:	

// Line 1340:	    
// Line 1341:	
// Line 1342:	

	ldc.i4	0
	stloc	'iter/9'
	br	'L_765'
L_764:
// Line 1344:	

	ldc.i4	0
	stloc	't/1'
	br	'L_770'
L_769:
	ldloc	't/1'
	ldc.i4	2
	shl
	ldloca	'fave/18'
	add
	ldc.i4	0
	stind.i4
L_772:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1345:	      for (t = 0; t < nGroups; t++) fave[t] = 0;

L_770:
	ldloc	't/1'
	ldloc	'nGroups/15'
	blt	'L_769'
L_771:
// Line 1346:	

	ldc.i4	0
	stloc	't/1'
	br	'L_774'
L_773:
	ldc.i4	0
	stloc	'v/0'
	br	'L_778'
L_777:
// Line 1349:	            rfreq[t][v] = 0;

	ldloc	't/1'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'rfreq'

	add
	ldloc	'v/0'
	ldc.i4	2
	shl
	add
	ldc.i4	0
	stind.i4
L_780:
	ldloc	'v/0'
	ldc.i4	1
	add
	stloc	'v/0'
// Line 1348:	         for (v = 0; v < alphaSize; v++)

L_778:
	ldloc	'v/0'
	ldloc	'alphaSize/11'
	blt	'L_777'
L_779:
L_776:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1347:	      for (t = 0; t < nGroups; t++)

L_774:
	ldloc	't/1'
	ldloc	'nGroups/15'
	blt	'L_773'
L_775:
// Line 1350:	

// Line 1351:	      nSelectors = 0;

	ldc.i4	0
	stloc	'nSelectors/10'
// Line 1352:	      totc = 0;

	ldc.i4	0
	stloc	'totc/6'
// Line 1353:	      gs = 0;

	ldc.i4	0
	stloc	'gs/4'
L_781:
// Line 1355:	

// Line 1356:	          

// Line 1357:	         if (gs >= nMTF) break;

	ldloc	'gs/4'
	ldsfld	int32 'nMTF'

	bge	'L_782'
L_785:
// Line 1358:	         ge = gs + G_SIZE - 1;

	ldloc	'gs/4'
	ldc.i4	49
	add
	stloc	'ge/5'
// Line 1359:	         if (ge >= nMTF) ge = nMTF-1;

	ldloc	'ge/5'
	ldsfld	int32 'nMTF'

	blt	'L_786'
	ldsfld	int32 'nMTF'

	ldc.i4	1
	sub
	stloc	'ge/5'
L_786:
// Line 1360:	

// Line 1361:	          
// Line 1362:	
// Line 1363:	
// Line 1364:	

	ldc.i4	0
	stloc	't/1'
	br	'L_788'
L_787:
	ldloc	't/1'
	ldc.i4	1
	shl
	ldloca	'cost/17'
	add
	ldc.i4	0
	stind.i2
L_790:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1365:	         for (t = 0; t < nGroups; t++) cost[t] = 0;

L_788:
	ldloc	't/1'
	ldloc	'nGroups/15'
	blt	'L_787'
L_789:
// Line 1366:	

// Line 1367:			

// Line 1368:	         if (nGroups == 6) {

	ldloc	'nGroups/15'
	ldc.i4	6
	bne.un	'L_791'
// Line 1369:	            register UInt16 cost0, cost1, cost2, cost3, cost4, cost5;

// Line 1370:	            cost0 = cost1 = cost2 = cost3 = cost4 = cost5 = 0;

	ldc.i4	0
	stloc	'cost5/31'
	ldloc	'cost5/31'
	stloc	'cost4/30'
	ldloc	'cost4/30'
	stloc	'cost3/29'
	ldloc	'cost3/29'
	stloc	'cost2/28'
	ldloc	'cost2/28'
	stloc	'cost1/27'
	ldloc	'cost1/27'
	stloc	'cost0/26'
	ldloc	'gs/4'
	stloc	'i/2'
	br	'L_794'
L_793:
// Line 1372:	               UInt16 icv = szptr[i];

	ldloca	'icv/32'
	ldloc	'i/2'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldind.u2
	stind.i2
// Line 1373:	               cost0 += len[0][icv];

	ldloc	'icv/32'
	conv.i4
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldind.u1
	conv.i4
	ldloc	'cost0/26'
	conv.i4
	add
	conv.u2
	stloc	'cost0/26'
// Line 1374:	               cost1 += len[1][icv];

	ldloc	'icv/32'
	conv.i4
	ldsflda	valuetype 'uint8[6][258]' 'len'

	ldc.i4	258
	add
	add
	ldind.u1
	conv.i4
	ldloc	'cost1/27'
	conv.i4
	add
	conv.u2
	stloc	'cost1/27'
// Line 1375:	               cost2 += len[2][icv];

	ldloc	'icv/32'
	conv.i4
	ldsflda	valuetype 'uint8[6][258]' 'len'

	ldc.i4	516
	add
	add
	ldind.u1
	conv.i4
	ldloc	'cost2/28'
	conv.i4
	add
	conv.u2
	stloc	'cost2/28'
// Line 1376:	               cost3 += len[3][icv];

	ldloc	'icv/32'
	conv.i4
	ldsflda	valuetype 'uint8[6][258]' 'len'

	ldc.i4	774
	add
	add
	ldind.u1
	conv.i4
	ldloc	'cost3/29'
	conv.i4
	add
	conv.u2
	stloc	'cost3/29'
// Line 1377:	               cost4 += len[4][icv];

	ldloc	'icv/32'
	conv.i4
	ldsflda	valuetype 'uint8[6][258]' 'len'

	ldc.i4	1032
	add
	add
	ldind.u1
	conv.i4
	ldloc	'cost4/30'
	conv.i4
	add
	conv.u2
	stloc	'cost4/30'
// Line 1378:	               cost5 += len[5][icv];

	ldloc	'icv/32'
	conv.i4
	ldsflda	valuetype 'uint8[6][258]' 'len'

	ldc.i4	1290
	add
	add
	ldind.u1
	conv.i4
	ldloc	'cost5/31'
	conv.i4
	add
	conv.u2
	stloc	'cost5/31'
L_796:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1371:	            for (i = gs; i <= ge; i++) {

L_794:
	ldloc	'i/2'
	ldloc	'ge/5'
	ble	'L_793'
L_795:
// Line 1379:	            }

// Line 1380:	            cost[0] = cost0; cost[1] = cost1; cost[2] = cost2;

	ldloca	'cost/17'
	ldloc	'cost0/26'
	stind.i2
	ldloca	'cost/17'
	ldc.i4	2
	add
	ldloc	'cost1/27'
	stind.i2
	ldloca	'cost/17'
	ldc.i4	4
	add
	ldloc	'cost2/28'
	stind.i2
// Line 1381:	            cost[3] = cost3; cost[4] = cost4; cost[5] = cost5;

	ldloca	'cost/17'
	ldc.i4	6
	add
	ldloc	'cost3/29'
	stind.i2
	ldloca	'cost/17'
	ldc.i4	8
	add
	ldloc	'cost4/30'
	stind.i2
	ldloca	'cost/17'
	ldc.i4	10
	add
	ldloc	'cost5/31'
	stind.i2
	br	'L_800'
L_791:
// Line 1382:	         } else {

	ldloc	'gs/4'
	stloc	'i/2'
	br	'L_803'
L_802:
// Line 1384:	               UInt16 icv = szptr[i];

	ldloca	'icv/25'
	ldloc	'i/2'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldind.u2
	stind.i2
	ldc.i4	0
	stloc	't/1'
	br	'L_808'
L_807:
	ldloc	't/1'
	ldc.i4	1
	shl
	ldloca	'cost/17'
	add
	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'icv/25'
	conv.i4
	add
	ldind.u1
	conv.i4
	ldloc	't/1'
	ldc.i4	1
	shl
	ldloca	'cost/17'
	add
	ldind.u2
	conv.i4
	add
	conv.u2
	stind.i2
L_810:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1385:	               for (t = 0; t < nGroups; t++) cost[t] += len[t][icv];

L_808:
	ldloc	't/1'
	ldloc	'nGroups/15'
	blt	'L_807'
L_809:
L_805:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1383:	            for (i = gs; i <= ge; i++) {

L_803:
	ldloc	'i/2'
	ldloc	'ge/5'
	ble	'L_802'
L_804:
// Line 1386:	            }

L_800:
// Line 1387:	         }

// Line 1388:	          
// Line 1389:	
// Line 1390:	
// Line 1391:	

// Line 1392:	         bc = 999999999; bt = -1;

	ldc.i4	999999999
	stloc	'bc/8'
	ldc.i4	-1
	stloc	'bt/7'
	ldc.i4	0
	stloc	't/1'
	br	'L_814'
L_813:
// Line 1394:	            if (cost[t] < bc) { bc = cost[t]; bt = t; };

	ldloc	't/1'
	ldc.i4	1
	shl
	ldloca	'cost/17'
	add
	ldind.u2
	conv.i4
	ldloc	'bc/8'
	bge	'L_817'
	ldloc	't/1'
	ldc.i4	1
	shl
	ldloca	'cost/17'
	add
	ldind.u2
	conv.i4
	stloc	'bc/8'
	ldloc	't/1'
	stloc	'bt/7'
L_817:
L_816:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1393:	         for (t = 0; t < nGroups; t++)

L_814:
	ldloc	't/1'
	ldloc	'nGroups/15'
	blt	'L_813'
L_815:
// Line 1395:	         totc += bc;

	ldloc	'totc/6'
	ldloc	'bc/8'
	add
	stloc	'totc/6'
// Line 1396:	         fave[bt]++;

	ldloc	'bt/7'
	ldc.i4	2
	shl
	ldloca	'fave/18'
	add
	ldloc	'bt/7'
	ldc.i4	2
	shl
	ldloca	'fave/18'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1397:	         selector[nSelectors] = bt;

	ldloc	'nSelectors/10'
	ldsflda	valuetype 'uint8[18002]' 'selector'

	add
	ldloc	'bt/7'
	conv.u1
	stind.i1
// Line 1398:	         nSelectors++;

	ldloc	'nSelectors/10'
	ldc.i4	1
	add
	stloc	'nSelectors/10'
// Line 1399:	

// Line 1400:	          
// Line 1401:	
// Line 1402:	

	ldloc	'gs/4'
	stloc	'i/2'
	br	'L_821'
L_820:
// Line 1404:	            rfreq[bt][ szptr[i] ]++;

	ldloc	'i/2'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldind.u2
	conv.i4
	ldc.i4	2
	shl
	ldloc	'bt/7'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'rfreq'

	add
	add
	ldloc	'i/2'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldind.u2
	conv.i4
	ldc.i4	2
	shl
	ldloc	'bt/7'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'rfreq'

	add
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_823:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1403:	         for (i = gs; i <= ge; i++)

L_821:
	ldloc	'i/2'
	ldloc	'ge/5'
	ble	'L_820'
L_822:
// Line 1405:	

// Line 1406:	         gs = ge+1;

	ldloc	'ge/5'
	ldc.i4	1
	add
	stloc	'gs/4'
L_783:
// Line 1354:	      while (True) {

	br	'L_781'
L_782:
// Line 1407:	      }

// Line 1408:	      if (verbosity >= 3) {

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_825'
// Line 1409:	         fprintf ( stderr,

// Line 1410:	                   "      pass %d: size is %d, grp uses are ",

// Line 1411:	                   iter+1, totc/8 );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_8'

	ldloc	'iter/9'
	ldc.i4	1
	add
	ldloc	'totc/6'
	ldc.i4	3
	shr.un
	call	vararg int32 'fprintf'(void*, void*, ..., int32, int32)
	pop
	ldc.i4	0
	stloc	't/1'
	br	'L_828'
L_827:
// Line 1413:	            fprintf ( stderr, "%d ", fave[t] );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_9'

	ldloc	't/1'
	ldc.i4	2
	shl
	ldloca	'fave/18'
	add
	ldind.i4
	call	vararg int32 'fprintf'(void*, void*, ..., int32)
	pop
L_830:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1412:	         for (t = 0; t < nGroups; t++)

L_828:
	ldloc	't/1'
	ldloc	'nGroups/15'
	blt	'L_827'
L_829:
// Line 1414:	         fprintf ( stderr, "\n" );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_10'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_825:
// Line 1415:	      }

// Line 1416:	

// Line 1417:	       
// Line 1418:	
// Line 1419:	

	ldc.i4	0
	stloc	't/1'
	br	'L_833'
L_832:
// Line 1421:	         hbMakeCodeLengths ( &len[t][0], &rfreq[t][0], alphaSize, 20 );

	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	't/1'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'rfreq'

	add
	ldloc	'alphaSize/11'
	ldc.i4	20
	call	void 'hbMakeCodeLengths'(void*, void*, int32, int32)
L_835:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1420:	      for (t = 0; t < nGroups; t++)

L_833:
	ldloc	't/1'
	ldloc	'nGroups/15'
	blt	'L_832'
L_834:
L_767:
	ldloc	'iter/9'
	ldc.i4	1
	add
	stloc	'iter/9'
// Line 1343:	   for (iter = 0; iter < N_ITERS; iter++) {

L_765:
	ldloc	'iter/9'
	ldc.i4	4
	blt	'L_764'
L_766:
// Line 1422:	   }

// Line 1423:	

// Line 1424:	

// Line 1425:	   if (!(nGroups < 8)) panic ( "sendMTFValues(1)" );

	ldloc	'nGroups/15'
	ldc.i4	8
	blt	'L_837'
	ldsflda	valuetype 'int8[]' 'L_11'

	call	void 'panic'(void*)
L_837:
// Line 1426:	   if (!(nSelectors < 32768 &&

// Line 1427:	         nSelectors <= (2 + (900000 / G_SIZE))))

	ldloc	'nSelectors/10'
	ldc.i4	32768
	bge	'L_955'
	ldloc	'nSelectors/10'
	ldc.i4	18002
	ble	'L_838'
L_955:
// Line 1428:	                       panic ( "sendMTFValues(2)" );

	ldsflda	valuetype 'int8[]' 'L_12'

	call	void 'panic'(void*)
L_838:
// Line 1429:	

// Line 1430:	

// Line 1431:	    

// Line 1432:	   {

// Line 1433:	      UChar pos[N_GROUPS], ll_i, tmp2, tmp;

	ldc.i4	0
	stloc	'i/2'
	br	'L_841'
L_840:
	ldloc	'i/2'
	ldloca	'pos/21'
	add
	ldloc	'i/2'
	conv.u1
	stind.i1
L_843:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1434:	      for (i = 0; i < nGroups; i++) pos[i] = i;

L_841:
	ldloc	'i/2'
	ldloc	'nGroups/15'
	blt	'L_840'
L_842:
	ldc.i4	0
	stloc	'i/2'
	br	'L_845'
L_844:
// Line 1436:	         ll_i = selector[i];

	ldloc	'i/2'
	ldsflda	valuetype 'uint8[18002]' 'selector'

	add
	ldind.u1
	stloc	'll_i/22'
// Line 1437:	         j = 0;

	ldc.i4	0
	stloc	'j/3'
// Line 1438:	         tmp = pos[j];

	ldc.i4	0
	ldloca	'pos/21'
	add
	ldind.u1
	stloc	'tmp/24'
	br	'L_851'
L_849:
// Line 1440:	            j++;

	ldloc	'j/3'
	ldc.i4	1
	add
	stloc	'j/3'
// Line 1441:	            tmp2 = tmp;

	ldloc	'tmp/24'
	stloc	'tmp2/23'
// Line 1442:	            tmp = pos[j];

	ldloc	'j/3'
	ldloca	'pos/21'
	add
	ldind.u1
	stloc	'tmp/24'
// Line 1443:	            pos[j] = tmp2;

	ldloc	'j/3'
	ldloca	'pos/21'
	add
	ldloc	'tmp2/23'
	stind.i1
L_851:
// Line 1439:	         while ( ll_i != tmp ) {

	ldloc	'll_i/22'
	conv.i4
	ldloc	'tmp/24'
	conv.i4
	bne.un	'L_849'
L_850:
// Line 1444:	         };

// Line 1445:	         pos[0] = tmp;

	ldloca	'pos/21'
	ldloc	'tmp/24'
	stind.i1
// Line 1446:	         selectorMtf[i] = j;

	ldloc	'i/2'
	ldsflda	valuetype 'uint8[18002]' 'selectorMtf'

	add
	ldloc	'j/3'
	conv.u1
	stind.i1
L_847:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1435:	      for (i = 0; i < nSelectors; i++) {

L_845:
	ldloc	'i/2'
	ldloc	'nSelectors/10'
	blt	'L_844'
L_846:
// Line 1447:	      }

// Line 1448:	   };

// Line 1449:	

// Line 1450:	    

	ldc.i4	0
	stloc	't/1'
	br	'L_857'
L_856:
// Line 1452:	      minLen = 32;

	ldc.i4	32
	stloc	'minLen/12'
// Line 1453:	      maxLen = 0;

	ldc.i4	0
	stloc	'maxLen/13'
	ldc.i4	0
	stloc	'i/2'
	br	'L_862'
L_861:
// Line 1455:	         if (len[t][i] > maxLen) maxLen = len[t][i];

	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/2'
	add
	ldind.u1
	conv.i4
	ldloc	'maxLen/13'
	ble	'L_866'
	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/2'
	add
	ldind.u1
	conv.i4
	stloc	'maxLen/13'
L_866:
// Line 1456:	         if (len[t][i] < minLen) minLen = len[t][i];

	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/2'
	add
	ldind.u1
	conv.i4
	ldloc	'minLen/12'
	bge	'L_867'
	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/2'
	add
	ldind.u1
	conv.i4
	stloc	'minLen/12'
L_867:
L_864:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1454:	      for (i = 0; i < alphaSize; i++) {

L_862:
	ldloc	'i/2'
	ldloc	'alphaSize/11'
	blt	'L_861'
L_863:
// Line 1457:	      }

// Line 1458:	      if (maxLen > 20) panic ( "sendMTFValues(3)" );

	ldloc	'maxLen/13'
	ldc.i4	20
	ble	'L_869'
	ldsflda	valuetype 'int8[]' 'L_13'

	call	void 'panic'(void*)
L_869:
// Line 1459:	      if (minLen < 1)  panic ( "sendMTFValues(4)" );

	ldloc	'minLen/12'
	ldc.i4	1
	bge	'L_870'
	ldsflda	valuetype 'int8[]' 'L_14'

	call	void 'panic'(void*)
L_870:
// Line 1460:	      hbAssignCodes ( &code[t][0], &len[t][0],

// Line 1461:	                      minLen, maxLen, alphaSize );

	ldloc	't/1'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'code'

	add
	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'minLen/12'
	ldloc	'maxLen/13'
	ldloc	'alphaSize/11'
	call	void 'hbAssignCodes'(void*, void*, int32, int32, int32)
L_859:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1451:	   for (t = 0; t < nGroups; t++) {

L_857:
	ldloc	't/1'
	ldloc	'nGroups/15'
	blt	'L_856'
L_858:
// Line 1462:	   }

// Line 1463:	

// Line 1464:	    

// Line 1465:	   {

// Line 1466:	      Bool inUse16[16];

	ldc.i4	0
	stloc	'i/2'
	br	'L_874'
L_873:
// Line 1468:	          inUse16[i] = False;

	ldloc	'i/2'
	ldloca	'inUse16/20'
	add
	ldc.i4	0
	stind.i1
	ldc.i4	0
	stloc	'j/3'
	br	'L_879'
L_878:
// Line 1470:	             if (inUse[i * 16 + j]) inUse16[i] = True;

	ldloc	'i/2'
	ldc.i4	4
	shl
	ldloc	'j/3'
	add
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldind.u1
	ldc.i4	0
	beq	'L_882'
	ldloc	'i/2'
	ldloca	'inUse16/20'
	add
	ldc.i4	1
	stind.i1
L_882:
L_881:
	ldloc	'j/3'
	ldc.i4	1
	add
	stloc	'j/3'
// Line 1469:	          for (j = 0; j < 16; j++)

L_879:
	ldloc	'j/3'
	ldc.i4	16
	blt	'L_878'
L_880:
L_876:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1467:	      for (i = 0; i < 16; i++) {

L_874:
	ldloc	'i/2'
	ldc.i4	16
	blt	'L_873'
L_875:
// Line 1471:	      }

// Line 1472:	

// Line 1473:	      nBytes = bytesOut;

	ldsfld	uint32 'bytesOut'

	conv.i4
	stloc	'nBytes/16'
	ldc.i4	0
	stloc	'i/2'
	br	'L_885'
L_884:
// Line 1475:	         if (inUse16[i]) bsW(1,1); else bsW(1,0);

	ldloc	'i/2'
	ldloca	'inUse16/20'
	add
	ldind.u1
	ldc.i4	0
	beq	'L_888'
	ldc.i4	1
	ldc.i4	1
	conv.u4
	call	void 'bsW'(int32, uint32)
	br	'L_889'
L_888:
	ldc.i4	1
	ldc.i4	0
	conv.u4
	call	void 'bsW'(int32, uint32)
L_889:
L_887:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1474:	      for (i = 0; i < 16; i++)

L_885:
	ldloc	'i/2'
	ldc.i4	16
	blt	'L_884'
L_886:
// Line 1476:	

	ldc.i4	0
	stloc	'i/2'
	br	'L_891'
L_890:
// Line 1478:	         if (inUse16[i])

	ldloc	'i/2'
	ldloca	'inUse16/20'
	add
	ldind.u1
	ldc.i4	0
	beq	'L_894'
	ldc.i4	0
	stloc	'j/3'
	br	'L_896'
L_895:
// Line 1480:	               if (inUse[i * 16 + j]) bsW(1,1); else bsW(1,0);

	ldloc	'i/2'
	ldc.i4	4
	shl
	ldloc	'j/3'
	add
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldind.u1
	ldc.i4	0
	beq	'L_899'
	ldc.i4	1
	ldc.i4	1
	conv.u4
	call	void 'bsW'(int32, uint32)
	br	'L_900'
L_899:
	ldc.i4	1
	ldc.i4	0
	conv.u4
	call	void 'bsW'(int32, uint32)
L_900:
L_898:
	ldloc	'j/3'
	ldc.i4	1
	add
	stloc	'j/3'
// Line 1479:	            for (j = 0; j < 16; j++)

L_896:
	ldloc	'j/3'
	ldc.i4	16
	blt	'L_895'
L_897:
L_894:
L_893:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1477:	      for (i = 0; i < 16; i++)

L_891:
	ldloc	'i/2'
	ldc.i4	16
	blt	'L_890'
L_892:
// Line 1481:	

// Line 1482:	      if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_901'
// Line 1483:	         fprintf ( stderr, "      bytes: mapping %d, ", bytesOut-nBytes );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_15'

	ldloc	'nBytes/16'
	conv.u4
	neg
	ldsfld	uint32 'bytesOut'

	add
	call	vararg int32 'fprintf'(void*, void*, ..., uint32)
	pop
L_901:
// Line 1484:	   }

// Line 1485:	

// Line 1486:	    

// Line 1487:	   nBytes = bytesOut;

	ldsfld	uint32 'bytesOut'

	conv.i4
	stloc	'nBytes/16'
// Line 1488:	   bsW ( 3, nGroups );

	ldc.i4	3
	ldloc	'nGroups/15'
	conv.u4
	call	void 'bsW'(int32, uint32)
// Line 1489:	   bsW ( 15, nSelectors );

	ldc.i4	15
	ldloc	'nSelectors/10'
	conv.u4
	call	void 'bsW'(int32, uint32)
	ldc.i4	0
	stloc	'i/2'
	br	'L_904'
L_903:
	ldc.i4	0
	stloc	'j/3'
	br	'L_909'
L_908:
	ldc.i4	1
	ldc.i4	1
	conv.u4
	call	void 'bsW'(int32, uint32)
L_911:
	ldloc	'j/3'
	ldc.i4	1
	add
	stloc	'j/3'
// Line 1491:	      for (j = 0; j < selectorMtf[i]; j++) bsW(1,1);

L_909:
	ldloc	'j/3'
	ldloc	'i/2'
	ldsflda	valuetype 'uint8[18002]' 'selectorMtf'

	add
	ldind.u1
	conv.i4
	blt	'L_908'
L_910:
// Line 1492:	      bsW(1,0);

	ldc.i4	1
	ldc.i4	0
	conv.u4
	call	void 'bsW'(int32, uint32)
L_906:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1490:	   for (i = 0; i < nSelectors; i++) {

L_904:
	ldloc	'i/2'
	ldloc	'nSelectors/10'
	blt	'L_903'
L_905:
// Line 1493:	   }

// Line 1494:	   if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_913'
// Line 1495:	      fprintf ( stderr, "selectors %d, ", bytesOut-nBytes );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_16'

	ldloc	'nBytes/16'
	conv.u4
	neg
	ldsfld	uint32 'bytesOut'

	add
	call	vararg int32 'fprintf'(void*, void*, ..., uint32)
	pop
L_913:
// Line 1496:	

// Line 1497:	    

// Line 1498:	   nBytes = bytesOut;

	ldsfld	uint32 'bytesOut'

	conv.i4
	stloc	'nBytes/16'
// Line 1499:	

	ldc.i4	0
	stloc	't/1'
	br	'L_915'
L_914:
// Line 1501:	      Int32 curr = len[t][0];

	ldloca	'curr/19'
	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldind.u1
	conv.i4
	stind.i4
// Line 1502:	      bsW ( 5, curr );

	ldc.i4	5
	ldloc	'curr/19'
	conv.u4
	call	void 'bsW'(int32, uint32)
	ldc.i4	0
	stloc	'i/2'
	br	'L_920'
L_919:
	br	'L_926'
L_924:
	ldc.i4	2
	ldc.i4	2
	conv.u4
	call	void 'bsW'(int32, uint32)
	ldloc	'curr/19'
	ldc.i4	1
	add
	stloc	'curr/19'
L_926:
// Line 1504:	         while (curr < len[t][i]) { bsW(2,2); curr++;   };

	ldloc	'curr/19'
	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/2'
	add
	ldind.u1
	conv.i4
	blt	'L_924'
L_925:
	br	'L_931'
L_929:
	ldc.i4	2
	ldc.i4	3
	conv.u4
	call	void 'bsW'(int32, uint32)
	ldloc	'curr/19'
	ldc.i4	1
	sub
	stloc	'curr/19'
L_931:
// Line 1505:	         while (curr > len[t][i]) { bsW(2,3); curr--;   };

	ldloc	'curr/19'
	ldloc	't/1'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/2'
	add
	ldind.u1
	conv.i4
	bgt	'L_929'
L_930:
// Line 1506:	         bsW ( 1, 0 );

	ldc.i4	1
	ldc.i4	0
	conv.u4
	call	void 'bsW'(int32, uint32)
L_922:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1503:	      for (i = 0; i < alphaSize; i++) {

L_920:
	ldloc	'i/2'
	ldloc	'alphaSize/11'
	blt	'L_926'
L_921:
// Line 1507:	      }

L_917:
	ldloc	't/1'
	ldc.i4	1
	add
	stloc	't/1'
// Line 1500:	   for (t = 0; t < nGroups; t++) {

L_915:
	ldloc	't/1'
	ldloc	'nGroups/15'
	blt	'L_914'
L_916:
// Line 1508:	   }

// Line 1509:	

// Line 1510:	   if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_936'
// Line 1511:	      fprintf ( stderr, "code lengths %d, ", bytesOut-nBytes );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_17'

	ldloc	'nBytes/16'
	conv.u4
	neg
	ldsfld	uint32 'bytesOut'

	add
	call	vararg int32 'fprintf'(void*, void*, ..., uint32)
	pop
L_936:
// Line 1512:	

// Line 1513:	    

// Line 1514:	   nBytes = bytesOut;

	ldsfld	uint32 'bytesOut'

	conv.i4
	stloc	'nBytes/16'
// Line 1515:	   selCtr = 0;

	ldc.i4	0
	stloc	'selCtr/14'
// Line 1516:	   gs = 0;

	ldc.i4	0
	stloc	'gs/4'
L_937:
// Line 1518:	      if (gs >= nMTF) break;

	ldloc	'gs/4'
	ldsfld	int32 'nMTF'

	bge	'L_938'
L_941:
// Line 1519:	      ge = gs + G_SIZE - 1;

	ldloc	'gs/4'
	ldc.i4	49
	add
	stloc	'ge/5'
// Line 1520:	      if (ge >= nMTF) ge = nMTF-1;

	ldloc	'ge/5'
	ldsfld	int32 'nMTF'

	blt	'L_942'
	ldsfld	int32 'nMTF'

	ldc.i4	1
	sub
	stloc	'ge/5'
L_942:
	ldloc	'gs/4'
	stloc	'i/2'
	br	'L_944'
L_943:
// Line 1522:	         #if DEBUG

// Line 1523:	            assert (selector[selCtr] < nGroups);

// Line 1524:	         #endif

// Line 1525:	         bsW ( len  [selector[selCtr]] [szptr[i]],

// Line 1526:	               code [selector[selCtr]] [szptr[i]] );

	ldloc	'selCtr/14'
	ldsflda	valuetype 'uint8[18002]' 'selector'

	add
	ldind.u1
	conv.i4
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/2'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldind.u2
	conv.i4
	add
	ldind.u1
	conv.i4
	ldloc	'selCtr/14'
	ldsflda	valuetype 'uint8[18002]' 'selector'

	add
	ldind.u1
	conv.i4
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'code'

	add
	ldloc	'i/2'
	ldc.i4	1
	shl
	ldsfld	void* 'szptr'

	add
	ldind.u2
	conv.i4
	ldc.i4	2
	shl
	add
	ldind.i4
	conv.u4
	call	void 'bsW'(int32, uint32)
L_946:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 1521:	      for (i = gs; i <= ge; i++) {

L_944:
	ldloc	'i/2'
	ldloc	'ge/5'
	ble	'L_943'
L_945:
// Line 1527:	      }

// Line 1528:	

// Line 1529:	      gs = ge+1;

	ldloc	'ge/5'
	ldc.i4	1
	add
	stloc	'gs/4'
// Line 1530:	      selCtr++;

	ldloc	'selCtr/14'
	ldc.i4	1
	add
	stloc	'selCtr/14'
L_939:
// Line 1517:	   while (True) {

	br	'L_937'
L_938:
// Line 1531:	   }

// Line 1532:	   if (!(selCtr == nSelectors)) panic ( "sendMTFValues(5)" );

	ldloc	'selCtr/14'
	ldloc	'nSelectors/10'
	beq	'L_950'
	ldsflda	valuetype 'int8[]' 'L_18'

	call	void 'panic'(void*)
L_950:
// Line 1533:	

// Line 1534:	   if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_951'
// Line 1535:	      fprintf ( stderr, "codes %d\n", bytesOut-nBytes );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_19'

	ldloc	'nBytes/16'
	conv.u4
	neg
	ldsfld	uint32 'bytesOut'

	add
	call	vararg int32 'fprintf'(void*, void*, ..., uint32)
	pop
L_951:
// Line 1536:	}

L_726:
	ret

}
 .method public hidebysig static void 'moveToFrontCodeAndSend'() cil managed
{
// Line 1540:	void moveToFrontCodeAndSend ( void )

// Line 1541:	{

	.maxstack	2
L_959:
// Line 1542:	

// Line 1543:	   PRINTLOC;

// Line 1544:	

// Line 1545:	   bsPutIntVS ( 24, origPtr );

	ldc.i4	24
	ldsfld	int32 'origPtr'

	conv.u4
	call	void 'bsPutIntVS'(int32, uint32)
// Line 1546:	   generateMTFValues();

	call	void 'generateMTFValues'()
// Line 1547:	   sendMTFValues();

	call	void 'sendMTFValues'()
// Line 1548:	}

L_960:
	ret

}
 .method public hidebysig static void 'recvDecodingTables'() cil managed
{
// Line 1552:	void recvDecodingTables ( void )

// Line 1553:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'j/1',
		[2] int32 't/2',
		[3] int32 'nGroups/3',
		[4] int32 'nSelectors/4',
		[5] int32 'alphaSize/5',
		[6] int32 'minLen/6',
		[7] int32 'maxLen/7',
		[8] valuetype 'uint8[16]' 'inUse16/8',
		[9] int32 'curr/9',
		[10] valuetype 'uint8[6]' 'pos/10',
		[11] uint8 'tmp/11',
		[12] uint8 'v/12'
	)
	.maxstack	7
L_967:
// Line 1556:	   Bool inUse16[16];

// Line 1557:	

// Line 1558:	

// Line 1559:	   PRINTLOC;

// Line 1560:	

// Line 1561:	    

	ldc.i4	0
	stloc	'i/0'
	br	'L_971'
L_970:
// Line 1563:	      if (bsR(1) == 1)

	ldc.i4	1
	call	uint32 'bsR'(int32)
	ldc.i4	1
	bne.un	'L_974'
// Line 1564:	         inUse16[i] = True; else

	ldloc	'i/0'
	ldloca	'inUse16/8'
	add
	ldc.i4	1
	stind.i1
	br	'L_975'
L_974:
// Line 1565:	         inUse16[i] = False;

	ldloc	'i/0'
	ldloca	'inUse16/8'
	add
	ldc.i4	0
	stind.i1
L_975:
L_973:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1562:	   for (i = 0; i < 16; i++)

L_971:
	ldloc	'i/0'
	ldc.i4	16
	blt	'L_970'
L_972:
// Line 1566:	

	ldc.i4	0
	stloc	'i/0'
	br	'L_977'
L_976:
	ldloc	'i/0'
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldc.i4	0
	stind.i1
L_979:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1567:	   for (i = 0; i < 256; i++) inUse[i] = False;

L_977:
	ldloc	'i/0'
	ldc.i4	256
	blt	'L_976'
L_978:
// Line 1568:	

	ldc.i4	0
	stloc	'i/0'
	br	'L_981'
L_980:
// Line 1570:	      if (inUse16[i])

	ldloc	'i/0'
	ldloca	'inUse16/8'
	add
	ldind.u1
	ldc.i4	0
	beq	'L_984'
	ldc.i4	0
	stloc	'j/1'
	br	'L_986'
L_985:
// Line 1572:	            if (bsR(1) == 1) inUse[i * 16 + j] = True;

	ldc.i4	1
	call	uint32 'bsR'(int32)
	ldc.i4	1
	bne.un	'L_989'
	ldloc	'i/0'
	ldc.i4	4
	shl
	ldloc	'j/1'
	add
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldc.i4	1
	stind.i1
L_989:
L_988:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
// Line 1571:	         for (j = 0; j < 16; j++)

L_986:
	ldloc	'j/1'
	ldc.i4	16
	blt	'L_985'
L_987:
L_984:
L_983:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1569:	   for (i = 0; i < 16; i++)

L_981:
	ldloc	'i/0'
	ldc.i4	16
	blt	'L_980'
L_982:
// Line 1573:	

// Line 1574:	   makeMaps();

	call	void 'makeMaps'()
// Line 1575:	   alphaSize = nInUse+2;

	ldsfld	int32 'nInUse'

	ldc.i4	2
	add
	stloc	'alphaSize/5'
// Line 1576:	

// Line 1577:	    

// Line 1578:	   nGroups = bsR ( 3 );

	ldc.i4	3
	call	uint32 'bsR'(int32)
	conv.i4
	stloc	'nGroups/3'
// Line 1579:	   nSelectors = bsR ( 15 );

	ldc.i4	15
	call	uint32 'bsR'(int32)
	conv.i4
	stloc	'nSelectors/4'
	ldc.i4	0
	stloc	'i/0'
	br	'L_991'
L_990:
// Line 1581:	      j = 0;

	ldc.i4	0
	stloc	'j/1'
	br	'L_997'
L_995:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
L_997:
// Line 1582:	      while (bsR(1) == 1) j++;

	ldc.i4	1
	call	uint32 'bsR'(int32)
	ldc.i4	1
	beq	'L_995'
L_996:
// Line 1583:	      selectorMtf[i] = j;

	ldloc	'i/0'
	ldsflda	valuetype 'uint8[18002]' 'selectorMtf'

	add
	ldloc	'j/1'
	conv.u1
	stind.i1
L_993:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1580:	   for (i = 0; i < nSelectors; i++) {

L_991:
	ldloc	'i/0'
	ldloc	'nSelectors/4'
	blt	'L_990'
L_992:
// Line 1584:	   }

// Line 1585:	

// Line 1586:	    

// Line 1587:	   {

// Line 1588:	      UChar pos[N_GROUPS], tmp, v;

	ldc.i4	0
	stloc	'v/12'
	br	'L_1001'
L_1000:
	ldloc	'v/12'
	conv.i4
	ldloca	'pos/10'
	add
	ldloc	'v/12'
	stind.i1
L_1003:
	ldloc	'v/12'
	ldc.i4	1
	add
	stloc	'v/12'
// Line 1589:	      for (v = 0; v < nGroups; v++) pos[v] = v;

L_1001:
	ldloc	'v/12'
	conv.i4
	ldloc	'nGroups/3'
	blt	'L_1000'
L_1002:
// Line 1590:	

	ldc.i4	0
	stloc	'i/0'
	br	'L_1005'
L_1004:
// Line 1592:	         v = selectorMtf[i];

	ldloc	'i/0'
	ldsflda	valuetype 'uint8[18002]' 'selectorMtf'

	add
	ldind.u1
	stloc	'v/12'
// Line 1593:	         tmp = pos[v];

	ldloc	'v/12'
	conv.i4
	ldloca	'pos/10'
	add
	ldind.u1
	stloc	'tmp/11'
	br	'L_1011'
L_1009:
	ldloc	'v/12'
	conv.i4
	ldloca	'pos/10'
	add
	ldloc	'v/12'
	conv.i4
	ldc.i4	1
	sub
	ldloca	'pos/10'
	add
	ldind.u1
	stind.i1
	ldloc	'v/12'
	ldc.i4	1
	sub
	stloc	'v/12'
L_1011:
// Line 1594:	         while (v > 0) { pos[v] = pos[v-1]; v--; }

	ldloc	'v/12'
	conv.i4
	ldc.i4	0
	bgt	'L_1009'
L_1010:
// Line 1595:	         pos[0] = tmp;

	ldloca	'pos/10'
	ldloc	'tmp/11'
	stind.i1
// Line 1596:	         selector[i] = tmp;

	ldloc	'i/0'
	ldsflda	valuetype 'uint8[18002]' 'selector'

	add
	ldloc	'tmp/11'
	stind.i1
L_1007:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1591:	      for (i = 0; i < nSelectors; i++) {

L_1005:
	ldloc	'i/0'
	ldloc	'nSelectors/4'
	blt	'L_1004'
L_1006:
// Line 1597:	      }

// Line 1598:	   }

// Line 1599:	

// Line 1600:	    

	ldc.i4	0
	stloc	't/2'
	br	'L_1017'
L_1016:
// Line 1602:	      Int32 curr = bsR ( 5 );

	ldloca	'curr/9'
	ldc.i4	5
	call	uint32 'bsR'(int32)
	conv.i4
	stind.i4
	ldc.i4	0
	stloc	'i/0'
	br	'L_1022'
L_1021:
	br	'L_1028'
L_1026:
// Line 1605:	            if (bsR(1) == 0) curr++; else curr--;

	ldc.i4	1
	call	uint32 'bsR'(int32)
	ldc.i4	0
	bne.un	'L_1030'
	ldloc	'curr/9'
	ldc.i4	1
	add
	stloc	'curr/9'
	br	'L_1031'
L_1030:
	ldloc	'curr/9'
	ldc.i4	1
	sub
	stloc	'curr/9'
L_1031:
L_1028:
// Line 1604:	         while (bsR(1) == 1) {

	ldc.i4	1
	call	uint32 'bsR'(int32)
	ldc.i4	1
	beq	'L_1026'
L_1027:
// Line 1606:	         }

// Line 1607:	         len[t][i] = curr;

	ldloc	't/2'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/0'
	add
	ldloc	'curr/9'
	conv.u1
	stind.i1
L_1024:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1603:	      for (i = 0; i < alphaSize; i++) {

L_1022:
	ldloc	'i/0'
	ldloc	'alphaSize/5'
	blt	'L_1028'
L_1023:
// Line 1608:	      }

L_1019:
	ldloc	't/2'
	ldc.i4	1
	add
	stloc	't/2'
// Line 1601:	   for (t = 0; t < nGroups; t++) {

L_1017:
	ldloc	't/2'
	ldloc	'nGroups/3'
	blt	'L_1016'
L_1018:
// Line 1609:	   }

// Line 1610:	

// Line 1611:	    

	ldc.i4	0
	stloc	't/2'
	br	'L_1036'
L_1035:
// Line 1613:	      minLen = 32;

	ldc.i4	32
	stloc	'minLen/6'
// Line 1614:	      maxLen = 0;

	ldc.i4	0
	stloc	'maxLen/7'
	ldc.i4	0
	stloc	'i/0'
	br	'L_1041'
L_1040:
// Line 1616:	         if (len[t][i] > maxLen) maxLen = len[t][i];

	ldloc	't/2'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/0'
	add
	ldind.u1
	conv.i4
	ldloc	'maxLen/7'
	ble	'L_1045'
	ldloc	't/2'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/0'
	add
	ldind.u1
	conv.i4
	stloc	'maxLen/7'
L_1045:
// Line 1617:	         if (len[t][i] < minLen) minLen = len[t][i];

	ldloc	't/2'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/0'
	add
	ldind.u1
	conv.i4
	ldloc	'minLen/6'
	bge	'L_1046'
	ldloc	't/2'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'i/0'
	add
	ldind.u1
	conv.i4
	stloc	'minLen/6'
L_1046:
L_1043:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1615:	      for (i = 0; i < alphaSize; i++) {

L_1041:
	ldloc	'i/0'
	ldloc	'alphaSize/5'
	blt	'L_1040'
L_1042:
// Line 1618:	      }

// Line 1619:	      hbCreateDecodeTables (

// Line 1620:	         &limit[t][0], &base[t][0], &perm[t][0], &len[t][0],

// Line 1621:	         minLen, maxLen, alphaSize

// Line 1622:	      );

	ldloc	't/2'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'limit'

	add
	ldloc	't/2'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'base'

	add
	ldloc	't/2'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'perm'

	add
	ldloc	't/2'
	ldc.i4	258
	mul
	ldsflda	valuetype 'uint8[6][258]' 'len'

	add
	ldloc	'minLen/6'
	ldloc	'maxLen/7'
	ldloc	'alphaSize/5'
	call	void 'hbCreateDecodeTables'(void*, void*, void*, void*, int32, int32, int32)
// Line 1623:	      minLens[t] = minLen;

	ldloc	't/2'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[6]' 'minLens'

	add
	ldloc	'minLen/6'
	stind.i4
L_1038:
	ldloc	't/2'
	ldc.i4	1
	add
	stloc	't/2'
// Line 1612:	   for (t = 0; t < nGroups; t++) {

L_1036:
	ldloc	't/2'
	ldloc	'nGroups/3'
	blt	'L_1035'
L_1037:
// Line 1624:	   }

// Line 1625:	}

L_968:
	ret

}
 .method public hidebysig static void 'getAndMoveToFrontDecode'() cil managed
{
// Line 1649:	void getAndMoveToFrontDecode ( void )

// Line 1650:	{

	.locals
	(
		[0] valuetype 'uint8[256]' 'yy/0',
		[1] int32 'i/1',
		[2] int32 'j/2',
		[3] int32 'nextSym/3',
		[4] int32 'limitLast/4',
		[5] int32 'EOB/5',
		[6] int32 'groupNo/6',
		[7] int32 'groupPos/7',
		[8] uint8 'tmp/8',
		[9] int32 'zt/9',
		[10] int32 'zn/10',
		[11] int32 'zvec/11',
		[12] int32 'zj/12',
		[13] int32 'zzi/13',
		[14] uint8 'ch/14',
		[15] int32 's/15',
		[16] int32 'N/16',
		[17] int32 'zt/17',
		[18] int32 'zn/18',
		[19] int32 'zvec/19',
		[20] int32 'zj/20',
		[21] int32 'zzi/21',
		[22] int32 'zt/22',
		[23] int32 'zn/23',
		[24] int32 'zvec/24',
		[25] int32 'zj/25',
		[26] int32 'zzi/26'
	)
	.maxstack	4
L_1054:
// Line 1653:	   Int32  EOB, groupNo, groupPos;

// Line 1654:	

// Line 1655:	

// Line 1656:	   PRINTLOC;

// Line 1657:	

// Line 1658:	   limitLast = 100000 * blockSize100k;

	ldsfld	int32 'blockSize100k'

	ldc.i4	100000
	mul
	stloc	'limitLast/4'
// Line 1659:	   origPtr   = bsGetIntVS ( 24 );

	ldc.i4	24
	conv.u4
	call	uint32 'bsGetIntVS'(uint32)
	conv.i4
	stsfld	int32 'origPtr'

// Line 1660:	

// Line 1661:	   recvDecodingTables();

	call	void 'recvDecodingTables'()
// Line 1662:	   EOB      = nInUse+1;

	ldsfld	int32 'nInUse'

	ldc.i4	1
	add
	stloc	'EOB/5'
// Line 1663:	   groupNo  = -1;

	ldc.i4	-1
	stloc	'groupNo/6'
// Line 1664:	   groupPos = 0;

	ldc.i4	0
	stloc	'groupPos/7'
// Line 1665:	

// Line 1666:	    
// Line 1667:	
// Line 1668:	
// Line 1669:	
// Line 1670:	
// Line 1671:	

	ldc.i4	0
	stloc	'i/1'
	br	'L_1058'
L_1057:
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[256]' 'unzftab'

	add
	ldc.i4	0
	stind.i4
L_1060:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 1672:	   for (i = 0; i <= 255; i++) unzftab[i] = 0;

L_1058:
	ldloc	'i/1'
	ldc.i4	255
	ble	'L_1057'
L_1059:
// Line 1673:	

	ldc.i4	0
	stloc	'i/1'
	br	'L_1062'
L_1061:
	ldloc	'i/1'
	ldloca	'yy/0'
	add
	ldloc	'i/1'
	conv.u1
	stind.i1
L_1064:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 1674:	   for (i = 0; i <= 255; i++) yy[i] = (UChar) i;

L_1062:
	ldloc	'i/1'
	ldc.i4	255
	ble	'L_1061'
L_1063:
// Line 1675:	

// Line 1676:	   last = -1;

	ldc.i4	-1
	stsfld	int32 'last'

// Line 1677:	

// Line 1678:	   GET_MTF_VAL(nextSym);

	ldc.i4	0
	stloc	'groupNo/6'
	ldc.i4	50
	stloc	'groupPos/7'
L_1066:
	ldloc	'groupPos/7'
	ldc.i4	1
	sub
	stloc	'groupPos/7'
	ldloc	'groupNo/6'
	ldsflda	valuetype 'uint8[18002]' 'selector'

	add
	ldind.u1
	conv.i4
	stloc	'zt/22'
	ldloc	'zt/22'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[6]' 'minLens'

	add
	ldind.i4
	stloc	'zn/23'
	ldloc	'zn/23'
	call	uint32 'bsR'(int32)
	conv.i4
	stloc	'zvec/24'
	br	'L_1071'
L_1069:
	ldloc	'zn/23'
	ldc.i4	1
	add
	stloc	'zn/23'
	br	'L_1077'
L_1075:
	ldloca	'zzi/26'
	ldsfld	void* 'bsStream'

	call	int32 'fgetc'(void*)
	stind.i4
	ldloc	'zzi/26'
	ldc.i4	-1
	bne.un	'L_1079'
	call	void 'compressedStreamEOF'()
L_1079:
	ldsfld	uint32 'bsBuff'

	ldc.i4	8
	shl
	conv.i4
	ldloc	'zzi/26'
	conv.i4
	ldc.i4	255
	and
	or
	conv.u4
	stsfld	uint32 'bsBuff'

	ldsfld	int32 'bsLive'

	ldc.i4	8
	add
	stsfld	int32 'bsLive'

L_1077:
	ldsfld	int32 'bsLive'

	ldc.i4	1
	blt	'L_1075'
L_1076:
	ldsfld	uint32 'bsBuff'

	ldsfld	int32 'bsLive'

	ldc.i4	1
	sub
	shr.un
	ldc.i4	1
	and
	conv.i4
	stloc	'zj/25'
	ldsfld	int32 'bsLive'

	ldc.i4	1
	sub
	stsfld	int32 'bsLive'

	ldloc	'zvec/24'
	ldc.i4	1
	shl
	ldloc	'zj/25'
	or
	stloc	'zvec/24'
L_1071:
	ldloc	'zvec/24'
	ldloc	'zt/22'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'limit'

	add
	ldloc	'zn/23'
	ldc.i4	2
	shl
	add
	ldind.i4
	bgt	'L_1069'
L_1070:
	ldloc	'zt/22'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'base'

	add
	ldloc	'zn/23'
	ldc.i4	2
	shl
	add
	ldind.i4
	neg
	ldloc	'zvec/24'
	add
	ldc.i4	2
	shl
	ldloc	'zt/22'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'perm'

	add
	add
	ldind.i4
	stloc	'nextSym/3'
L_1085:
// Line 1680:	

// Line 1681:	      if (nextSym == EOB) break;

	ldloc	'nextSym/3'
	ldloc	'EOB/5'
	beq	'L_1086'
L_1089:
// Line 1682:	      if (nextSym == RUNA || nextSym == RUNB) {

	ldloc	'nextSym/3'
	ldc.i4	0
	beq	'L_1173'
	ldloc	'nextSym/3'
	ldc.i4	1
	bne.un	'L_1090'
L_1173:
// Line 1683:	         UChar ch;

// Line 1684:	         Int32 s = -1;

	ldloca	's/15'
	ldc.i4	-1
	stind.i4
// Line 1685:	         Int32 N = 1;

	ldloca	'N/16'
	ldc.i4	1
	stind.i4
// Line 1686:	         do {

L_1092:
// Line 1687:	            if (nextSym == RUNA) s = s + (0+1) * N; else

	ldloc	'nextSym/3'
	ldc.i4	0
	bne.un	'L_1096'
	ldloc	's/15'
	ldloc	'N/16'
	add
	stloc	's/15'
	br	'L_1097'
L_1096:
// Line 1688:	            if (nextSym == RUNB) s = s + (1+1) * N;

	ldloc	'nextSym/3'
	ldc.i4	1
	bne.un	'L_1098'
	ldloc	'N/16'
	ldc.i4	1
	shl
	ldloc	's/15'
	add
	stloc	's/15'
L_1098:
L_1097:
// Line 1689:	            N = N * 2;

	ldloc	'N/16'
	ldc.i4	1
	shl
	stloc	'N/16'
// Line 1690:	            GET_MTF_VAL(nextSym);

	ldloc	'groupPos/7'
	ldc.i4	0
	bne.un	'L_1100'
	ldloc	'groupNo/6'
	ldc.i4	1
	add
	stloc	'groupNo/6'
	ldc.i4	50
	stloc	'groupPos/7'
L_1100:
	ldloc	'groupPos/7'
	ldc.i4	1
	sub
	stloc	'groupPos/7'
	ldloc	'groupNo/6'
	ldsflda	valuetype 'uint8[18002]' 'selector'

	add
	ldind.u1
	conv.i4
	stloc	'zt/17'
	ldloc	'zt/17'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[6]' 'minLens'

	add
	ldind.i4
	stloc	'zn/18'
	ldloc	'zn/18'
	call	uint32 'bsR'(int32)
	conv.i4
	stloc	'zvec/19'
	br	'L_1105'
L_1103:
	ldloc	'zn/18'
	ldc.i4	1
	add
	stloc	'zn/18'
	br	'L_1111'
L_1109:
	ldloca	'zzi/21'
	ldsfld	void* 'bsStream'

	call	int32 'fgetc'(void*)
	stind.i4
	ldloc	'zzi/21'
	ldc.i4	-1
	bne.un	'L_1113'
	call	void 'compressedStreamEOF'()
L_1113:
	ldsfld	uint32 'bsBuff'

	ldc.i4	8
	shl
	conv.i4
	ldloc	'zzi/21'
	conv.i4
	ldc.i4	255
	and
	or
	conv.u4
	stsfld	uint32 'bsBuff'

	ldsfld	int32 'bsLive'

	ldc.i4	8
	add
	stsfld	int32 'bsLive'

L_1111:
	ldsfld	int32 'bsLive'

	ldc.i4	1
	blt	'L_1109'
L_1110:
	ldsfld	uint32 'bsBuff'

	ldsfld	int32 'bsLive'

	ldc.i4	1
	sub
	shr.un
	ldc.i4	1
	and
	conv.i4
	stloc	'zj/20'
	ldsfld	int32 'bsLive'

	ldc.i4	1
	sub
	stsfld	int32 'bsLive'

	ldloc	'zvec/19'
	ldc.i4	1
	shl
	ldloc	'zj/20'
	or
	stloc	'zvec/19'
L_1105:
	ldloc	'zvec/19'
	ldloc	'zt/17'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'limit'

	add
	ldloc	'zn/18'
	ldc.i4	2
	shl
	add
	ldind.i4
	bgt	'L_1103'
L_1104:
	ldloc	'zt/17'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'base'

	add
	ldloc	'zn/18'
	ldc.i4	2
	shl
	add
	ldind.i4
	neg
	ldloc	'zvec/19'
	add
	ldc.i4	2
	shl
	ldloc	'zt/17'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'perm'

	add
	add
	ldind.i4
	stloc	'nextSym/3'
L_1094:
// Line 1691:	         }

// Line 1692:	            while (nextSym == RUNA || nextSym == RUNB);

	ldloc	'nextSym/3'
	ldc.i4	0
	beq	'L_1092'
	ldloc	'nextSym/3'
	ldc.i4	1
	beq	'L_1092'
L_1093:
// Line 1693:	

// Line 1694:	         s++;

	ldloc	's/15'
	ldc.i4	1
	add
	stloc	's/15'
// Line 1695:	         ch = seqToUnseq[yy[0]];

	ldloca	'yy/0'
	ldind.u1
	conv.i4
	ldsflda	valuetype 'uint8[256]' 'seqToUnseq'

	add
	ldind.u1
	stloc	'ch/14'
// Line 1696:	         unzftab[ch] += s;

	ldloc	'ch/14'
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[256]' 'unzftab'

	add
	ldloc	'ch/14'
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[256]' 'unzftab'

	add
	ldind.i4
	ldloc	's/15'
	add
	stind.i4
// Line 1697:	         if (smallMode)

	ldsfld	uint8 'smallMode'

	ldc.i4	0
	beq	'L_1129'
	br	'L_1123'
L_1121:
// Line 1699:	               last++;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

// Line 1700:	               ll16[last] = ch;

	ldsfld	int32 'last'

	ldc.i4	1
	shl
	ldsfld	void* 'll16'

	add
	ldloc	'ch/14'
	conv.u2
	stind.i2
// Line 1701:	               s--;

	ldloc	's/15'
	ldc.i4	1
	sub
	stloc	's/15'
L_1123:
// Line 1698:	            while (s > 0) {

	ldloc	's/15'
	ldc.i4	0
	bgt	'L_1121'
L_1122:
	br	'L_1126'
L_1120:
// Line 1702:	            }

// Line 1703:	         else

	br	'L_1129'
L_1127:
// Line 1705:	               last++;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

// Line 1706:	               ll8[last] = ch;

	ldsfld	int32 'last'

	ldsfld	void* 'll8'

	add
	ldloc	'ch/14'
	stind.i1
// Line 1707:	               s--;

	ldloc	's/15'
	ldc.i4	1
	sub
	stloc	's/15'
L_1129:
// Line 1704:	            while (s > 0) {

	ldloc	's/15'
	ldc.i4	0
	bgt	'L_1127'
L_1128:
L_1126:
// Line 1708:	            };

// Line 1709:	

// Line 1710:	         if (last >= limitLast) blockOverrun();

	ldsfld	int32 'last'

	ldloc	'limitLast/4'
	blt	'L_1087'
	call	void 'blockOverrun'()
L_1132:
// Line 1711:	         continue;

	br	'L_1085'
L_1090:
// Line 1713:	      } else {

// Line 1715:	         UChar tmp;

// Line 1716:	         last++; if (last >= limitLast) blockOverrun();

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldloc	'limitLast/4'
	blt	'L_1136'
	call	void 'blockOverrun'()
L_1136:
// Line 1717:	

// Line 1718:	         tmp = yy[nextSym-1];

	ldloc	'nextSym/3'
	ldc.i4	1
	sub
	ldloca	'yy/0'
	add
	ldind.u1
	stloc	'tmp/8'
// Line 1719:	         unzftab[seqToUnseq[tmp]]++;

	ldloc	'tmp/8'
	conv.i4
	ldsflda	valuetype 'uint8[256]' 'seqToUnseq'

	add
	ldind.u1
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[256]' 'unzftab'

	add
	ldloc	'tmp/8'
	conv.i4
	ldsflda	valuetype 'uint8[256]' 'seqToUnseq'

	add
	ldind.u1
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[256]' 'unzftab'

	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 1720:	         if (smallMode)

	ldsfld	uint8 'smallMode'

	ldc.i4	0
	beq	'L_1137'
// Line 1721:	            ll16[last] = seqToUnseq[tmp]; else

	ldsfld	int32 'last'

	ldc.i4	1
	shl
	ldsfld	void* 'll16'

	add
	ldloc	'tmp/8'
	conv.i4
	ldsflda	valuetype 'uint8[256]' 'seqToUnseq'

	add
	ldind.u1
	conv.u2
	stind.i2
	br	'L_1138'
L_1137:
// Line 1722:	            ll8[last]  = seqToUnseq[tmp];

	ldsfld	int32 'last'

	ldsfld	void* 'll8'

	add
	ldloc	'tmp/8'
	conv.i4
	ldsflda	valuetype 'uint8[256]' 'seqToUnseq'

	add
	ldind.u1
	stind.i1
L_1138:
// Line 1723:	

// Line 1724:	          
// Line 1725:	
// Line 1726:	
// Line 1727:	
// Line 1728:	
// Line 1729:	

// Line 1730:	

// Line 1731:	         j = nextSym-1;

	ldloc	'nextSym/3'
	ldc.i4	1
	sub
	stloc	'j/2'
	br	'L_1140'
L_1139:
// Line 1733:	            yy[j]   = yy[j-1];

	ldloc	'j/2'
	ldloca	'yy/0'
	add
	ldloc	'j/2'
	ldc.i4	1
	sub
	ldloca	'yy/0'
	add
	ldind.u1
	stind.i1
// Line 1734:	            yy[j-1] = yy[j-2];

	ldloc	'j/2'
	ldc.i4	1
	sub
	ldloca	'yy/0'
	add
	ldloc	'j/2'
	ldc.i4	2
	sub
	ldloca	'yy/0'
	add
	ldind.u1
	stind.i1
// Line 1735:	            yy[j-2] = yy[j-3];

	ldloc	'j/2'
	ldc.i4	2
	sub
	ldloca	'yy/0'
	add
	ldloc	'j/2'
	ldc.i4	3
	sub
	ldloca	'yy/0'
	add
	ldind.u1
	stind.i1
// Line 1736:	            yy[j-3] = yy[j-4];

	ldloc	'j/2'
	ldc.i4	3
	sub
	ldloca	'yy/0'
	add
	ldloc	'j/2'
	ldc.i4	4
	sub
	ldloca	'yy/0'
	add
	ldind.u1
	stind.i1
L_1142:
	ldloc	'j/2'
	ldc.i4	4
	sub
	stloc	'j/2'
// Line 1732:	         for (; j > 3; j -= 4) {

L_1140:
	ldloc	'j/2'
	ldc.i4	3
	bgt	'L_1139'
L_1141:
// Line 1737:	         }

	br	'L_1146'
L_1145:
	ldloc	'j/2'
	ldloca	'yy/0'
	add
	ldloc	'j/2'
	ldc.i4	1
	sub
	ldloca	'yy/0'
	add
	ldind.u1
	stind.i1
L_1148:
	ldloc	'j/2'
	ldc.i4	1
	sub
	stloc	'j/2'
// Line 1738:	         for (; j > 0; j--) yy[j] = yy[j-1];

L_1146:
	ldloc	'j/2'
	ldc.i4	0
	bgt	'L_1145'
L_1147:
// Line 1739:	

// Line 1740:	         yy[0] = tmp;

	ldloca	'yy/0'
	ldloc	'tmp/8'
	stind.i1
// Line 1741:	         GET_MTF_VAL(nextSym);

	ldloc	'groupPos/7'
	ldc.i4	0
	bne.un	'L_1150'
	ldloc	'groupNo/6'
	ldc.i4	1
	add
	stloc	'groupNo/6'
	ldc.i4	50
	stloc	'groupPos/7'
L_1150:
	ldloc	'groupPos/7'
	ldc.i4	1
	sub
	stloc	'groupPos/7'
	ldloc	'groupNo/6'
	ldsflda	valuetype 'uint8[18002]' 'selector'

	add
	ldind.u1
	conv.i4
	stloc	'zt/9'
	ldloc	'zt/9'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[6]' 'minLens'

	add
	ldind.i4
	stloc	'zn/10'
	ldloc	'zn/10'
	call	uint32 'bsR'(int32)
	conv.i4
	stloc	'zvec/11'
	br	'L_1155'
L_1153:
	ldloc	'zn/10'
	ldc.i4	1
	add
	stloc	'zn/10'
	br	'L_1161'
L_1159:
	ldloca	'zzi/13'
	ldsfld	void* 'bsStream'

	call	int32 'fgetc'(void*)
	stind.i4
	ldloc	'zzi/13'
	ldc.i4	-1
	bne.un	'L_1163'
	call	void 'compressedStreamEOF'()
L_1163:
	ldsfld	uint32 'bsBuff'

	ldc.i4	8
	shl
	conv.i4
	ldloc	'zzi/13'
	conv.i4
	ldc.i4	255
	and
	or
	conv.u4
	stsfld	uint32 'bsBuff'

	ldsfld	int32 'bsLive'

	ldc.i4	8
	add
	stsfld	int32 'bsLive'

L_1161:
	ldsfld	int32 'bsLive'

	ldc.i4	1
	blt	'L_1159'
L_1160:
	ldsfld	uint32 'bsBuff'

	ldsfld	int32 'bsLive'

	ldc.i4	1
	sub
	shr.un
	ldc.i4	1
	and
	conv.i4
	stloc	'zj/12'
	ldsfld	int32 'bsLive'

	ldc.i4	1
	sub
	stsfld	int32 'bsLive'

	ldloc	'zvec/11'
	ldc.i4	1
	shl
	ldloc	'zj/12'
	or
	stloc	'zvec/11'
L_1155:
	ldloc	'zvec/11'
	ldloc	'zt/9'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'limit'

	add
	ldloc	'zn/10'
	ldc.i4	2
	shl
	add
	ldind.i4
	bgt	'L_1153'
L_1154:
	ldloc	'zt/9'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'base'

	add
	ldloc	'zn/10'
	ldc.i4	2
	shl
	add
	ldind.i4
	neg
	ldloc	'zvec/11'
	add
	ldc.i4	2
	shl
	ldloc	'zt/9'
	ldc.i4	1032
	mul
	ldsflda	valuetype 'int32[6][258]' 'perm'

	add
	add
	ldind.i4
	stloc	'nextSym/3'
// Line 1742:	         continue;

L_1134:
L_1087:
// Line 1679:	   while (True) {

	br	'L_1085'
L_1086:
// Line 1744:	   }

// Line 1745:	}

L_1055:
	ret

}
 .method public hidebysig static uint8 'fullGtU'(int32 'i1' , int32 'i2' ) cil managed
{
// Line 1762:	INLINE Bool fullGtU ( Int32 i1, Int32 i2 )

// Line 1763:	{

	.locals
	(
		[0] int32 'k/0',
		[1] uint8 'c1/1',
		[2] uint8 'c2/2',
		[3] uint16 's1/3',
		[4] uint16 's2/4'
	)
	.maxstack	16
L_1177:
// Line 1766:	   UInt16 s1, s2;

// Line 1767:	

// Line 1768:	

// Line 1769:	   PRINTLOC;

// Line 1770:	

// Line 1771:	   #if DEBUG

// Line 1772:	       
// Line 1773:	
// Line 1774:	
// Line 1775:	

// Line 1776:	      assert (i1 != i2);

// Line 1777:	   #endif

// Line 1778:	

// Line 1779:	   c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1780:	   c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1781:	   if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1180'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1180:
// Line 1782:	   i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1783:	

// Line 1784:	   c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1785:	   c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1786:	   if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1181'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1181:
// Line 1787:	   i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1788:	

// Line 1789:	   c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1790:	   c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1791:	   if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1182'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1182:
// Line 1792:	   i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1793:	

// Line 1794:	   c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1795:	   c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1796:	   if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1183'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1183:
// Line 1797:	   i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1798:	

// Line 1799:	   c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1800:	   c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1801:	   if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1184'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1184:
// Line 1802:	   i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1803:	

// Line 1804:	   c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1805:	   c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1806:	   if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1185'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1185:
// Line 1807:	   i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1808:	

// Line 1809:	   k = last + 1;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stloc	'k/0'
// Line 1810:	

// Line 1811:	   do {

L_1186:
// Line 1812:	

// Line 1813:	      c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1814:	      c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1815:	      if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1190'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1190:
// Line 1816:	      s1 = quadrant[i1];

	ldarg	'i1'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldind.u2
	stloc	's1/3'
// Line 1817:	      s2 = quadrant[i2];

	ldarg	'i2'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldind.u2
	stloc	's2/4'
// Line 1818:	      if (s1 != s2) return (s1 > s2);

	ldloc	's1/3'
	conv.i4
	ldloc	's2/4'
	conv.i4
	beq	'L_1191'
	ldloc	's1/3'
	conv.i4
	ldloc	's2/4'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1191:
// Line 1819:	      i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1820:	

// Line 1821:	      c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1822:	      c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1823:	      if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1192'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1192:
// Line 1824:	      s1 = quadrant[i1];

	ldarg	'i1'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldind.u2
	stloc	's1/3'
// Line 1825:	      s2 = quadrant[i2];

	ldarg	'i2'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldind.u2
	stloc	's2/4'
// Line 1826:	      if (s1 != s2) return (s1 > s2);

	ldloc	's1/3'
	conv.i4
	ldloc	's2/4'
	conv.i4
	beq	'L_1193'
	ldloc	's1/3'
	conv.i4
	ldloc	's2/4'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1193:
// Line 1827:	      i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1828:	

// Line 1829:	      c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1830:	      c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1831:	      if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1194'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1194:
// Line 1832:	      s1 = quadrant[i1];

	ldarg	'i1'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldind.u2
	stloc	's1/3'
// Line 1833:	      s2 = quadrant[i2];

	ldarg	'i2'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldind.u2
	stloc	's2/4'
// Line 1834:	      if (s1 != s2) return (s1 > s2);

	ldloc	's1/3'
	conv.i4
	ldloc	's2/4'
	conv.i4
	beq	'L_1195'
	ldloc	's1/3'
	conv.i4
	ldloc	's2/4'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1195:
// Line 1835:	      i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1836:	

// Line 1837:	      c1 = block[i1];

	ldarg	'i1'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/1'
// Line 1838:	      c2 = block[i2];

	ldarg	'i2'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/2'
// Line 1839:	      if (c1 != c2) return (c1 > c2);

	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	beq	'L_1196'
	ldloc	'c1/1'
	conv.i4
	ldloc	'c2/2'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1196:
// Line 1840:	      s1 = quadrant[i1];

	ldarg	'i1'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldind.u2
	stloc	's1/3'
// Line 1841:	      s2 = quadrant[i2];

	ldarg	'i2'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldind.u2
	stloc	's2/4'
// Line 1842:	      if (s1 != s2) return (s1 > s2);

	ldloc	's1/3'
	conv.i4
	ldloc	's2/4'
	conv.i4
	beq	'L_1197'
	ldloc	's1/3'
	conv.i4
	ldloc	's2/4'
	conv.i4
	cgt
	conv.u1
	conv.i4
	br	'L_1178'
L_1197:
// Line 1843:	      i1++; i2++;

	ldarg	'i1'
	ldc.i4	1
	add
	starg	'i1'
	ldarg	'i2'
	ldc.i4	1
	add
	starg	'i2'
// Line 1844:	

// Line 1845:	      if (i1 > last) { i1 -= last; i1--; };

	ldarg	'i1'
	ldsfld	int32 'last'

	ble	'L_1198'
	ldarg	'i1'
	ldsfld	int32 'last'

	sub
	starg	'i1'
	ldarg	'i1'
	ldc.i4	1
	sub
	starg	'i1'
L_1198:
// Line 1846:	      if (i2 > last) { i2 -= last; i2--; };

	ldarg	'i2'
	ldsfld	int32 'last'

	ble	'L_1201'
	ldarg	'i2'
	ldsfld	int32 'last'

	sub
	starg	'i2'
	ldarg	'i2'
	ldc.i4	1
	sub
	starg	'i2'
L_1201:
// Line 1847:	

// Line 1848:	      k -= 4;

	ldloc	'k/0'
	ldc.i4	4
	sub
	stloc	'k/0'
// Line 1849:	      workDone++;

	ldsfld	int32 'workDone'

	ldc.i4	1
	add
	stsfld	int32 'workDone'

L_1188:
// Line 1850:	   }

// Line 1851:	      while (k >= 0);

	ldloc	'k/0'
	ldc.i4	0
	bge	'L_1186'
L_1187:
// Line 1852:	

// Line 1853:	   return False;

	ldc.i4	0
	conv.u1
	conv.i4
// Line 1854:	}

L_1178:
	ret

}
 .method public hidebysig static void 'simpleSort'(int32 'lo' , int32 'hi' , int32 'd' ) cil managed
{
// Line 1867:	void simpleSort ( Int32 lo, Int32 hi, Int32 d )

// Line 1868:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'j/1',
		[2] int32 'h/2',
		[3] int32 'bigN/3',
		[4] int32 'hp/4',
		[5] int32 'v/5'
	)
	.maxstack	3
L_1210:
// Line 1870:	   Int32 v;

// Line 1871:	

// Line 1872:	

// Line 1873:	   PRINTLOC;

// Line 1874:	

// Line 1875:	   bigN = hi - lo + 1;

	ldarg	'hi'
	ldarg	'lo'
	sub
	ldc.i4	1
	add
	stloc	'bigN/3'
// Line 1876:	   if (bigN < 2) return;

	ldloc	'bigN/3'
	ldc.i4	2
	blt	'L_1211'
L_1213:
// Line 1877:	

// Line 1878:	   hp = 0;

	ldc.i4	0
	stloc	'hp/4'
	br	'L_1216'
L_1214:
	ldloc	'hp/4'
	ldc.i4	1
	add
	stloc	'hp/4'
L_1216:
// Line 1879:	   while (incs[hp] < bigN) hp++;

	ldloc	'hp/4'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[14]' 'incs'

	add
	ldind.i4
	ldloc	'bigN/3'
	blt	'L_1214'
L_1215:
// Line 1880:	   hp--;

	ldloc	'hp/4'
	ldc.i4	1
	sub
	stloc	'hp/4'
// Line 1881:	

	br	'L_1218'
L_1217:
// Line 1883:	      h = incs[hp];

	ldloc	'hp/4'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[14]' 'incs'

	add
	ldind.i4
	stloc	'h/2'
// Line 1884:	      if (verbosity >= 5)

	ldsfld	int32 'verbosity'

	ldc.i4	5
	blt	'L_1222'
// Line 1885:	         fprintf ( stderr, "          shell increment %d\n", h );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_20'

	ldloc	'h/2'
	call	vararg int32 'fprintf'(void*, void*, ..., int32)
	pop
L_1222:
// Line 1886:	

// Line 1887:	      i = lo + h;

	ldarg	'lo'
	ldloc	'h/2'
	add
	stloc	'i/0'
L_1223:
// Line 1889:	

// Line 1890:	          

// Line 1891:	         if (i > hi) break;

	ldloc	'i/0'
	ldarg	'hi'
	bgt	'L_1224'
L_1227:
// Line 1892:	         v = zptr[i];

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stloc	'v/5'
// Line 1893:	         j = i;

	ldloc	'i/0'
	stloc	'j/1'
	br	'L_1230'
L_1228:
// Line 1895:	            zptr[j] = zptr[j-h];

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'j/1'
	ldloc	'h/2'
	sub
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
// Line 1896:	            j = j - h;

	ldloc	'j/1'
	ldloc	'h/2'
	sub
	stloc	'j/1'
// Line 1897:	            if (j <= (lo + h - 1)) break;

	ldloc	'j/1'
	ldarg	'lo'
	ldloc	'h/2'
	add
	ldc.i4	1
	sub
	ble	'L_1229'
L_1232:
L_1230:
// Line 1894:	         while ( fullGtU ( zptr[j-h]+d, v+d ) ) {

	ldloc	'j/1'
	ldloc	'h/2'
	sub
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldarg	'd'
	add
	ldloc	'v/5'
	ldarg	'd'
	add
	call	uint8 'fullGtU'(int32, int32)
	ldc.i4	0
	bne.un	'L_1228'
L_1229:
// Line 1898:	         }

// Line 1899:	         zptr[j] = v;

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'v/5'
	stind.i4
// Line 1900:	         i++;

	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1901:	

// Line 1902:	          

// Line 1903:	         if (i > hi) break;

	ldloc	'i/0'
	ldarg	'hi'
	bgt	'L_1224'
L_1234:
// Line 1904:	         v = zptr[i];

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stloc	'v/5'
// Line 1905:	         j = i;

	ldloc	'i/0'
	stloc	'j/1'
	br	'L_1237'
L_1235:
// Line 1907:	            zptr[j] = zptr[j-h];

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'j/1'
	ldloc	'h/2'
	sub
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
// Line 1908:	            j = j - h;

	ldloc	'j/1'
	ldloc	'h/2'
	sub
	stloc	'j/1'
// Line 1909:	            if (j <= (lo + h - 1)) break;

	ldloc	'j/1'
	ldarg	'lo'
	ldloc	'h/2'
	add
	ldc.i4	1
	sub
	ble	'L_1236'
L_1239:
L_1237:
// Line 1906:	         while ( fullGtU ( zptr[j-h]+d, v+d ) ) {

	ldloc	'j/1'
	ldloc	'h/2'
	sub
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldarg	'd'
	add
	ldloc	'v/5'
	ldarg	'd'
	add
	call	uint8 'fullGtU'(int32, int32)
	ldc.i4	0
	bne.un	'L_1235'
L_1236:
// Line 1910:	         }

// Line 1911:	         zptr[j] = v;

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'v/5'
	stind.i4
// Line 1912:	         i++;

	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1913:	

// Line 1914:	          

// Line 1915:	         if (i > hi) break;

	ldloc	'i/0'
	ldarg	'hi'
	bgt	'L_1224'
L_1241:
// Line 1916:	         v = zptr[i];

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stloc	'v/5'
// Line 1917:	         j = i;

	ldloc	'i/0'
	stloc	'j/1'
	br	'L_1244'
L_1242:
// Line 1919:	            zptr[j] = zptr[j-h];

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'j/1'
	ldloc	'h/2'
	sub
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
// Line 1920:	            j = j - h;

	ldloc	'j/1'
	ldloc	'h/2'
	sub
	stloc	'j/1'
// Line 1921:	            if (j <= (lo + h - 1)) break;

	ldloc	'j/1'
	ldarg	'lo'
	ldloc	'h/2'
	add
	ldc.i4	1
	sub
	ble	'L_1243'
L_1246:
L_1244:
// Line 1918:	         while ( fullGtU ( zptr[j-h]+d, v+d ) ) {

	ldloc	'j/1'
	ldloc	'h/2'
	sub
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldarg	'd'
	add
	ldloc	'v/5'
	ldarg	'd'
	add
	call	uint8 'fullGtU'(int32, int32)
	ldc.i4	0
	bne.un	'L_1242'
L_1243:
// Line 1922:	         }

// Line 1923:	         zptr[j] = v;

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'v/5'
	stind.i4
// Line 1924:	         i++;

	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 1925:	

// Line 1926:	         if (workDone > workLimit && firstAttempt) return;

	ldsfld	int32 'workDone'

	ldsfld	int32 'workLimit'

	ble	'L_1248'
	ldsfld	uint8 'firstAttempt'

	ldc.i4	0
	bne.un	'L_1211'
L_1248:
L_1225:
// Line 1888:	      while (True) {

	br	'L_1223'
L_1224:
// Line 1927:	      }

L_1220:
	ldloc	'hp/4'
	ldc.i4	1
	sub
	stloc	'hp/4'
// Line 1882:	   for (; hp >= 0; hp--) {

L_1218:
	ldloc	'hp/4'
	ldc.i4	0
	bge	'L_1217'
L_1219:
// Line 1928:	   }

// Line 1929:	}

L_1211:
	ret

}
 .method public hidebysig static void 'vswap'(int32 'p1' , int32 'p2' , int32 'n' ) cil managed
{
// Line 1944:	INLINE void vswap ( Int32 p1, Int32 p2, Int32 n )

// Line 1945:	{

	.locals
	(
		[0] int32 'tmp/0'
	)
	.maxstack	3
L_1256:
	br	'L_1261'
L_1259:
// Line 1947:	      swap(zptr[p1], zptr[p2]);

	ldloca	'tmp/0'
	ldarg	'p1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
	ldarg	'p1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldarg	'p2'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
	ldarg	'p2'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'tmp/0'
	stind.i4
// Line 1948:	      p1++; p2++; n--;

	ldarg	'p1'
	ldc.i4	1
	add
	starg	'p1'
	ldarg	'p2'
	ldc.i4	1
	add
	starg	'p2'
	ldarg	'n'
	ldc.i4	1
	sub
	starg	'n'
L_1261:
// Line 1946:	   while (n > 0) {

	ldarg	'n'
	ldc.i4	0
	bgt	'L_1259'
L_1260:
// Line 1949:	   }

// Line 1950:	}

L_1257:
	ret

}
 .method public hidebysig static uint8 'med3'(uint8 'a' , uint8 'b' , uint8 'c' ) cil managed
{
// Line 1952:	INLINE UChar med3 ( UChar a, UChar b, UChar c )

// Line 1953:	{

	.locals
	(
		[0] uint8 't/0'
	)
	.maxstack	2
L_1271:
// Line 1954:	   UChar t;

// Line 1955:	   if (a > b) { t = a; a = b; b = t; };

	ldarg	'a'
	conv.i4
	ldarg	'b'
	conv.i4
	ble	'L_1274'
	ldarg	'a'
	stloc	't/0'
	ldarg	'b'
	starg	'a'
	ldloc	't/0'
	starg	'b'
L_1274:
// Line 1956:	   if (b > c) { t = b; b = c; c = t; };

	ldarg	'b'
	conv.i4
	ldarg	'c'
	conv.i4
	ble	'L_1277'
	ldarg	'b'
	stloc	't/0'
	ldarg	'c'
	starg	'b'
	ldloc	't/0'
	starg	'c'
L_1277:
// Line 1957:	   if (a > b)          b = a;

	ldarg	'a'
	conv.i4
	ldarg	'b'
	conv.i4
	ble	'L_1280'
	ldarg	'a'
	starg	'b'
L_1280:
// Line 1958:	   return b;

	ldarg	'b'
	conv.i4
// Line 1959:	}

L_1272:
	ret

}
 .method public hidebysig static void 'qSort3'(int32 'loSt' , int32 'hiSt' , int32 'dSt' ) cil managed
{
// Line 1992:	void qSort3 ( Int32 loSt, Int32 hiSt, Int32 dSt )

// Line 1993:	{

	.locals
	(
		[0] int32 'unLo/0',
		[1] int32 'unHi/1',
		[2] int32 'ltLo/2',
		[3] int32 'gtHi/3',
		[4] int32 'med/4',
		[5] int32 'n/5',
		[6] int32 'm/6',
		[7] int32 'sp/7',
		[8] int32 'lo/8',
		[9] int32 'hi/9',
		[10] int32 'd/10',
		[11] valuetype '__anontype_400306509_0[1000]' 'stack/11',
		[12] int32 'tmp/12',
		[13] int32 'tmp/13',
		[14] int32 'tmp/14'
	)
	.maxstack	5
L_1286:
// Line 1996:	   StackElem stack[QSORT_STACK_SIZE];

// Line 1997:	

// Line 1998:	

// Line 1999:	   PRINTLOC;

// Line 2000:	

// Line 2001:	   sp = 0;

	ldc.i4	0
	stloc	'sp/7'
// Line 2002:	   push ( loSt, hiSt, dSt );

	ldc.i4	0
	ldloca	'stack/11'
	add
	ldarg	'loSt'
	stind.i4
	ldc.i4	0
	ldloca	'stack/11'
	add
	ldc.i4	4
	add
	ldarg	'hiSt'
	stind.i4
	ldc.i4	0
	ldloca	'stack/11'
	add
	ldc.i4	8
	add
	ldarg	'dSt'
	stind.i4
	ldc.i4	1
	stloc	'sp/7'
	br	'L_1293'
L_1291:
// Line 2005:	

// Line 2006:	      if (sp >= QSORT_STACK_SIZE) panic ( "stack overflow in qSort3" );

	ldloc	'sp/7'
	ldc.i4	1000
	blt	'L_1295'
	ldsflda	valuetype 'int8[]' 'L_21'

	call	void 'panic'(void*)
L_1295:
// Line 2007:	

// Line 2008:	      pop ( lo, hi, d );

	ldloc	'sp/7'
	ldc.i4	1
	sub
	stloc	'sp/7'
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldind.i4
	stloc	'lo/8'
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	4
	add
	ldind.i4
	stloc	'hi/9'
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	8
	add
	ldind.i4
	stloc	'd/10'
// Line 2009:	

// Line 2010:	      if (hi - lo < SMALL_THRESH || d > DEPTH_THRESH) {

	ldloc	'hi/9'
	ldloc	'lo/8'
	sub
	ldc.i4	20
	blt	'L_1348'
	ldloc	'd/10'
	ldc.i4	10
	ble	'L_1298'
L_1348:
// Line 2011:	         simpleSort ( lo, hi, d );

	ldloc	'lo/8'
	ldloc	'hi/9'
	ldloc	'd/10'
	call	void 'simpleSort'(int32, int32, int32)
// Line 2012:	         if (workDone > workLimit && firstAttempt) return;

	ldsfld	int32 'workDone'

	ldsfld	int32 'workLimit'

	ble	'L_1293'
	ldsfld	uint8 'firstAttempt'

	ldc.i4	0
	bne.un	'L_1287'
L_1300:
// Line 2013:	         continue;

	br	'L_1293'
L_1298:
// Line 2014:	      }

// Line 2015:	

// Line 2016:	      med = med3 ( block[zptr[ lo         ]+d],

// Line 2017:	                   block[zptr[ hi         ]+d],

// Line 2018:	                   block[zptr[ (lo+hi)>>1 ]+d] );

	ldloc	'lo/8'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldloc	'd/10'
	add
	ldsfld	void* 'block'

	add
	ldind.u1
	ldloc	'hi/9'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldloc	'd/10'
	add
	ldsfld	void* 'block'

	add
	ldind.u1
	ldloc	'lo/8'
	ldloc	'hi/9'
	add
	ldc.i4	1
	shr
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldloc	'd/10'
	add
	ldsfld	void* 'block'

	add
	ldind.u1
	call	uint8 'med3'(uint8, uint8, uint8)
	conv.i4
	stloc	'med/4'
// Line 2019:	

// Line 2020:	      unLo = ltLo = lo;

	ldloc	'lo/8'
	stloc	'ltLo/2'
	ldloc	'ltLo/2'
	stloc	'unLo/0'
// Line 2021:	      unHi = gtHi = hi;

	ldloc	'hi/9'
	stloc	'gtHi/3'
	ldloc	'gtHi/3'
	stloc	'unHi/1'
	br	'L_1308'
L_1302:
L_1306:
// Line 2025:	            if (unLo > unHi) break;

	ldloc	'unLo/0'
	ldloc	'unHi/1'
	bgt	'L_1320'
L_1310:
// Line 2026:	            n = ((Int32)block[zptr[unLo]+d]) - med;

	ldloc	'unLo/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldloc	'd/10'
	add
	ldsfld	void* 'block'

	add
	ldind.u1
	conv.i4
	ldloc	'med/4'
	sub
	stloc	'n/5'
// Line 2027:	            if (n == 0) { swap(zptr[unLo], zptr[ltLo]); ltLo++; unLo++; continue; };

	ldloc	'n/5'
	ldc.i4	0
	bne.un	'L_1311'
	ldloca	'tmp/14'
	ldloc	'unLo/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
	ldloc	'unLo/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'ltLo/2'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
	ldloc	'ltLo/2'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'tmp/14'
	stind.i4
	ldloc	'ltLo/2'
	ldc.i4	1
	add
	stloc	'ltLo/2'
	ldloc	'unLo/0'
	ldc.i4	1
	add
	stloc	'unLo/0'
	br	'L_1306'
L_1311:
// Line 2028:	            if (n >  0) break;

	ldloc	'n/5'
	ldc.i4	0
	bgt	'L_1320'
L_1316:
// Line 2029:	            unLo++;

	ldloc	'unLo/0'
	ldc.i4	1
	add
	stloc	'unLo/0'
L_1308:
// Line 2024:	         while (True) {

	br	'L_1306'
L_1307:
L_1318:
// Line 2032:	            if (unLo > unHi) break;

	ldloc	'unLo/0'
	ldloc	'unHi/1'
	bgt	'L_1319'
L_1322:
// Line 2033:	            n = ((Int32)block[zptr[unHi]+d]) - med;

	ldloc	'unHi/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldloc	'd/10'
	add
	ldsfld	void* 'block'

	add
	ldind.u1
	conv.i4
	ldloc	'med/4'
	sub
	stloc	'n/5'
// Line 2034:	            if (n == 0) { swap(zptr[unHi], zptr[gtHi]); gtHi--; unHi--; continue; };

	ldloc	'n/5'
	ldc.i4	0
	bne.un	'L_1323'
	ldloca	'tmp/13'
	ldloc	'unHi/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
	ldloc	'unHi/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'gtHi/3'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
	ldloc	'gtHi/3'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'tmp/13'
	stind.i4
	ldloc	'gtHi/3'
	ldc.i4	1
	sub
	stloc	'gtHi/3'
	ldloc	'unHi/1'
	ldc.i4	1
	sub
	stloc	'unHi/1'
	br	'L_1318'
L_1323:
// Line 2035:	            if (n <  0) break;

	ldloc	'n/5'
	ldc.i4	0
	blt	'L_1319'
L_1328:
// Line 2036:	            unHi--;

	ldloc	'unHi/1'
	ldc.i4	1
	sub
	stloc	'unHi/1'
L_1320:
// Line 2030:	         }

// Line 2031:	         while (True) {

	br	'L_1318'
L_1319:
// Line 2037:	         }

// Line 2038:	         if (unLo > unHi) break;

	ldloc	'unLo/0'
	ldloc	'unHi/1'
	bgt	'L_1303'
L_1330:
// Line 2039:	         swap(zptr[unLo], zptr[unHi]); unLo++; unHi--;

	ldloca	'tmp/12'
	ldloc	'unLo/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
	ldloc	'unLo/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'unHi/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
	ldloc	'unHi/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'tmp/12'
	stind.i4
	ldloc	'unLo/0'
	ldc.i4	1
	add
	stloc	'unLo/0'
	ldloc	'unHi/1'
	ldc.i4	1
	sub
	stloc	'unHi/1'
L_1304:
// Line 2022:	

// Line 2023:	      while (True) {

	br	'L_1308'
L_1303:
// Line 2040:	      }

// Line 2041:	      #if DEBUG

// Line 2042:	         assert (unHi == unLo-1);

// Line 2043:	      #endif

// Line 2044:	

// Line 2045:	      if (gtHi < ltLo) {

	ldloc	'gtHi/3'
	ldloc	'ltLo/2'
	bge	'L_1334'
// Line 2046:	         push(lo, hi, d+1 );

	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldloc	'lo/8'
	stind.i4
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	4
	add
	ldloc	'hi/9'
	stind.i4
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	8
	add
	ldloc	'd/10'
	ldc.i4	1
	add
	stind.i4
	ldloc	'sp/7'
	ldc.i4	1
	add
	stloc	'sp/7'
// Line 2047:	         continue;

	br	'L_1293'
L_1334:
// Line 2048:	      }

// Line 2049:	

// Line 2050:	      n = min(ltLo-lo, unLo-ltLo); vswap(lo, unLo-n, n);

	ldloc	'ltLo/2'
	ldloc	'lo/8'
	sub
	ldloc	'unLo/0'
	ldloc	'ltLo/2'
	sub
	bge	'L_1349'
	ldloc	'ltLo/2'
	ldloc	'lo/8'
	sub
	br	'L_1350'
L_1349:
	ldloc	'unLo/0'
	ldloc	'ltLo/2'
	sub
L_1350:
	stloc	'n/5'
	ldloc	'lo/8'
	ldloc	'unLo/0'
	ldloc	'n/5'
	sub
	ldloc	'n/5'
	call	void 'vswap'(int32, int32, int32)
// Line 2051:	      m = min(hi-gtHi, gtHi-unHi); vswap(unLo, hi-m+1, m);

	ldloc	'hi/9'
	ldloc	'gtHi/3'
	sub
	ldloc	'gtHi/3'
	ldloc	'unHi/1'
	sub
	bge	'L_1351'
	ldloc	'hi/9'
	ldloc	'gtHi/3'
	sub
	br	'L_1352'
L_1351:
	ldloc	'gtHi/3'
	ldloc	'unHi/1'
	sub
L_1352:
	stloc	'm/6'
	ldloc	'unLo/0'
	ldloc	'hi/9'
	ldloc	'm/6'
	sub
	ldc.i4	1
	add
	ldloc	'm/6'
	call	void 'vswap'(int32, int32, int32)
// Line 2052:	

// Line 2053:	      n = lo + unLo - ltLo - 1;

	ldloc	'lo/8'
	ldloc	'unLo/0'
	add
	ldloc	'ltLo/2'
	sub
	ldc.i4	1
	sub
	stloc	'n/5'
// Line 2054:	      m = hi - (gtHi - unHi) + 1;

	ldloc	'gtHi/3'
	ldloc	'unHi/1'
	sub
	neg
	ldloc	'hi/9'
	add
	ldc.i4	1
	add
	stloc	'm/6'
// Line 2055:	

// Line 2056:	      push ( lo, n, d );

	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldloc	'lo/8'
	stind.i4
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	4
	add
	ldloc	'n/5'
	stind.i4
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	8
	add
	ldloc	'd/10'
	stind.i4
	ldloc	'sp/7'
	ldc.i4	1
	add
	stloc	'sp/7'
// Line 2057:	      push ( n+1, m-1, d+1 );

	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldloc	'n/5'
	ldc.i4	1
	add
	stind.i4
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	4
	add
	ldloc	'm/6'
	ldc.i4	1
	sub
	stind.i4
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	8
	add
	ldloc	'd/10'
	ldc.i4	1
	add
	stind.i4
	ldloc	'sp/7'
	ldc.i4	1
	add
	stloc	'sp/7'
// Line 2058:	      push ( m, hi, d );

	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldloc	'm/6'
	stind.i4
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	4
	add
	ldloc	'hi/9'
	stind.i4
	ldloc	'sp/7'
	ldc.i4	12
	mul
	ldloca	'stack/11'
	add
	ldc.i4	8
	add
	ldloc	'd/10'
	stind.i4
	ldloc	'sp/7'
	ldc.i4	1
	add
	stloc	'sp/7'
L_1293:
// Line 2003:	

// Line 2004:	   while (sp > 0) {

	ldloc	'sp/7'
	ldc.i4	0
	bgt	'L_1291'
L_1292:
// Line 2059:	   }

// Line 2060:	}

L_1287:
	ret

}
 .method public hidebysig static void 'sortIt'() cil managed
{
// Line 2070:	void sortIt ( void )

// Line 2071:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'j/1',
		[2] int32 'ss/2',
		[3] int32 'sb/3',
		[4] valuetype 'int32[256]' 'runningOrder/4',
		[5] valuetype 'int32[256]' 'copy/5',
		[6] valuetype 'uint8[256]' 'bigDone/6',
		[7] uint8 'c1/7',
		[8] uint8 'c2/8',
		[9] int32 'numQSorted/9',
		[10] int32 'bbStart/10',
		[11] int32 'bbSize/11',
		[12] int32 'shifts/12',
		[13] int32 'a2update/13',
		[14] uint16 'qVal/14',
		[15] int32 'lo/15',
		[16] int32 'hi/16',
		[17] int32 'vv/17',
		[18] int32 'h/18'
	)
	.maxstack	7
L_1356:
// Line 2077:	   Int32 numQSorted;

// Line 2078:	

// Line 2079:	

// Line 2080:	   PRINTLOC;

// Line 2081:	

// Line 2082:	    
// Line 2083:	
// Line 2084:	
// Line 2085:	
// Line 2086:	

// Line 2087:	

// Line 2088:	   if (verbosity >= 4) fprintf ( stderr, "        sort initialise ...\n" );

	ldsfld	int32 'verbosity'

	ldc.i4	4
	blt	'L_1359'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_22'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1359:
	ldc.i4	0
	stloc	'i/0'
	br	'L_1361'
L_1360:
// Line 2090:	       block[last+i+1] = block[i % (last+1)];

	ldsfld	int32 'last'

	ldloc	'i/0'
	add
	ldc.i4	1
	add
	ldsfld	void* 'block'

	add
	ldloc	'i/0'
	ldsfld	int32 'last'

	ldc.i4	1
	add
	rem
	ldsfld	void* 'block'

	add
	ldind.u1
	stind.i1
L_1363:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2089:	   for (i = 0; i < NUM_OVERSHOOT_BYTES; i++)

L_1361:
	ldloc	'i/0'
	ldc.i4	20
	blt	'L_1360'
L_1362:
	ldc.i4	0
	stloc	'i/0'
	br	'L_1365'
L_1364:
// Line 2092:	       quadrant[i] = 0;

	ldloc	'i/0'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldc.i4	0
	stind.i2
L_1367:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2091:	   for (i = 0; i <= last+NUM_OVERSHOOT_BYTES; i++)

L_1365:
	ldloc	'i/0'
	ldsfld	int32 'last'

	ldc.i4	20
	add
	ble	'L_1364'
L_1366:
// Line 2093:	

// Line 2094:	   block[-1] = block[last];

	ldsfld	void* 'block'

	ldc.i4	-1
	add
	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldind.u1
	stind.i1
// Line 2095:	

// Line 2096:	   if (last < 4000) {

	ldsfld	int32 'last'

	ldc.i4	4000
	bge	'L_1368'
// Line 2097:	

// Line 2098:	       
// Line 2099:	
// Line 2100:	
// Line 2101:	

// Line 2102:	      if (verbosity >= 4) fprintf ( stderr, "        simpleSort ...\n" );

	ldsfld	int32 'verbosity'

	ldc.i4	4
	blt	'L_1370'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_23'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1370:
	ldc.i4	0
	stloc	'i/0'
	br	'L_1372'
L_1371:
	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'i/0'
	stind.i4
L_1374:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2103:	      for (i = 0; i <= last; i++) zptr[i] = i;

L_1372:
	ldloc	'i/0'
	ldsfld	int32 'last'

	ble	'L_1371'
L_1373:
// Line 2104:	      firstAttempt = False;

	ldc.i4	0
	stsfld	uint8 'firstAttempt'

// Line 2105:	      workDone = workLimit = 0;

	ldc.i4	0
	stsfld	int32 'workLimit'

	ldsfld	int32 'workLimit'

	stsfld	int32 'workDone'

// Line 2106:	      simpleSort ( 0, last, 0 );

	ldc.i4	0
	ldsfld	int32 'last'

	ldc.i4	0
	call	void 'simpleSort'(int32, int32, int32)
// Line 2107:	      if (verbosity >= 4) fprintf ( stderr, "        simpleSort done.\n" );

	ldsfld	int32 'verbosity'

	ldc.i4	4
	blt	'L_1377'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_24'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1375:
// Line 2108:	

	br	'L_1377'
L_1368:
// Line 2109:	   } else {

// Line 2110:	      numQSorted = 0;

	ldc.i4	0
	stloc	'numQSorted/9'
	ldc.i4	0
	stloc	'i/0'
	br	'L_1380'
L_1379:
	ldloc	'i/0'
	ldloca	'bigDone/6'
	add
	ldc.i4	0
	stind.i1
L_1382:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2111:	      for (i = 0; i <= 255; i++) bigDone[i] = False;

L_1380:
	ldloc	'i/0'
	ldc.i4	255
	ble	'L_1379'
L_1381:
// Line 2112:	

// Line 2113:	      if (verbosity >= 4) fprintf ( stderr, "        bucket sorting ...\n" );

	ldsfld	int32 'verbosity'

	ldc.i4	4
	blt	'L_1383'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_25'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1383:
// Line 2114:	

	ldc.i4	0
	stloc	'i/0'
	br	'L_1385'
L_1384:
	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldc.i4	0
	stind.i4
L_1387:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2115:	      for (i = 0; i <= 65536; i++) ftab[i] = 0;

L_1385:
	ldloc	'i/0'
	ldc.i4	65536
	ble	'L_1384'
L_1386:
// Line 2116:	

// Line 2117:	      c1 = block[-1];

	ldsfld	void* 'block'

	ldc.i4	-1
	add
	ldind.u1
	stloc	'c1/7'
	ldc.i4	0
	stloc	'i/0'
	br	'L_1389'
L_1388:
// Line 2119:	         c2 = block[i];

	ldloc	'i/0'
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/8'
// Line 2120:	         ftab[(c1 << 8) + c2]++;

	ldloc	'c1/7'
	conv.i4
	ldc.i4	8
	shl
	ldloc	'c2/8'
	conv.i4
	add
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldloc	'c1/7'
	conv.i4
	ldc.i4	8
	shl
	ldloc	'c2/8'
	conv.i4
	add
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
// Line 2121:	         c1 = c2;

	ldloc	'c2/8'
	stloc	'c1/7'
L_1391:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2118:	      for (i = 0; i <= last; i++) {

L_1389:
	ldloc	'i/0'
	ldsfld	int32 'last'

	ble	'L_1388'
L_1390:
// Line 2122:	      }

// Line 2123:	

	ldc.i4	1
	stloc	'i/0'
	br	'L_1395'
L_1394:
	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldloc	'i/0'
	ldc.i4	1
	sub
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	add
	stind.i4
L_1397:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2124:	      for (i = 1; i <= 65536; i++) ftab[i] += ftab[i-1];

L_1395:
	ldloc	'i/0'
	ldc.i4	65536
	ble	'L_1394'
L_1396:
// Line 2125:	

// Line 2126:	      c1 = block[0];

	ldsfld	void* 'block'

	ldind.u1
	stloc	'c1/7'
	ldc.i4	0
	stloc	'i/0'
	br	'L_1399'
L_1398:
// Line 2128:	         c2 = block[i+1];

	ldloc	'i/0'
	ldc.i4	1
	add
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c2/8'
// Line 2129:	         j = (c1 << 8) + c2;

	ldloc	'c1/7'
	conv.i4
	ldc.i4	8
	shl
	ldloc	'c2/8'
	conv.i4
	add
	stloc	'j/1'
// Line 2130:	         c1 = c2;

	ldloc	'c2/8'
	stloc	'c1/7'
// Line 2131:	         ftab[j]--;

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 2132:	         zptr[ftab[j]] = i;

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'i/0'
	stind.i4
L_1401:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2127:	      for (i = 0; i < last; i++) {

L_1399:
	ldloc	'i/0'
	ldsfld	int32 'last'

	blt	'L_1398'
L_1400:
// Line 2133:	      }

// Line 2134:	      j = (block[last] << 8) + block[0];

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldind.u1
	conv.i4
	ldc.i4	8
	shl
	ldsfld	void* 'block'

	ldind.u1
	conv.i4
	add
	stloc	'j/1'
// Line 2135:	      ftab[j]--;

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	1
	sub
	stind.i4
// Line 2136:	      zptr[ftab[j]] = last;

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldsfld	int32 'last'

	stind.i4
// Line 2137:	

// Line 2138:	       
// Line 2139:	
// Line 2140:	
// Line 2141:	
// Line 2142:	

	ldc.i4	0
	stloc	'i/0'
	br	'L_1405'
L_1404:
	ldloc	'i/0'
	ldc.i4	2
	shl
	ldloca	'runningOrder/4'
	add
	ldloc	'i/0'
	stind.i4
L_1407:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2143:	      for (i = 0; i <= 255; i++) runningOrder[i] = i;

L_1405:
	ldloc	'i/0'
	ldc.i4	255
	ble	'L_1404'
L_1406:
// Line 2144:	

// Line 2145:	      {

// Line 2146:	         Int32 vv;

// Line 2147:	         Int32 h = 1;

	ldloca	'h/18'
	ldc.i4	1
	stind.i4
// Line 2148:	         do h = 3 * h + 1; while (h <= 256);

L_1409:
	ldloc	'h/18'
	ldc.i4	3
	mul
	ldc.i4	1
	add
	stloc	'h/18'
L_1411:
	ldloc	'h/18'
	ldc.i4	256
	ble	'L_1409'
L_1410:
// Line 2149:	         do {

L_1412:
// Line 2150:	            h = h / 3;

	ldloc	'h/18'
	ldc.i4	3
	div
	stloc	'h/18'
	ldloc	'h/18'
	stloc	'i/0'
	br	'L_1417'
L_1416:
// Line 2152:	               vv = runningOrder[i];

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldloca	'runningOrder/4'
	add
	ldind.i4
	stloc	'vv/17'
// Line 2153:	               j = i;

	ldloc	'i/0'
	stloc	'j/1'
	br	'L_1423'
L_1421:
// Line 2155:	                  runningOrder[j] = runningOrder[j-h];

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldloca	'runningOrder/4'
	add
	ldloc	'j/1'
	ldloc	'h/18'
	sub
	ldc.i4	2
	shl
	ldloca	'runningOrder/4'
	add
	ldind.i4
	stind.i4
// Line 2156:	                  j = j - h;

	ldloc	'j/1'
	ldloc	'h/18'
	sub
	stloc	'j/1'
// Line 2157:	                  if (j <= (h - 1)) goto zero;

	ldloc	'j/1'
	ldloc	'h/18'
	ldc.i4	1
	sub
	ble	'L_1426'
L_1425:
L_1423:
// Line 2154:	               while ( BIGFREQ(runningOrder[j-h]) > BIGFREQ(vv) ) {

	ldloc	'j/1'
	ldloc	'h/18'
	sub
	ldc.i4	2
	shl
	ldloca	'runningOrder/4'
	add
	ldind.i4
	ldc.i4	1
	add
	ldc.i4	8
	shl
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldloc	'j/1'
	ldloc	'h/18'
	sub
	ldc.i4	2
	shl
	ldloca	'runningOrder/4'
	add
	ldind.i4
	ldc.i4	8
	shl
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	sub
	ldloc	'vv/17'
	ldc.i4	1
	add
	ldc.i4	8
	shl
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldloc	'vv/17'
	ldc.i4	8
	shl
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	sub
	bgt	'L_1421'
L_1422:
L_1426:
// Line 2158:	               }

// Line 2159:	               zero:

// Line 2160:	               runningOrder[j] = vv;

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldloca	'runningOrder/4'
	add
	ldloc	'vv/17'
	stind.i4
L_1419:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2151:	            for (i = h; i <= 255; i++) {

L_1417:
	ldloc	'i/0'
	ldc.i4	255
	ble	'L_1416'
L_1418:
// Line 2161:	            }

L_1414:
// Line 2162:	         } while (h != 1);

	ldloc	'h/18'
	ldc.i4	1
	bne.un	'L_1412'
L_1413:
// Line 2163:	      }

// Line 2164:	

// Line 2165:	       
// Line 2166:	
// Line 2167:	

	ldc.i4	0
	stloc	'i/0'
	br	'L_1432'
L_1431:
// Line 2169:	          
// Line 2170:	
// Line 2171:	

// Line 2172:	         ss = runningOrder[i];

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldloca	'runningOrder/4'
	add
	ldind.i4
	stloc	'ss/2'
// Line 2173:	

// Line 2174:	          
// Line 2175:	
// Line 2176:	
// Line 2177:	
// Line 2178:	
// Line 2179:	
// Line 2180:	

	ldc.i4	0
	stloc	'j/1'
	br	'L_1437'
L_1436:
// Line 2182:	            sb = (ss << 8) + j;

	ldloc	'ss/2'
	ldc.i4	8
	shl
	ldloc	'j/1'
	add
	stloc	'sb/3'
// Line 2183:	            if ( ! (ftab[sb] & SETMASK) ) {

	ldloc	'sb/3'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	2097152
	and
	ldc.i4	0
	bne.un	'L_1441'
// Line 2184:	               Int32 lo = ftab[sb]   & CLEARMASK;

	ldloca	'lo/15'
	ldloc	'sb/3'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	-2097153
	and
	stind.i4
// Line 2185:	               Int32 hi = (ftab[sb+1] & CLEARMASK) - 1;

	ldloca	'hi/16'
	ldloc	'sb/3'
	ldc.i4	1
	add
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	-2097153
	and
	ldc.i4	1
	sub
	stind.i4
// Line 2186:	               if (hi > lo) {

	ldloc	'hi/16'
	ldloc	'lo/15'
	ble	'L_1443'
// Line 2187:	                  if (verbosity >= 4)

	ldsfld	int32 'verbosity'

	ldc.i4	4
	blt	'L_1445'
// Line 2188:	                     fprintf ( stderr,

// Line 2189:	                               "        qsort [0x%x, 0x%x]   done %d   this %d\n",

// Line 2190:	                               ss, j, numQSorted, hi - lo + 1 );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_26'

	ldloc	'ss/2'
	ldloc	'j/1'
	ldloc	'numQSorted/9'
	ldloc	'hi/16'
	ldloc	'lo/15'
	sub
	ldc.i4	1
	add
	call	vararg int32 'fprintf'(void*, void*, ..., int32, int32, int32, int32)
	pop
L_1445:
// Line 2191:	                  qSort3 ( lo, hi, 2 );

	ldloc	'lo/15'
	ldloc	'hi/16'
	ldc.i4	2
	call	void 'qSort3'(int32, int32, int32)
// Line 2192:	                  numQSorted += ( hi - lo + 1 );

	ldloc	'hi/16'
	ldloc	'lo/15'
	sub
	ldc.i4	1
	add
	ldloc	'numQSorted/9'
	add
	stloc	'numQSorted/9'
// Line 2193:	                  if (workDone > workLimit && firstAttempt) return;

	ldsfld	int32 'workDone'

	ldsfld	int32 'workLimit'

	ble	'L_1446'
	ldsfld	uint8 'firstAttempt'

	ldc.i4	0
	bne.un	'L_1357'
L_1446:
L_1443:
// Line 2194:	               }

// Line 2195:	               ftab[sb] |= SETMASK;

	ldloc	'sb/3'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldloc	'sb/3'
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	2097152
	or
	stind.i4
L_1441:
// Line 2196:	            }

L_1439:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
// Line 2181:	         for (j = 0; j <= 255; j++) {

L_1437:
	ldloc	'j/1'
	ldc.i4	255
	ble	'L_1436'
L_1438:
// Line 2197:	         }

// Line 2198:	

// Line 2199:	          
// Line 2200:	
// Line 2201:	
// Line 2202:	
// Line 2203:	
// Line 2204:	
// Line 2205:	
// Line 2206:	

// Line 2207:	         bigDone[ss] = True;

	ldloc	'ss/2'
	ldloca	'bigDone/6'
	add
	ldc.i4	1
	stind.i1
// Line 2208:	

// Line 2209:	         if (i < 255) {

	ldloc	'i/0'
	ldc.i4	255
	bge	'L_1450'
// Line 2210:	            Int32 bbStart  = ftab[ss << 8] & CLEARMASK;

	ldloca	'bbStart/10'
	ldloc	'ss/2'
	ldc.i4	8
	shl
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	-2097153
	and
	stind.i4
// Line 2211:	            Int32 bbSize   = (ftab[(ss+1) << 8] & CLEARMASK) - bbStart;

	ldloca	'bbSize/11'
	ldloc	'ss/2'
	ldc.i4	1
	add
	ldc.i4	8
	shl
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	-2097153
	and
	ldloc	'bbStart/10'
	sub
	stind.i4
// Line 2212:	            Int32 shifts   = 0;

	ldloca	'shifts/12'
	ldc.i4	0
	stind.i4
// Line 2213:	

	br	'L_1454'
L_1452:
	ldloc	'shifts/12'
	ldc.i4	1
	add
	stloc	'shifts/12'
L_1454:
// Line 2214:	            while ((bbSize >> shifts) > 65534) shifts++;

	ldloc	'bbSize/11'
	ldloc	'shifts/12'
	shr
	ldc.i4	65534
	bgt	'L_1452'
L_1453:
// Line 2215:	

	ldc.i4	0
	stloc	'j/1'
	br	'L_1456'
L_1455:
// Line 2217:	               Int32 a2update     = zptr[bbStart + j];

	ldloca	'a2update/13'
	ldloc	'bbStart/10'
	ldloc	'j/1'
	add
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	stind.i4
// Line 2218:	               UInt16 qVal        = (UInt16)(j >> shifts);

	ldloca	'qVal/14'
	ldloc	'j/1'
	ldloc	'shifts/12'
	shr
	conv.u2
	stind.i2
// Line 2219:	               quadrant[a2update] = qVal;

	ldloc	'a2update/13'
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldloc	'qVal/14'
	stind.i2
// Line 2220:	               if (a2update < NUM_OVERSHOOT_BYTES)

	ldloc	'a2update/13'
	ldc.i4	20
	bge	'L_1460'
// Line 2221:	                  quadrant[a2update + last + 1] = qVal;

	ldloc	'a2update/13'
	ldsfld	int32 'last'

	add
	ldc.i4	1
	add
	ldc.i4	1
	shl
	ldsfld	void* 'quadrant'

	add
	ldloc	'qVal/14'
	stind.i2
L_1460:
L_1458:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
// Line 2216:	            for (j = 0; j < bbSize; j++) {

L_1456:
	ldloc	'j/1'
	ldloc	'bbSize/11'
	blt	'L_1455'
L_1457:
// Line 2222:	            }

// Line 2223:	            if (! ( ((bbSize-1) >> shifts) <= 65535 )) panic ( "sortIt" );

	ldloc	'bbSize/11'
	ldc.i4	1
	sub
	ldloc	'shifts/12'
	shr
	ldc.i4	65535
	ble	'L_1462'
	ldsflda	valuetype 'int8[]' 'L_27'

	call	void 'panic'(void*)
L_1462:
L_1450:
// Line 2224:	         }

// Line 2225:		

// Line 2226:	          
// Line 2227:	
// Line 2228:	
// Line 2229:	

	ldc.i4	0
	stloc	'j/1'
	br	'L_1465'
L_1464:
// Line 2231:	            copy[j] = ftab[(j << 8) + ss] & CLEARMASK;

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldloca	'copy/5'
	add
	ldloc	'j/1'
	ldc.i4	8
	shl
	ldloc	'ss/2'
	add
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	-2097153
	and
	stind.i4
L_1467:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
// Line 2230:	         for (j = 0; j <= 255; j++)

L_1465:
	ldloc	'j/1'
	ldc.i4	255
	ble	'L_1464'
L_1466:
// Line 2232:	

	ldloc	'ss/2'
	ldc.i4	8
	shl
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	-2097153
	and
	stloc	'j/1'
	br	'L_1469'
L_1468:
// Line 2234:	              j < (ftab[(ss+1) << 8] & CLEARMASK);

// Line 2235:	              j++) {

// Line 2236:	            c1 = block[zptr[j]-1];

	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldc.i4	1
	sub
	ldsfld	void* 'block'

	add
	ldind.u1
	stloc	'c1/7'
// Line 2237:	            if ( ! bigDone[c1] ) {

	ldloc	'c1/7'
	conv.i4
	ldloca	'bigDone/6'
	add
	ldind.u1
	ldc.i4	0
	bne.un	'L_1473'
// Line 2238:	               zptr[copy[c1]] = zptr[j] == 0 ? last : zptr[j] - 1;

	ldloc	'c1/7'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'copy/5'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1486'
	ldsfld	int32 'last'

	br	'L_1487'
L_1486:
	ldloc	'j/1'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldc.i4	1
	sub
L_1487:
	stind.i4
// Line 2239:	               copy[c1] ++;

	ldloc	'c1/7'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'copy/5'
	add
	ldloc	'c1/7'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'copy/5'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_1473:
// Line 2240:	            }

L_1471:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
// Line 2233:	         for (j = ftab[ss << 8] & CLEARMASK;

L_1469:
	ldloc	'j/1'
	ldloc	'ss/2'
	ldc.i4	1
	add
	ldc.i4	8
	shl
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	-2097153
	and
	blt	'L_1468'
L_1470:
// Line 2241:	         }

// Line 2242:	

	ldc.i4	0
	stloc	'j/1'
	br	'L_1478'
L_1477:
	ldloc	'j/1'
	ldc.i4	8
	shl
	ldloc	'ss/2'
	add
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldloc	'j/1'
	ldc.i4	8
	shl
	ldloc	'ss/2'
	add
	ldc.i4	2
	shl
	ldsfld	void* 'ftab'

	add
	ldind.i4
	ldc.i4	2097152
	or
	stind.i4
L_1480:
	ldloc	'j/1'
	ldc.i4	1
	add
	stloc	'j/1'
// Line 2243:	         for (j = 0; j <= 255; j++) ftab[(j << 8) + ss] |= SETMASK;

L_1478:
	ldloc	'j/1'
	ldc.i4	255
	ble	'L_1477'
L_1479:
L_1434:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2168:	      for (i = 0; i <= 255; i++) {

L_1432:
	ldloc	'i/0'
	ldc.i4	255
	ble	'L_1431'
L_1433:
// Line 2244:	      }

// Line 2245:	      if (verbosity >= 4)

	ldsfld	int32 'verbosity'

	ldc.i4	4
	blt	'L_1482'
// Line 2246:	         fprintf ( stderr, "        %d pointers, %d sorted, %d scanned\n",

// Line 2247:	                           last+1, numQSorted, (last+1) - numQSorted );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_28'

	ldsfld	int32 'last'

	ldc.i4	1
	add
	ldloc	'numQSorted/9'
	ldsfld	int32 'last'

	ldc.i4	1
	add
	ldloc	'numQSorted/9'
	sub
	call	vararg int32 'fprintf'(void*, void*, ..., int32, int32, int32)
	pop
L_1482:
L_1377:
// Line 2248:	   }

// Line 2249:	}

L_1357:
	ret

}
 .method public hidebysig static void 'randomiseBlock'() cil managed
{
// Line 2333:	void randomiseBlock ( void )

// Line 2334:	{

	.locals
	(
		[0] int32 'i/0',
		[1] int32 'rNToGo/1',
		[2] int32 'rTPos/2'
	)
	.maxstack	4
L_1491:
// Line 2335:	   Int32 i;

// Line 2336:	   RAND_DECLS;

	ldloca	'rNToGo/1'
	ldc.i4	0
	stind.i4
	ldloca	'rTPos/2'
	ldc.i4	0
	stind.i4
	ldc.i4	0
	stloc	'i/0'
	br	'L_1495'
L_1494:
	ldloc	'i/0'
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldc.i4	0
	stind.i1
L_1497:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2337:	   for (i = 0; i < 256; i++) inUse[i] = False;

L_1495:
	ldloc	'i/0'
	ldc.i4	256
	blt	'L_1494'
L_1496:
// Line 2338:	

	ldc.i4	0
	stloc	'i/0'
	br	'L_1499'
L_1498:
// Line 2340:	      RAND_UPD_MASK;

	ldloc	'rNToGo/1'
	ldc.i4	0
	bne.un	'L_1503'
	ldloc	'rTPos/2'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[512]' 'rNums'

	add
	ldind.i4
	stloc	'rNToGo/1'
	ldloc	'rTPos/2'
	ldc.i4	1
	add
	stloc	'rTPos/2'
	ldloc	'rTPos/2'
	ldc.i4	512
	bne.un	'L_1505'
	ldc.i4	0
	stloc	'rTPos/2'
L_1505:
L_1503:
	ldloc	'rNToGo/1'
	ldc.i4	1
	sub
	stloc	'rNToGo/1'
// Line 2341:	      block[i] ^= RAND_MASK;

	ldloc	'i/0'
	ldsfld	void* 'block'

	add
	ldloc	'i/0'
	ldsfld	void* 'block'

	add
	ldind.u1
	conv.i4
	ldloc	'rNToGo/1'
	ldc.i4	1
	bne.un	'L_1510'
	ldc.i4	1
	br	'L_1511'
L_1510:
	ldc.i4	0
L_1511:
	xor
	conv.u1
	stind.i1
// Line 2342:	      inUse[block[i]] = True;

	ldloc	'i/0'
	ldsfld	void* 'block'

	add
	ldind.u1
	conv.i4
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldc.i4	1
	stind.i1
L_1501:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2339:	   for (i = 0; i <= last; i++) {

L_1499:
	ldloc	'i/0'
	ldsfld	int32 'last'

	ble	'L_1498'
L_1500:
// Line 2343:	   }

// Line 2344:	}

L_1492:
	ret

}
 .method public hidebysig static void 'doReversibleTransformation'() cil managed
{
// Line 2348:	void doReversibleTransformation ( void )

// Line 2349:	{

	.locals
	(
		[0] int32 'i/0'
	)
	.maxstack	6
L_1515:
// Line 2350:	   Int32 i;

// Line 2351:	

// Line 2352:	

// Line 2353:	   PRINTLOC;

// Line 2354:	

// Line 2355:	   if (verbosity >= 2) fprintf ( stderr, "\n" );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1518'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_10'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1518:
// Line 2356:	

// Line 2357:	   workLimit       = workFactor * last;

	ldsfld	int32 'workFactor'

	ldsfld	int32 'last'

	mul
	stsfld	int32 'workLimit'

// Line 2358:	   workDone        = 0;

	ldc.i4	0
	stsfld	int32 'workDone'

// Line 2359:	   blockRandomised = False;

	ldc.i4	0
	stsfld	uint8 'blockRandomised'

// Line 2360:	   firstAttempt    = True;

	ldc.i4	1
	stsfld	uint8 'firstAttempt'

// Line 2361:	

// Line 2362:	   sortIt ();

	call	void 'sortIt'()
// Line 2363:	

// Line 2364:	   if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_1519'
// Line 2365:	      fprintf ( stderr, "      %d work, %d block, ratio %5.2f\n",

// Line 2366:	                        workDone, last, (float)workDone / (float)(last) );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_29'

	ldsfld	int32 'workDone'

	ldsfld	int32 'last'

	ldsfld	int32 'workDone'

	conv.r4
	ldsfld	int32 'last'

	conv.r4
	div
	conv.r8
	call	vararg int32 'fprintf'(void*, void*, ..., int32, int32, float64)
	pop
L_1519:
// Line 2367:	

// Line 2368:	   if (workDone > workLimit && firstAttempt) {

	ldsfld	int32 'workDone'

	ldsfld	int32 'workLimit'

	ble	'L_1520'
	ldsfld	uint8 'firstAttempt'

	ldc.i4	0
	beq	'L_1520'
// Line 2369:	      if (verbosity >= 2)

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1522'
// Line 2370:	         fprintf ( stderr, "    sorting aborted; randomising block\n" );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_30'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1522:
// Line 2371:	      randomiseBlock ();

	call	void 'randomiseBlock'()
// Line 2372:	      workLimit = workDone = 0;

	ldc.i4	0
	stsfld	int32 'workDone'

	ldsfld	int32 'workDone'

	stsfld	int32 'workLimit'

// Line 2373:	      blockRandomised = True;

	ldc.i4	1
	stsfld	uint8 'blockRandomised'

// Line 2374:	      firstAttempt = False;

	ldc.i4	0
	stsfld	uint8 'firstAttempt'

// Line 2375:	      sortIt();

	call	void 'sortIt'()
// Line 2376:	      if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_1523'
// Line 2377:	         fprintf ( stderr, "      %d work, %d block, ratio %f\n",

// Line 2378:	                           workDone, last, (float)workDone / (float)(last) );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_31'

	ldsfld	int32 'workDone'

	ldsfld	int32 'last'

	ldsfld	int32 'workDone'

	conv.r4
	ldsfld	int32 'last'

	conv.r4
	div
	conv.r8
	call	vararg int32 'fprintf'(void*, void*, ..., int32, int32, float64)
	pop
L_1523:
L_1520:
// Line 2379:	   }

// Line 2380:	

// Line 2381:	   origPtr = -1;

	ldc.i4	-1
	stsfld	int32 'origPtr'

	ldc.i4	0
	stloc	'i/0'
	br	'L_1526'
L_1525:
// Line 2383:	       if (zptr[i] == 0)

	ldloc	'i/0'
	ldc.i4	2
	shl
	ldsfld	void* 'zptr'

	add
	ldind.i4
	ldc.i4	0
	bne.un	'L_1529'
// Line 2384:	          { origPtr = i; break; };

	ldloc	'i/0'
	stsfld	int32 'origPtr'

	br	'L_1527'
L_1529:
L_1528:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 2382:	   for (i = 0; i <= last; i++)

L_1526:
	ldloc	'i/0'
	ldsfld	int32 'last'

	ble	'L_1525'
L_1527:
// Line 2385:	

// Line 2386:	   if (origPtr == -1) panic ( "doReversibleTransformation" );

	ldsfld	int32 'origPtr'

	ldc.i4	-1
	bne.un	'L_1532'
	ldsflda	valuetype 'int8[]' 'L_32'

	call	void 'panic'(void*)
L_1532:
// Line 2387:	}

L_1516:
	ret

}
 .method public hidebysig static int32 'indexIntoF'(int32 'indx' , void* 'cftab' ) cil managed
{
// Line 2392:	INLINE Int32 indexIntoF ( Int32 indx, Int32 *cftab )

// Line 2393:	{

	.locals
	(
		[0] int32 'nb/0',
		[1] int32 'na/1',
		[2] int32 'mid/2'
	)
	.maxstack	3
L_1538:
// Line 2394:	   Int32 nb, na, mid;

// Line 2395:	   nb = 0;

	ldc.i4	0
	stloc	'nb/0'
// Line 2396:	   na = 256;

	ldc.i4	256
	stloc	'na/1'
// Line 2397:	   do {

L_1541:
// Line 2398:	      mid = (nb + na) >> 1;

	ldloc	'nb/0'
	ldloc	'na/1'
	add
	ldc.i4	1
	shr
	stloc	'mid/2'
// Line 2399:	      if (indx >= cftab[mid]) nb = mid; else na = mid;

	ldarg	'indx'
	ldloc	'mid/2'
	ldc.i4	2
	shl
	ldarg	'cftab'
	add
	ldind.i4
	blt	'L_1545'
	ldloc	'mid/2'
	stloc	'nb/0'
	br	'L_1546'
L_1545:
	ldloc	'mid/2'
	stloc	'na/1'
L_1546:
L_1543:
// Line 2400:	   }

// Line 2401:	   while (na - nb != 1);

	ldloc	'na/1'
	ldloc	'nb/0'
	sub
	ldc.i4	1
	bne.un	'L_1541'
L_1542:
// Line 2402:	   return nb;

	ldloc	'nb/0'
// Line 2403:	}

L_1539:
	ret

}
 .method public hidebysig static void 'undoReversibleTransformation_small'(void* 'dst' ) cil managed
{
// Line 2412:	void undoReversibleTransformation_small ( FILE* dst )

// Line 2413:	{

	.locals
	(
		[0] valuetype 'int32[257]' 'cftab/0',
		[1] valuetype 'int32[257]' 'cftabAlso/1',
		[2] int32 'i/2',
		[3] int32 'j/3',
		[4] int32 'tmp/4',
		[5] int32 'tPos/5',
		[6] uint8 'ch/6',
		[7] int32 'retVal/7',
		[8] int32 'i2/8',
		[9] int32 'count/9',
		[10] int32 'chPrev/10',
		[11] int32 'ch2/11',
		[12] uint32 'localCrc/12',
		[13] int32 'rNToGo/13',
		[14] int32 'rTPos/14',
		[15] int32 'j2/15',
		[16] uint8 'z/16'
	)
	.maxstack	5
L_1553:
// Line 2416:	   UChar  ch;

// Line 2417:	

// Line 2418:	

// Line 2419:	   PRINTLOC;

// Line 2420:	

// Line 2421:	    
// Line 2422:	
// Line 2423:	
// Line 2424:	
// Line 2425:	

// Line 2426:	

// Line 2427:	    

// Line 2428:	   cftab[0] = 0;

	ldloca	'cftab/0'
	ldc.i4	0
	stind.i4
	ldc.i4	1
	stloc	'i/2'
	br	'L_1557'
L_1556:
	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldloc	'i/2'
	ldc.i4	1
	sub
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[256]' 'unzftab'

	add
	ldind.i4
	stind.i4
L_1559:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 2429:	   for (i = 1; i <= 256; i++) cftab[i] = unzftab[i-1];

L_1557:
	ldloc	'i/2'
	ldc.i4	256
	ble	'L_1556'
L_1558:
	ldc.i4	1
	stloc	'i/2'
	br	'L_1561'
L_1560:
	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldloc	'i/2'
	ldc.i4	1
	sub
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldind.i4
	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldind.i4
	add
	stind.i4
L_1563:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 2430:	   for (i = 1; i <= 256; i++) cftab[i] += cftab[i-1];

L_1561:
	ldloc	'i/2'
	ldc.i4	256
	ble	'L_1560'
L_1562:
// Line 2431:	

// Line 2432:	    

	ldc.i4	0
	stloc	'i/2'
	br	'L_1565'
L_1564:
	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloca	'cftabAlso/1'
	add
	ldloc	'i/2'
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldind.i4
	stind.i4
L_1567:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 2433:	   for (i = 0; i <= 256; i++) cftabAlso[i] = cftab[i];

L_1565:
	ldloc	'i/2'
	ldc.i4	256
	ble	'L_1564'
L_1566:
// Line 2434:	

// Line 2435:	    

	ldc.i4	0
	stloc	'i/2'
	br	'L_1569'
L_1568:
// Line 2437:	      ch = (UChar)ll16[i];

	ldloc	'i/2'
	ldc.i4	1
	shl
	ldsfld	void* 'll16'

	add
	ldind.u2
	conv.u1
	stloc	'ch/6'
// Line 2438:	      SET_LL(i, cftabAlso[ch]);

	ldloc	'i/2'
	ldc.i4	1
	shl
	ldsfld	void* 'll16'

	add
	ldloc	'ch/6'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'cftabAlso/1'
	add
	ldind.i4
	ldc.i4	65535
	and
	conv.u2
	stind.i2
	ldloc	'i/2'
	ldc.i4	1
	and
	ldc.i4	0
	bne.un	'L_1575'
	ldloc	'i/2'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldloc	'i/2'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldind.u1
	conv.i4
	ldc.i4	240
	and
	ldloc	'ch/6'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'cftabAlso/1'
	add
	ldind.i4
	ldc.i4	16
	shr
	or
	conv.u1
	stind.i1
	br	'L_1576'
L_1575:
	ldloc	'i/2'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldloc	'i/2'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldind.u1
	conv.i4
	ldc.i4	15
	and
	ldloc	'ch/6'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'cftabAlso/1'
	add
	ldind.i4
	ldc.i4	16
	shr
	ldc.i4	4
	shl
	or
	conv.u1
	stind.i1
L_1576:
// Line 2439:	      cftabAlso[ch]++;

	ldloc	'ch/6'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'cftabAlso/1'
	add
	ldloc	'ch/6'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'cftabAlso/1'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_1571:
	ldloc	'i/2'
	ldc.i4	1
	add
	stloc	'i/2'
// Line 2436:	   for (i = 0; i <= last; i++) {

L_1569:
	ldloc	'i/2'
	ldsfld	int32 'last'

	ble	'L_1568'
L_1570:
// Line 2440:	   }

// Line 2441:	

// Line 2442:	    
// Line 2443:	
// Line 2444:	
// Line 2445:	
// Line 2446:	
// Line 2447:	
// Line 2448:	
// Line 2449:	
// Line 2450:	
// Line 2451:	
// Line 2452:	
// Line 2453:	
// Line 2454:	
// Line 2455:	
// Line 2456:	
// Line 2457:	
// Line 2458:	

// Line 2459:	   i = origPtr;

	ldsfld	int32 'origPtr'

	stloc	'i/2'
// Line 2460:	   j = GET_LL(i);

	ldloc	'i/2'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldind.u1
	conv.u4
	ldloc	'i/2'
	ldc.i4	2
	shl
	ldc.i4	4
	and
	shr.un
	ldc.i4	15
	and
	ldc.i4	16
	shl
	ldloc	'i/2'
	ldc.i4	1
	shl
	ldsfld	void* 'll16'

	add
	ldind.u2
	conv.u4
	or
	conv.i4
	stloc	'j/3'
// Line 2461:	   do {

L_1580:
// Line 2462:	      tmp = GET_LL(j);

	ldloc	'j/3'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldind.u1
	conv.u4
	ldloc	'j/3'
	ldc.i4	2
	shl
	ldc.i4	4
	and
	shr.un
	ldc.i4	15
	and
	ldc.i4	16
	shl
	ldloc	'j/3'
	ldc.i4	1
	shl
	ldsfld	void* 'll16'

	add
	ldind.u2
	conv.u4
	or
	conv.i4
	stloc	'tmp/4'
// Line 2463:	      SET_LL(j, i);

	ldloc	'j/3'
	ldc.i4	1
	shl
	ldsfld	void* 'll16'

	add
	ldloc	'i/2'
	ldc.i4	65535
	and
	conv.u2
	stind.i2
	ldloc	'j/3'
	ldc.i4	1
	and
	ldc.i4	0
	bne.un	'L_1586'
	ldloc	'j/3'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldloc	'j/3'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldind.u1
	conv.i4
	ldc.i4	240
	and
	ldloc	'i/2'
	ldc.i4	16
	shr
	or
	conv.u1
	stind.i1
	br	'L_1587'
L_1586:
	ldloc	'j/3'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldloc	'j/3'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldind.u1
	conv.i4
	ldc.i4	15
	and
	ldloc	'i/2'
	ldc.i4	16
	shr
	ldc.i4	4
	shl
	or
	conv.u1
	stind.i1
L_1587:
// Line 2464:	      i = j;

	ldloc	'j/3'
	stloc	'i/2'
// Line 2465:	      j = tmp;

	ldloc	'tmp/4'
	stloc	'j/3'
L_1582:
// Line 2466:	   }

// Line 2467:	      while (i != origPtr);

	ldloc	'i/2'
	ldsfld	int32 'origPtr'

	bne.un	'L_1580'
L_1581:
// Line 2468:	

// Line 2469:	    
// Line 2470:	
// Line 2471:	
// Line 2472:	
// Line 2473:	
// Line 2474:	

// Line 2475:	   tPos   = origPtr;

	ldsfld	int32 'origPtr'

	stloc	'tPos/5'
// Line 2476:	

// Line 2477:	    

// Line 2478:	    
// Line 2479:	
// Line 2480:	
// Line 2481:	
// Line 2482:	
// Line 2483:	
// Line 2484:	
// Line 2485:	
// Line 2486:	
// Line 2487:	
// Line 2488:	
// Line 2489:	

// Line 2490:	   {

// Line 2493:	      UInt32    localCrc;

// Line 2494:	

// Line 2495:	      count    = 0;

	ldc.i4	0
	stloc	'count/9'
// Line 2496:	      i2       = 0;

	ldc.i4	0
	stloc	'i2/8'
// Line 2497:	      ch2      = 256;    

	ldc.i4	256
	stloc	'ch2/11'
// Line 2498:	      localCrc = getGlobalCRC();

	call	uint32 'getGlobalCRC'()
	stloc	'localCrc/12'
// Line 2499:	

// Line 2500:	      {

// Line 2501:	         RAND_DECLS;

	ldloca	'rNToGo/13'
	ldc.i4	0
	stind.i4
	ldloca	'rTPos/14'
	ldc.i4	0
	stind.i4
	br	'L_1595'
L_1593:
// Line 2503:	            chPrev = ch2;

	ldloc	'ch2/11'
	stloc	'chPrev/10'
// Line 2504:	            GET_SMALL(ch2);

	ldloc	'tPos/5'
	ldloca	'cftab/0'
	call	int32 'indexIntoF'(int32, void*)
	stloc	'ch2/11'
	ldloc	'tPos/5'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldind.u1
	conv.u4
	ldloc	'tPos/5'
	ldc.i4	2
	shl
	ldc.i4	4
	and
	shr.un
	ldc.i4	15
	and
	ldc.i4	16
	shl
	ldloc	'tPos/5'
	ldc.i4	1
	shl
	ldsfld	void* 'll16'

	add
	ldind.u2
	conv.u4
	or
	conv.i4
	stloc	'tPos/5'
// Line 2505:	            if (blockRandomised) {

	ldsfld	uint8 'blockRandomised'

	ldc.i4	0
	beq	'L_1597'
// Line 2506:	               RAND_UPD_MASK;

	ldloc	'rNToGo/13'
	ldc.i4	0
	bne.un	'L_1599'
	ldloc	'rTPos/14'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[512]' 'rNums'

	add
	ldind.i4
	stloc	'rNToGo/13'
	ldloc	'rTPos/14'
	ldc.i4	1
	add
	stloc	'rTPos/14'
	ldloc	'rTPos/14'
	ldc.i4	512
	bne.un	'L_1601'
	ldc.i4	0
	stloc	'rTPos/14'
L_1601:
L_1599:
	ldloc	'rNToGo/13'
	ldc.i4	1
	sub
	stloc	'rNToGo/13'
// Line 2507:	               ch2 ^= (UInt32)RAND_MASK;

	ldloc	'rNToGo/13'
	ldc.i4	1
	bne.un	'L_1637'
	ldc.i4	1
	br	'L_1638'
L_1637:
	ldc.i4	0
L_1638:
	conv.u4
	ldloc	'ch2/11'
	conv.u4
	xor
	conv.i4
	stloc	'ch2/11'
L_1597:
// Line 2508:	            }

// Line 2509:	            i2++;

	ldloc	'i2/8'
	ldc.i4	1
	add
	stloc	'i2/8'
// Line 2510:	

// Line 2511:	            if (dst)

	ldarg	'dst'
	ldc.i4	0
	beq	'L_1604'
// Line 2512:	               retVal = putc ( ch2, dst );

	ldloc	'ch2/11'
	ldarg	'dst'
	call	int32 'fputc'(int32, void*)
	stloc	'retVal/7'
L_1604:
// Line 2513:	

// Line 2514:	            UPDATE_CRC ( localCrc, (UChar)ch2 );

	ldloc	'ch2/11'
	conv.u1
	conv.u4
	ldloc	'localCrc/12'
	ldc.i4	24
	shr.un
	xor
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'uint32[256]' 'crc32Table'

	add
	ldind.u4
	ldloc	'localCrc/12'
	ldc.i4	8
	shl
	xor
	stloc	'localCrc/12'
// Line 2515:	

// Line 2516:	            if (ch2 != chPrev) {

	ldloc	'ch2/11'
	ldloc	'chPrev/10'
	beq	'L_1607'
// Line 2517:	               count = 1;

	ldc.i4	1
	stloc	'count/9'
	br	'L_1610'
L_1607:
// Line 2518:	            } else {

// Line 2519:	               count++;

	ldloc	'count/9'
	ldc.i4	1
	add
	stloc	'count/9'
// Line 2520:	               if (count >= 4) {

	ldloc	'count/9'
	ldc.i4	4
	blt	'L_1612'
// Line 2522:	                  UChar z;

// Line 2523:	                  GET_SMALL(z);

	ldloc	'tPos/5'
	ldloca	'cftab/0'
	call	int32 'indexIntoF'(int32, void*)
	conv.u1
	stloc	'z/16'
	ldloc	'tPos/5'
	ldc.i4	1
	shr
	ldsfld	void* 'll4'

	add
	ldind.u1
	conv.u4
	ldloc	'tPos/5'
	ldc.i4	2
	shl
	ldc.i4	4
	and
	shr.un
	ldc.i4	15
	and
	ldc.i4	16
	shl
	ldloc	'tPos/5'
	ldc.i4	1
	shl
	ldsfld	void* 'll16'

	add
	ldind.u2
	conv.u4
	or
	conv.i4
	stloc	'tPos/5'
// Line 2524:	                  if (blockRandomised) {

	ldsfld	uint8 'blockRandomised'

	ldc.i4	0
	beq	'L_1614'
// Line 2525:	                     RAND_UPD_MASK;

	ldloc	'rNToGo/13'
	ldc.i4	0
	bne.un	'L_1616'
	ldloc	'rTPos/14'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[512]' 'rNums'

	add
	ldind.i4
	stloc	'rNToGo/13'
	ldloc	'rTPos/14'
	ldc.i4	1
	add
	stloc	'rTPos/14'
	ldloc	'rTPos/14'
	ldc.i4	512
	bne.un	'L_1618'
	ldc.i4	0
	stloc	'rTPos/14'
L_1618:
L_1616:
	ldloc	'rNToGo/13'
	ldc.i4	1
	sub
	stloc	'rNToGo/13'
// Line 2526:	                     z ^= RAND_MASK;

	ldloc	'rNToGo/13'
	ldc.i4	1
	bne.un	'L_1639'
	ldc.i4	1
	br	'L_1640'
L_1639:
	ldc.i4	0
L_1640:
	ldloc	'z/16'
	conv.i4
	xor
	conv.u1
	stloc	'z/16'
L_1614:
// Line 2527:	                  }

	ldc.i4	0
	stloc	'j2/15'
	br	'L_1622'
L_1621:
// Line 2529:	                     if (dst) retVal = putc (ch2, dst);

	ldarg	'dst'
	ldc.i4	0
	beq	'L_1626'
	ldloc	'ch2/11'
	ldarg	'dst'
	call	int32 'fputc'(int32, void*)
	stloc	'retVal/7'
L_1626:
// Line 2530:	                     UPDATE_CRC ( localCrc, (UChar)ch2 );

	ldloc	'ch2/11'
	conv.u1
	conv.u4
	ldloc	'localCrc/12'
	ldc.i4	24
	shr.un
	xor
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'uint32[256]' 'crc32Table'

	add
	ldind.u4
	ldloc	'localCrc/12'
	ldc.i4	8
	shl
	xor
	stloc	'localCrc/12'
L_1624:
	ldloc	'j2/15'
	ldc.i4	1
	add
	stloc	'j2/15'
// Line 2528:	                  for (j2 = 0;  j2 < (Int32)z;  j2++) {

L_1622:
	ldloc	'j2/15'
	ldloc	'z/16'
	conv.i4
	blt	'L_1621'
L_1623:
// Line 2531:	                  }

// Line 2532:	                  i2++;

	ldloc	'i2/8'
	ldc.i4	1
	add
	stloc	'i2/8'
// Line 2533:	                  count = 0;

	ldc.i4	0
	stloc	'count/9'
L_1612:
// Line 2534:	               }

L_1610:
// Line 2535:	            }

L_1595:
// Line 2502:	         while ( i2 <= last ) {

	ldloc	'i2/8'
	ldsfld	int32 'last'

	ble	'L_1593'
L_1594:
// Line 2536:	         }

// Line 2537:	      }

// Line 2538:	

// Line 2539:	      setGlobalCRC ( localCrc );

	ldloc	'localCrc/12'
	call	void 'setGlobalCRC'(uint32)
// Line 2540:	   }

// Line 2541:	    

// Line 2542:	}

L_1554:
	ret

}
 .method public hidebysig static void 'undoReversibleTransformation_fast'(void* 'dst' ) cil managed
{
// Line 2554:	void undoReversibleTransformation_fast ( FILE* dst )

// Line 2555:	{

	.locals
	(
		[0] valuetype 'int32[257]' 'cftab/0',
		[1] int32 'i/1',
		[2] int32 'tPos/2',
		[3] uint8 'ch/3',
		[4] int32 'retVal/4',
		[5] int32 'i2/5',
		[6] int32 'count/6',
		[7] int32 'chPrev/7',
		[8] int32 'ch2/8',
		[9] uint32 'localCrc/9',
		[10] int32 'j2/10',
		[11] uint8 'z/11',
		[12] int32 'rNToGo/12',
		[13] int32 'rTPos/13',
		[14] int32 'j2/14',
		[15] uint8 'z/15'
	)
	.maxstack	5
L_1644:
// Line 2558:	   UChar  ch;

// Line 2559:	

// Line 2560:	

// Line 2561:	   PRINTLOC;

// Line 2562:	

// Line 2563:	    
// Line 2564:	
// Line 2565:	
// Line 2566:	
// Line 2567:	

// Line 2568:	

// Line 2569:	    

// Line 2570:	   cftab[0] = 0;

	ldloca	'cftab/0'
	ldc.i4	0
	stind.i4
	ldc.i4	1
	stloc	'i/1'
	br	'L_1648'
L_1647:
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldloc	'i/1'
	ldc.i4	1
	sub
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[256]' 'unzftab'

	add
	ldind.i4
	stind.i4
L_1650:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 2571:	   for (i = 1; i <= 256; i++) { cftab[i] = unzftab[i-1];  }

L_1648:
	ldloc	'i/1'
	ldc.i4	256
	ble	'L_1647'
L_1649:
	ldc.i4	1
	stloc	'i/1'
	br	'L_1654'
L_1653:
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldloc	'i/1'
	ldc.i4	1
	sub
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldind.i4
	ldloc	'i/1'
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldind.i4
	add
	stind.i4
L_1656:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 2572:	   for (i = 1; i <= 256; i++) cftab[i] += cftab[i-1];

L_1654:
	ldloc	'i/1'
	ldc.i4	256
	ble	'L_1653'
L_1655:
// Line 2573:	

// Line 2574:	    

	ldc.i4	0
	stloc	'i/1'
	br	'L_1658'
L_1657:
// Line 2576:	      ch = (UChar)ll8[i];

	ldloc	'i/1'
	ldsfld	void* 'll8'

	add
	ldind.u1
	stloc	'ch/3'
// Line 2577:	      tt[cftab[ch]] = i;

	ldloc	'ch/3'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldind.i4
	ldc.i4	2
	shl
	ldsfld	void* 'tt'

	add
	ldloc	'i/1'
	stind.i4
// Line 2578:	      cftab[ch]++;

	ldloc	'ch/3'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldloc	'ch/3'
	conv.i4
	ldc.i4	2
	shl
	ldloca	'cftab/0'
	add
	ldind.i4
	ldc.i4	1
	add
	stind.i4
L_1660:
	ldloc	'i/1'
	ldc.i4	1
	add
	stloc	'i/1'
// Line 2575:	   for (i = 0; i <= last; i++) {

L_1658:
	ldloc	'i/1'
	ldsfld	int32 'last'

	ble	'L_1657'
L_1659:
// Line 2579:	   }

// Line 2580:	    
// Line 2581:	
// Line 2582:	
// Line 2583:	
// Line 2584:	
// Line 2585:	

// Line 2586:	   tPos   = tt[origPtr];

	ldsfld	int32 'origPtr'

	ldc.i4	2
	shl
	ldsfld	void* 'tt'

	add
	ldind.i4
	stloc	'tPos/2'
// Line 2587:	    

// Line 2588:	    
// Line 2589:	
// Line 2590:	
// Line 2591:	
// Line 2592:	
// Line 2593:	
// Line 2594:	
// Line 2595:	

// Line 2596:	   {

// Line 2599:	      UInt32    localCrc;

// Line 2600:	

// Line 2601:	      count    = 0;

	ldc.i4	0
	stloc	'count/6'
// Line 2602:	      i2       = 0;

	ldc.i4	0
	stloc	'i2/5'
// Line 2603:	      ch2      = 256;    

	ldc.i4	256
	stloc	'ch2/8'
// Line 2604:	      localCrc = getGlobalCRC();

	call	uint32 'getGlobalCRC'()
	stloc	'localCrc/9'
// Line 2605:	      if (blockRandomised) {

	ldsfld	uint8 'blockRandomised'

	ldc.i4	0
	beq	'L_1703'
// Line 2606:	         RAND_DECLS;

	ldloca	'rNToGo/12'
	ldc.i4	0
	stind.i4
	ldloca	'rTPos/13'
	ldc.i4	0
	stind.i4
	br	'L_1668'
L_1666:
// Line 2608:	            chPrev = ch2;

	ldloc	'ch2/8'
	stloc	'chPrev/7'
// Line 2609:	            GET_FAST(ch2);

	ldloc	'tPos/2'
	ldsfld	void* 'll8'

	add
	ldind.u1
	conv.i4
	stloc	'ch2/8'
	ldloc	'tPos/2'
	ldc.i4	2
	shl
	ldsfld	void* 'tt'

	add
	ldind.i4
	stloc	'tPos/2'
// Line 2610:	            RAND_UPD_MASK;

	ldloc	'rNToGo/12'
	ldc.i4	0
	bne.un	'L_1670'
	ldloc	'rTPos/13'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[512]' 'rNums'

	add
	ldind.i4
	stloc	'rNToGo/12'
	ldloc	'rTPos/13'
	ldc.i4	1
	add
	stloc	'rTPos/13'
	ldloc	'rTPos/13'
	ldc.i4	512
	bne.un	'L_1672'
	ldc.i4	0
	stloc	'rTPos/13'
L_1672:
L_1670:
	ldloc	'rNToGo/12'
	ldc.i4	1
	sub
	stloc	'rNToGo/12'
// Line 2611:	            ch2 ^= (UInt32)RAND_MASK;

	ldloc	'rNToGo/12'
	ldc.i4	1
	bne.un	'L_1729'
	ldc.i4	1
	br	'L_1730'
L_1729:
	ldc.i4	0
L_1730:
	conv.u4
	ldloc	'ch2/8'
	conv.u4
	xor
	conv.i4
	stloc	'ch2/8'
// Line 2612:	            i2++;

	ldloc	'i2/5'
	ldc.i4	1
	add
	stloc	'i2/5'
// Line 2613:	            retVal = putc ( ch2, dst );

	ldloc	'ch2/8'
	ldarg	'dst'
	call	int32 'fputc'(int32, void*)
	stloc	'retVal/4'
// Line 2614:	            UPDATE_CRC ( localCrc, (UChar)ch2 );

	ldloc	'ch2/8'
	conv.u1
	conv.u4
	ldloc	'localCrc/9'
	ldc.i4	24
	shr.un
	xor
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'uint32[256]' 'crc32Table'

	add
	ldind.u4
	ldloc	'localCrc/9'
	ldc.i4	8
	shl
	xor
	stloc	'localCrc/9'
// Line 2615:	

// Line 2616:	            if (ch2 != chPrev) {

	ldloc	'ch2/8'
	ldloc	'chPrev/7'
	beq	'L_1676'
// Line 2617:	               count = 1;

	ldc.i4	1
	stloc	'count/6'
	br	'L_1679'
L_1676:
// Line 2618:	            } else {

// Line 2619:	               count++;

	ldloc	'count/6'
	ldc.i4	1
	add
	stloc	'count/6'
// Line 2620:	               if (count >= 4) {

	ldloc	'count/6'
	ldc.i4	4
	blt	'L_1681'
// Line 2622:	                  UChar z;

// Line 2623:	                  GET_FAST(z);

	ldloc	'tPos/2'
	ldsfld	void* 'll8'

	add
	ldind.u1
	stloc	'z/15'
	ldloc	'tPos/2'
	ldc.i4	2
	shl
	ldsfld	void* 'tt'

	add
	ldind.i4
	stloc	'tPos/2'
// Line 2624:	                  RAND_UPD_MASK;

	ldloc	'rNToGo/12'
	ldc.i4	0
	bne.un	'L_1683'
	ldloc	'rTPos/13'
	ldc.i4	2
	shl
	ldsflda	valuetype 'int32[512]' 'rNums'

	add
	ldind.i4
	stloc	'rNToGo/12'
	ldloc	'rTPos/13'
	ldc.i4	1
	add
	stloc	'rTPos/13'
	ldloc	'rTPos/13'
	ldc.i4	512
	bne.un	'L_1685'
	ldc.i4	0
	stloc	'rTPos/13'
L_1685:
L_1683:
	ldloc	'rNToGo/12'
	ldc.i4	1
	sub
	stloc	'rNToGo/12'
// Line 2625:	                  z ^= RAND_MASK;

	ldloc	'rNToGo/12'
	ldc.i4	1
	bne.un	'L_1731'
	ldc.i4	1
	br	'L_1732'
L_1731:
	ldc.i4	0
L_1732:
	ldloc	'z/15'
	conv.i4
	xor
	conv.u1
	stloc	'z/15'
	ldc.i4	0
	stloc	'j2/14'
	br	'L_1688'
L_1687:
// Line 2627:	                     retVal = putc (ch2, dst);

	ldloc	'ch2/8'
	ldarg	'dst'
	call	int32 'fputc'(int32, void*)
	stloc	'retVal/4'
// Line 2628:	                     UPDATE_CRC ( localCrc, (UChar)ch2 );

	ldloc	'ch2/8'
	conv.u1
	conv.u4
	ldloc	'localCrc/9'
	ldc.i4	24
	shr.un
	xor
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'uint32[256]' 'crc32Table'

	add
	ldind.u4
	ldloc	'localCrc/9'
	ldc.i4	8
	shl
	xor
	stloc	'localCrc/9'
L_1690:
	ldloc	'j2/14'
	ldc.i4	1
	add
	stloc	'j2/14'
// Line 2626:	                  for (j2 = 0;  j2 < (Int32)z;  j2++) {

L_1688:
	ldloc	'j2/14'
	ldloc	'z/15'
	conv.i4
	blt	'L_1687'
L_1689:
// Line 2629:	                  }

// Line 2630:	                  i2++;

	ldloc	'i2/5'
	ldc.i4	1
	add
	stloc	'i2/5'
// Line 2631:	                  count = 0;

	ldc.i4	0
	stloc	'count/6'
L_1681:
// Line 2632:	               }

L_1679:
// Line 2633:	            }

L_1668:
// Line 2607:	         while ( i2 <= last ) {

	ldloc	'i2/5'
	ldsfld	int32 'last'

	ble	'L_1666'
L_1667:
// Line 2634:	         }

	br	'L_1699'
L_1664:
// Line 2635:	      } else {

	br	'L_1703'
L_1701:
// Line 2637:	            chPrev = ch2;

	ldloc	'ch2/8'
	stloc	'chPrev/7'
// Line 2638:	            GET_FAST(ch2);

	ldloc	'tPos/2'
	ldsfld	void* 'll8'

	add
	ldind.u1
	conv.i4
	stloc	'ch2/8'
	ldloc	'tPos/2'
	ldc.i4	2
	shl
	ldsfld	void* 'tt'

	add
	ldind.i4
	stloc	'tPos/2'
// Line 2639:	            i2++;

	ldloc	'i2/5'
	ldc.i4	1
	add
	stloc	'i2/5'
// Line 2640:	

// Line 2641:	            retVal = putc ( ch2, dst );

	ldloc	'ch2/8'
	ldarg	'dst'
	call	int32 'fputc'(int32, void*)
	stloc	'retVal/4'
// Line 2642:	            UPDATE_CRC ( localCrc, (UChar)ch2 );

	ldloc	'ch2/8'
	conv.u1
	conv.u4
	ldloc	'localCrc/9'
	ldc.i4	24
	shr.un
	xor
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'uint32[256]' 'crc32Table'

	add
	ldind.u4
	ldloc	'localCrc/9'
	ldc.i4	8
	shl
	xor
	stloc	'localCrc/9'
// Line 2643:	

// Line 2644:	            if (ch2 != chPrev) {

	ldloc	'ch2/8'
	ldloc	'chPrev/7'
	beq	'L_1707'
// Line 2645:	               count = 1;

	ldc.i4	1
	stloc	'count/6'
	br	'L_1710'
L_1707:
// Line 2646:	            } else {

// Line 2647:	               count++;

	ldloc	'count/6'
	ldc.i4	1
	add
	stloc	'count/6'
// Line 2648:	               if (count >= 4) {

	ldloc	'count/6'
	ldc.i4	4
	blt	'L_1712'
// Line 2650:	                  UChar z;

// Line 2651:	                  GET_FAST(z);

	ldloc	'tPos/2'
	ldsfld	void* 'll8'

	add
	ldind.u1
	stloc	'z/11'
	ldloc	'tPos/2'
	ldc.i4	2
	shl
	ldsfld	void* 'tt'

	add
	ldind.i4
	stloc	'tPos/2'
	ldc.i4	0
	stloc	'j2/10'
	br	'L_1715'
L_1714:
// Line 2653:	                     retVal = putc (ch2, dst);

	ldloc	'ch2/8'
	ldarg	'dst'
	call	int32 'fputc'(int32, void*)
	stloc	'retVal/4'
// Line 2654:	                     UPDATE_CRC ( localCrc, (UChar)ch2 );

	ldloc	'ch2/8'
	conv.u1
	conv.u4
	ldloc	'localCrc/9'
	ldc.i4	24
	shr.un
	xor
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'uint32[256]' 'crc32Table'

	add
	ldind.u4
	ldloc	'localCrc/9'
	ldc.i4	8
	shl
	xor
	stloc	'localCrc/9'
L_1717:
	ldloc	'j2/10'
	ldc.i4	1
	add
	stloc	'j2/10'
// Line 2652:	                  for (j2 = 0;  j2 < (Int32)z;  j2++) {

L_1715:
	ldloc	'j2/10'
	ldloc	'z/11'
	conv.i4
	blt	'L_1714'
L_1716:
// Line 2655:	                  }

// Line 2656:	                  i2++;

	ldloc	'i2/5'
	ldc.i4	1
	add
	stloc	'i2/5'
// Line 2657:	                  count = 0;

	ldc.i4	0
	stloc	'count/6'
L_1712:
// Line 2658:	               }

L_1710:
// Line 2659:	            }

L_1703:
// Line 2636:	         while ( i2 <= last ) {

	ldloc	'i2/5'
	ldsfld	int32 'last'

	ble	'L_1701'
L_1702:
// Line 2660:	         }

L_1699:
// Line 2661:	      }    

// Line 2662:	      setGlobalCRC ( localCrc );

	ldloc	'localCrc/9'
	call	void 'setGlobalCRC'(uint32)
// Line 2663:	   }

// Line 2664:	    

// Line 2665:	}

L_1645:
	ret

}
 .method public hidebysig static int32 'getRLEpair'(void* 'src' ) cil managed
{
// Line 2680:	INLINE Int32 getRLEpair ( FILE* src )

// Line 2681:	{

	.locals
	(
		[0] int32 'runLength/0',
		[1] int32 'ch/1',
		[2] int32 'chLatest/2',
		[3] int32 'i/3'
	)
	.maxstack	5
L_1736:
// Line 2683:	   IntNative ch, chLatest;

// Line 2684:	

// Line 2685:	

// Line 2686:	   PRINTLOC;

// Line 2687:	

// Line 2688:	   ch = getc ( src );

	ldarg	'src'
	call	int32 'fgetc'(void*)
	stloc	'ch/1'
// Line 2689:	

// Line 2690:	    

// Line 2691:	   if (ch == EOF) {

	ldloc	'ch/1'
	ldc.i4	-1
	bne.un	'L_1739'
// Line 2692:	      ERROR_IF_NOT_ZERO ( ferror(src));

	ldarg	'src'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1742'
	call	void 'ioError'()
L_1742:
// Line 2693:	      return (1 << 16) | MY_EOF;

	ldc.i4	65793
	br	'L_1737'
L_1739:
// Line 2694:	   }

// Line 2695:	

// Line 2696:	   runLength = 0;

	ldc.i4	0
	stloc	'runLength/0'
// Line 2697:	   do {

L_1745:
// Line 2698:	      chLatest = getc ( src );

	ldarg	'src'
	call	int32 'fgetc'(void*)
	stloc	'chLatest/2'
// Line 2699:	      runLength++;

	ldloc	'runLength/0'
	ldc.i4	1
	add
	stloc	'runLength/0'
// Line 2700:	      bytesIn++;

	ldsfld	uint32 'bytesIn'

	ldc.i4	1
	add
	stsfld	uint32 'bytesIn'

L_1747:
// Line 2701:	   }

// Line 2702:	      while (ch == chLatest && runLength < 255);

	ldloc	'ch/1'
	ldloc	'chLatest/2'
	bne.un	'L_1776'
	ldloc	'runLength/0'
	ldc.i4	255
	blt	'L_1745'
L_1776:
L_1746:
// Line 2703:	

// Line 2704:	   if ( chLatest != EOF ) {

	ldloc	'chLatest/2'
	ldc.i4	-1
	beq	'L_1750'
// Line 2705:	      if ( ungetc ( chLatest, src ) == EOF )

	ldloc	'chLatest/2'
	ldarg	'src'
	call	int32 'ungetc'(int32, void*)
	ldc.i4	-1
	bne.un	'L_1754'
// Line 2706:	         panic ( "getRLEpair: ungetc failed" );

	ldsflda	valuetype 'int8[]' 'L_33'

	call	void 'panic'(void*)
L_1752:
	br	'L_1754'
L_1750:
// Line 2707:	   } else {

// Line 2708:	      ERROR_IF_NOT_ZERO ( ferror(src) );

	ldarg	'src'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1757'
	call	void 'ioError'()
L_1757:
L_1754:
// Line 2709:	   }

// Line 2710:	

// Line 2711:	    

// Line 2712:	   if (runLength == 1) {

	ldloc	'runLength/0'
	ldc.i4	1
	bne.un	'L_1760'
// Line 2713:	      UPDATE_CRC ( globalCrc, (UChar)ch );

	ldloc	'ch/1'
	conv.u1
	conv.u4
	ldsfld	uint32 'globalCrc'

	ldc.i4	24
	shr.un
	xor
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'uint32[256]' 'crc32Table'

	add
	ldind.u4
	ldsfld	uint32 'globalCrc'

	ldc.i4	8
	shl
	xor
	stsfld	uint32 'globalCrc'

// Line 2714:	      return (1 << 16) | ch;

	ldloc	'ch/1'
	ldc.i4	65536
	or
	br	'L_1737'
L_1760:
// Line 2715:	   } else {

// Line 2716:	      Int32 i;

	ldc.i4	1
	stloc	'i/3'
	br	'L_1768'
L_1767:
// Line 2718:	         UPDATE_CRC ( globalCrc, (UChar)ch );

	ldloc	'ch/1'
	conv.u1
	conv.u4
	ldsfld	uint32 'globalCrc'

	ldc.i4	24
	shr.un
	xor
	conv.i4
	ldc.i4	2
	shl
	ldsflda	valuetype 'uint32[256]' 'crc32Table'

	add
	ldind.u4
	ldsfld	uint32 'globalCrc'

	ldc.i4	8
	shl
	xor
	stsfld	uint32 'globalCrc'

L_1770:
	ldloc	'i/3'
	ldc.i4	1
	add
	stloc	'i/3'
// Line 2717:	      for (i = 1; i <= runLength; i++)

L_1768:
	ldloc	'i/3'
	ldloc	'runLength/0'
	ble	'L_1767'
L_1769:
// Line 2719:	      return (runLength << 16) | ch;

	ldloc	'runLength/0'
	ldc.i4	16
	shl
	ldloc	'ch/1'
	or
L_1765:
// Line 2720:	   }

// Line 2721:	}

L_1737:
	ret

}
 .method public hidebysig static void 'loadAndRLEsource'(void* 'src' ) cil managed
{
// Line 2725:	void loadAndRLEsource ( FILE* src )

// Line 2726:	{

	.locals
	(
		[0] int32 '$anontemp4/0',
		[1] int32 'ch/1',
		[2] int32 'allowableBlockSize/2',
		[3] int32 'i/3',
		[4] int32 'rlePair/4',
		[5] int32 'runLen/5'
	)
	.maxstack	3
L_1780:
// Line 2727:	   Int32 ch, allowableBlockSize, i;

// Line 2728:	

// Line 2729:	

// Line 2730:	   PRINTLOC;

// Line 2731:	

// Line 2732:	   last = -1;

	ldc.i4	-1
	stsfld	int32 'last'

// Line 2733:	   ch   = 0;

	ldc.i4	0
	stloc	'ch/1'
// Line 2734:	

	ldc.i4	0
	stloc	'i/3'
	br	'L_1784'
L_1783:
	ldloc	'i/3'
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldc.i4	0
	stind.i1
L_1786:
	ldloc	'i/3'
	ldc.i4	1
	add
	stloc	'i/3'
// Line 2735:	   for (i = 0; i < 256; i++) inUse[i] = False;

L_1784:
	ldloc	'i/3'
	ldc.i4	256
	blt	'L_1783'
L_1785:
// Line 2736:	

// Line 2737:	    

// Line 2738:	   allowableBlockSize = 100000 * blockSize100k - 20;

	ldsfld	int32 'blockSize100k'

	ldc.i4	100000
	mul
	ldc.i4	20
	sub
	stloc	'allowableBlockSize/2'
	br	'L_1789'
L_1787:
// Line 2741:	      Int32 rlePair, runLen;

// Line 2742:	      rlePair = getRLEpair ( src );

	ldarg	'src'
	call	int32 'getRLEpair'(void*)
	stloc	'rlePair/4'
// Line 2743:	      ch      = rlePair & 0xFFFF;

	ldloc	'rlePair/4'
	ldc.i4	65535
	and
	stloc	'ch/1'
// Line 2744:	      runLen  = (UInt32)rlePair >> 16;

	ldloc	'rlePair/4'
	conv.u4
	ldc.i4	16
	shr.un
	conv.i4
	stloc	'runLen/5'
// Line 2745:	

// Line 2746:	      #if DEBUG

// Line 2747:	         assert (runLen >= 1 && runLen <= 255);

// Line 2748:	      #endif

// Line 2749:	

// Line 2750:	      if (ch != MY_EOF) {

	ldloc	'ch/1'
	ldc.i4	257
	beq	'L_1791'
// Line 2751:	         inUse[ch] = True;

	ldloc	'ch/1'
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldc.i4	1
	stind.i1
// Line 2752:	         switch (runLen) {

	ldloc	'runLen/5'
	stloc	'$anontemp4/0'
	ldloc	'$anontemp4/0'
	ldc.i4	1
	beq	'L_1795'
	ldloc	'$anontemp4/0'
	ldc.i4	2
	beq	'L_1796'
	ldloc	'$anontemp4/0'
	ldc.i4	3
	beq	'L_1797'
	br	'L_1798'
L_1795:
// Line 2753:	            case 1:

// Line 2754:	               last++; block[last] = (UChar)ch; break;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
	br	'L_1793'
L_1796:
// Line 2755:	            case 2:

// Line 2756:	               last++; block[last] = (UChar)ch;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
// Line 2757:	               last++; block[last] = (UChar)ch; break;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
	br	'L_1793'
L_1797:
// Line 2758:	            case 3:

// Line 2759:	               last++; block[last] = (UChar)ch;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
// Line 2760:	               last++; block[last] = (UChar)ch;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
// Line 2761:	               last++; block[last] = (UChar)ch; break;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
	br	'L_1793'
L_1798:
// Line 2762:	            default:

// Line 2763:	               inUse[runLen-4] = True;

	ldloc	'runLen/5'
	ldc.i4	4
	sub
	ldsflda	valuetype 'uint8[256]' 'inUse'

	add
	ldc.i4	1
	stind.i1
// Line 2764:	               last++; block[last] = (UChar)ch;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
// Line 2765:	               last++; block[last] = (UChar)ch;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
// Line 2766:	               last++; block[last] = (UChar)ch;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
// Line 2767:	               last++; block[last] = (UChar)ch;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'ch/1'
	conv.u1
	stind.i1
// Line 2768:	               last++; block[last] = (UChar)(runLen-4); break;

	ldsfld	int32 'last'

	ldc.i4	1
	add
	stsfld	int32 'last'

	ldsfld	int32 'last'

	ldsfld	void* 'block'

	add
	ldloc	'runLen/5'
	ldc.i4	4
	sub
	conv.u1
	stind.i1
L_1793:
// Line 2769:	         }

L_1791:
// Line 2770:	      }

L_1789:
// Line 2739:	

// Line 2740:	   while (last < allowableBlockSize && ch != MY_EOF) {

	ldsfld	int32 'last'

	ldloc	'allowableBlockSize/2'
	bge	'L_1804'
	ldloc	'ch/1'
	ldc.i4	257
	bne.un	'L_1787'
L_1804:
L_1788:
// Line 2771:	   }

// Line 2772:	}

L_1781:
	ret

}
 .method public hidebysig static void 'compressStream'(void* 'stream' , void* 'zStream' ) cil managed
{
// Line 2780:	void compressStream ( FILE *stream, FILE *zStream )

// Line 2781:	{

	.locals
	(
		[0] int32 'retVal/0',
		[1] uint32 'blockCRC/1',
		[2] uint32 'combinedCRC/2',
		[3] int32 'blockNo/3',
		[4] int32 'retVal/4',
		[5] int32 'retVal/5'
	)
	.maxstack	8
L_1808:
// Line 2784:	   Int32      blockNo;

// Line 2785:	

// Line 2786:	

// Line 2787:	   PRINTLOC;

// Line 2788:	

// Line 2789:	   blockNo  = 0;

	ldc.i4	0
	stloc	'blockNo/3'
// Line 2790:	   bytesIn  = 0;

	ldc.i4	0
	stsfld	uint32 'bytesIn'

// Line 2791:	   bytesOut = 0;

	ldc.i4	0
	stsfld	uint32 'bytesOut'

// Line 2792:	   nBlocksRandomised = 0;

	ldc.i4	0
	stsfld	int32 'nBlocksRandomised'

// Line 2793:	

// Line 2794:	   SET_BINARY_MODE(stream);

L_1811:
	ldloca	'retVal/5'
	ldarg	'stream'
	call	int32 '_fileno'(void*)
	ldc.i4	32768
	call	int32 '_setmode'(int32, int32)
	stind.i4
	ldloc	'retVal/5'
	ldc.i4	-1
	bne.un	'L_1816'
	call	void 'ioError'()
L_1816:
L_1813:
L_1812:
// Line 2795:	   SET_BINARY_MODE(zStream);

L_1819:
	ldloca	'retVal/4'
	ldarg	'zStream'
	call	int32 '_fileno'(void*)
	ldc.i4	32768
	call	int32 '_setmode'(int32, int32)
	stind.i4
	ldloc	'retVal/4'
	ldc.i4	-1
	bne.un	'L_1824'
	call	void 'ioError'()
L_1824:
L_1821:
L_1820:
// Line 2796:	

// Line 2797:	   ERROR_IF_NOT_ZERO ( ferror(stream) );

	ldarg	'stream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1828'
	call	void 'ioError'()
L_1828:
// Line 2798:	   ERROR_IF_NOT_ZERO ( ferror(zStream) );

	ldarg	'zStream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1831'
	call	void 'ioError'()
L_1831:
// Line 2799:	

// Line 2800:	   bsSetStream ( zStream, True );

	ldarg	'zStream'
	ldc.i4	1
	conv.u1
	call	void 'bsSetStream'(void*, uint8)
// Line 2801:	

// Line 2802:	    
// Line 2803:	
// Line 2804:	
// Line 2805:	

// Line 2806:	   bsPutUChar ( 'B' );

	ldc.i4	66
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2807:	   bsPutUChar ( 'Z' );

	ldc.i4	90
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2808:	   bsPutUChar ( 'h' );

	ldc.i4	104
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2809:	   bsPutUChar ( '0' + blockSize100k );

	ldsfld	int32 'blockSize100k'

	ldc.i4	48
	add
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2810:	

// Line 2811:	   combinedCRC = 0;

	ldc.i4	0
	stloc	'combinedCRC/2'
// Line 2812:	

// Line 2813:	   if (verbosity >= 2) fprintf ( stderr, "\n" );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1836'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_10'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1833:
L_1834:
// Line 2816:	

// Line 2817:	      blockNo++;

	ldloc	'blockNo/3'
	ldc.i4	1
	add
	stloc	'blockNo/3'
// Line 2818:	      initialiseCRC ();

	call	void 'initialiseCRC'()
// Line 2819:	      loadAndRLEsource ( stream );

	ldarg	'stream'
	call	void 'loadAndRLEsource'(void*)
// Line 2820:	      ERROR_IF_NOT_ZERO ( ferror(stream) );

	ldarg	'stream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1839'
	call	void 'ioError'()
L_1839:
// Line 2821:	      if (last == -1) break;

	ldsfld	int32 'last'

	ldc.i4	-1
	beq	'L_1835'
L_1841:
// Line 2822:	

// Line 2823:	      blockCRC = getFinalCRC ();

	call	uint32 'getFinalCRC'()
	stloc	'blockCRC/1'
// Line 2824:	      combinedCRC = (combinedCRC << 1) | (combinedCRC >> 31);

	ldloc	'combinedCRC/2'
	ldc.i4	1
	shl
	ldloc	'combinedCRC/2'
	ldc.i4	31
	shr.un
	or
	stloc	'combinedCRC/2'
// Line 2825:	      combinedCRC ^= blockCRC;

	ldloc	'combinedCRC/2'
	ldloc	'blockCRC/1'
	xor
	stloc	'combinedCRC/2'
// Line 2826:	

// Line 2827:	      if (verbosity >= 2)

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1842'
// Line 2828:	         fprintf ( stderr, "    block %d: crc = 0x%8x, combined CRC = 0x%8x, size = %d",

// Line 2829:	                           blockNo, blockCRC, combinedCRC, last+1 );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_34'

	ldloc	'blockNo/3'
	ldloc	'blockCRC/1'
	ldloc	'combinedCRC/2'
	ldsfld	int32 'last'

	ldc.i4	1
	add
	call	vararg int32 'fprintf'(void*, void*, ..., int32, uint32, uint32, int32)
	pop
L_1842:
// Line 2830:	

// Line 2831:	       

// Line 2832:	      doReversibleTransformation ();

	call	void 'doReversibleTransformation'()
// Line 2833:	

// Line 2834:	       
// Line 2835:	
// Line 2836:	
// Line 2837:	
// Line 2838:	
// Line 2839:	
// Line 2840:	
// Line 2841:	
// Line 2842:	
// Line 2843:	
// Line 2844:	
// Line 2845:	
// Line 2846:	

// Line 2847:	      bsPutUChar ( 0x31 ); bsPutUChar ( 0x41 );

	ldc.i4	49
	conv.u1
	call	void 'bsPutUChar'(uint8)
	ldc.i4	65
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2848:	      bsPutUChar ( 0x59 ); bsPutUChar ( 0x26 );

	ldc.i4	89
	conv.u1
	call	void 'bsPutUChar'(uint8)
	ldc.i4	38
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2849:	      bsPutUChar ( 0x53 ); bsPutUChar ( 0x59 );

	ldc.i4	83
	conv.u1
	call	void 'bsPutUChar'(uint8)
	ldc.i4	89
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2850:	

// Line 2851:	       

// Line 2852:	      bsPutUInt32 ( blockCRC );

	ldloc	'blockCRC/1'
	call	void 'bsPutUInt32'(uint32)
// Line 2853:	

// Line 2854:	       

// Line 2855:	      if (blockRandomised) {

	ldsfld	uint8 'blockRandomised'

	ldc.i4	0
	beq	'L_1843'
// Line 2856:	         bsW(1,1); nBlocksRandomised++;

	ldc.i4	1
	ldc.i4	1
	conv.u4
	call	void 'bsW'(int32, uint32)
	ldsfld	int32 'nBlocksRandomised'

	ldc.i4	1
	add
	stsfld	int32 'nBlocksRandomised'

	br	'L_1846'
L_1843:
// Line 2857:	      } else

// Line 2858:	         bsW(1,0);

	ldc.i4	1
	ldc.i4	0
	conv.u4
	call	void 'bsW'(int32, uint32)
L_1846:
// Line 2859:	

// Line 2860:	       

// Line 2861:	      moveToFrontCodeAndSend ();

	call	void 'moveToFrontCodeAndSend'()
// Line 2862:	

// Line 2863:	      ERROR_IF_NOT_ZERO ( ferror(zStream) );

	ldarg	'zStream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1848'
	call	void 'ioError'()
L_1848:
L_1836:
// Line 2814:	

// Line 2815:	   while (True) {

	br	'L_1834'
L_1835:
// Line 2864:	   }

// Line 2865:	

// Line 2866:	   if (verbosity >= 2 && nBlocksRandomised > 0)

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1851'
	ldsfld	int32 'nBlocksRandomised'

	ldc.i4	0
	ble	'L_1851'
// Line 2867:	      fprintf ( stderr, "    %d block%s needed randomisation\n",

// Line 2868:	                        nBlocksRandomised,

// Line 2869:	                        nBlocksRandomised == 1 ? "" : "s" );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_35'

	ldsfld	int32 'nBlocksRandomised'

	ldsfld	int32 'nBlocksRandomised'

	ldc.i4	1
	bne.un	'L_1873'
	ldsflda	valuetype 'int8[]' 'L_36'

	br	'L_1874'
L_1873:
	ldsflda	valuetype 'int8[]' 'L_37'

L_1874:
	call	vararg int32 'fprintf'(void*, void*, ..., int32, void*)
	pop
L_1851:
// Line 2870:	

// Line 2871:	    
// Line 2872:	
// Line 2873:	
// Line 2874:	
// Line 2875:	
// Line 2876:	
// Line 2877:	

// Line 2878:	

// Line 2879:	   bsPutUChar ( 0x17 ); bsPutUChar ( 0x72 );

	ldc.i4	23
	conv.u1
	call	void 'bsPutUChar'(uint8)
	ldc.i4	114
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2880:	   bsPutUChar ( 0x45 ); bsPutUChar ( 0x38 );

	ldc.i4	69
	conv.u1
	call	void 'bsPutUChar'(uint8)
	ldc.i4	56
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2881:	   bsPutUChar ( 0x50 ); bsPutUChar ( 0x90 );

	ldc.i4	80
	conv.u1
	call	void 'bsPutUChar'(uint8)
	ldc.i4	144
	conv.u1
	call	void 'bsPutUChar'(uint8)
// Line 2882:	

// Line 2883:	   bsPutUInt32 ( combinedCRC );

	ldloc	'combinedCRC/2'
	call	void 'bsPutUInt32'(uint32)
// Line 2884:	   if (verbosity >= 2)

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1852'
// Line 2885:	      fprintf ( stderr, "    final combined CRC = 0x%x\n   ", combinedCRC );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_38'

	ldloc	'combinedCRC/2'
	call	vararg int32 'fprintf'(void*, void*, ..., uint32)
	pop
L_1852:
// Line 2886:	

// Line 2887:	    

// Line 2888:	   bsFinishedWithStream ();

	call	void 'bsFinishedWithStream'()
// Line 2889:	

// Line 2890:	   ERROR_IF_NOT_ZERO ( ferror(zStream) );

	ldarg	'zStream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1854'
	call	void 'ioError'()
L_1854:
// Line 2891:	   retVal = fflush ( zStream );

	ldarg	'zStream'
	call	int32 'fflush'(void*)
	stloc	'retVal/0'
// Line 2892:	   ERROR_IF_EOF ( retVal );

	ldloc	'retVal/0'
	ldc.i4	-1
	bne.un	'L_1857'
	call	void 'ioError'()
L_1857:
// Line 2893:	   retVal = fclose ( zStream );

	ldarg	'zStream'
	call	int32 'fclose'(void*)
	stloc	'retVal/0'
// Line 2894:	   ERROR_IF_EOF ( retVal );

	ldloc	'retVal/0'
	ldc.i4	-1
	bne.un	'L_1860'
	call	void 'ioError'()
L_1860:
// Line 2895:	

// Line 2896:	   ERROR_IF_NOT_ZERO ( ferror(stream) );

	ldarg	'stream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1863'
	call	void 'ioError'()
L_1863:
// Line 2897:	   retVal = fclose ( stream );

	ldarg	'stream'
	call	int32 'fclose'(void*)
	stloc	'retVal/0'
// Line 2898:	   ERROR_IF_EOF ( retVal );

	ldloc	'retVal/0'
	ldc.i4	-1
	bne.un	'L_1866'
	call	void 'ioError'()
L_1866:
// Line 2899:	

// Line 2900:	   if (bytesIn == 0) bytesIn = 1;

	ldsfld	uint32 'bytesIn'

	ldc.i4	0
	bne.un	'L_1868'
	ldc.i4	1
	stsfld	uint32 'bytesIn'

L_1868:
// Line 2901:	   if (bytesOut == 0) bytesOut = 1;

	ldsfld	uint32 'bytesOut'

	ldc.i4	0
	bne.un	'L_1869'
	ldc.i4	1
	stsfld	uint32 'bytesOut'

L_1869:
// Line 2902:	

// Line 2903:	   if (verbosity >= 1)

	ldsfld	int32 'verbosity'

	ldc.i4	1
	blt	'L_1870'
// Line 2904:	      fprintf ( stderr, "%6.3f:1, %6.3f bits/byte, "

// Line 2905:	                        "%5.2f%% saved, %d in, %d out.\n",

// Line 2906:	                (float)bytesIn / (float)bytesOut,

// Line 2907:	                (8.0 * (float)bytesOut) / (float)bytesIn,

// Line 2908:	                100.0 * (1.0 - (float)bytesOut / (float)bytesIn),

// Line 2909:	                bytesIn,

// Line 2910:	                bytesOut

// Line 2911:	              );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_39'

	ldsfld	uint32 'bytesIn'

	conv.r4
	ldsfld	uint32 'bytesOut'

	conv.r4
	div
	conv.r8
	ldsfld	uint32 'bytesOut'

	conv.r4
	conv.r8
	ldc.r8	0.80000000000000000000000E+1
	mul
	ldsfld	uint32 'bytesIn'

	conv.r4
	conv.r8
	div
	ldsfld	uint32 'bytesOut'

	conv.r4
	ldsfld	uint32 'bytesIn'

	conv.r4
	div
	conv.r8
	neg
	ldc.r8	1.0000000000000000000000
	add
	ldc.r8	1.0000000000000000000000E+2
	mul
	ldsfld	uint32 'bytesIn'

	ldsfld	uint32 'bytesOut'

	call	vararg int32 'fprintf'(void*, void*, ..., float64, float64, float64, uint32, uint32)
	pop
L_1870:
// Line 2912:	}

L_1809:
	ret

}
 .method public hidebysig static uint8 'uncompressStream'(void* 'zStream' , void* 'stream' ) cil managed
{
// Line 2916:	Bool uncompressStream ( FILE *zStream, FILE *stream )

// Line 2917:	{

	.locals
	(
		[0] uint8 'magic1/0',
		[1] uint8 'magic2/1',
		[2] uint8 'magic3/2',
		[3] uint8 'magic4/3',
		[4] uint8 'magic5/4',
		[5] uint8 'magic6/5',
		[6] uint32 'storedBlockCRC/6',
		[7] uint32 'storedCombinedCRC/7',
		[8] uint32 'computedBlockCRC/8',
		[9] uint32 'computedCombinedCRC/9',
		[10] int32 'currBlockNo/10',
		[11] int32 'retVal/11',
		[12] int32 'retVal/12',
		[13] int32 'retVal/13'
	)
	.maxstack	5
L_1878:
// Line 2923:	   IntNative  retVal;

// Line 2924:	

// Line 2925:	   SET_BINARY_MODE(stream);

L_1881:
	ldloca	'retVal/13'
	ldarg	'stream'
	call	int32 '_fileno'(void*)
	ldc.i4	32768
	call	int32 '_setmode'(int32, int32)
	stind.i4
	ldloc	'retVal/13'
	ldc.i4	-1
	bne.un	'L_1886'
	call	void 'ioError'()
L_1886:
L_1883:
L_1882:
// Line 2926:	   SET_BINARY_MODE(zStream);

L_1889:
	ldloca	'retVal/12'
	ldarg	'zStream'
	call	int32 '_fileno'(void*)
	ldc.i4	32768
	call	int32 '_setmode'(int32, int32)
	stind.i4
	ldloc	'retVal/12'
	ldc.i4	-1
	bne.un	'L_1894'
	call	void 'ioError'()
L_1894:
L_1891:
L_1890:
// Line 2927:	

// Line 2928:	   ERROR_IF_NOT_ZERO ( ferror(stream) );

	ldarg	'stream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1898'
	call	void 'ioError'()
L_1898:
// Line 2929:	   ERROR_IF_NOT_ZERO ( ferror(zStream) );

	ldarg	'zStream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1901'
	call	void 'ioError'()
L_1901:
// Line 2930:	

// Line 2931:	   bsSetStream ( zStream, False );

	ldarg	'zStream'
	ldc.i4	0
	conv.u1
	call	void 'bsSetStream'(void*, uint8)
// Line 2932:	

// Line 2933:	    
// Line 2934:	
// Line 2935:	
// Line 2936:	

// Line 2937:	   magic1 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic1/0'
// Line 2938:	   magic2 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic2/1'
// Line 2939:	   magic3 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic3/2'
// Line 2940:	   magic4 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic4/3'
// Line 2941:	   if (magic1 != 'B' ||

// Line 2942:	       magic2 != 'Z' ||

// Line 2943:	       magic3 != 'h' ||

// Line 2944:	       magic4 < '1'  ||

// Line 2945:	       magic4 > '9') {

	ldloc	'magic1/0'
	conv.i4
	ldc.i4	66
	bne.un	'L_1955'
	ldloc	'magic2/1'
	conv.i4
	ldc.i4	90
	bne.un	'L_1955'
	ldloc	'magic3/2'
	conv.i4
	ldc.i4	104
	bne.un	'L_1955'
	ldloc	'magic4/3'
	conv.i4
	ldc.i4	49
	blt	'L_1955'
	ldloc	'magic4/3'
	conv.i4
	ldc.i4	57
	ble	'L_1903'
L_1955:
// Line 2946:	     bsFinishedWithStream();

	call	void 'bsFinishedWithStream'()
// Line 2947:	     retVal = fclose ( stream );

	ldarg	'stream'
	call	int32 'fclose'(void*)
	stloc	'retVal/11'
// Line 2948:	     ERROR_IF_EOF ( retVal );

	ldloc	'retVal/11'
	ldc.i4	-1
	bne.un	'L_1906'
	call	void 'ioError'()
L_1906:
// Line 2949:	     return False;

	ldc.i4	0
	conv.u1
	conv.i4
	br	'L_1879'
L_1903:
// Line 2950:	   }

// Line 2951:	

// Line 2952:	   setDecompressStructureSizes ( magic4 - '0' );

	ldloc	'magic4/3'
	conv.i4
	ldc.i4	48
	sub
	call	void 'setDecompressStructureSizes'(int32)
// Line 2953:	   computedCombinedCRC = 0;

	ldc.i4	0
	stloc	'computedCombinedCRC/9'
// Line 2954:	

// Line 2955:	   if (verbosity >= 2) fprintf ( stderr, "\n    " );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1909'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_40'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1909:
// Line 2956:	   currBlockNo = 0;

	ldc.i4	0
	stloc	'currBlockNo/10'
L_1910:
// Line 2959:	      magic1 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic1/0'
// Line 2960:	      magic2 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic2/1'
// Line 2961:	      magic3 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic3/2'
// Line 2962:	      magic4 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic4/3'
// Line 2963:	      magic5 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic5/4'
// Line 2964:	      magic6 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic6/5'
// Line 2965:	      if (magic1 == 0x17 && magic2 == 0x72 &&

// Line 2966:	          magic3 == 0x45 && magic4 == 0x38 &&

// Line 2967:	          magic5 == 0x50 && magic6 == 0x90) break;

	ldloc	'magic1/0'
	conv.i4
	ldc.i4	23
	bne.un	'L_1956'
	ldloc	'magic2/1'
	conv.i4
	ldc.i4	114
	bne.un	'L_1956'
	ldloc	'magic3/2'
	conv.i4
	ldc.i4	69
	bne.un	'L_1956'
	ldloc	'magic4/3'
	conv.i4
	ldc.i4	56
	bne.un	'L_1956'
	ldloc	'magic5/4'
	conv.i4
	ldc.i4	80
	bne.un	'L_1956'
	ldloc	'magic6/5'
	conv.i4
	ldc.i4	144
	beq	'L_1911'
L_1956:
L_1914:
// Line 2968:	

// Line 2969:	      if (magic1 != 0x31 || magic2 != 0x41 ||

// Line 2970:	          magic3 != 0x59 || magic4 != 0x26 ||

// Line 2971:	          magic5 != 0x53 || magic6 != 0x59) badBlockHeader();

	ldloc	'magic1/0'
	conv.i4
	ldc.i4	49
	bne.un	'L_1957'
	ldloc	'magic2/1'
	conv.i4
	ldc.i4	65
	bne.un	'L_1957'
	ldloc	'magic3/2'
	conv.i4
	ldc.i4	89
	bne.un	'L_1957'
	ldloc	'magic4/3'
	conv.i4
	ldc.i4	38
	bne.un	'L_1957'
	ldloc	'magic5/4'
	conv.i4
	ldc.i4	83
	bne.un	'L_1957'
	ldloc	'magic6/5'
	conv.i4
	ldc.i4	89
	beq	'L_1915'
L_1957:
	call	void 'badBlockHeader'()
L_1915:
// Line 2972:	

// Line 2973:	      storedBlockCRC = bsGetUInt32 ();

	call	int32 'bsGetUInt32'()
	conv.u4
	stloc	'storedBlockCRC/6'
// Line 2974:	

// Line 2975:	      if (bsR(1) == 1)

	ldc.i4	1
	call	uint32 'bsR'(int32)
	ldc.i4	1
	bne.un	'L_1916'
// Line 2976:	         blockRandomised = True; else

	ldc.i4	1
	stsfld	uint8 'blockRandomised'

	br	'L_1917'
L_1916:
// Line 2977:	         blockRandomised = False;

	ldc.i4	0
	stsfld	uint8 'blockRandomised'

L_1917:
// Line 2978:	

// Line 2979:	      currBlockNo++;

	ldloc	'currBlockNo/10'
	ldc.i4	1
	add
	stloc	'currBlockNo/10'
// Line 2980:	      if (verbosity >= 2)

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1918'
// Line 2981:	         fprintf ( stderr, "[%d: huff+mtf ", currBlockNo );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_41'

	ldloc	'currBlockNo/10'
	call	vararg int32 'fprintf'(void*, void*, ..., int32)
	pop
L_1918:
// Line 2982:	      getAndMoveToFrontDecode ();

	call	void 'getAndMoveToFrontDecode'()
// Line 2983:	      ERROR_IF_NOT_ZERO ( ferror(zStream) );

	ldarg	'zStream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1920'
	call	void 'ioError'()
L_1920:
// Line 2984:	

// Line 2985:	      initialiseCRC();

	call	void 'initialiseCRC'()
// Line 2986:	      if (verbosity >= 2) fprintf ( stderr, "rt+rld" );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1922'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_42'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1922:
// Line 2987:	      if (smallMode)

	ldsfld	uint8 'smallMode'

	ldc.i4	0
	beq	'L_1923'
// Line 2988:	         undoReversibleTransformation_small ( stream );

	ldarg	'stream'
	call	void 'undoReversibleTransformation_small'(void*)
	br	'L_1924'
L_1923:
// Line 2989:	         else

// Line 2990:	         undoReversibleTransformation_fast  ( stream );

	ldarg	'stream'
	call	void 'undoReversibleTransformation_fast'(void*)
L_1924:
// Line 2991:	

// Line 2992:	      ERROR_IF_NOT_ZERO ( ferror(stream) );

	ldarg	'stream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1926'
	call	void 'ioError'()
L_1926:
// Line 2993:	

// Line 2994:	      computedBlockCRC = getFinalCRC();

	call	uint32 'getFinalCRC'()
	stloc	'computedBlockCRC/8'
// Line 2995:	      if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_1928'
// Line 2996:	         fprintf ( stderr, " {0x%x, 0x%x}", storedBlockCRC, computedBlockCRC );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_43'

	ldloc	'storedBlockCRC/6'
	ldloc	'computedBlockCRC/8'
	call	vararg int32 'fprintf'(void*, void*, ..., uint32, uint32)
	pop
L_1928:
// Line 2997:	      if (verbosity >= 2) fprintf ( stderr, "] " );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1929'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_44'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1929:
// Line 2998:	

// Line 2999:	       

// Line 3000:	      if (storedBlockCRC != computedBlockCRC)

	ldloc	'storedBlockCRC/6'
	ldloc	'computedBlockCRC/8'
	beq	'L_1930'
// Line 3001:	         crcError ( storedBlockCRC, computedBlockCRC );

	ldloc	'storedBlockCRC/6'
	ldloc	'computedBlockCRC/8'
	call	void 'crcError'(uint32, uint32)
L_1930:
// Line 3002:	

// Line 3003:	      computedCombinedCRC = (computedCombinedCRC << 1) | (computedCombinedCRC >> 31);

	ldloc	'computedCombinedCRC/9'
	ldc.i4	1
	shl
	ldloc	'computedCombinedCRC/9'
	ldc.i4	31
	shr.un
	or
	stloc	'computedCombinedCRC/9'
// Line 3004:	      computedCombinedCRC ^= computedBlockCRC;

	ldloc	'computedCombinedCRC/9'
	ldloc	'computedBlockCRC/8'
	xor
	stloc	'computedCombinedCRC/9'
L_1912:
// Line 2957:	

// Line 2958:	   while (True) {

	br	'L_1910'
L_1911:
// Line 3005:	   };

// Line 3006:	

// Line 3007:	   if (verbosity >= 2) fprintf ( stderr, "\n    " );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1932'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_40'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1932:
// Line 3008:	

// Line 3009:	   storedCombinedCRC  = bsGetUInt32 ();

	call	int32 'bsGetUInt32'()
	conv.u4
	stloc	'storedCombinedCRC/7'
// Line 3010:	   if (verbosity >= 2)

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1933'
// Line 3011:	      fprintf ( stderr,

// Line 3012:	                "combined CRCs: stored = 0x%x, computed = 0x%x\n    ",

// Line 3013:	                storedCombinedCRC, computedCombinedCRC );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_45'

	ldloc	'storedCombinedCRC/7'
	ldloc	'computedCombinedCRC/9'
	call	vararg int32 'fprintf'(void*, void*, ..., uint32, uint32)
	pop
L_1933:
// Line 3014:	   if (storedCombinedCRC != computedCombinedCRC)

	ldloc	'storedCombinedCRC/7'
	ldloc	'computedCombinedCRC/9'
	beq	'L_1934'
// Line 3015:	      crcError ( storedCombinedCRC, computedCombinedCRC );

	ldloc	'storedCombinedCRC/7'
	ldloc	'computedCombinedCRC/9'
	call	void 'crcError'(uint32, uint32)
L_1934:
// Line 3016:	

// Line 3017:	

// Line 3018:	   bsFinishedWithStream ();

	call	void 'bsFinishedWithStream'()
// Line 3019:	   ERROR_IF_NOT_ZERO ( ferror(zStream) );

	ldarg	'zStream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1936'
	call	void 'ioError'()
L_1936:
// Line 3020:	   retVal = fclose ( zStream );

	ldarg	'zStream'
	call	int32 'fclose'(void*)
	stloc	'retVal/11'
// Line 3021:	   ERROR_IF_EOF ( retVal );

	ldloc	'retVal/11'
	ldc.i4	-1
	bne.un	'L_1939'
	call	void 'ioError'()
L_1939:
// Line 3022:	

// Line 3023:	   ERROR_IF_NOT_ZERO ( ferror(stream) );

	ldarg	'stream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1942'
	call	void 'ioError'()
L_1942:
// Line 3024:	   retVal = fflush ( stream );

	ldarg	'stream'
	call	int32 'fflush'(void*)
	stloc	'retVal/11'
// Line 3025:	   ERROR_IF_NOT_ZERO ( retVal );

	ldloc	'retVal/11'
	ldc.i4	0
	beq	'L_1945'
	call	void 'ioError'()
L_1945:
// Line 3026:	   if (stream != stdout) {

	ldarg	'stream'
	ldsfld	void* '__stdout'

	beq	'L_1947'
// Line 3027:	      retVal = fclose ( stream );

	ldarg	'stream'
	call	int32 'fclose'(void*)
	stloc	'retVal/11'
// Line 3028:	      ERROR_IF_EOF ( retVal );

	ldloc	'retVal/11'
	ldc.i4	-1
	bne.un	'L_1950'
	call	void 'ioError'()
L_1950:
L_1947:
// Line 3029:	   }

// Line 3030:	   return True;

	ldc.i4	1
	conv.u1
	conv.i4
// Line 3031:	}

L_1879:
	ret

}
 .method public hidebysig static uint8 'testStream'(void* 'zStream' ) cil managed
{
// Line 3035:	Bool testStream ( FILE *zStream )

// Line 3036:	{

	.locals
	(
		[0] uint8 'magic1/0',
		[1] uint8 'magic2/1',
		[2] uint8 'magic3/2',
		[3] uint8 'magic4/3',
		[4] uint8 'magic5/4',
		[5] uint8 'magic6/5',
		[6] uint32 'storedBlockCRC/6',
		[7] uint32 'storedCombinedCRC/7',
		[8] uint32 'computedBlockCRC/8',
		[9] uint32 'computedCombinedCRC/9',
		[10] int32 'currBlockNo/10',
		[11] int32 'retVal/11',
		[12] int32 'retVal/12'
	)
	.maxstack	7
L_1961:
// Line 3042:	   IntNative  retVal;

// Line 3043:	

// Line 3044:	

// Line 3045:	   PRINTLOC;

// Line 3046:	

// Line 3047:	   SET_BINARY_MODE(zStream);

L_1964:
	ldloca	'retVal/12'
	ldarg	'zStream'
	call	int32 '_fileno'(void*)
	ldc.i4	32768
	call	int32 '_setmode'(int32, int32)
	stind.i4
	ldloc	'retVal/12'
	ldc.i4	-1
	bne.un	'L_1969'
	call	void 'ioError'()
L_1969:
L_1966:
L_1965:
// Line 3048:	   ERROR_IF_NOT_ZERO ( ferror(zStream) );

	ldarg	'zStream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1973'
	call	void 'ioError'()
L_1973:
// Line 3049:	

// Line 3050:	   bsSetStream ( zStream, False );

	ldarg	'zStream'
	ldc.i4	0
	conv.u1
	call	void 'bsSetStream'(void*, uint8)
// Line 3051:	

// Line 3052:	   magic1 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic1/0'
// Line 3053:	   magic2 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic2/1'
// Line 3054:	   magic3 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic3/2'
// Line 3055:	   magic4 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic4/3'
// Line 3056:	   if (magic1 != 'B' ||

// Line 3057:	       magic2 != 'Z' ||

// Line 3058:	       magic3 != 'h' ||

// Line 3059:	       magic4 < '1'  ||

// Line 3060:	       magic4 > '9') {

	ldloc	'magic1/0'
	conv.i4
	ldc.i4	66
	bne.un	'L_2013'
	ldloc	'magic2/1'
	conv.i4
	ldc.i4	90
	bne.un	'L_2013'
	ldloc	'magic3/2'
	conv.i4
	ldc.i4	104
	bne.un	'L_2013'
	ldloc	'magic4/3'
	conv.i4
	ldc.i4	49
	blt	'L_2013'
	ldloc	'magic4/3'
	conv.i4
	ldc.i4	57
	ble	'L_1975'
L_2013:
// Line 3061:	     bsFinishedWithStream();

	call	void 'bsFinishedWithStream'()
// Line 3062:	     fclose ( zStream );

	ldarg	'zStream'
	call	int32 'fclose'(void*)
	pop
// Line 3063:	     fprintf ( stderr, "\n%s: bad magic number (ie, not created by bzip2)\n",

// Line 3064:	                       inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_46'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3065:	     return False;

	ldc.i4	0
	conv.u1
	conv.i4
	br	'L_1962'
L_1975:
// Line 3066:	   }

// Line 3067:	

// Line 3068:	   smallMode = True;

	ldc.i4	1
	stsfld	uint8 'smallMode'

// Line 3069:	   setDecompressStructureSizes ( magic4 - '0' );

	ldloc	'magic4/3'
	conv.i4
	ldc.i4	48
	sub
	call	void 'setDecompressStructureSizes'(int32)
// Line 3070:	   computedCombinedCRC = 0;

	ldc.i4	0
	stloc	'computedCombinedCRC/9'
// Line 3071:	

// Line 3072:	   if (verbosity >= 2) fprintf ( stderr, "\n" );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1978'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_10'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1978:
// Line 3073:	   currBlockNo = 0;

	ldc.i4	0
	stloc	'currBlockNo/10'
L_1979:
// Line 3076:	      magic1 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic1/0'
// Line 3077:	      magic2 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic2/1'
// Line 3078:	      magic3 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic3/2'
// Line 3079:	      magic4 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic4/3'
// Line 3080:	      magic5 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic5/4'
// Line 3081:	      magic6 = bsGetUChar ();

	call	uint8 'bsGetUChar'()
	stloc	'magic6/5'
// Line 3082:	      if (magic1 == 0x17 && magic2 == 0x72 &&

// Line 3083:	          magic3 == 0x45 && magic4 == 0x38 &&

// Line 3084:	          magic5 == 0x50 && magic6 == 0x90) break;

	ldloc	'magic1/0'
	conv.i4
	ldc.i4	23
	bne.un	'L_2014'
	ldloc	'magic2/1'
	conv.i4
	ldc.i4	114
	bne.un	'L_2014'
	ldloc	'magic3/2'
	conv.i4
	ldc.i4	69
	bne.un	'L_2014'
	ldloc	'magic4/3'
	conv.i4
	ldc.i4	56
	bne.un	'L_2014'
	ldloc	'magic5/4'
	conv.i4
	ldc.i4	80
	bne.un	'L_2014'
	ldloc	'magic6/5'
	conv.i4
	ldc.i4	144
	beq	'L_1980'
L_2014:
L_1983:
// Line 3085:	

// Line 3086:	      currBlockNo++;

	ldloc	'currBlockNo/10'
	ldc.i4	1
	add
	stloc	'currBlockNo/10'
// Line 3087:	      if (magic1 != 0x31 || magic2 != 0x41 ||

// Line 3088:	          magic3 != 0x59 || magic4 != 0x26 ||

// Line 3089:	          magic5 != 0x53 || magic6 != 0x59) {

	ldloc	'magic1/0'
	conv.i4
	ldc.i4	49
	bne.un	'L_2015'
	ldloc	'magic2/1'
	conv.i4
	ldc.i4	65
	bne.un	'L_2015'
	ldloc	'magic3/2'
	conv.i4
	ldc.i4	89
	bne.un	'L_2015'
	ldloc	'magic4/3'
	conv.i4
	ldc.i4	38
	bne.un	'L_2015'
	ldloc	'magic5/4'
	conv.i4
	ldc.i4	83
	bne.un	'L_2015'
	ldloc	'magic6/5'
	conv.i4
	ldc.i4	89
	beq	'L_1984'
L_2015:
// Line 3090:	         bsFinishedWithStream();

	call	void 'bsFinishedWithStream'()
// Line 3091:	         fclose ( zStream );

	ldarg	'zStream'
	call	int32 'fclose'(void*)
	pop
// Line 3092:	         fprintf ( stderr,

// Line 3093:	                   "\n%s, block %d: bad header (not == 0x314159265359)\n",

// Line 3094:	                   inName, currBlockNo );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_47'

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldloc	'currBlockNo/10'
	call	vararg int32 'fprintf'(void*, void*, ..., void*, int32)
	pop
// Line 3095:	         return False;

	ldc.i4	0
	conv.u1
	conv.i4
	br	'L_1962'
L_1984:
// Line 3096:	      }

// Line 3097:	      storedBlockCRC = bsGetUInt32 ();

	call	int32 'bsGetUInt32'()
	conv.u4
	stloc	'storedBlockCRC/6'
// Line 3098:	

// Line 3099:	      if (bsR(1) == 1)

	ldc.i4	1
	call	uint32 'bsR'(int32)
	ldc.i4	1
	bne.un	'L_1987'
// Line 3100:	         blockRandomised = True; else

	ldc.i4	1
	stsfld	uint8 'blockRandomised'

	br	'L_1988'
L_1987:
// Line 3101:	         blockRandomised = False;

	ldc.i4	0
	stsfld	uint8 'blockRandomised'

L_1988:
// Line 3102:	

// Line 3103:	      if (verbosity >= 2)

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1989'
// Line 3104:	         fprintf ( stderr, "    block [%d: huff+mtf ", currBlockNo );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_48'

	ldloc	'currBlockNo/10'
	call	vararg int32 'fprintf'(void*, void*, ..., int32)
	pop
L_1989:
// Line 3105:	      getAndMoveToFrontDecode ();

	call	void 'getAndMoveToFrontDecode'()
// Line 3106:	      ERROR_IF_NOT_ZERO ( ferror(zStream) );

	ldarg	'zStream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_1991'
	call	void 'ioError'()
L_1991:
// Line 3107:	

// Line 3108:	      initialiseCRC();

	call	void 'initialiseCRC'()
// Line 3109:	      if (verbosity >= 2) fprintf ( stderr, "rt+rld" );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1993'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_42'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1993:
// Line 3110:	      undoReversibleTransformation_small ( NULL );

	ldc.i4	0
	conv.u4
	call	void 'undoReversibleTransformation_small'(void*)
// Line 3111:	

// Line 3112:	      computedBlockCRC = getFinalCRC();

	call	uint32 'getFinalCRC'()
	stloc	'computedBlockCRC/8'
// Line 3113:	      if (verbosity >= 3)

	ldsfld	int32 'verbosity'

	ldc.i4	3
	blt	'L_1994'
// Line 3114:	         fprintf ( stderr, " {0x%x, 0x%x}", storedBlockCRC, computedBlockCRC );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_43'

	ldloc	'storedBlockCRC/6'
	ldloc	'computedBlockCRC/8'
	call	vararg int32 'fprintf'(void*, void*, ..., uint32, uint32)
	pop
L_1994:
// Line 3115:	      if (verbosity >= 2) fprintf ( stderr, "] " );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1995'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_44'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1995:
// Line 3116:	

// Line 3117:	      if (storedBlockCRC != computedBlockCRC) {

	ldloc	'storedBlockCRC/6'
	ldloc	'computedBlockCRC/8'
	beq	'L_1996'
// Line 3118:	         bsFinishedWithStream();

	call	void 'bsFinishedWithStream'()
// Line 3119:	         fclose ( zStream );

	ldarg	'zStream'
	call	int32 'fclose'(void*)
	pop
// Line 3120:	         fprintf ( stderr, "\n%s, block %d: computed CRC does not match stored one\n",

// Line 3121:	                           inName, currBlockNo );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_49'

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldloc	'currBlockNo/10'
	call	vararg int32 'fprintf'(void*, void*, ..., void*, int32)
	pop
// Line 3122:	         return False;

	ldc.i4	0
	conv.u1
	conv.i4
	br	'L_1962'
L_1996:
// Line 3123:	      }

// Line 3124:	

// Line 3125:	      if (verbosity >= 2) fprintf ( stderr, "ok\n" );

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_1999'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_50'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_1999:
// Line 3126:	      computedCombinedCRC = (computedCombinedCRC << 1) | (computedCombinedCRC >> 31);

	ldloc	'computedCombinedCRC/9'
	ldc.i4	1
	shl
	ldloc	'computedCombinedCRC/9'
	ldc.i4	31
	shr.un
	or
	stloc	'computedCombinedCRC/9'
// Line 3127:	      computedCombinedCRC ^= computedBlockCRC;

	ldloc	'computedCombinedCRC/9'
	ldloc	'computedBlockCRC/8'
	xor
	stloc	'computedCombinedCRC/9'
L_1981:
// Line 3074:	

// Line 3075:	   while (True) {

	br	'L_1979'
L_1980:
// Line 3128:	   };

// Line 3129:	

// Line 3130:	   storedCombinedCRC  = bsGetUInt32 ();

	call	int32 'bsGetUInt32'()
	conv.u4
	stloc	'storedCombinedCRC/7'
// Line 3131:	   if (verbosity >= 2)

	ldsfld	int32 'verbosity'

	ldc.i4	2
	blt	'L_2001'
// Line 3132:	      fprintf ( stderr,

// Line 3133:	                "    combined CRCs: stored = 0x%x, computed = 0x%x\n    ",

// Line 3134:	                storedCombinedCRC, computedCombinedCRC );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_51'

	ldloc	'storedCombinedCRC/7'
	ldloc	'computedCombinedCRC/9'
	call	vararg int32 'fprintf'(void*, void*, ..., uint32, uint32)
	pop
L_2001:
// Line 3135:	   if (storedCombinedCRC != computedCombinedCRC) {

	ldloc	'storedCombinedCRC/7'
	ldloc	'computedCombinedCRC/9'
	beq	'L_2002'
// Line 3136:	      bsFinishedWithStream();

	call	void 'bsFinishedWithStream'()
// Line 3137:	      fclose ( zStream );

	ldarg	'zStream'
	call	int32 'fclose'(void*)
	pop
// Line 3138:	      fprintf ( stderr, "\n%s: computed CRC does not match stored one\n",

// Line 3139:	                        inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_52'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3140:	      return False;

	ldc.i4	0
	conv.u1
	conv.i4
	br	'L_1962'
L_2002:
// Line 3141:	   }

// Line 3142:	

// Line 3143:	   bsFinishedWithStream ();

	call	void 'bsFinishedWithStream'()
// Line 3144:	   ERROR_IF_NOT_ZERO ( ferror(zStream) );

	ldarg	'zStream'
	call	int32 'ferror'(void*)
	ldc.i4	0
	beq	'L_2006'
	call	void 'ioError'()
L_2006:
// Line 3145:	   retVal = fclose ( zStream );

	ldarg	'zStream'
	call	int32 'fclose'(void*)
	stloc	'retVal/11'
// Line 3146:	   ERROR_IF_EOF ( retVal );

	ldloc	'retVal/11'
	ldc.i4	-1
	bne.un	'L_2009'
	call	void 'ioError'()
L_2009:
// Line 3147:	   return True;

	ldc.i4	1
	conv.u1
	conv.i4
// Line 3148:	}

L_1962:
	ret

}
 .method public hidebysig static void 'cadvise'() cil managed
{
// Line 3157:	void cadvise ( void )

// Line 3158:	{

	.maxstack	2
L_2019:
// Line 3159:	   fprintf (

// Line 3160:	      stderr,

// Line 3161:	      "\nIt is possible that the compressed file(s) have become corrupted.\n"

// Line 3162:	        "You can use the -tvv option to test integrity of such files.\n\n"

// Line 3163:	        "You can use the `bzip2recover' program to *attempt* to recover\n"

// Line 3164:	        "data from undamaged sections of corrupted files.\n\n"

// Line 3165:	    );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_53'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
// Line 3166:	}

L_2020:
	ret

}
 .method public hidebysig static void 'showFileNames'() cil managed
{
// Line 3170:	void showFileNames ( void )

// Line 3171:	{

	.maxstack	6
L_2027:
// Line 3172:	   fprintf (

// Line 3173:	      stderr,

// Line 3174:	      "\tInput file = %s, output file = %s\n",

// Line 3175:	      inName==NULL  ? "(null)" : inName,

// Line 3176:	      outName==NULL ? "(null)" : outName

// Line 3177:	   );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_54'

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldc.i4	0
	bne.un	'L_2032'
	ldsflda	valuetype 'int8[]' 'L_55'

	br	'L_2033'
L_2032:
	ldsflda	valuetype 'int8[1024]' 'inName'

L_2033:
	ldsflda	valuetype 'int8[1024]' 'outName'

	ldc.i4	0
	bne.un	'L_2034'
	ldsflda	valuetype 'int8[]' 'L_55'

	br	'L_2035'
L_2034:
	ldsflda	valuetype 'int8[1024]' 'outName'

L_2035:
	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3178:	}

L_2028:
	ret

}
 .method public hidebysig static void 'cleanUpAndFail'(int32 'ec' ) cil managed
{
// Line 3182:	void cleanUpAndFail ( Int32 ec )

// Line 3183:	{

	.locals
	(
		[0] int32 'retVal/0'
	)
	.maxstack	7
L_2039:
// Line 3184:	   IntNative retVal;

// Line 3185:	

// Line 3186:	

// Line 3187:	   PRINTLOC;

// Line 3188:	

// Line 3189:	   if ( srcMode == SM_F2F && opMode != OM_TEST ) {

	ldsfld	int32 'srcMode'

	ldc.i4	3
	bne.un	'L_2042'
	ldsfld	int32 'opMode'

	ldc.i4	3
	beq	'L_2042'
// Line 3190:	      fprintf ( stderr, "%s: Deleting output file %s, if it exists.\n",

// Line 3191:	                progName,

// Line 3192:	                outName==NULL ? "(null)" : outName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_56'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldc.i4	0
	bne.un	'L_2052'
	ldsflda	valuetype 'int8[]' 'L_55'

	br	'L_2053'
L_2052:
	ldsflda	valuetype 'int8[1024]' 'outName'

L_2053:
	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3193:	      if (outputHandleJustInCase != NULL)

	ldsfld	void* 'outputHandleJustInCase'

	ldc.i4	0
	beq	'L_2044'
// Line 3194:	         fclose ( outputHandleJustInCase );

	ldsfld	void* 'outputHandleJustInCase'

	call	int32 'fclose'(void*)
	pop
L_2044:
// Line 3195:	      retVal = remove ( outName );

	ldsflda	valuetype 'int8[1024]' 'outName'

	call	int32 'remove'(void*)
	stloc	'retVal/0'
// Line 3196:	      if (retVal != 0)

	ldloc	'retVal/0'
	ldc.i4	0
	beq	'L_2045'
// Line 3197:	         fprintf ( stderr,

// Line 3198:	                   "%s: WARNING: deletion of output file (apparently) failed.\n",

// Line 3199:	                   progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_57'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
L_2045:
L_2042:
// Line 3200:	   }

// Line 3201:	   if (numFileNames > 0 && numFilesProcessed < numFileNames) {

	ldsfld	int32 'numFileNames'

	ldc.i4	0
	ble	'L_2047'
	ldsfld	int32 'numFilesProcessed'

	ldsfld	int32 'numFileNames'

	bge	'L_2047'
// Line 3202:	      fprintf ( stderr,

// Line 3203:	                "%s: WARNING: some files have not been processed:\n"

// Line 3204:	                "\t%d specified on command line, %d not processed yet.\n\n",

// Line 3205:	                progName, numFileNames,

// Line 3206:	                          numFileNames - numFilesProcessed );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_58'

	ldsfld	void* 'progName'

	ldsfld	int32 'numFileNames'

	ldsfld	int32 'numFileNames'

	ldsfld	int32 'numFilesProcessed'

	sub
	call	vararg int32 'fprintf'(void*, void*, ..., void*, int32, int32)
	pop
L_2047:
// Line 3207:	   }

// Line 3208:	   exit ( ec );

	ldarg	'ec'
	call	void 'exit'(int32)
// Line 3209:	}

L_2040:
	ret

}
 .method public hidebysig static void 'panic'(void* 's' ) cil managed
{
// Line 3213:	void panic ( Char* s )

// Line 3214:	{

	.maxstack	4
L_2057:
// Line 3215:	   fprintf ( stderr,

// Line 3216:	             "\n%s: PANIC -- internal consistency error:\n"

// Line 3217:	             "\t%s\n"

// Line 3218:	             "\tThis is a BUG.  Please report it to me at:\n"

// Line 3219:	             "\tjseward@acm.org\n",

// Line 3220:	             progName, s );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_59'

	ldsfld	void* 'progName'

	ldarg	's'
	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3221:	   showFileNames();

	call	void 'showFileNames'()
// Line 3222:	   cleanUpAndFail( 3 );

	ldc.i4	3
	call	void 'cleanUpAndFail'(int32)
// Line 3223:	}

L_2058:
	ret

}
 .method public hidebysig static void 'badBGLengths'() cil managed
{
// Line 3227:	void badBGLengths ( void )

// Line 3228:	{

	.maxstack	3
L_2065:
// Line 3229:	   fprintf ( stderr,

// Line 3230:	             "\n%s: error when reading background model code lengths,\n"

// Line 3231:	             "\twhich probably means the compressed file is corrupted.\n",

// Line 3232:	             progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_60'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3233:	   showFileNames();

	call	void 'showFileNames'()
// Line 3234:	   cadvise();

	call	void 'cadvise'()
// Line 3235:	   cleanUpAndFail( 2 );

	ldc.i4	2
	call	void 'cleanUpAndFail'(int32)
// Line 3236:	}

L_2066:
	ret

}
 .method public hidebysig static void 'crcError'(uint32 'crcStored' , uint32 'crcComputed' ) cil managed
{
// Line 3240:	void crcError ( UInt32 crcStored, UInt32 crcComputed )

// Line 3241:	{

	.maxstack	5
L_2073:
// Line 3242:	   fprintf ( stderr,

// Line 3243:	             "\n%s: Data integrity error when decompressing.\n"

// Line 3244:	             "\tStored CRC = 0x%x, computed CRC = 0x%x\n",

// Line 3245:	             progName, crcStored, crcComputed );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_61'

	ldsfld	void* 'progName'

	ldarg	'crcStored'
	ldarg	'crcComputed'
	call	vararg int32 'fprintf'(void*, void*, ..., void*, uint32, uint32)
	pop
// Line 3246:	   showFileNames();

	call	void 'showFileNames'()
// Line 3247:	   cadvise();

	call	void 'cadvise'()
// Line 3248:	   cleanUpAndFail( 2 );

	ldc.i4	2
	call	void 'cleanUpAndFail'(int32)
// Line 3249:	}

L_2074:
	ret

}
 .method public hidebysig static void 'compressedStreamEOF'() cil managed
{
// Line 3253:	void compressedStreamEOF ( void )

// Line 3254:	{

	.maxstack	3
L_2081:
// Line 3255:	   fprintf ( stderr,

// Line 3256:	             "\n%s: Compressed file ends unexpectedly;\n\t"

// Line 3257:	             "perhaps it is corrupted?  *Possible* reason follows.\n",

// Line 3258:	             progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_62'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3259:	   perror ( progName );

	ldsfld	void* 'progName'

	call	void 'perror'(void*)
// Line 3260:	   showFileNames();

	call	void 'showFileNames'()
// Line 3261:	   cadvise();

	call	void 'cadvise'()
// Line 3262:	   cleanUpAndFail( 2 );

	ldc.i4	2
	call	void 'cleanUpAndFail'(int32)
// Line 3263:	}

L_2082:
	ret

}
 .method public hidebysig static void 'ioError'() cil managed
{
// Line 3267:	void ioError ( )

// Line 3268:	{

	.maxstack	3
L_2089:
// Line 3269:	   fprintf ( stderr,

// Line 3270:	             "\n%s: I/O or other error, bailing out.  Possible reason follows.\n",

// Line 3271:	             progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_63'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3272:	   perror ( progName );

	ldsfld	void* 'progName'

	call	void 'perror'(void*)
// Line 3273:	   showFileNames();

	call	void 'showFileNames'()
// Line 3274:	   cleanUpAndFail( 1 );

	ldc.i4	1
	call	void 'cleanUpAndFail'(int32)
// Line 3275:	}

L_2090:
	ret

}
 .method public hidebysig static void 'blockOverrun'() cil managed
{
// Line 3279:	void blockOverrun ()

// Line 3280:	{

	.maxstack	3
L_2097:
// Line 3281:	   fprintf ( stderr,

// Line 3282:	             "\n%s: block overrun during decompression,\n"

// Line 3283:	             "\twhich probably means the compressed file\n"

// Line 3284:	             "\tis corrupted.\n",

// Line 3285:	             progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_64'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3286:	   showFileNames();

	call	void 'showFileNames'()
// Line 3287:	   cadvise();

	call	void 'cadvise'()
// Line 3288:	   cleanUpAndFail( 2 );

	ldc.i4	2
	call	void 'cleanUpAndFail'(int32)
// Line 3289:	}

L_2098:
	ret

}
 .method public hidebysig static void 'badBlockHeader'() cil managed
{
// Line 3293:	void badBlockHeader ()

// Line 3294:	{

	.maxstack	3
L_2105:
// Line 3295:	   fprintf ( stderr,

// Line 3296:	             "\n%s: bad block header in the compressed file,\n"

// Line 3297:	             "\twhich probably means it is corrupted.\n",

// Line 3298:	             progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_65'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3299:	   showFileNames();

	call	void 'showFileNames'()
// Line 3300:	   cadvise();

	call	void 'cadvise'()
// Line 3301:	   cleanUpAndFail( 2 );

	ldc.i4	2
	call	void 'cleanUpAndFail'(int32)
// Line 3302:	}

L_2106:
	ret

}
 .method public hidebysig static void 'bitStreamEOF'() cil managed
{
// Line 3306:	void bitStreamEOF ()

// Line 3307:	{

	.maxstack	3
L_2113:
// Line 3308:	   fprintf ( stderr,

// Line 3309:	             "\n%s: read past the end of compressed data,\n"

// Line 3310:	             "\twhich probably means it is corrupted.\n",

// Line 3311:	             progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_66'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3312:	   showFileNames();

	call	void 'showFileNames'()
// Line 3313:	   cadvise();

	call	void 'cadvise'()
// Line 3314:	   cleanUpAndFail( 2 );

	ldc.i4	2
	call	void 'cleanUpAndFail'(int32)
// Line 3315:	}

L_2114:
	ret

}
 .method public hidebysig static void 'mySignalCatcher'(int32 'n' ) cil managed
{
// Line 3319:	void mySignalCatcher ( IntNative n )

// Line 3320:	{

	.maxstack	3
L_2121:
// Line 3321:	   fprintf ( stderr,

// Line 3322:	             "\n%s: Control-C (or similar) caught, quitting.\n",

// Line 3323:	             progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_67'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3324:	   cleanUpAndFail(1);

	ldc.i4	1
	call	void 'cleanUpAndFail'(int32)
// Line 3325:	}

L_2122:
	ret

}
 .method public hidebysig static void 'mySIGSEGVorSIGBUScatcher'(int32 'n' ) cil managed
{
// Line 3329:	void mySIGSEGVorSIGBUScatcher ( IntNative n )

// Line 3330:	{

	.maxstack	3
L_2129:
// Line 3331:	   if (opMode == OM_Z)

	ldsfld	int32 'opMode'

	ldc.i4	1
	bne.un	'L_2132'
// Line 3332:	      fprintf ( stderr,

// Line 3333:	                "\n%s: Caught a SIGSEGV or SIGBUS whilst compressing,\n"

// Line 3334:	                "\twhich probably indicates a bug in bzip2.  Please\n"

// Line 3335:	                "\treport it to me at: jseward@acm.org\n",

// Line 3336:	                progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_68'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
	br	'L_2133'
L_2132:
// Line 3337:	      else

// Line 3338:	      fprintf ( stderr,

// Line 3339:	                "\n%s: Caught a SIGSEGV or SIGBUS whilst decompressing,\n"

// Line 3340:	                "\twhich probably indicates that the compressed data\n"

// Line 3341:	                "\tis corrupted.\n",

// Line 3342:	                progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_69'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
L_2133:
// Line 3343:	

// Line 3344:	   showFileNames();

	call	void 'showFileNames'()
// Line 3345:	   if (opMode == OM_Z)

	ldsfld	int32 'opMode'

	ldc.i4	1
	bne.un	'L_2134'
// Line 3346:	      cleanUpAndFail( 3 ); else

	ldc.i4	3
	call	void 'cleanUpAndFail'(int32)
	br	'L_2135'
L_2134:
// Line 3347:	      { cadvise(); cleanUpAndFail( 2 ); }

	call	void 'cadvise'()
	ldc.i4	2
	call	void 'cleanUpAndFail'(int32)
L_2135:
// Line 3348:	}

L_2130:
	ret

}
 .method public hidebysig static void 'uncompressOutOfMemory'(int32 'draw' , int32 'blockSize' ) cil managed
{
// Line 3352:	void uncompressOutOfMemory ( Int32 draw, Int32 blockSize )

// Line 3353:	{

	.maxstack	5
L_2143:
// Line 3354:	   fprintf ( stderr,

// Line 3355:	             "\n%s: Can't allocate enough memory for decompression.\n"

// Line 3356:	             "\tRequested %d bytes for a block size of %d.\n"

// Line 3357:	             "\tTry selecting space-economic decompress (with flag -s)\n"

// Line 3358:	             "\tand failing that, find a machine with more memory.\n",

// Line 3359:	             progName, draw, blockSize );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_70'

	ldsfld	void* 'progName'

	ldarg	'draw'
	ldarg	'blockSize'
	call	vararg int32 'fprintf'(void*, void*, ..., void*, int32, int32)
	pop
// Line 3360:	   showFileNames();

	call	void 'showFileNames'()
// Line 3361:	   cleanUpAndFail(1);

	ldc.i4	1
	call	void 'cleanUpAndFail'(int32)
// Line 3362:	}

L_2144:
	ret

}
 .method public hidebysig static void 'compressOutOfMemory'(int32 'draw' , int32 'blockSize' ) cil managed
{
// Line 3366:	void compressOutOfMemory ( Int32 draw, Int32 blockSize )

// Line 3367:	{

	.maxstack	5
L_2151:
// Line 3368:	   fprintf ( stderr,

// Line 3369:	             "\n%s: Can't allocate enough memory for compression.\n"

// Line 3370:	             "\tRequested %d bytes for a block size of %d.\n"

// Line 3371:	             "\tTry selecting a small block size (with flag -s).\n",

// Line 3372:	             progName, draw, blockSize );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_71'

	ldsfld	void* 'progName'

	ldarg	'draw'
	ldarg	'blockSize'
	call	vararg int32 'fprintf'(void*, void*, ..., void*, int32, int32)
	pop
// Line 3373:	   showFileNames();

	call	void 'showFileNames'()
// Line 3374:	   cleanUpAndFail(1);

	ldc.i4	1
	call	void 'cleanUpAndFail'(int32)
// Line 3375:	}

L_2152:
	ret

}
 .method public hidebysig static void 'pad'(void* 's' ) cil managed
{
// Line 3383:	void pad ( Char *s )

// Line 3384:	{

	.locals
	(
		[0] int32 'i/0'
	)
	.maxstack	3
L_2159:
// Line 3385:	   Int32 i;

// Line 3386:	

// Line 3387:	   PRINTLOC;

// Line 3388:	

// Line 3389:	   if ( (Int32)strlen(s) >= longestFileName ) return;

	ldarg	's'
	call	uint32 'strlen'(void*)
	conv.i4
	ldsfld	int32 'longestFileName'

	bge	'L_2160'
L_2162:
	ldc.i4	1
	stloc	'i/0'
	br	'L_2164'
L_2163:
// Line 3391:	      fprintf ( stderr, " " );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_72'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_2166:
	ldloc	'i/0'
	ldc.i4	1
	add
	stloc	'i/0'
// Line 3390:	   for (i = 1; i <= longestFileName - (Int32)strlen(s); i++)

L_2164:
	ldloc	'i/0'
	ldarg	's'
	call	uint32 'strlen'(void*)
	conv.i4
	neg
	ldsfld	int32 'longestFileName'

	add
	ble	'L_2163'
L_2165:
// Line 3392:	}

L_2160:
	ret

}
 .method public hidebysig static uint8 'fileExists'(void* 'name' ) cil managed
{
// Line 3396:	Bool fileExists ( Char* name )

// Line 3397:	{

	.locals
	(
		[0] void* 'tmp/0',
		[1] uint8 'exists/1'
	)
	.maxstack	4
L_2172:
// Line 3398:	   FILE *tmp   = fopen ( name, "rb" );

	ldloca	'tmp/0'
	ldarg	'name'
	ldsflda	valuetype 'int8[]' 'L_73'

	call	void* 'fopen'(void*, void*)
	stind.i4
// Line 3399:	   Bool exists = (tmp != NULL);

	ldloca	'exists/1'
	ldloc	'tmp/0'
	ldc.i4	0
	ceq
	ldc.i4.1
	xor
	conv.u1
	stind.i1
// Line 3400:	   if (tmp != NULL) fclose ( tmp );

	ldloc	'tmp/0'
	ldc.i4	0
	beq	'L_2175'
	ldloc	'tmp/0'
	call	int32 'fclose'(void*)
	pop
L_2175:
// Line 3401:	   return exists;

	ldloc	'exists/1'
	conv.i4
// Line 3402:	}

L_2173:
	ret

}
 .method public hidebysig static uint8 'notABogStandardFile'(void* 'name' ) cil managed
{
// Line 3409:	Bool notABogStandardFile ( Char* name )

// Line 3410:	{

	.locals
	(
		[0] int32 'i/0',
		[1] valuetype '_stat' 'statBuf/1'
	)
	.maxstack	3
L_2181:
// Line 3412:	   struct MY_STAT statBuf;

// Line 3413:	

// Line 3414:	   i = MY_LSTAT ( name, &statBuf );

	ldarg	'name'
	ldloca	'statBuf/1'
	call	int32 '_stat'(void*, void*)
	stloc	'i/0'
// Line 3415:	   if (i != 0) return True;

	ldloc	'i/0'
	ldc.i4	0
	beq	'L_2184'
	ldc.i4	1
	conv.u1
	conv.i4
	br	'L_2182'
L_2184:
// Line 3416:	   if (MY_S_IFREG(statBuf.st_mode)) return False;

	ldloca	'statBuf/1'
	ldc.i4	6
	add
	ldind.i2
	conv.i4
	ldc.i4	32768
	and
	ldc.i4	0
	beq	'L_2185'
	ldc.i4	0
	conv.u1
	conv.i4
	br	'L_2182'
L_2185:
// Line 3417:	   return True;

	ldc.i4	1
	conv.u1
	conv.i4
// Line 3418:	}

L_2182:
	ret

}
 .method public hidebysig static void 'copyDateAndPermissions'(void* 'srcName' , void* 'dstName' ) cil managed
{
// Line 3422:	void copyDateAndPermissions ( Char *srcName, Char *dstName )

// Line 3423:	{

	.locals
	(
		[0] int32 'retVal/0',
		[1] valuetype '_stat' 'statBuf/1',
		[2] valuetype '_utimbuf' 'uTimBuf/2'
	)
	.maxstack	3
L_2191:
// Line 3427:	   struct utimbuf uTimBuf;

// Line 3428:	

// Line 3429:	   retVal = MY_LSTAT ( srcName, &statBuf );

	ldarg	'srcName'
	ldloca	'statBuf/1'
	call	int32 '_stat'(void*, void*)
	stloc	'retVal/0'
// Line 3430:	   ERROR_IF_NOT_ZERO ( retVal );

	ldloc	'retVal/0'
	ldc.i4	0
	beq	'L_2195'
	call	void 'ioError'()
L_2195:
// Line 3431:	   uTimBuf.actime = statBuf.st_atime;

	ldloca	'uTimBuf/2'
	ldloca	'statBuf/1'
	ldc.i4	24
	add
	ldind.i4
	stind.i4
// Line 3432:	   uTimBuf.modtime = statBuf.st_mtime;

	ldloca	'uTimBuf/2'
	ldc.i4	4
	add
	ldloca	'statBuf/1'
	ldc.i4	28
	add
	ldind.i4
	stind.i4
// Line 3433:	

// Line 3434:	   retVal = chmod ( dstName, statBuf.st_mode );

	ldarg	'dstName'
	ldloca	'statBuf/1'
	ldc.i4	6
	add
	ldind.i2
	conv.i4
	call	int32 '_chmod'(void*, int32)
	stloc	'retVal/0'
// Line 3435:	   ERROR_IF_NOT_ZERO ( retVal );

	ldloc	'retVal/0'
	ldc.i4	0
	beq	'L_2198'
	call	void 'ioError'()
L_2198:
// Line 3436:	   retVal = utime ( dstName, &uTimBuf );

	ldarg	'dstName'
	ldloca	'uTimBuf/2'
	call	int32 'utime'(void*, void*)
	stloc	'retVal/0'
// Line 3437:	   ERROR_IF_NOT_ZERO ( retVal );

	ldloc	'retVal/0'
	ldc.i4	0
	beq	'L_2201'
	call	void 'ioError'()
L_2201:
// Line 3438:	   #endif

// Line 3439:	}

L_2192:
	ret

}
 .method public hidebysig static uint8 'endsInBz2'(void* 'name' ) cil managed
{
// Line 3443:	Bool endsInBz2 ( Char* name )

// Line 3444:	{

	.locals
	(
		[0] int32 'n/0'
	)
	.maxstack	3
L_2208:
// Line 3445:	   Int32 n = strlen ( name );

	ldloca	'n/0'
	ldarg	'name'
	call	uint32 'strlen'(void*)
	conv.i4
	stind.i4
// Line 3446:	   if (n <= 4) return False;

	ldloc	'n/0'
	ldc.i4	4
	bgt	'L_2211'
	ldc.i4	0
	conv.u1
	conv.i4
	br	'L_2209'
L_2211:
// Line 3447:	   return

// Line 3448:	      (name[n-4] == '.' &&

// Line 3449:	       name[n-3] == 'b' &&

// Line 3450:	       name[n-2] == 'z' &&

// Line 3451:	       name[n-1] == '2');

	ldloc	'n/0'
	ldc.i4	4
	sub
	ldarg	'name'
	add
	ldind.i1
	conv.i4
	ldc.i4	46
	bne.un	'L_2216'
	ldloc	'n/0'
	ldc.i4	3
	sub
	ldarg	'name'
	add
	ldind.i1
	conv.i4
	ldc.i4	98
	bne.un	'L_2216'
	ldloc	'n/0'
	ldc.i4	2
	sub
	ldarg	'name'
	add
	ldind.i1
	conv.i4
	ldc.i4	122
	bne.un	'L_2216'
	ldloc	'n/0'
	ldc.i4	1
	sub
	ldarg	'name'
	add
	ldind.i1
	conv.i4
	ldc.i4	50
	beq	'L_2214'
L_2216:
	ldc.i4	0
	br	'L_2215'
L_2214:
	ldc.i4	1
L_2215:
	conv.u1
	conv.i4
// Line 3452:	}

L_2209:
	ret

}
 .method public hidebysig static uint8 'containsDubiousChars'(void* 'name' ) cil managed
{
// Line 3456:	Bool containsDubiousChars ( Char* name )

// Line 3457:	{

	.locals
	(
		[0] uint8 'cdc/0'
	)
	.maxstack	2
L_2220:
// Line 3458:	   Bool cdc = False;

	ldloca	'cdc/0'
	ldc.i4	0
	stind.i1
	br	'L_2224'
L_2223:
// Line 3460:	      if (*name == '?' || *name == '*') cdc = True;

	ldarg	'name'
	ldind.i1
	conv.i4
	ldc.i4	63
	beq	'L_2230'
	ldarg	'name'
	ldind.i1
	conv.i4
	ldc.i4	42
	bne.un	'L_2227'
L_2230:
	ldc.i4	1
	stloc	'cdc/0'
L_2227:
L_2226:
	ldarg	'name'
	ldc.i4	1
	add
	starg	'name'
// Line 3459:	   for (; *name != '\0'; name++)

L_2224:
	ldarg	'name'
	ldind.i1
	conv.i4
	ldc.i4	0
	bne.un	'L_2223'
L_2225:
// Line 3461:	   return cdc;

	ldloc	'cdc/0'
	conv.i4
// Line 3462:	}

L_2221:
	ret

}
 .method public hidebysig static void 'compress'(void* 'name' ) cil managed
{
// Line 3466:	void compress ( Char *name )

// Line 3467:	{

	.locals
	(
		[0] int32 '$anontemp5/0',
		[1] int32 '$anontemp6/1',
		[2] void* 'inStr/2',
		[3] void* 'outStr/3',
		[4] int32 'retVal/4'
	)
	.maxstack	4
L_2234:
// Line 3469:	   FILE *outStr;

// Line 3470:	

// Line 3471:	

// Line 3472:	   PRINTLOC;

// Line 3473:	

// Line 3474:	   if (name == NULL && srcMode != SM_I2O)

	ldarg	'name'
	ldc.i4	0
	bne.un	'L_2237'
	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2237'
// Line 3475:	      panic ( "compress: bad modes\n" );

	ldsflda	valuetype 'int8[]' 'L_74'

	call	void 'panic'(void*)
L_2237:
// Line 3476:	

// Line 3477:	   switch (srcMode) {

	ldsfld	int32 'srcMode'

	stloc	'$anontemp5/0'
	ldloc	'$anontemp5/0'
	ldc.i4	1
	beq	'L_2240'
	ldloc	'$anontemp5/0'
	ldc.i4	2
	beq	'L_2242'
	ldloc	'$anontemp5/0'
	ldc.i4	3
	beq	'L_2241'
	br	'L_2244'
L_2240:
// Line 3478:	      case SM_I2O: strcpy ( inName, "(stdin)" );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[]' 'L_75'

	call	void* 'strcpy'(void*, void*)
	pop
// Line 3479:	                   strcpy ( outName, "(stdout)" ); break;

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldsflda	valuetype 'int8[]' 'L_76'

	call	void* 'strcpy'(void*, void*)
	pop
	br	'L_2238'
L_2241:
// Line 3480:	      case SM_F2F: strcpy ( inName, name );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldarg	'name'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 3481:	                   strcpy ( outName, name );

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldarg	'name'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 3482:	                   strcat ( outName, ".bz2" ); break;

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldsflda	valuetype 'int8[]' 'L_77'

	call	void* 'strcat'(void*, void*)
	pop
	br	'L_2238'
L_2242:
// Line 3483:	      case SM_F2O: strcpy ( inName, name );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldarg	'name'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 3484:	                   strcpy ( outName, "(stdout)" ); break;

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldsflda	valuetype 'int8[]' 'L_76'

	call	void* 'strcpy'(void*, void*)
	pop
L_2244:
L_2238:
// Line 3485:	   }

// Line 3486:	

// Line 3487:	   if ( srcMode != SM_I2O && containsDubiousChars ( inName ) ) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2245'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'containsDubiousChars'(void*)
	ldc.i4	0
	beq	'L_2245'
// Line 3488:	      fprintf ( stderr, "%s: There are no files matching `%s'.\n",

// Line 3489:	      progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_78'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3490:	      return;

	br	'L_2235'
L_2245:
// Line 3491:	   }

// Line 3492:	   if ( srcMode != SM_I2O && !fileExists ( inName ) ) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2248'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'fileExists'(void*)
	ldc.i4	0
	bne.un	'L_2248'
// Line 3493:	      fprintf ( stderr, "%s: Input file %s doesn't exist, skipping.\n",

// Line 3494:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_79'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3495:	      return;

	br	'L_2235'
L_2248:
// Line 3496:	   }

// Line 3497:	   if ( srcMode != SM_I2O && endsInBz2 ( inName )) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2251'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'endsInBz2'(void*)
	ldc.i4	0
	beq	'L_2251'
// Line 3498:	      fprintf ( stderr, "%s: Input file name %s ends in `.bz2', skipping.\n",

// Line 3499:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_80'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3500:	      return;

	br	'L_2235'
L_2251:
// Line 3501:	   }

// Line 3502:	   if ( srcMode != SM_I2O && notABogStandardFile ( inName )) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2254'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'notABogStandardFile'(void*)
	ldc.i4	0
	beq	'L_2254'
// Line 3503:	      fprintf ( stderr, "%s: Input file %s is not a normal file, skipping.\n",

// Line 3504:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_81'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3505:	      return;

	br	'L_2235'
L_2254:
// Line 3506:	   }

// Line 3507:	   if ( srcMode == SM_F2F && fileExists ( outName ) ) {

	ldsfld	int32 'srcMode'

	ldc.i4	3
	bne.un	'L_2257'
	ldsflda	valuetype 'int8[1024]' 'outName'

	call	uint8 'fileExists'(void*)
	ldc.i4	0
	beq	'L_2257'
// Line 3508:	      fprintf ( stderr, "%s: Output file %s already exists, skipping.\n",

// Line 3509:	                progName, outName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_82'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'outName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3510:	      return;

	br	'L_2235'
L_2257:
// Line 3511:	   }

// Line 3512:	   switch ( srcMode ) {

	ldsfld	int32 'srcMode'

	stloc	'$anontemp6/1'
	ldloc	'$anontemp6/1'
	ldc.i4	1
	beq	'L_2262'
	ldloc	'$anontemp6/1'
	ldc.i4	2
	beq	'L_2266'
	ldloc	'$anontemp6/1'
	ldc.i4	3
	beq	'L_2273'
	br	'L_2280'
// Line 3513:	

L_2262:
// Line 3514:	      case SM_I2O:

// Line 3515:	         inStr = stdin;

	ldsfld	void* '__stdin'

	stloc	'inStr/2'
// Line 3516:	         outStr = stdout;

	ldsfld	void* '__stdout'

	stloc	'outStr/3'
// Line 3517:	         if ( isatty ( fileno ( stdout ) ) ) {

	ldsfld	void* '__stdout'

	call	int32 '_fileno'(void*)
	call	int32 '_isatty'(int32)
	ldc.i4	0
	beq	'L_2260'
// Line 3518:	            fprintf ( stderr,

// Line 3519:	                      "%s: I won't write compressed data to a terminal.\n",

// Line 3520:	                      progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_83'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3521:	            fprintf ( stderr, "%s: For help, type: `%s --help'.\n",

// Line 3522:	                              progName, progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_84'

	ldsfld	void* 'progName'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3523:	            return;

	br	'L_2235'
L_2263:
// Line 3524:	         };

// Line 3525:	         break;

	br	'L_2260'
L_2266:
// Line 3526:	

// Line 3527:	      case SM_F2O:

// Line 3528:	         inStr = fopen ( inName, "rb" );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[]' 'L_73'

	call	void* 'fopen'(void*, void*)
	stloc	'inStr/2'
// Line 3529:	         outStr = stdout;

	ldsfld	void* '__stdout'

	stloc	'outStr/3'
// Line 3530:	         if ( isatty ( fileno ( stdout ) ) ) {

	ldsfld	void* '__stdout'

	call	int32 '_fileno'(void*)
	call	int32 '_isatty'(int32)
	ldc.i4	0
	beq	'L_2267'
// Line 3531:	            fprintf ( stderr,

// Line 3532:	                      "%s: I won't write compressed data to a terminal.\n",

// Line 3533:	                      progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_83'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3534:	            fprintf ( stderr, "%s: For help, type: `%s --help'.\n",

// Line 3535:	                              progName, progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_84'

	ldsfld	void* 'progName'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3536:	            return;

	br	'L_2235'
L_2267:
// Line 3537:	         };

// Line 3538:	         if ( inStr == NULL ) {

	ldloc	'inStr/2'
	ldc.i4	0
	bne.un	'L_2260'
// Line 3539:	            fprintf ( stderr, "%s: Can't open input file %s, skipping.\n",

// Line 3540:	                      progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_85'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3541:	            return;

	br	'L_2235'
L_2270:
// Line 3542:	         };

// Line 3543:	         break;

	br	'L_2260'
L_2273:
// Line 3544:	

// Line 3545:	      case SM_F2F:

// Line 3546:	         inStr = fopen ( inName, "rb" );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[]' 'L_73'

	call	void* 'fopen'(void*, void*)
	stloc	'inStr/2'
// Line 3547:	         outStr = fopen ( outName, "wb" );

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldsflda	valuetype 'int8[]' 'L_86'

	call	void* 'fopen'(void*, void*)
	stloc	'outStr/3'
// Line 3548:	         if ( outStr == NULL) {

	ldloc	'outStr/3'
	ldc.i4	0
	bne.un	'L_2274'
// Line 3549:	            fprintf ( stderr, "%s: Can't create output file %s, skipping.\n",

// Line 3550:	                      progName, outName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_87'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'outName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3551:	            return;

	br	'L_2235'
L_2274:
// Line 3552:	         }

// Line 3553:	         if ( inStr == NULL ) {

	ldloc	'inStr/2'
	ldc.i4	0
	bne.un	'L_2260'
// Line 3554:	            fprintf ( stderr, "%s: Can't open input file %s, skipping.\n",

// Line 3555:	                      progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_85'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3556:	            return;

	br	'L_2235'
L_2277:
// Line 3557:	         };

// Line 3558:	         break;

	br	'L_2260'
L_2280:
// Line 3559:	

// Line 3560:	      default:

// Line 3561:	         panic ( "compress: bad srcMode" );

	ldsflda	valuetype 'int8[]' 'L_88'

	call	void 'panic'(void*)
// Line 3562:	         break;

L_2260:
// Line 3563:	   }

// Line 3564:	   if (verbosity >= 1) {

	ldsfld	int32 'verbosity'

	ldc.i4	1
	blt	'L_2282'
// Line 3565:	      fprintf ( stderr,  "  %s: ", inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_89'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3566:	      pad ( inName );

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	void 'pad'(void*)
// Line 3567:	      fflush ( stderr );

	ldsfld	void* '__stderr'

	call	int32 'fflush'(void*)
	pop
L_2282:
// Line 3568:	   }

// Line 3569:	

// Line 3570:	    

// Line 3571:	   outputHandleJustInCase = outStr;

	ldloc	'outStr/3'
	stsfld	void* 'outputHandleJustInCase'

// Line 3572:	   compressStream ( inStr, outStr );

	ldloc	'inStr/2'
	ldloc	'outStr/3'
	call	void 'compressStream'(void*, void*)
// Line 3573:	   outputHandleJustInCase = NULL;

	ldc.i4	0
	stsfld	void* 'outputHandleJustInCase'

// Line 3574:	

// Line 3575:	    

// Line 3576:	   if ( srcMode == SM_F2F ) {

	ldsfld	int32 'srcMode'

	ldc.i4	3
	bne.un	'L_2285'
// Line 3577:	      copyDateAndPermissions ( inName, outName );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[1024]' 'outName'

	call	void 'copyDateAndPermissions'(void*, void*)
// Line 3578:	      if ( !keepInputFiles ) {

	ldsfld	uint8 'keepInputFiles'

	ldc.i4	0
	bne.un	'L_2287'
// Line 3579:	         IntNative retVal = remove ( inName );

	ldloca	'retVal/4'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	int32 'remove'(void*)
	stind.i4
// Line 3580:	         ERROR_IF_NOT_ZERO ( retVal );

	ldloc	'retVal/4'
	ldc.i4	0
	beq	'L_2290'
	call	void 'ioError'()
L_2290:
L_2287:
// Line 3581:	      }

L_2285:
// Line 3582:	   }

// Line 3583:	}

L_2235:
	ret

}
 .method public hidebysig static void 'uncompress'(void* 'name' ) cil managed
{
// Line 3587:	void uncompress ( Char *name )

// Line 3588:	{

	.locals
	(
		[0] int32 '$anontemp7/0',
		[1] int32 '$anontemp8/1',
		[2] void* 'inStr/2',
		[3] void* 'outStr/3',
		[4] uint8 'magicNumberOK/4',
		[5] int32 'retVal/5',
		[6] int32 'retVal/6'
	)
	.maxstack	4
L_2299:
// Line 3591:	   Bool magicNumberOK;

// Line 3592:	

// Line 3593:	

// Line 3594:	   PRINTLOC;

// Line 3595:	

// Line 3596:	   if (name == NULL && srcMode != SM_I2O)

	ldarg	'name'
	ldc.i4	0
	bne.un	'L_2302'
	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2302'
// Line 3597:	      panic ( "uncompress: bad modes\n" );

	ldsflda	valuetype 'int8[]' 'L_90'

	call	void 'panic'(void*)
L_2302:
// Line 3598:	

// Line 3599:	   switch (srcMode) {

	ldsfld	int32 'srcMode'

	stloc	'$anontemp7/0'
	ldloc	'$anontemp7/0'
	ldc.i4	1
	beq	'L_2305'
	ldloc	'$anontemp7/0'
	ldc.i4	2
	beq	'L_2308'
	ldloc	'$anontemp7/0'
	ldc.i4	3
	beq	'L_2306'
	br	'L_2310'
L_2305:
// Line 3600:	      case SM_I2O: strcpy ( inName, "(stdin)" );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[]' 'L_75'

	call	void* 'strcpy'(void*, void*)
	pop
// Line 3601:	                   strcpy ( outName, "(stdout)" ); break;

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldsflda	valuetype 'int8[]' 'L_76'

	call	void* 'strcpy'(void*, void*)
	pop
	br	'L_2303'
L_2306:
// Line 3602:	      case SM_F2F: strcpy ( inName, name );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldarg	'name'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 3603:	                   strcpy ( outName, name );

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldarg	'name'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 3604:	                   if (endsInBz2 ( outName ))

	ldsflda	valuetype 'int8[1024]' 'outName'

	call	uint8 'endsInBz2'(void*)
	ldc.i4	0
	beq	'L_2303'
// Line 3605:	                      outName [ strlen ( outName ) - 4 ] = '\0';

	ldsflda	valuetype 'int8[1024]' 'outName'

	call	uint32 'strlen'(void*)
	ldc.i4	4
	sub
	conv.i4
	ldsflda	valuetype 'int8[1024]' 'outName'

	add
	ldc.i4	0
	stind.i1
L_2307:
// Line 3606:	                   break;

	br	'L_2303'
L_2308:
// Line 3607:	      case SM_F2O: strcpy ( inName, name );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldarg	'name'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 3608:	                   strcpy ( outName, "(stdout)" ); break;

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldsflda	valuetype 'int8[]' 'L_76'

	call	void* 'strcpy'(void*, void*)
	pop
L_2310:
L_2303:
// Line 3609:	   }

// Line 3610:	

// Line 3611:	   if ( srcMode != SM_I2O && containsDubiousChars ( inName ) ) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2311'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'containsDubiousChars'(void*)
	ldc.i4	0
	beq	'L_2311'
// Line 3612:	      fprintf ( stderr, "%s: There are no files matching `%s'.\n",

// Line 3613:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_78'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3614:	      return;

	br	'L_2300'
L_2311:
// Line 3615:	   }

// Line 3616:	   if ( srcMode != SM_I2O && !fileExists ( inName ) ) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2314'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'fileExists'(void*)
	ldc.i4	0
	bne.un	'L_2314'
// Line 3617:	      fprintf ( stderr, "%s: Input file %s doesn't exist, skipping.\n",

// Line 3618:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_79'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3619:	      return;

	br	'L_2300'
L_2314:
// Line 3620:	   }

// Line 3621:	   if ( srcMode != SM_I2O && !endsInBz2 ( inName )) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2317'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'endsInBz2'(void*)
	ldc.i4	0
	bne.un	'L_2317'
// Line 3622:	      fprintf ( stderr,

// Line 3623:	                "%s: Input file name %s doesn't end in `.bz2', skipping.\n",

// Line 3624:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_91'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3625:	      return;

	br	'L_2300'
L_2317:
// Line 3626:	   }

// Line 3627:	   if ( srcMode != SM_I2O && notABogStandardFile ( inName )) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2320'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'notABogStandardFile'(void*)
	ldc.i4	0
	beq	'L_2320'
// Line 3628:	      fprintf ( stderr, "%s: Input file %s is not a normal file, skipping.\n",

// Line 3629:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_81'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3630:	      return;

	br	'L_2300'
L_2320:
// Line 3631:	   }

// Line 3632:	   if ( srcMode == SM_F2F && fileExists ( outName ) ) {

	ldsfld	int32 'srcMode'

	ldc.i4	3
	bne.un	'L_2323'
	ldsflda	valuetype 'int8[1024]' 'outName'

	call	uint8 'fileExists'(void*)
	ldc.i4	0
	beq	'L_2323'
// Line 3633:	      fprintf ( stderr, "%s: Output file %s already exists, skipping.\n",

// Line 3634:	                progName, outName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_82'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'outName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3635:	      return;

	br	'L_2300'
L_2323:
// Line 3636:	   }

// Line 3637:	

// Line 3638:	   switch ( srcMode ) {

	ldsfld	int32 'srcMode'

	stloc	'$anontemp8/1'
	ldloc	'$anontemp8/1'
	ldc.i4	1
	beq	'L_2328'
	ldloc	'$anontemp8/1'
	ldc.i4	2
	beq	'L_2332'
	ldloc	'$anontemp8/1'
	ldc.i4	3
	beq	'L_2336'
	br	'L_2343'
// Line 3639:	

L_2328:
// Line 3640:	      case SM_I2O:

// Line 3641:	         inStr = stdin;

	ldsfld	void* '__stdin'

	stloc	'inStr/2'
// Line 3642:	         outStr = stdout;

	ldsfld	void* '__stdout'

	stloc	'outStr/3'
// Line 3643:	         if ( isatty ( fileno ( stdin ) ) ) {

	ldsfld	void* '__stdin'

	call	int32 '_fileno'(void*)
	call	int32 '_isatty'(int32)
	ldc.i4	0
	beq	'L_2326'
// Line 3644:	            fprintf ( stderr,

// Line 3645:	                      "%s: I won't read compressed data from a terminal.\n",

// Line 3646:	                      progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_92'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3647:	            fprintf ( stderr, "%s: For help, type: `%s --help'.\n",

// Line 3648:	                              progName, progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_84'

	ldsfld	void* 'progName'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3649:	            return;

	br	'L_2300'
L_2329:
// Line 3650:	         };

// Line 3651:	         break;

	br	'L_2326'
L_2332:
// Line 3652:	

// Line 3653:	      case SM_F2O:

// Line 3654:	         inStr = fopen ( inName, "rb" );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[]' 'L_73'

	call	void* 'fopen'(void*, void*)
	stloc	'inStr/2'
// Line 3655:	         outStr = stdout;

	ldsfld	void* '__stdout'

	stloc	'outStr/3'
// Line 3656:	         if ( inStr == NULL ) {

	ldloc	'inStr/2'
	ldc.i4	0
	bne.un	'L_2326'
// Line 3657:	            fprintf ( stderr, "%s: Can't open input file %s, skipping.\n",

// Line 3658:	                      progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_85'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3659:	            return;

	br	'L_2300'
L_2333:
// Line 3660:	         };

// Line 3661:	         break;

	br	'L_2326'
L_2336:
// Line 3662:	

// Line 3663:	      case SM_F2F:

// Line 3664:	         inStr = fopen ( inName, "rb" );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[]' 'L_73'

	call	void* 'fopen'(void*, void*)
	stloc	'inStr/2'
// Line 3665:	         outStr = fopen ( outName, "wb" );

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldsflda	valuetype 'int8[]' 'L_86'

	call	void* 'fopen'(void*, void*)
	stloc	'outStr/3'
// Line 3666:	         if ( outStr == NULL) {

	ldloc	'outStr/3'
	ldc.i4	0
	bne.un	'L_2337'
// Line 3667:	            fprintf ( stderr, "%s: Can't create output file %s, skipping.\n",

// Line 3668:	                      progName, outName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_87'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'outName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3669:	            return;

	br	'L_2300'
L_2337:
// Line 3670:	         }

// Line 3671:	         if ( inStr == NULL ) {

	ldloc	'inStr/2'
	ldc.i4	0
	bne.un	'L_2326'
// Line 3672:	            fprintf ( stderr, "%s: Can't open input file %s, skipping.\n",

// Line 3673:	                      progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_85'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3674:	            return;

	br	'L_2300'
L_2340:
// Line 3675:	         };

// Line 3676:	         break;

	br	'L_2326'
L_2343:
// Line 3677:	

// Line 3678:	      default:

// Line 3679:	         panic ( "uncompress: bad srcMode" );

	ldsflda	valuetype 'int8[]' 'L_93'

	call	void 'panic'(void*)
// Line 3680:	         break;

L_2326:
// Line 3681:	   }

// Line 3682:	

// Line 3683:	   if (verbosity >= 1) {

	ldsfld	int32 'verbosity'

	ldc.i4	1
	blt	'L_2345'
// Line 3684:	      fprintf ( stderr, "  %s: ", inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_89'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3685:	      pad ( inName );

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	void 'pad'(void*)
// Line 3686:	      fflush ( stderr );

	ldsfld	void* '__stderr'

	call	int32 'fflush'(void*)
	pop
L_2345:
// Line 3687:	   }

// Line 3688:	

// Line 3689:	    

// Line 3690:	   outputHandleJustInCase = outStr;

	ldloc	'outStr/3'
	stsfld	void* 'outputHandleJustInCase'

// Line 3691:	   magicNumberOK = uncompressStream ( inStr, outStr );

	ldloc	'inStr/2'
	ldloc	'outStr/3'
	call	uint8 'uncompressStream'(void*, void*)
	stloc	'magicNumberOK/4'
// Line 3692:	   outputHandleJustInCase = NULL;

	ldc.i4	0
	stsfld	void* 'outputHandleJustInCase'

// Line 3693:	

// Line 3694:	    

// Line 3695:	   if ( magicNumberOK ) {

	ldloc	'magicNumberOK/4'
	ldc.i4	0
	beq	'L_2348'
// Line 3696:	      if ( srcMode == SM_F2F ) {

	ldsfld	int32 'srcMode'

	ldc.i4	3
	bne.un	'L_2360'
// Line 3697:	         copyDateAndPermissions ( inName, outName );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[1024]' 'outName'

	call	void 'copyDateAndPermissions'(void*, void*)
// Line 3698:	         if ( !keepInputFiles ) {

	ldsfld	uint8 'keepInputFiles'

	ldc.i4	0
	bne.un	'L_2352'
// Line 3699:	            IntNative retVal = remove ( inName );

	ldloca	'retVal/6'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	int32 'remove'(void*)
	stind.i4
// Line 3700:	            ERROR_IF_NOT_ZERO ( retVal );

	ldloc	'retVal/6'
	ldc.i4	0
	beq	'L_2355'
	call	void 'ioError'()
L_2355:
L_2352:
// Line 3701:	         }

L_2350:
// Line 3702:	      }

	br	'L_2360'
L_2348:
// Line 3703:	   } else {

// Line 3704:	      if ( srcMode == SM_F2F ) {

	ldsfld	int32 'srcMode'

	ldc.i4	3
	bne.un	'L_2362'
// Line 3705:	         IntNative retVal = remove ( outName );

	ldloca	'retVal/5'
	ldsflda	valuetype 'int8[1024]' 'outName'

	call	int32 'remove'(void*)
	stind.i4
// Line 3706:	         ERROR_IF_NOT_ZERO ( retVal );

	ldloc	'retVal/5'
	ldc.i4	0
	beq	'L_2365'
	call	void 'ioError'()
L_2365:
L_2362:
// Line 3707:	      }

L_2360:
// Line 3708:	   }

// Line 3709:	

// Line 3710:	   if ( magicNumberOK ) {

	ldloc	'magicNumberOK/4'
	ldc.i4	0
	beq	'L_2369'
// Line 3711:	      if (verbosity >= 1)

	ldsfld	int32 'verbosity'

	ldc.i4	1
	blt	'L_2373'
// Line 3712:	         fprintf ( stderr, "done\n" );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_94'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_2371:
	br	'L_2373'
L_2369:
// Line 3713:	   } else {

// Line 3714:	      if (verbosity >= 1)

	ldsfld	int32 'verbosity'

	ldc.i4	1
	blt	'L_2375'
// Line 3715:	         fprintf ( stderr, "not a bzip2 file, skipping.\n" ); else

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_95'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
	br	'L_2376'
L_2375:
// Line 3716:	         fprintf ( stderr,

// Line 3717:	                   "%s: %s is not a bzip2 file, skipping.\n",

// Line 3718:	                   progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_96'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
L_2376:
L_2373:
// Line 3719:	   }

// Line 3720:	

// Line 3721:	}

L_2300:
	ret

}
 .method public hidebysig static void 'testf'(void* 'name' ) cil managed
{
// Line 3725:	void testf ( Char *name )

// Line 3726:	{

	.locals
	(
		[0] int32 '$anontemp9/0',
		[1] int32 '$anontemp10/1',
		[2] void* 'inStr/2',
		[3] uint8 'allOK/3'
	)
	.maxstack	4
L_2383:
// Line 3728:	   Bool allOK;

// Line 3729:	

// Line 3730:	

// Line 3731:	   PRINTLOC;

// Line 3732:	

// Line 3733:	   if (name == NULL && srcMode != SM_I2O)

	ldarg	'name'
	ldc.i4	0
	bne.un	'L_2386'
	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2386'
// Line 3734:	      panic ( "testf: bad modes\n" );

	ldsflda	valuetype 'int8[]' 'L_97'

	call	void 'panic'(void*)
L_2386:
// Line 3735:	

// Line 3736:	   strcpy ( outName, "(none)" );

	ldsflda	valuetype 'int8[1024]' 'outName'

	ldsflda	valuetype 'int8[]' 'L_98'

	call	void* 'strcpy'(void*, void*)
	pop
// Line 3737:	   switch (srcMode) {

	ldsfld	int32 'srcMode'

	stloc	'$anontemp9/0'
	ldloc	'$anontemp9/0'
	ldc.i4	1
	beq	'L_2389'
	ldloc	'$anontemp9/0'
	ldc.i4	2
	beq	'L_2391'
	ldloc	'$anontemp9/0'
	ldc.i4	3
	beq	'L_2390'
	br	'L_2393'
L_2389:
// Line 3738:	      case SM_I2O: strcpy ( inName, "(stdin)" ); break;

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[]' 'L_75'

	call	void* 'strcpy'(void*, void*)
	pop
	br	'L_2387'
L_2390:
// Line 3739:	      case SM_F2F: strcpy ( inName, name ); break;

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldarg	'name'
	call	void* 'strcpy'(void*, void*)
	pop
	br	'L_2387'
L_2391:
// Line 3740:	      case SM_F2O: strcpy ( inName, name ); break;

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldarg	'name'
	call	void* 'strcpy'(void*, void*)
	pop
L_2393:
L_2387:
// Line 3741:	   }

// Line 3742:	

// Line 3743:	   if ( srcMode != SM_I2O && containsDubiousChars ( inName ) ) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2394'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'containsDubiousChars'(void*)
	ldc.i4	0
	beq	'L_2394'
// Line 3744:	      fprintf ( stderr, "%s: There are no files matching `%s'.\n",

// Line 3745:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_78'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3746:	      return;

	br	'L_2384'
L_2394:
// Line 3747:	   }

// Line 3748:	   if ( srcMode != SM_I2O && !fileExists ( inName ) ) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2397'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'fileExists'(void*)
	ldc.i4	0
	bne.un	'L_2397'
// Line 3749:	      fprintf ( stderr, "%s: Input file %s doesn't exist, skipping.\n",

// Line 3750:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_79'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3751:	      return;

	br	'L_2384'
L_2397:
// Line 3752:	   }

// Line 3753:	   if ( srcMode != SM_I2O && !endsInBz2 ( inName )) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2400'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'endsInBz2'(void*)
	ldc.i4	0
	bne.un	'L_2400'
// Line 3754:	      fprintf ( stderr,

// Line 3755:	                "%s: Input file name %s doesn't end in `.bz2', skipping.\n",

// Line 3756:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_91'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3757:	      return;

	br	'L_2384'
L_2400:
// Line 3758:	   }

// Line 3759:	   if ( srcMode != SM_I2O && notABogStandardFile ( inName )) {

	ldsfld	int32 'srcMode'

	ldc.i4	1
	beq	'L_2403'
	ldsflda	valuetype 'int8[1024]' 'inName'

	call	uint8 'notABogStandardFile'(void*)
	ldc.i4	0
	beq	'L_2403'
// Line 3760:	      fprintf ( stderr, "%s: Input file %s is not a normal file, skipping.\n",

// Line 3761:	                progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_81'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3762:	      return;

	br	'L_2384'
L_2403:
// Line 3763:	   }

// Line 3764:	

// Line 3765:	   switch ( srcMode ) {

	ldsfld	int32 'srcMode'

	stloc	'$anontemp10/1'
	ldloc	'$anontemp10/1'
	ldc.i4	1
	beq	'L_2408'
	ldloc	'$anontemp10/1'
	ldc.i4	2
	beq	'L_2412'
	ldloc	'$anontemp10/1'
	ldc.i4	3
	beq	'L_2413'
	br	'L_2417'
// Line 3766:	

L_2408:
// Line 3767:	      case SM_I2O:

// Line 3768:	         if ( isatty ( fileno ( stdin ) ) ) {

	ldsfld	void* '__stdin'

	call	int32 '_fileno'(void*)
	call	int32 '_isatty'(int32)
	ldc.i4	0
	beq	'L_2409'
// Line 3769:	            fprintf ( stderr,

// Line 3770:	                      "%s: I won't read compressed data from a terminal.\n",

// Line 3771:	                      progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_92'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3772:	            fprintf ( stderr, "%s: For help, type: `%s --help'.\n",

// Line 3773:	                              progName, progName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_84'

	ldsfld	void* 'progName'

	ldsfld	void* 'progName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3774:	            return;

	br	'L_2384'
L_2409:
// Line 3775:	         };

// Line 3776:	         inStr = stdin;

	ldsfld	void* '__stdin'

	stloc	'inStr/2'
// Line 3777:	         break;

	br	'L_2406'
L_2412:
L_2413:
// Line 3778:	

// Line 3779:	      case SM_F2O: case SM_F2F:

// Line 3780:	         inStr = fopen ( inName, "rb" );

	ldsflda	valuetype 'int8[1024]' 'inName'

	ldsflda	valuetype 'int8[]' 'L_73'

	call	void* 'fopen'(void*, void*)
	stloc	'inStr/2'
// Line 3781:	         if ( inStr == NULL ) {

	ldloc	'inStr/2'
	ldc.i4	0
	bne.un	'L_2406'
// Line 3782:	            fprintf ( stderr, "%s: Can't open input file %s, skipping.\n",

// Line 3783:	                      progName, inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_85'

	ldsfld	void* 'progName'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*, void*)
	pop
// Line 3784:	            return;

	br	'L_2384'
L_2414:
// Line 3785:	         };

// Line 3786:	         break;

	br	'L_2406'
L_2417:
// Line 3787:	

// Line 3788:	      default:

// Line 3789:	         panic ( "testf: bad srcMode" );

	ldsflda	valuetype 'int8[]' 'L_99'

	call	void 'panic'(void*)
// Line 3790:	         break;

L_2406:
// Line 3791:	   }

// Line 3792:	

// Line 3793:	   if (verbosity >= 1) {

	ldsfld	int32 'verbosity'

	ldc.i4	1
	blt	'L_2419'
// Line 3794:	      fprintf ( stderr, "  %s: ", inName );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_89'

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3795:	      pad ( inName );

	ldsflda	valuetype 'int8[1024]' 'inName'

	call	void 'pad'(void*)
// Line 3796:	      fflush ( stderr );

	ldsfld	void* '__stderr'

	call	int32 'fflush'(void*)
	pop
L_2419:
// Line 3797:	   }

// Line 3798:	

// Line 3799:	    

// Line 3800:	   allOK = testStream ( inStr );

	ldloc	'inStr/2'
	call	uint8 'testStream'(void*)
	stloc	'allOK/3'
// Line 3801:	

// Line 3802:	   if (allOK && verbosity >= 1) fprintf ( stderr, "ok\n" );

	ldloc	'allOK/3'
	ldc.i4	0
	beq	'L_2422'
	ldsfld	int32 'verbosity'

	ldc.i4	1
	blt	'L_2422'
	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_50'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
L_2422:
// Line 3803:	   if (!allOK) testFailsExist = True;

	ldloc	'allOK/3'
	ldc.i4	0
	bne.un	'L_2423'
	ldc.i4	1
	stsfld	uint8 'testFailsExist'

L_2423:
// Line 3804:	}

L_2384:
	ret

}
 .method public hidebysig static void 'license'() cil managed
{
// Line 3808:	void license ( void )

// Line 3809:	{

	.maxstack	2
L_2429:
// Line 3810:	   fprintf ( stderr,

// Line 3811:	

// Line 3812:	    "bzip2, a block-sorting file compressor.  "

// Line 3813:	    "Version 0.1pl2, 29-Aug-97.\n"

// Line 3814:	    "   \n"

// Line 3815:	    "   Copyright (C) 1996, 1997 by Julian Seward.\n"

// Line 3816:	    "   \n"

// Line 3817:	    "   This program is free software; you can redistribute it and/or modify\n"

// Line 3818:	    "   it under the terms of the GNU General Public License as published by\n"

// Line 3819:	    "   the Free Software Foundation; either version 2 of the License, or\n"

// Line 3820:	    "   (at your option) any later version.\n"

// Line 3821:	    "   \n"

// Line 3822:	    "   This program is distributed in the hope that it will be useful,\n"

// Line 3823:	    "   but WITHOUT ANY WARRANTY; without even the implied warranty of\n"

// Line 3824:	    "   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n"

// Line 3825:	    "   GNU General Public License for more details.\n"

// Line 3826:	    "   \n"

// Line 3827:	    "   You should have received a copy of the GNU General Public License\n"

// Line 3828:	    "   along with this program; if not, write to the Free Software\n"

// Line 3829:	    "   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.\n"

// Line 3830:	    "   \n"

// Line 3831:	    "   The GNU General Public License is contained in the file LICENSE.\n"

// Line 3832:	    "   \n"

// Line 3833:	   );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_100'

	call	vararg int32 'fprintf'(void*, void*, ...)
	pop
// Line 3834:	}

L_2430:
	ret

}
 .method public hidebysig static void 'usage'(void* 'fullProgName' ) cil managed
{
// Line 3838:	void usage ( Char *fullProgName )

// Line 3839:	{

	.maxstack	3
L_2437:
// Line 3840:	   fprintf (

// Line 3841:	      stderr,

// Line 3842:	      "bzip2, a block-sorting file compressor.  "

// Line 3843:	      "Version 0.1pl2, 29-Aug-97.\n"

// Line 3844:	      "\n   usage: %s [flags and input files in any order]\n"

// Line 3845:	      "\n"

// Line 3846:	      "   -h --help           print this message\n"

// Line 3847:	      "   -d --decompress     force decompression\n"

// Line 3848:	      "   -f --compress       force compression\n"

// Line 3849:	      "   -t --test           test compressed file integrity\n"

// Line 3850:	      "   -c --stdout         output to standard out\n"

// Line 3851:	      "   -v --verbose        be verbose (a 2nd -v gives more)\n"

// Line 3852:	      "   -k --keep           keep (don't delete) input files\n"

// Line 3853:	      "   -L --license        display software version & license\n"

// Line 3854:	      "   -V --version        display software version & license\n"

// Line 3855:	      "   -s --small          use less memory (at most 2500k)\n"

// Line 3856:	      "   -1 .. -9            set block size to 100k .. 900k\n"

// Line 3857:	      "   --repetitive-fast   compress repetitive blocks faster\n"

// Line 3858:	      "   --repetitive-best   compress repetitive blocks better\n"

// Line 3859:	      "\n"

// Line 3860:	      "   If invoked as `bzip2', the default action is to compress.\n"

// Line 3861:	      "              as `bunzip2', the default action is to decompress.\n"

// Line 3862:	      "\n"

// Line 3863:	      "   If no file names are given, bzip2 compresses or decompresses\n"

// Line 3864:	      "   from standard input to standard output.  You can combine\n"

// Line 3865:	      "   flags, so `-v -4' means the same as -v4 or -4v, &c.\n"

// Line 3866:	      #if defined(BZ_UNIX) || defined(BZ_EMX)

// Line 3867:	      "\n"

// Line 3868:	      #endif

// Line 3869:	      ,

// Line 3870:	

// Line 3871:	      fullProgName

// Line 3872:	   );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_101'

	ldarg	'fullProgName'
	call	vararg int32 'fprintf'(void*, void*, ..., void*)
	pop
// Line 3873:	}

L_2438:
	ret

}
 .method public hidebysig static void* 'myMalloc'(int32 'n' ) cil managed
{
// Line 3900:	void *myMalloc ( Int32 n )

// Line 3901:	{

	.locals
	(
		[0] void* 'p/0'
	)
	.maxstack	4
L_2445:
// Line 3902:	   void* p;

// Line 3903:	

// Line 3904:	   p = malloc ( (size_t)n );

	ldarg	'n'
	conv.u4
	call	void* 'malloc'(uint32)
	stloc	'p/0'
// Line 3905:	   if (p == NULL) {

	ldloc	'p/0'
	ldc.i4	0
	bne.un	'L_2448'
// Line 3906:	      fprintf (

// Line 3907:	         stderr,

// Line 3908:	         "%s: `malloc' failed on request for %d bytes.\n",

// Line 3909:	         progName, n

// Line 3910:	      );

	ldsfld	void* '__stderr'

	ldsflda	valuetype 'int8[]' 'L_102'

	ldsfld	void* 'progName'

	ldarg	'n'
	call	vararg int32 'fprintf'(void*, void*, ..., void*, int32)
	pop
// Line 3911:	      exit ( 1 );

	ldc.i4	1
	call	void 'exit'(int32)
L_2448:
// Line 3912:	   }

// Line 3913:	   return p;

	ldloc	'p/0'
// Line 3914:	}

L_2446:
	ret

}
 .method public hidebysig static void* 'mkCell'() cil managed
{
// Line 3918:	Cell *mkCell ( void )

// Line 3919:	{

	.locals
	(
		[0] void* 'c/0'
	)
	.maxstack	2
L_2456:
// Line 3920:	   Cell *c;

// Line 3921:	

// Line 3922:	   c = (Cell*) myMalloc ( sizeof ( Cell ) );

	ldc.i4	8
	call	void* 'myMalloc'(int32)
	stloc	'c/0'
// Line 3923:	   c->name = NULL;

	ldloc	'c/0'
	ldc.i4	0
	stind.i4
// Line 3924:	   c->link = NULL;

	ldloc	'c/0'
	ldc.i4	4
	add
	ldc.i4	0
	stind.i4
// Line 3925:	   return c;

	ldloc	'c/0'
// Line 3926:	}

L_2457:
	ret

}
 .method public hidebysig static void* 'snocString'(void* 'root' , void* 'name' ) cil managed
{
// Line 3930:	Cell *snocString ( Cell *root, Char *name )

// Line 3931:	{

	.locals
	(
		[0] void* 'tmp/0',
		[1] void* 'tmp/1'
	)
	.maxstack	4
L_2464:
// Line 3932:	   if (root == NULL) {

	ldarg	'root'
	ldc.i4	0
	bne.un	'L_2467'
// Line 3933:	      Cell *tmp = mkCell();

	ldloca	'tmp/1'
	call	void* 'mkCell'()
	stind.i4
// Line 3934:	      tmp->name = (Char*) myMalloc ( 5 + strlen(name) );

	ldloc	'tmp/1'
	ldarg	'name'
	call	uint32 'strlen'(void*)
	ldc.i4	5
	add
	conv.i4
	call	void* 'myMalloc'(int32)
	stind.i4
// Line 3935:	      strcpy ( tmp->name, name );

	ldloc	'tmp/1'
	ldind.u4
	ldarg	'name'
	call	void* 'strcpy'(void*, void*)
	pop
// Line 3936:	      return tmp;

	ldloc	'tmp/1'
	br	'L_2465'
L_2467:
// Line 3937:	   } else {

// Line 3938:	      Cell *tmp = root;

	ldloca	'tmp/0'
	ldarg	'root'
	stind.i4
	br	'L_2474'
L_2472:
	ldloc	'tmp/0'
	ldc.i4	4
	add
	ldind.u4
	stloc	'tmp/0'
L_2474:
// Line 3939:	      while (tmp->link != NULL) tmp = tmp->link;

	ldloc	'tmp/0'
	ldc.i4	4
	add
	ldind.u4
	ldc.i4	0
	bne.un	'L_2472'
L_2473:
// Line 3940:	      tmp->link = snocString ( tmp->link, name );

	ldloc	'tmp/0'
	ldc.i4	4
	add
	ldloc	'tmp/0'
	ldc.i4	4
	add
	ldind.u4
	ldarg	'name'
	call	void* 'snocString'(void*, void*)
	stind.i4
// Line 3941:	      return root;

	ldarg	'root'
L_2470:
// Line 3942:	   }

// Line 3943:	}

L_2465:
	ret

}
 .field public static uint32 'bytesIn' at $bytesIn
.data $bytesIn = bytearray (0 0 0 0 
)
.field public static uint32 'bytesOut' at $bytesOut
.data $bytesOut = bytearray (0 0 0 0 
)
.field public static int32 'verbosity' at $verbosity
.data $verbosity = bytearray (0 0 0 0 
)
.field public static uint8 'keepInputFiles' at $keepInputFiles
.data $keepInputFiles = bytearray (0 
)
.field public static uint8 'smallMode' at $smallMode
.data $smallMode = bytearray (0 
)
.field public static uint8 'testFailsExist' at $testFailsExist
.data $testFailsExist = bytearray (0 
)
.field public static uint32 'globalCrc' at $globalCrc
.data $globalCrc = bytearray (0 0 0 0 
)
.field public static int32 'numFileNames' at $numFileNames
.data $numFileNames = bytearray (0 0 0 0 
)
.field public static int32 'numFilesProcessed' at $numFilesProcessed
.data $numFilesProcessed = bytearray (0 0 0 0 
)
.field public static int32 'opMode' at $opMode
.data $opMode = bytearray (0 0 0 0 
)
.field public static int32 'srcMode' at $srcMode
.data $srcMode = bytearray (0 0 0 0 
)
.field public static int32 'longestFileName' at $longestFileName
.data $longestFileName = bytearray (0 0 0 0 
)
.field public static valuetype 'int8[1024]' 'inName' at $inName
.data $inName = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'int8[1024]' 'outName' at $outName
.data $outName = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static void* 'progName' at $progName
.data $progName = bytearray (0 0 0 0 
)
.field public static valuetype 'int8[1024]' 'progNameReally' at $progNameReally
.data $progNameReally = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static void* 'outputHandleJustInCase' at $outputHandleJustInCase
.data $outputHandleJustInCase = bytearray (0 0 0 0 
)
.field public static void* 'block' at $block
.data $block = bytearray (0 0 0 0 
)
.field public static void* 'quadrant' at $quadrant
.data $quadrant = bytearray (0 0 0 0 
)
.field public static void* 'zptr' at $zptr
.data $zptr = bytearray (0 0 0 0 
)
.field public static void* 'szptr' at $szptr
.data $szptr = bytearray (0 0 0 0 
)
.field public static void* 'ftab' at $ftab
.data $ftab = bytearray (0 0 0 0 
)
.field public static void* 'll16' at $ll16
.data $ll16 = bytearray (0 0 0 0 
)
.field public static void* 'll4' at $ll4
.data $ll4 = bytearray (0 0 0 0 
)
.field public static void* 'tt' at $tt
.data $tt = bytearray (0 0 0 0 
)
.field public static void* 'll8' at $ll8
.data $ll8 = bytearray (0 0 0 0 
)
.field public static valuetype 'int32[256]' 'unzftab' at $unzftab
.data $unzftab = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static int32 'last' at $last
.data $last = bytearray (0 0 0 0 
)
.field public static int32 'origPtr' at $origPtr
.data $origPtr = bytearray (0 0 0 0 
)
.field public static int32 'blockSize100k' at $blockSize100k
.data $blockSize100k = bytearray (0 0 0 0 
)
.field public static int32 'workFactor' at $workFactor
.data $workFactor = bytearray (0 0 0 0 
)
.field public static int32 'workDone' at $workDone
.data $workDone = bytearray (0 0 0 0 
)
.field public static int32 'workLimit' at $workLimit
.data $workLimit = bytearray (0 0 0 0 
)
.field public static uint8 'blockRandomised' at $blockRandomised
.data $blockRandomised = bytearray (0 
)
.field public static uint8 'firstAttempt' at $firstAttempt
.data $firstAttempt = bytearray (0 
)
.field public static int32 'nBlocksRandomised' at $nBlocksRandomised
.data $nBlocksRandomised = bytearray (0 0 0 0 
)
.field public static valuetype 'uint8[256]' 'inUse' at $inUse
.data $inUse = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static int32 'nInUse' at $nInUse
.data $nInUse = bytearray (0 0 0 0 
)
.field public static valuetype 'uint8[256]' 'seqToUnseq' at $seqToUnseq
.data $seqToUnseq = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'uint8[256]' 'unseqToSeq' at $unseqToSeq
.data $unseqToSeq = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'uint8[18002]' 'selector' at $selector
.data $selector = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 
)
.field public static valuetype 'uint8[18002]' 'selectorMtf' at $selectorMtf
.data $selectorMtf = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 
)
.field public static int32 'nMTF' at $nMTF
.data $nMTF = bytearray (0 0 0 0 
)
.field public static valuetype 'int32[258]' 'mtfFreq' at $mtfFreq
.data $mtfFreq = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'uint8[6][258]' 'len' at $len
.data $len = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 
)
.field public static valuetype 'int32[6][258]' 'limit' at $limit
.data $limit = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'int32[6][258]' 'base' at $base
.data $base = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'int32[6][258]' 'perm' at $perm
.data $perm = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'int32[6]' 'minLens' at $minLens
.data $minLens = bytearray (0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'int32[6][258]' 'code' at $code
.data $code = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'int32[6][258]' 'rfreq' at $rfreq
.data $rfreq = bytearray (0 0 0 0 0 0 0 0 
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
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	0 0 0 0 0 0 0 0 
	
)
.field public static valuetype 'uint32[256]' 'crc32Table' at $crc32Table
.data $crc32Table = bytearray (0 0 0 0 b7 1d c1 4 
	6e 3b 82 9 d9 26 43 d 
	dc 76 4 13 6b 6b c5 17 
	b2 4d 86 1a 5 50 47 1e 
	b8 ed 8 26 f f0 c9 22 
	d6 d6 8a 2f 61 cb 4b 2b 
	64 9b c 35 d3 86 cd 31 
	a a0 8e 3c bd bd 4f 38 
	70 db 11 4c c7 c6 d0 48 
	1e e0 93 45 a9 fd 52 41 
	ac ad 15 5f 1b b0 d4 5b 
	c2 96 97 56 75 8b 56 52 
	c8 36 19 6a 7f 2b d8 6e 
	a6 d 9b 63 11 10 5a 67 
	14 40 1d 79 a3 5d dc 7d 
	7a 7b 9f 70 cd 66 5e 74 
	e0 b6 23 98 57 ab e2 9c 
	8e 8d a1 91 39 90 60 95 
	3c c0 27 8b 8b dd e6 8f 
	52 fb a5 82 e5 e6 64 86 
	58 5b 2b be ef 46 ea ba 
	36 60 a9 b7 81 7d 68 b3 
	84 2d 2f ad 33 30 ee a9 
	ea 16 ad a4 5d b 6c a0 
	90 6d 32 d4 27 70 f3 d0 
	fe 56 b0 dd 49 4b 71 d9 
	4c 1b 36 c7 fb 6 f7 c3 
	22 20 b4 ce 95 3d 75 ca 
	28 80 3a f2 9f 9d fb f6 
	46 bb b8 fb f1 a6 79 ff 
	f4 f6 3e e1 43 eb ff e5 
	9a cd bc e8 2d d0 7d ec 
	77 70 86 34 c0 6d 47 30 
	19 4b 4 3d ae 56 c5 39 
	ab 6 82 27 1c 1b 43 23 
	c5 3d 0 2e 72 20 c1 2a 
	cf 9d 8e 12 78 80 4f 16 
	a1 a6 c 1b 16 bb cd 1f 
	13 eb 8a 1 a4 f6 4b 5 
	7d d0 8 8 ca cd c9 c 
	7 ab 97 78 b0 b6 56 7c 
	69 90 15 71 de 8d d4 75 
	db dd 93 6b 6c c0 52 6f 
	b5 e6 11 62 2 fb d0 66 
	bf 46 9f 5e 8 5b 5e 5a 
	d1 7d 1d 57 66 60 dc 53 
	63 30 9b 4d d4 2d 5a 49 
	d b 19 44 ba 16 d8 40 
	97 c6 a5 ac 20 db 64 a8 
	f9 fd 27 a5 4e e0 e6 a1 
	4b b0 a1 bf fc ad 60 bb 
	25 8b 23 b6 92 96 e2 b2 
	2f 2b ad 8a 98 36 6c 8e 
	41 10 2f 83 f6 d ee 87 
	f3 5d a9 99 44 40 68 9d 
	9d 66 2b 90 2a 7b ea 94 
	e7 1d b4 e0 50 0 75 e4 
	89 26 36 e9 3e 3b f7 ed 
	3b 6b b0 f3 8c 76 71 f7 
	55 50 32 fa e2 4d f3 fe 
	5f f0 bc c6 e8 ed 7d c2 
	31 cb 3e cf 86 d6 ff cb 
	83 86 b8 d5 34 9b 79 d1 
	ed bd 3a dc 5a a0 fb d8 
	ee e0 c 69 59 fd cd 6d 
	80 db 8e 60 37 c6 4f 64 
	32 96 8 7a 85 8b c9 7e 
	5c ad 8a 73 eb b0 4b 77 
	56 d 4 4f e1 10 c5 4b 
	38 36 86 46 8f 2b 47 42 
	8a 7b 0 5c 3d 66 c1 58 
	e4 40 82 55 53 5d 43 51 
	9e 3b 1d 25 29 26 dc 21 
	f0 0 9f 2c 47 1d 5e 28 
	42 4d 19 36 f5 50 d8 32 
	2c 76 9b 3f 9b 6b 5a 3b 
	26 d6 15 3 91 cb d4 7 
	48 ed 97 a ff f0 56 e 
	fa a0 11 10 4d bd d0 14 
	94 9b 93 19 23 86 52 1d 
	e 56 2f f1 b9 4b ee f5 
	60 6d ad f8 d7 70 6c fc 
	d2 20 2b e2 65 3d ea e6 
	bc 1b a9 eb b 6 68 ef 
	b6 bb 27 d7 1 a6 e6 d3 
	d8 80 a5 de 6f 9d 64 da 
	6a cd 23 c4 dd d0 e2 c0 
	4 f6 a1 cd b3 eb 60 c9 
	7e 8d 3e bd c9 90 ff b9 
	10 b6 bc b4 a7 ab 7d b0 
	a2 fb 3a ae 15 e6 fb aa 
	cc c0 b8 a7 7b dd 79 a3 
	c6 60 36 9b 71 7d f7 9f 
	a8 5b b4 92 1f 46 75 96 
	1a 16 32 88 ad b f3 8c 
	74 2d b0 81 c3 30 71 85 
	99 90 8a 5d 2e 8d 4b 59 
	f7 ab 8 54 40 b6 c9 50 
	45 e6 8e 4e f2 fb 4f 4a 
	2b dd c 47 9c c0 cd 43 
	21 7d 82 7b 96 60 43 7f 
	4f 46 0 72 f8 5b c1 76 
	fd b 86 68 4a 16 47 6c 
	93 30 4 61 24 2d c5 65 
	e9 4b 9b 11 5e 56 5a 15 
	87 70 19 18 30 6d d8 1c 
	35 3d 9f 2 82 20 5e 6 
	5b 6 1d b ec 1b dc f 
	51 a6 93 37 e6 bb 52 33 
	3f 9d 11 3e 88 80 d0 3a 
	8d d0 97 24 3a cd 56 20 
	e3 eb 15 2d 54 f6 d4 29 
	79 26 a9 c5 ce 3b 68 c1 
	17 1d 2b cc a0 0 ea c8 
	a5 50 ad d6 12 4d 6c d2 
	cb 6b 2f df 7c 76 ee db 
	c1 cb a1 e3 76 d6 60 e7 
	af f0 23 ea 18 ed e2 ee 
	1d bd a5 f0 aa a0 64 f4 
	73 86 27 f9 c4 9b e6 fd 
	9 fd b8 89 be e0 79 8d 
	67 c6 3a 80 d0 db fb 84 
	d5 8b bc 9a 62 96 7d 9e 
	bb b0 3e 93 c ad ff 97 
	b1 10 b0 af 6 d 71 ab 
	df 2b 32 a6 68 36 f3 a2 
	6d 66 b4 bc da 7b 75 b8 
	3 5d 36 b5 b4 40 f7 b1 
	
)
.field public static uint32 'bsBuff' at $bsBuff
.data $bsBuff = bytearray (0 0 0 0 
)
.field public static int32 'bsLive' at $bsLive
.data $bsLive = bytearray (0 0 0 0 
)
.field public static void* 'bsStream' at $bsStream
.data $bsStream = bytearray (0 0 0 0 
)
.field public static uint8 'bsWriting' at $bsWriting
.data $bsWriting = bytearray (0 
)
.field public static valuetype 'int32[14]' 'incs' at $incs
.data $incs = bytearray (1 0 0 0 4 0 0 0 
	d 0 0 0 28 0 0 0 
	79 0 0 0 6c 1 0 0 
	45 4 0 0 d0 c 0 0 
	71 26 0 0 54 73 0 0 
	fd 59 1 0 f8 d 4 0 
	e9 29 c 0 bc 7d 24 0 
	
)
.field public static valuetype 'int32[512]' 'rNums' at $rNums
.data $rNums = bytearray (6b 2 0 0 d0 2 0 0 
	7f 0 0 0 e1 1 0 0 
	a3 3 0 0 30 3 0 0 
	2d 3 0 0 e9 0 0 0 
	36 2 0 0 f7 0 0 0 
	d9 3 0 0 d4 2 0 0 
	cd 0 0 0 c6 1 0 0 
	5f 3 0 0 eb 1 0 0 
	e5 2 0 0 f2 0 0 0 
	b5 3 0 0 d6 0 0 0 
	dd 2 0 0 5b 3 0 0 
	4f 1 0 0 c4 2 0 0 
	6d 2 0 0 3e 2 0 0 
	49 0 0 0 8e 2 0 0 
	da 2 0 0 d8 1 0 0 
	a3 1 0 0 b4 1 0 0 
	16 1 0 0 f0 1 0 0 
	63 3 0 0 d2 0 0 0 
	8f 1 0 0 a8 2 0 0 
	e0 1 0 0 33 0 0 0 
	6e 3 0 0 d1 1 0 0 
	2b 3 0 0 a9 0 0 0 
	65 3 0 0 a3 2 0 0 
	63 2 0 0 b9 2 0 0 
	63 3 0 0 31 2 0 0 
	5e 3 0 0 af 2 0 0 
	fb 1 0 0 1b 1 0 0 
	e2 1 0 0 81 0 0 0 
	27 3 0 0 4f 2 0 0 
	dd 2 0 0 6f 2 0 0 
	96 0 0 0 ee 0 0 0 
	3b 0 0 0 7b 1 0 0 
	ac 2 0 0 6d 3 0 0 
	71 2 0 0 a9 0 0 0 
	83 2 0 0 69 0 0 0 
	aa 0 0 0 5f 2 0 0 
	8 2 0 0 a4 3 0 0 
	d7 2 0 0 dc 1 0 0 
	b5 2 0 0 a9 1 0 0 
	ae 0 0 0 87 2 0 0 
	49 0 0 0 7a 0 0 0 
	4f 1 0 0 12 2 0 0 
	ba 1 0 0 55 3 0 0 
	b7 2 0 0 f9 0 0 0 
	bd 1 0 0 3 2 0 0 
	8d 3 0 0 21 2 0 0 
	bf 2 0 0 97 3 0 0 
	6a 3 0 0 da 1 0 0 
	72 3 0 0 f4 1 0 0 
	52 2 0 0 64 2 0 0 
	81 2 0 0 21 3 0 0 
	dc 0 0 0 a2 0 0 0 
	33 3 0 0 d8 3 0 0 
	4d 2 0 0 1 2 0 0 
	ef 1 0 0 1f 3 0 0 
	a1 0 0 0 5c 2 0 0 
	be 3 0 0 15 2 0 0 
	dd 0 0 0 90 1 0 0 
	82 1 0 0 63 3 0 0 
	58 2 0 0 e 3 0 0 
	7e 1 0 0 54 2 0 0 
	9e 1 0 0 ab 0 0 0 
	4 2 0 0 77 1 0 0 
	aa 2 0 0 e5 1 0 0 
	8f 3 0 0 14 1 0 0 
	62 0 0 0 29 2 0 0 
	a3 0 0 0 62 1 0 0 
	9a 2 0 0 a5 3 0 0 
	a8 1 0 0 55 1 0 0 
	15 2 0 0 66 3 0 0 
	e3 0 0 0 da 2 0 0 
	db 1 0 0 ba 0 0 0 
	7 1 0 0 87 2 0 0 
	19 2 0 0 ae 2 0 0 
	58 2 0 0 e0 0 0 0 
	d5 1 0 0 44 0 0 0 
	2 3 0 0 97 3 0 0 
	be 0 0 0 75 1 0 0 
	26 1 0 0 36 3 0 0 
	28 3 0 0 ce 0 0 0 
	b8 0 0 0 af 3 0 0 
	1b 3 0 0 80 1 0 0 
	7f 1 0 0 cd 1 0 0 
	94 1 0 0 f6 2 0 0 
	47 3 0 0 77 3 0 0 
	cb 2 0 0 43 0 0 0 
	6a 2 0 0 14 1 0 0 
	cc 0 0 0 96 3 0 0 
	69 3 0 0 9 3 0 0 
	5c 2 0 0 30 2 0 0 
	b7 3 0 0 a0 0 0 0 
	42 2 0 0 d2 2 0 0 
	4f 0 0 0 24 3 0 0 
	60 0 0 0 99 1 0 0 
	c9 2 0 0 ac 3 0 0 
	8c 2 0 0 a6 3 0 0 
	ca 3 0 0 bf 1 0 0 
	3e 1 0 0 61 1 0 0 
	5b 3 0 0 a0 2 0 0 
	70 0 0 0 11 3 0 0 
	85 2 0 0 5f 3 0 0 
	23 3 0 0 5e 1 0 0 
	8b 0 0 0 5d 0 0 0 
	62 1 0 0 63 0 0 0 
	34 3 0 0 8c 3 0 0 
	61 2 0 0 4 3 0 0 
	9a 0 0 0 12 1 0 0 
	44 2 0 0 b8 0 0 0 
	4f 0 0 0 72 2 0 0 
	76 2 0 0 e6 2 0 0 
	8d 2 0 0 1a 1 0 0 
	fa 2 0 0 6f 2 0 0 
	a8 2 0 0 51 0 0 0 
	9f 3 0 0 72 2 0 0 
	15 3 0 0 7d 0 0 0 
	9b 1 0 0 9 2 0 0 
	aa 3 0 0 2c 1 0 0 
	35 3 0 0 4e 0 0 0 
	57 1 0 0 af 0 0 0 
	80 0 0 0 fa 0 0 0 
	aa 0 0 0 6 3 0 0 
	cc 3 0 0 13 1 0 0 
	e7 3 0 0 7f 2 0 0 
	ef 1 0 0 4e 0 0 0 
	60 1 0 0 7e 0 0 0 
	59 3 0 0 bc 3 0 0 
	66 1 0 0 6b 2 0 0 
	44 2 0 0 7c 0 0 0 
	e1 2 0 0 52 2 0 0 
	bd 2 0 0 64 2 0 0 
	9d 2 0 0 70 0 0 0 
	86 0 0 0 b6 2 0 0 
	6b 1 0 0 e0 3 0 0 
	29 3 0 0 e7 2 0 0 
	a8 0 0 0 ce 3 0 0 
	b0 3 0 0 77 1 0 0 
	ec 2 0 0 34 0 0 0 
	58 2 0 0 eb 2 0 0 
	82 2 0 0 b6 0 0 0 
	5e 3 0 0 51 0 0 0 
	58 1 0 0 25 3 0 0 
	dc 3 0 0 e3 2 0 0 
	ff 1 0 0 8f 2 0 0 
	2e 3 0 0 4e 1 0 0 
	f9 0 0 0 3 2 0 0 
	81 3 0 0 bb 3 0 0 
	98 2 0 0 d5 3 0 0 
	89 2 0 0 71 0 0 0 
	ce 3 0 0 cb 1 0 0 
	7d 3 0 0 e4 0 0 0 
	b1 1 0 0 45 3 0 0 
	29 2 0 0 c 1 0 0 
	9e 3 0 0 f0 0 0 0 
	66 0 0 0 8e 2 0 0 
	cb 1 0 0 33 0 0 0 
	ae 2 0 0 f2 2 0 0 
	26 3 0 0 f8 2 0 0 
	ed 1 0 0 93 1 0 0 
	9f 1 0 0 8a 1 0 0 
	af 2 0 0 bc 2 0 0 
	b2 3 0 0 9e 2 0 0 
	90 2 0 0 62 2 0 0 
	e2 2 0 0 88 1 0 0 
	f8 2 0 0 1f 3 0 0 
	77 3 0 0 8d 2 0 0 
	d2 3 0 0 41 1 0 0 
	40 2 0 0 69 2 0 0 
	72 2 0 0 f6 1 0 0 
	7e 3 0 0 a7 2 0 0 
	f3 0 0 0 b8 1 0 0 
	a8 2 0 0 6f 3 0 0 
	c2 0 0 0 3c 2 0 0 
	80 2 0 0 d4 2 0 0 
	9e 3 0 0 38 0 0 0 
	cc 0 0 0 bc 2 0 0 
	c3 2 0 0 97 0 0 0 
	c9 1 0 0 c1 1 0 0 
	1d 3 0 0 c3 0 0 0 
	17 3 0 0 2e 2 0 0 
	b1 3 0 0 a7 2 0 0 
	29 1 0 0 3b 0 0 0 
	57 0 0 0 38 3 0 0 
	c9 2 0 0 97 2 0 0 
	9c 1 0 0 b5 2 0 0 
	56 1 0 0 5e 2 0 0 
	86 0 0 0 6c 0 0 0 
	3b 2 0 0 6c 1 0 0 
	77 2 0 0 d4 0 0 0 
	ae 0 0 0 83 2 0 0 
	30 1 0 0 49 1 0 0 
	57 1 0 0 61 0 0 0 
	ae 1 0 0 ef 2 0 0 
	f1 1 0 0 3a 1 0 0 
	d7 3 0 0 76 1 0 0 
	36 3 0 0 a0 3 0 0 
	8c 0 0 0 ce 0 0 0 
	49 0 0 0 7 1 0 0 
	d4 3 0 0 e0 2 0 0 
	6c 3 0 0 de 1 0 0 
	ae 1 0 0 31 1 0 0 
	aa 0 0 0 2 2 0 0 
	6c 1 0 0 b4 2 0 0 
	3d 3 0 0 52 0 0 0 
	57 3 0 0 b9 3 0 0 
	a4 2 0 0 f6 0 0 0 
	71 1 0 0 ca 3 0 0 
	26 1 0 0 ee 2 0 0 
	27 3 0 0 3b 3 0 0 
	96 0 0 0 16 3 0 0 
	20 1 0 0 9b 3 0 0 
	24 3 0 0 7a 1 0 0 
	d7 0 0 0 3c 3 0 0 
	50 2 0 0 19 1 0 0 
	35 2 0 0 2b 2 0 0 
	c6 2 0 0 52 0 0 0 
	80 3 0 0 3f 3 0 0 
	23 2 0 0 5 1 0 0 
	c 2 0 0 ce 1 0 0 
	25 1 0 0 d1 1 0 0 
	f6 1 0 0 38 0 0 0 
	95 2 0 0 35 3 0 0 
	d0 3 0 0 df 3 0 0 
	92 2 0 0 65 3 0 0 
	89 3 0 0 f6 2 0 0 
	e9 2 0 0 c1 0 0 0 
	0 3 0 0 26 2 0 0 
	60 2 0 0 a5 3 0 0 
	7a 1 0 0 1e 1 0 0 
	d7 0 0 0 d3 3 0 0 
	18 3 0 0 c1 3 0 0 
	3d 0 0 0 b0 2 0 0 
	19 3 0 0 84 2 0 0 
	da 3 0 0 93 1 0 0 
	6a 0 0 0 6e 1 0 0 
	89 3 0 0 84 2 0 0 
	74 1 0 0 37 2 0 0 
	d2 1 0 0 b2 1 0 0 
	85 2 0 0 d2 0 0 0 
	85 1 0 0 26 2 0 0 
	97 3 0 0 87 0 0 0 
	c 3 0 0 5 3 0 0 
	7b 2 0 0 85 1 0 0 
	c3 2 0 0 64 0 0 0 
	72 2 0 0 be 3 0 0 
	a5 0 0 0 f8 1 0 0 
	98 3 0 0 b0 0 0 0 
	c1 0 0 0 c9 2 0 0 
	59 3 0 0 9 1 0 0 
	cb 0 0 0 32 0 0 0 
	9c 2 0 0 6c 0 0 0 
	85 2 0 0 de 3 0 0 
	72 2 0 0 c5 0 0 0 
	fe 1 0 0 65 1 0 0 
	66 1 0 0 52 3 0 0 
	5a 3 0 0 6c 1 0 0 
	a8 3 0 0 7e 2 0 0 
	
)
.field public static valuetype 'int8[]' 'L_125' at $L_125
.data $L_125 = bytearray (a 59 6f 75 20 63 61 6e 
	20 75 73 65 20 74 68 65 
	20 60 62 7a 69 70 32 72 
	65 63 6f 76 65 72 27 20 
	70 72 6f 67 72 61 6d 20 
	74 6f 20 2a 61 74 74 65 
	6d 70 74 2a 20 74 6f 20 
	72 65 63 6f 76 65 72 a 
	64 61 74 61 20 66 72 6f 
	6d 20 75 6e 64 61 6d 61 
	67 65 64 20 73 65 63 74 
	69 6f 6e 73 20 6f 66 20 
	63 6f 72 72 75 70 74 65 
	64 20 66 69 6c 65 73 2e 
	a a 0 
)
.field public static valuetype 'int8[]' 'L_124' at $L_124
.data $L_124 = bytearray (25 73 3a 20 2d 63 20 61 
	6e 64 20 2d 74 20 63 61 
	6e 6e 6f 74 20 62 65 20 
	75 73 65 64 20 74 6f 67 
	65 74 68 65 72 2e a 0 
	
)
.field public static valuetype 'int8[]' 'L_123' at $L_123
.data $L_123 = bytearray (25 73 3a 20 2d 63 20 65 
	78 70 65 63 74 73 20 61 
	74 20 6c 65 61 73 74 20 
	6f 6e 65 20 66 69 6c 65 
	6e 61 6d 65 2e a 0 
)
.field public static valuetype 'int8[]' 'L_122' at $L_122
.data $L_122 = bytearray (25 73 3a 20 49 20 77 6f 
	6e 27 74 20 63 6f 6d 70 
	72 65 73 73 20 6d 75 6c 
	74 69 70 6c 65 20 66 69 
	6c 65 73 20 74 6f 20 73 
	74 64 6f 75 74 2e a 0 
	
)
.field public static valuetype 'int8[]' 'L_121' at $L_121
.data $L_121 = bytearray (2d 2d 0 
)
.field public static valuetype 'int8[]' 'L_120' at $L_120
.data $L_120 = bytearray (2d 2d 68 65 6c 70 0 
)
.field public static valuetype 'int8[]' 'L_119' at $L_119
.data $L_119 = bytearray (2d 2d 76 65 72 62 6f 73 
	65 0 
)
.field public static valuetype 'int8[]' 'L_118' at $L_118
.data $L_118 = bytearray (2d 2d 72 65 70 65 74 69 
	74 69 76 65 2d 62 65 73 
	74 0 
)
.field public static valuetype 'int8[]' 'L_117' at $L_117
.data $L_117 = bytearray (2d 2d 72 65 70 65 74 69 
	74 69 76 65 2d 66 61 73 
	74 0 
)
.field public static valuetype 'int8[]' 'L_116' at $L_116
.data $L_116 = bytearray (2d 2d 6c 69 63 65 6e 73 
	65 0 
)
.field public static valuetype 'int8[]' 'L_115' at $L_115
.data $L_115 = bytearray (2d 2d 76 65 72 73 69 6f 
	6e 0 
)
.field public static valuetype 'int8[]' 'L_114' at $L_114
.data $L_114 = bytearray (2d 2d 73 6d 61 6c 6c 0 
	
)
.field public static valuetype 'int8[]' 'L_113' at $L_113
.data $L_113 = bytearray (2d 2d 6b 65 65 70 0 
)
.field public static valuetype 'int8[]' 'L_112' at $L_112
.data $L_112 = bytearray (2d 2d 74 65 73 74 0 
)
.field public static valuetype 'int8[]' 'L_111' at $L_111
.data $L_111 = bytearray (2d 2d 63 6f 6d 70 72 65 
	73 73 0 
)
.field public static valuetype 'int8[]' 'L_110' at $L_110
.data $L_110 = bytearray (2d 2d 64 65 63 6f 6d 70 
	72 65 73 73 0 
)
.field public static valuetype 'int8[]' 'L_109' at $L_109
.data $L_109 = bytearray (2d 2d 73 74 64 6f 75 74 
	0 
)
.field public static valuetype 'int8[]' 'L_108' at $L_108
.data $L_108 = bytearray (25 73 3a 20 42 61 64 20 
	66 6c 61 67 20 60 25 73 
	27 a 0 
)
.field public static valuetype 'int8[]' 'L_107' at $L_107
.data $L_107 = bytearray (42 55 4e 5a 49 50 32 2e 
	45 58 45 0 
)
.field public static valuetype 'int8[]' 'L_106' at $L_106
.data $L_106 = bytearray (62 75 6e 7a 69 70 32 2e 
	65 78 65 0 
)
.field public static valuetype 'int8[]' 'L_105' at $L_105
.data $L_105 = bytearray (42 55 4e 5a 49 50 32 0 
	
)
.field public static valuetype 'int8[]' 'L_104' at $L_104
.data $L_104 = bytearray (62 75 6e 7a 69 70 32 0 
	
)
.field public static valuetype 'int8[]' 'L_103' at $L_103
.data $L_103 = bytearray (62 7a 69 70 32 3a 20 49 
	27 6d 20 6e 6f 74 20 63 
	6f 6e 66 69 67 75 72 65 
	64 20 63 6f 72 72 65 63 
	74 6c 79 20 66 6f 72 20 
	74 68 69 73 20 70 6c 61 
	74 66 6f 72 6d 21 a 9 
	49 20 72 65 71 75 69 72 
	65 20 49 6e 74 33 32 2c 
	20 49 6e 74 31 36 20 61 
	6e 64 20 43 68 61 72 20 
	74 6f 20 68 61 76 65 20 
	73 69 7a 65 73 a 9 6f 
	66 20 34 2c 20 32 20 61 
	6e 64 20 31 20 62 79 74 
	65 73 20 74 6f 20 72 75 
	6e 20 70 72 6f 70 65 72 
	6c 79 2c 20 61 6e 64 20 
	74 68 65 79 20 64 6f 6e 
	27 74 2e a 9 50 72 6f 
	62 61 62 6c 79 20 79 6f 
	75 20 63 61 6e 20 66 69 
	78 20 74 68 69 73 20 62 
	79 20 64 65 66 69 6e 69 
	6e 67 20 74 68 65 6d 20 
	63 6f 72 72 65 63 74 6c 
	79 2c a 9 61 6e 64 20 
	72 65 63 6f 6d 70 69 6c 
	69 6e 67 2e 20 20 42 79 
	65 21 a 0 
)
.field public static valuetype 'int8[]' 'L_102' at $L_102
.data $L_102 = bytearray (25 73 3a 20 60 6d 61 6c 
	6c 6f 63 27 20 66 61 69 
	6c 65 64 20 6f 6e 20 72 
	65 71 75 65 73 74 20 66 
	6f 72 20 25 64 20 62 79 
	74 65 73 2e a 0 
)
.field public static valuetype 'int8[]' 'L_101' at $L_101
.data $L_101 = bytearray (62 7a 69 70 32 2c 20 61 
	20 62 6c 6f 63 6b 2d 73 
	6f 72 74 69 6e 67 20 66 
	69 6c 65 20 63 6f 6d 70 
	72 65 73 73 6f 72 2e 20 
	20 56 65 72 73 69 6f 6e 
	20 30 2e 31 70 6c 32 2c 
	20 32 39 2d 41 75 67 2d 
	39 37 2e a a 20 20 20 
	75 73 61 67 65 3a 20 25 
	73 20 5b 66 6c 61 67 73 
	20 61 6e 64 20 69 6e 70 
	75 74 20 66 69 6c 65 73 
	20 69 6e 20 61 6e 79 20 
	6f 72 64 65 72 5d a a 
	20 20 20 2d 68 20 2d 2d 
	68 65 6c 70 20 20 20 20 
	20 20 20 20 20 20 20 70 
	72 69 6e 74 20 74 68 69 
	73 20 6d 65 73 73 61 67 
	65 a 20 20 20 2d 64 20 
	2d 2d 64 65 63 6f 6d 70 
	72 65 73 73 20 20 20 20 
	20 66 6f 72 63 65 20 64 
	65 63 6f 6d 70 72 65 73 
	73 69 6f 6e a 20 20 20 
	2d 66 20 2d 2d 63 6f 6d 
	70 72 65 73 73 20 20 20 
	20 20 20 20 66 6f 72 63 
	65 20 63 6f 6d 70 72 65 
	73 73 69 6f 6e a 20 20 
	20 2d 74 20 2d 2d 74 65 
	73 74 20 20 20 20 20 20 
	20 20 20 20 20 74 65 73 
	74 20 63 6f 6d 70 72 65 
	73 73 65 64 20 66 69 6c 
	65 20 69 6e 74 65 67 72 
	69 74 79 a 20 20 20 2d 
	63 20 2d 2d 73 74 64 6f 
	75 74 20 20 20 20 20 20 
	20 20 20 6f 75 74 70 75 
	74 20 74 6f 20 73 74 61 
	6e 64 61 72 64 20 6f 75 
	74 a 20 20 20 2d 76 20 
	2d 2d 76 65 72 62 6f 73 
	65 20 20 20 20 20 20 20 
	20 62 65 20 76 65 72 62 
	6f 73 65 20 28 61 20 32 
	6e 64 20 2d 76 20 67 69 
	76 65 73 20 6d 6f 72 65 
	29 a 20 20 20 2d 6b 20 
	2d 2d 6b 65 65 70 20 20 
	20 20 20 20 20 20 20 20 
	20 6b 65 65 70 20 28 64 
	6f 6e 27 74 20 64 65 6c 
	65 74 65 29 20 69 6e 70 
	75 74 20 66 69 6c 65 73 
	a 20 20 20 2d 4c 20 2d 
	2d 6c 69 63 65 6e 73 65 
	20 20 20 20 20 20 20 20 
	64 69 73 70 6c 61 79 20 
	73 6f 66 74 77 61 72 65 
	20 76 65 72 73 69 6f 6e 
	20 26 20 6c 69 63 65 6e 
	73 65 a 20 20 20 2d 56 
	20 2d 2d 76 65 72 73 69 
	6f 6e 20 20 20 20 20 20 
	20 20 64 69 73 70 6c 61 
	79 20 73 6f 66 74 77 61 
	72 65 20 76 65 72 73 69 
	6f 6e 20 26 20 6c 69 63 
	65 6e 73 65 a 20 20 20 
	2d 73 20 2d 2d 73 6d 61 
	6c 6c 20 20 20 20 20 20 
	20 20 20 20 75 73 65 20 
	6c 65 73 73 20 6d 65 6d 
	6f 72 79 20 28 61 74 20 
	6d 6f 73 74 20 32 35 30 
	30 6b 29 a 20 20 20 2d 
	31 20 2e 2e 20 2d 39 20 
	20 20 20 20 20 20 20 20 
	20 20 20 73 65 74 20 62 
	6c 6f 63 6b 20 73 69 7a 
	65 20 74 6f 20 31 30 30 
	6b 20 2e 2e 20 39 30 30 
	6b a 20 20 20 2d 2d 72 
	65 70 65 74 69 74 69 76 
	65 2d 66 61 73 74 20 20 
	20 63 6f 6d 70 72 65 73 
	73 20 72 65 70 65 74 69 
	74 69 76 65 20 62 6c 6f 
	63 6b 73 20 66 61 73 74 
	65 72 a 20 20 20 2d 2d 
	72 65 70 65 74 69 74 69 
	76 65 2d 62 65 73 74 20 
	20 20 63 6f 6d 70 72 65 
	73 73 20 72 65 70 65 74 
	69 74 69 76 65 20 62 6c 
	6f 63 6b 73 20 62 65 74 
	74 65 72 a a 20 20 20 
	49 66 20 69 6e 76 6f 6b 
	65 64 20 61 73 20 60 62 
	7a 69 70 32 27 2c 20 74 
	68 65 20 64 65 66 61 75 
	6c 74 20 61 63 74 69 6f 
	6e 20 69 73 20 74 6f 20 
	63 6f 6d 70 72 65 73 73 
	2e a 20 20 20 20 20 20 
	20 20 20 20 20 20 20 20 
	61 73 20 60 62 75 6e 7a 
	69 70 32 27 2c 20 74 68 
	65 20 64 65 66 61 75 6c 
	74 20 61 63 74 69 6f 6e 
	20 69 73 20 74 6f 20 64 
	65 63 6f 6d 70 72 65 73 
	73 2e a a 20 20 20 49 
	66 20 6e 6f 20 66 69 6c 
	65 20 6e 61 6d 65 73 20 
	61 72 65 20 67 69 76 65 
	6e 2c 20 62 7a 69 70 32 
	20 63 6f 6d 70 72 65 73 
	73 65 73 20 6f 72 20 64 
	65 63 6f 6d 70 72 65 73 
	73 65 73 a 20 20 20 66 
	72 6f 6d 20 73 74 61 6e 
	64 61 72 64 20 69 6e 70 
	75 74 20 74 6f 20 73 74 
	61 6e 64 61 72 64 20 6f 
	75 74 70 75 74 2e 20 20 
	59 6f 75 20 63 61 6e 20 
	63 6f 6d 62 69 6e 65 a 
	20 20 20 66 6c 61 67 73 
	2c 20 73 6f 20 60 2d 76 
	20 2d 34 27 20 6d 65 61 
	6e 73 20 74 68 65 20 73 
	61 6d 65 20 61 73 20 2d 
	76 34 20 6f 72 20 2d 34 
	76 2c 20 26 63 2e a a 
	0 
)
.field public static valuetype 'int8[]' 'L_100' at $L_100
.data $L_100 = bytearray (62 7a 69 70 32 2c 20 61 
	20 62 6c 6f 63 6b 2d 73 
	6f 72 74 69 6e 67 20 66 
	69 6c 65 20 63 6f 6d 70 
	72 65 73 73 6f 72 2e 20 
	20 56 65 72 73 69 6f 6e 
	20 30 2e 31 70 6c 32 2c 
	20 32 39 2d 41 75 67 2d 
	39 37 2e a 20 20 20 a 
	20 20 20 43 6f 70 79 72 
	69 67 68 74 20 28 43 29 
	20 31 39 39 36 2c 20 31 
	39 39 37 20 62 79 20 4a 
	75 6c 69 61 6e 20 53 65 
	77 61 72 64 2e a 20 20 
	20 a 20 20 20 54 68 69 
	73 20 70 72 6f 67 72 61 
	6d 20 69 73 20 66 72 65 
	65 20 73 6f 66 74 77 61 
	72 65 3b 20 79 6f 75 20 
	63 61 6e 20 72 65 64 69 
	73 74 72 69 62 75 74 65 
	20 69 74 20 61 6e 64 2f 
	6f 72 20 6d 6f 64 69 66 
	79 a 20 20 20 69 74 20 
	75 6e 64 65 72 20 74 68 
	65 20 74 65 72 6d 73 20 
	6f 66 20 74 68 65 20 47 
	4e 55 20 47 65 6e 65 72 
	61 6c 20 50 75 62 6c 69 
	63 20 4c 69 63 65 6e 73 
	65 20 61 73 20 70 75 62 
	6c 69 73 68 65 64 20 62 
	79 a 20 20 20 74 68 65 
	20 46 72 65 65 20 53 6f 
	66 74 77 61 72 65 20 46 
	6f 75 6e 64 61 74 69 6f 
	6e 3b 20 65 69 74 68 65 
	72 20 76 65 72 73 69 6f 
	6e 20 32 20 6f 66 20 74 
	68 65 20 4c 69 63 65 6e 
	73 65 2c 20 6f 72 a 20 
	20 20 28 61 74 20 79 6f 
	75 72 20 6f 70 74 69 6f 
	6e 29 20 61 6e 79 20 6c 
	61 74 65 72 20 76 65 72 
	73 69 6f 6e 2e a 20 20 
	20 a 20 20 20 54 68 69 
	73 20 70 72 6f 67 72 61 
	6d 20 69 73 20 64 69 73 
	74 72 69 62 75 74 65 64 
	20 69 6e 20 74 68 65 20 
	68 6f 70 65 20 74 68 61 
	74 20 69 74 20 77 69 6c 
	6c 20 62 65 20 75 73 65 
	66 75 6c 2c a 20 20 20 
	62 75 74 20 57 49 54 48 
	4f 55 54 20 41 4e 59 20 
	57 41 52 52 41 4e 54 59 
	3b 20 77 69 74 68 6f 75 
	74 20 65 76 65 6e 20 74 
	68 65 20 69 6d 70 6c 69 
	65 64 20 77 61 72 72 61 
	6e 74 79 20 6f 66 a 20 
	20 20 4d 45 52 43 48 41 
	4e 54 41 42 49 4c 49 54 
	59 20 6f 72 20 46 49 54 
	4e 45 53 53 20 46 4f 52 
	20 41 20 50 41 52 54 49 
	43 55 4c 41 52 20 50 55 
	52 50 4f 53 45 2e 20 20 
	53 65 65 20 74 68 65 a 
	20 20 20 47 4e 55 20 47 
	65 6e 65 72 61 6c 20 50 
	75 62 6c 69 63 20 4c 69 
	63 65 6e 73 65 20 66 6f 
	72 20 6d 6f 72 65 20 64 
	65 74 61 69 6c 73 2e a 
	20 20 20 a 20 20 20 59 
	6f 75 20 73 68 6f 75 6c 
	64 20 68 61 76 65 20 72 
	65 63 65 69 76 65 64 20 
	61 20 63 6f 70 79 20 6f 
	66 20 74 68 65 20 47 4e 
	55 20 47 65 6e 65 72 61 
	6c 20 50 75 62 6c 69 63 
	20 4c 69 63 65 6e 73 65 
	a 20 20 20 61 6c 6f 6e 
	67 20 77 69 74 68 20 74 
	68 69 73 20 70 72 6f 67 
	72 61 6d 3b 20 69 66 20 
	6e 6f 74 2c 20 77 72 69 
	74 65 20 74 6f 20 74 68 
	65 20 46 72 65 65 20 53 
	6f 66 74 77 61 72 65 a 
	20 20 20 46 6f 75 6e 64 
	61 74 69 6f 6e 2c 20 49 
	6e 63 2e 2c 20 36 37 35 
	20 4d 61 73 73 20 41 76 
	65 2c 20 43 61 6d 62 72 
	69 64 67 65 2c 20 4d 41 
	20 30 32 31 33 39 2c 20 
	55 53 41 2e a 20 20 20 
	a 20 20 20 54 68 65 20 
	47 4e 55 20 47 65 6e 65 
	72 61 6c 20 50 75 62 6c 
	69 63 20 4c 69 63 65 6e 
	73 65 20 69 73 20 63 6f 
	6e 74 61 69 6e 65 64 20 
	69 6e 20 74 68 65 20 66 
	69 6c 65 20 4c 49 43 45 
	4e 53 45 2e a 20 20 20 
	a 0 
)
.field public static valuetype 'int8[]' 'L_99' at $L_99
.data $L_99 = bytearray (74 65 73 74 66 3a 20 62 
	61 64 20 73 72 63 4d 6f 
	64 65 0 
)
.field public static valuetype 'int8[]' 'L_98' at $L_98
.data $L_98 = bytearray (28 6e 6f 6e 65 29 0 
)
.field public static valuetype 'int8[]' 'L_97' at $L_97
.data $L_97 = bytearray (74 65 73 74 66 3a 20 62 
	61 64 20 6d 6f 64 65 73 
	a 0 
)
.field public static valuetype 'int8[]' 'L_96' at $L_96
.data $L_96 = bytearray (25 73 3a 20 25 73 20 69 
	73 20 6e 6f 74 20 61 20 
	62 7a 69 70 32 20 66 69 
	6c 65 2c 20 73 6b 69 70 
	70 69 6e 67 2e a 0 
)
.field public static valuetype 'int8[]' 'L_95' at $L_95
.data $L_95 = bytearray (6e 6f 74 20 61 20 62 7a 
	69 70 32 20 66 69 6c 65 
	2c 20 73 6b 69 70 70 69 
	6e 67 2e a 0 
)
.field public static valuetype 'int8[]' 'L_94' at $L_94
.data $L_94 = bytearray (64 6f 6e 65 a 0 
)
.field public static valuetype 'int8[]' 'L_93' at $L_93
.data $L_93 = bytearray (75 6e 63 6f 6d 70 72 65 
	73 73 3a 20 62 61 64 20 
	73 72 63 4d 6f 64 65 0 
	
)
.field public static valuetype 'int8[]' 'L_92' at $L_92
.data $L_92 = bytearray (25 73 3a 20 49 20 77 6f 
	6e 27 74 20 72 65 61 64 
	20 63 6f 6d 70 72 65 73 
	73 65 64 20 64 61 74 61 
	20 66 72 6f 6d 20 61 20 
	74 65 72 6d 69 6e 61 6c 
	2e a 0 
)
.field public static valuetype 'int8[]' 'L_91' at $L_91
.data $L_91 = bytearray (25 73 3a 20 49 6e 70 75 
	74 20 66 69 6c 65 20 6e 
	61 6d 65 20 25 73 20 64 
	6f 65 73 6e 27 74 20 65 
	6e 64 20 69 6e 20 60 2e 
	62 7a 32 27 2c 20 73 6b 
	69 70 70 69 6e 67 2e a 
	0 
)
.field public static valuetype 'int8[]' 'L_90' at $L_90
.data $L_90 = bytearray (75 6e 63 6f 6d 70 72 65 
	73 73 3a 20 62 61 64 20 
	6d 6f 64 65 73 a 0 
)
.field public static valuetype 'int8[]' 'L_89' at $L_89
.data $L_89 = bytearray (20 20 25 73 3a 20 0 
)
.field public static valuetype 'int8[]' 'L_88' at $L_88
.data $L_88 = bytearray (63 6f 6d 70 72 65 73 73 
	3a 20 62 61 64 20 73 72 
	63 4d 6f 64 65 0 
)
.field public static valuetype 'int8[]' 'L_87' at $L_87
.data $L_87 = bytearray (25 73 3a 20 43 61 6e 27 
	74 20 63 72 65 61 74 65 
	20 6f 75 74 70 75 74 20 
	66 69 6c 65 20 25 73 2c 
	20 73 6b 69 70 70 69 6e 
	67 2e a 0 
)
.field public static valuetype 'int8[]' 'L_86' at $L_86
.data $L_86 = bytearray (77 62 0 
)
.field public static valuetype 'int8[]' 'L_85' at $L_85
.data $L_85 = bytearray (25 73 3a 20 43 61 6e 27 
	74 20 6f 70 65 6e 20 69 
	6e 70 75 74 20 66 69 6c 
	65 20 25 73 2c 20 73 6b 
	69 70 70 69 6e 67 2e a 
	0 
)
.field public static valuetype 'int8[]' 'L_84' at $L_84
.data $L_84 = bytearray (25 73 3a 20 46 6f 72 20 
	68 65 6c 70 2c 20 74 79 
	70 65 3a 20 60 25 73 20 
	2d 2d 68 65 6c 70 27 2e 
	a 0 
)
.field public static valuetype 'int8[]' 'L_83' at $L_83
.data $L_83 = bytearray (25 73 3a 20 49 20 77 6f 
	6e 27 74 20 77 72 69 74 
	65 20 63 6f 6d 70 72 65 
	73 73 65 64 20 64 61 74 
	61 20 74 6f 20 61 20 74 
	65 72 6d 69 6e 61 6c 2e 
	a 0 
)
.field public static valuetype 'int8[]' 'L_82' at $L_82
.data $L_82 = bytearray (25 73 3a 20 4f 75 74 70 
	75 74 20 66 69 6c 65 20 
	25 73 20 61 6c 72 65 61 
	64 79 20 65 78 69 73 74 
	73 2c 20 73 6b 69 70 70 
	69 6e 67 2e a 0 
)
.field public static valuetype 'int8[]' 'L_81' at $L_81
.data $L_81 = bytearray (25 73 3a 20 49 6e 70 75 
	74 20 66 69 6c 65 20 25 
	73 20 69 73 20 6e 6f 74 
	20 61 20 6e 6f 72 6d 61 
	6c 20 66 69 6c 65 2c 20 
	73 6b 69 70 70 69 6e 67 
	2e a 0 
)
.field public static valuetype 'int8[]' 'L_80' at $L_80
.data $L_80 = bytearray (25 73 3a 20 49 6e 70 75 
	74 20 66 69 6c 65 20 6e 
	61 6d 65 20 25 73 20 65 
	6e 64 73 20 69 6e 20 60 
	2e 62 7a 32 27 2c 20 73 
	6b 69 70 70 69 6e 67 2e 
	a 0 
)
.field public static valuetype 'int8[]' 'L_79' at $L_79
.data $L_79 = bytearray (25 73 3a 20 49 6e 70 75 
	74 20 66 69 6c 65 20 25 
	73 20 64 6f 65 73 6e 27 
	74 20 65 78 69 73 74 2c 
	20 73 6b 69 70 70 69 6e 
	67 2e a 0 
)
.field public static valuetype 'int8[]' 'L_78' at $L_78
.data $L_78 = bytearray (25 73 3a 20 54 68 65 72 
	65 20 61 72 65 20 6e 6f 
	20 66 69 6c 65 73 20 6d 
	61 74 63 68 69 6e 67 20 
	60 25 73 27 2e a 0 
)
.field public static valuetype 'int8[]' 'L_77' at $L_77
.data $L_77 = bytearray (2e 62 7a 32 0 
)
.field public static valuetype 'int8[]' 'L_76' at $L_76
.data $L_76 = bytearray (28 73 74 64 6f 75 74 29 
	0 
)
.field public static valuetype 'int8[]' 'L_75' at $L_75
.data $L_75 = bytearray (28 73 74 64 69 6e 29 0 
	
)
.field public static valuetype 'int8[]' 'L_74' at $L_74
.data $L_74 = bytearray (63 6f 6d 70 72 65 73 73 
	3a 20 62 61 64 20 6d 6f 
	64 65 73 a 0 
)
.field public static valuetype 'int8[]' 'L_73' at $L_73
.data $L_73 = bytearray (72 62 0 
)
.field public static valuetype 'int8[]' 'L_72' at $L_72
.data $L_72 = bytearray (20 0 
)
.field public static valuetype 'int8[]' 'L_71' at $L_71
.data $L_71 = bytearray (a 25 73 3a 20 43 61 6e 
	27 74 20 61 6c 6c 6f 63 
	61 74 65 20 65 6e 6f 75 
	67 68 20 6d 65 6d 6f 72 
	79 20 66 6f 72 20 63 6f 
	6d 70 72 65 73 73 69 6f 
	6e 2e a 9 52 65 71 75 
	65 73 74 65 64 20 25 64 
	20 62 79 74 65 73 20 66 
	6f 72 20 61 20 62 6c 6f 
	63 6b 20 73 69 7a 65 20 
	6f 66 20 25 64 2e a 9 
	54 72 79 20 73 65 6c 65 
	63 74 69 6e 67 20 61 20 
	73 6d 61 6c 6c 20 62 6c 
	6f 63 6b 20 73 69 7a 65 
	20 28 77 69 74 68 20 66 
	6c 61 67 20 2d 73 29 2e 
	a 0 
)
.field public static valuetype 'int8[]' 'L_70' at $L_70
.data $L_70 = bytearray (a 25 73 3a 20 43 61 6e 
	27 74 20 61 6c 6c 6f 63 
	61 74 65 20 65 6e 6f 75 
	67 68 20 6d 65 6d 6f 72 
	79 20 66 6f 72 20 64 65 
	63 6f 6d 70 72 65 73 73 
	69 6f 6e 2e a 9 52 65 
	71 75 65 73 74 65 64 20 
	25 64 20 62 79 74 65 73 
	20 66 6f 72 20 61 20 62 
	6c 6f 63 6b 20 73 69 7a 
	65 20 6f 66 20 25 64 2e 
	a 9 54 72 79 20 73 65 
	6c 65 63 74 69 6e 67 20 
	73 70 61 63 65 2d 65 63 
	6f 6e 6f 6d 69 63 20 64 
	65 63 6f 6d 70 72 65 73 
	73 20 28 77 69 74 68 20 
	66 6c 61 67 20 2d 73 29 
	a 9 61 6e 64 20 66 61 
	69 6c 69 6e 67 20 74 68 
	61 74 2c 20 66 69 6e 64 
	20 61 20 6d 61 63 68 69 
	6e 65 20 77 69 74 68 20 
	6d 6f 72 65 20 6d 65 6d 
	6f 72 79 2e a 0 
)
.field public static valuetype 'int8[]' 'L_69' at $L_69
.data $L_69 = bytearray (a 25 73 3a 20 43 61 75 
	67 68 74 20 61 20 53 49 
	47 53 45 47 56 20 6f 72 
	20 53 49 47 42 55 53 20 
	77 68 69 6c 73 74 20 64 
	65 63 6f 6d 70 72 65 73 
	73 69 6e 67 2c a 9 77 
	68 69 63 68 20 70 72 6f 
	62 61 62 6c 79 20 69 6e 
	64 69 63 61 74 65 73 20 
	74 68 61 74 20 74 68 65 
	20 63 6f 6d 70 72 65 73 
	73 65 64 20 64 61 74 61 
	a 9 69 73 20 63 6f 72 
	72 75 70 74 65 64 2e a 
	0 
)
.field public static valuetype 'int8[]' 'L_68' at $L_68
.data $L_68 = bytearray (a 25 73 3a 20 43 61 75 
	67 68 74 20 61 20 53 49 
	47 53 45 47 56 20 6f 72 
	20 53 49 47 42 55 53 20 
	77 68 69 6c 73 74 20 63 
	6f 6d 70 72 65 73 73 69 
	6e 67 2c a 9 77 68 69 
	63 68 20 70 72 6f 62 61 
	62 6c 79 20 69 6e 64 69 
	63 61 74 65 73 20 61 20 
	62 75 67 20 69 6e 20 62 
	7a 69 70 32 2e 20 20 50 
	6c 65 61 73 65 a 9 72 
	65 70 6f 72 74 20 69 74 
	20 74 6f 20 6d 65 20 61 
	74 3a 20 6a 73 65 77 61 
	72 64 40 61 63 6d 2e 6f 
	72 67 a 0 
)
.field public static valuetype 'int8[]' 'L_67' at $L_67
.data $L_67 = bytearray (a 25 73 3a 20 43 6f 6e 
	74 72 6f 6c 2d 43 20 28 
	6f 72 20 73 69 6d 69 6c 
	61 72 29 20 63 61 75 67 
	68 74 2c 20 71 75 69 74 
	74 69 6e 67 2e a 0 
)
.field public static valuetype 'int8[]' 'L_66' at $L_66
.data $L_66 = bytearray (a 25 73 3a 20 72 65 61 
	64 20 70 61 73 74 20 74 
	68 65 20 65 6e 64 20 6f 
	66 20 63 6f 6d 70 72 65 
	73 73 65 64 20 64 61 74 
	61 2c a 9 77 68 69 63 
	68 20 70 72 6f 62 61 62 
	6c 79 20 6d 65 61 6e 73 
	20 69 74 20 69 73 20 63 
	6f 72 72 75 70 74 65 64 
	2e a 0 
)
.field public static valuetype 'int8[]' 'L_65' at $L_65
.data $L_65 = bytearray (a 25 73 3a 20 62 61 64 
	20 62 6c 6f 63 6b 20 68 
	65 61 64 65 72 20 69 6e 
	20 74 68 65 20 63 6f 6d 
	70 72 65 73 73 65 64 20 
	66 69 6c 65 2c a 9 77 
	68 69 63 68 20 70 72 6f 
	62 61 62 6c 79 20 6d 65 
	61 6e 73 20 69 74 20 69 
	73 20 63 6f 72 72 75 70 
	74 65 64 2e a 0 
)
.field public static valuetype 'int8[]' 'L_64' at $L_64
.data $L_64 = bytearray (a 25 73 3a 20 62 6c 6f 
	63 6b 20 6f 76 65 72 72 
	75 6e 20 64 75 72 69 6e 
	67 20 64 65 63 6f 6d 70 
	72 65 73 73 69 6f 6e 2c 
	a 9 77 68 69 63 68 20 
	70 72 6f 62 61 62 6c 79 
	20 6d 65 61 6e 73 20 74 
	68 65 20 63 6f 6d 70 72 
	65 73 73 65 64 20 66 69 
	6c 65 a 9 69 73 20 63 
	6f 72 72 75 70 74 65 64 
	2e a 0 
)
.field public static valuetype 'int8[]' 'L_63' at $L_63
.data $L_63 = bytearray (a 25 73 3a 20 49 2f 4f 
	20 6f 72 20 6f 74 68 65 
	72 20 65 72 72 6f 72 2c 
	20 62 61 69 6c 69 6e 67 
	20 6f 75 74 2e 20 20 50 
	6f 73 73 69 62 6c 65 20 
	72 65 61 73 6f 6e 20 66 
	6f 6c 6c 6f 77 73 2e a 
	0 
)
.field public static valuetype 'int8[]' 'L_62' at $L_62
.data $L_62 = bytearray (a 25 73 3a 20 43 6f 6d 
	70 72 65 73 73 65 64 20 
	66 69 6c 65 20 65 6e 64 
	73 20 75 6e 65 78 70 65 
	63 74 65 64 6c 79 3b a 
	9 70 65 72 68 61 70 73 
	20 69 74 20 69 73 20 63 
	6f 72 72 75 70 74 65 64 
	3f 20 20 2a 50 6f 73 73 
	69 62 6c 65 2a 20 72 65 
	61 73 6f 6e 20 66 6f 6c 
	6c 6f 77 73 2e a 0 
)
.field public static valuetype 'int8[]' 'L_61' at $L_61
.data $L_61 = bytearray (a 25 73 3a 20 44 61 74 
	61 20 69 6e 74 65 67 72 
	69 74 79 20 65 72 72 6f 
	72 20 77 68 65 6e 20 64 
	65 63 6f 6d 70 72 65 73 
	73 69 6e 67 2e a 9 53 
	74 6f 72 65 64 20 43 52 
	43 20 3d 20 30 78 25 78 
	2c 20 63 6f 6d 70 75 74 
	65 64 20 43 52 43 20 3d 
	20 30 78 25 78 a 0 
)
.field public static valuetype 'int8[]' 'L_60' at $L_60
.data $L_60 = bytearray (a 25 73 3a 20 65 72 72 
	6f 72 20 77 68 65 6e 20 
	72 65 61 64 69 6e 67 20 
	62 61 63 6b 67 72 6f 75 
	6e 64 20 6d 6f 64 65 6c 
	20 63 6f 64 65 20 6c 65 
	6e 67 74 68 73 2c a 9 
	77 68 69 63 68 20 70 72 
	6f 62 61 62 6c 79 20 6d 
	65 61 6e 73 20 74 68 65 
	20 63 6f 6d 70 72 65 73 
	73 65 64 20 66 69 6c 65 
	20 69 73 20 63 6f 72 72 
	75 70 74 65 64 2e a 0 
	
)
.field public static valuetype 'int8[]' 'L_59' at $L_59
.data $L_59 = bytearray (a 25 73 3a 20 50 41 4e 
	49 43 20 2d 2d 20 69 6e 
	74 65 72 6e 61 6c 20 63 
	6f 6e 73 69 73 74 65 6e 
	63 79 20 65 72 72 6f 72 
	3a a 9 25 73 a 9 54 
	68 69 73 20 69 73 20 61 
	20 42 55 47 2e 20 20 50 
	6c 65 61 73 65 20 72 65 
	70 6f 72 74 20 69 74 20 
	74 6f 20 6d 65 20 61 74 
	3a a 9 6a 73 65 77 61 
	72 64 40 61 63 6d 2e 6f 
	72 67 a 0 
)
.field public static valuetype 'int8[]' 'L_58' at $L_58
.data $L_58 = bytearray (25 73 3a 20 57 41 52 4e 
	49 4e 47 3a 20 73 6f 6d 
	65 20 66 69 6c 65 73 20 
	68 61 76 65 20 6e 6f 74 
	20 62 65 65 6e 20 70 72 
	6f 63 65 73 73 65 64 3a 
	a 9 25 64 20 73 70 65 
	63 69 66 69 65 64 20 6f 
	6e 20 63 6f 6d 6d 61 6e 
	64 20 6c 69 6e 65 2c 20 
	25 64 20 6e 6f 74 20 70 
	72 6f 63 65 73 73 65 64 
	20 79 65 74 2e a a 0 
	
)
.field public static valuetype 'int8[]' 'L_57' at $L_57
.data $L_57 = bytearray (25 73 3a 20 57 41 52 4e 
	49 4e 47 3a 20 64 65 6c 
	65 74 69 6f 6e 20 6f 66 
	20 6f 75 74 70 75 74 20 
	66 69 6c 65 20 28 61 70 
	70 61 72 65 6e 74 6c 79 
	29 20 66 61 69 6c 65 64 
	2e a 0 
)
.field public static valuetype 'int8[]' 'L_56' at $L_56
.data $L_56 = bytearray (25 73 3a 20 44 65 6c 65 
	74 69 6e 67 20 6f 75 74 
	70 75 74 20 66 69 6c 65 
	20 25 73 2c 20 69 66 20 
	69 74 20 65 78 69 73 74 
	73 2e a 0 
)
.field public static valuetype 'int8[]' 'L_55' at $L_55
.data $L_55 = bytearray (28 6e 75 6c 6c 29 0 
)
.field public static valuetype 'int8[]' 'L_54' at $L_54
.data $L_54 = bytearray (9 49 6e 70 75 74 20 66 
	69 6c 65 20 3d 20 25 73 
	2c 20 6f 75 74 70 75 74 
	20 66 69 6c 65 20 3d 20 
	25 73 a 0 
)
.field public static valuetype 'int8[]' 'L_53' at $L_53
.data $L_53 = bytearray (a 49 74 20 69 73 20 70 
	6f 73 73 69 62 6c 65 20 
	74 68 61 74 20 74 68 65 
	20 63 6f 6d 70 72 65 73 
	73 65 64 20 66 69 6c 65 
	28 73 29 20 68 61 76 65 
	20 62 65 63 6f 6d 65 20 
	63 6f 72 72 75 70 74 65 
	64 2e a 59 6f 75 20 63 
	61 6e 20 75 73 65 20 74 
	68 65 20 2d 74 76 76 20 
	6f 70 74 69 6f 6e 20 74 
	6f 20 74 65 73 74 20 69 
	6e 74 65 67 72 69 74 79 
	20 6f 66 20 73 75 63 68 
	20 66 69 6c 65 73 2e a 
	a 59 6f 75 20 63 61 6e 
	20 75 73 65 20 74 68 65 
	20 60 62 7a 69 70 32 72 
	65 63 6f 76 65 72 27 20 
	70 72 6f 67 72 61 6d 20 
	74 6f 20 2a 61 74 74 65 
	6d 70 74 2a 20 74 6f 20 
	72 65 63 6f 76 65 72 a 
	64 61 74 61 20 66 72 6f 
	6d 20 75 6e 64 61 6d 61 
	67 65 64 20 73 65 63 74 
	69 6f 6e 73 20 6f 66 20 
	63 6f 72 72 75 70 74 65 
	64 20 66 69 6c 65 73 2e 
	a a 0 
)
.field public static valuetype 'int8[]' 'L_52' at $L_52
.data $L_52 = bytearray (a 25 73 3a 20 63 6f 6d 
	70 75 74 65 64 20 43 52 
	43 20 64 6f 65 73 20 6e 
	6f 74 20 6d 61 74 63 68 
	20 73 74 6f 72 65 64 20 
	6f 6e 65 a 0 
)
.field public static valuetype 'int8[]' 'L_51' at $L_51
.data $L_51 = bytearray (20 20 20 20 63 6f 6d 62 
	69 6e 65 64 20 43 52 43 
	73 3a 20 73 74 6f 72 65 
	64 20 3d 20 30 78 25 78 
	2c 20 63 6f 6d 70 75 74 
	65 64 20 3d 20 30 78 25 
	78 a 20 20 20 20 0 
)
.field public static valuetype 'int8[]' 'L_50' at $L_50
.data $L_50 = bytearray (6f 6b a 0 
)
.field public static valuetype 'int8[]' 'L_49' at $L_49
.data $L_49 = bytearray (a 25 73 2c 20 62 6c 6f 
	63 6b 20 25 64 3a 20 63 
	6f 6d 70 75 74 65 64 20 
	43 52 43 20 64 6f 65 73 
	20 6e 6f 74 20 6d 61 74 
	63 68 20 73 74 6f 72 65 
	64 20 6f 6e 65 a 0 
)
.field public static valuetype 'int8[]' 'L_48' at $L_48
.data $L_48 = bytearray (20 20 20 20 62 6c 6f 63 
	6b 20 5b 25 64 3a 20 68 
	75 66 66 2b 6d 74 66 20 
	0 
)
.field public static valuetype 'int8[]' 'L_47' at $L_47
.data $L_47 = bytearray (a 25 73 2c 20 62 6c 6f 
	63 6b 20 25 64 3a 20 62 
	61 64 20 68 65 61 64 65 
	72 20 28 6e 6f 74 20 3d 
	3d 20 30 78 33 31 34 31 
	35 39 32 36 35 33 35 39 
	29 a 0 
)
.field public static valuetype 'int8[]' 'L_46' at $L_46
.data $L_46 = bytearray (a 25 73 3a 20 62 61 64 
	20 6d 61 67 69 63 20 6e 
	75 6d 62 65 72 20 28 69 
	65 2c 20 6e 6f 74 20 63 
	72 65 61 74 65 64 20 62 
	79 20 62 7a 69 70 32 29 
	a 0 
)
.field public static valuetype 'int8[]' 'L_45' at $L_45
.data $L_45 = bytearray (63 6f 6d 62 69 6e 65 64 
	20 43 52 43 73 3a 20 73 
	74 6f 72 65 64 20 3d 20 
	30 78 25 78 2c 20 63 6f 
	6d 70 75 74 65 64 20 3d 
	20 30 78 25 78 a 20 20 
	20 20 0 
)
.field public static valuetype 'int8[]' 'L_44' at $L_44
.data $L_44 = bytearray (5d 20 0 
)
.field public static valuetype 'int8[]' 'L_43' at $L_43
.data $L_43 = bytearray (20 7b 30 78 25 78 2c 20 
	30 78 25 78 7d 0 
)
.field public static valuetype 'int8[]' 'L_42' at $L_42
.data $L_42 = bytearray (72 74 2b 72 6c 64 0 
)
.field public static valuetype 'int8[]' 'L_41' at $L_41
.data $L_41 = bytearray (5b 25 64 3a 20 68 75 66 
	66 2b 6d 74 66 20 0 
)
.field public static valuetype 'int8[]' 'L_40' at $L_40
.data $L_40 = bytearray (a 20 20 20 20 0 
)
.field public static valuetype 'int8[]' 'L_39' at $L_39
.data $L_39 = bytearray (25 36 2e 33 66 3a 31 2c 
	20 25 36 2e 33 66 20 62 
	69 74 73 2f 62 79 74 65 
	2c 20 25 35 2e 32 66 25 
	25 20 73 61 76 65 64 2c 
	20 25 64 20 69 6e 2c 20 
	25 64 20 6f 75 74 2e a 
	0 
)
.field public static valuetype 'int8[]' 'L_38' at $L_38
.data $L_38 = bytearray (20 20 20 20 66 69 6e 61 
	6c 20 63 6f 6d 62 69 6e 
	65 64 20 43 52 43 20 3d 
	20 30 78 25 78 a 20 20 
	20 0 
)
.field public static valuetype 'int8[]' 'L_37' at $L_37
.data $L_37 = bytearray (73 0 
)
.field public static valuetype 'int8[]' 'L_36' at $L_36
.data $L_36 = bytearray (0 
)
.field public static valuetype 'int8[]' 'L_35' at $L_35
.data $L_35 = bytearray (20 20 20 20 25 64 20 62 
	6c 6f 63 6b 25 73 20 6e 
	65 65 64 65 64 20 72 61 
	6e 64 6f 6d 69 73 61 74 
	69 6f 6e a 0 
)
.field public static valuetype 'int8[]' 'L_34' at $L_34
.data $L_34 = bytearray (20 20 20 20 62 6c 6f 63 
	6b 20 25 64 3a 20 63 72 
	63 20 3d 20 30 78 25 38 
	78 2c 20 63 6f 6d 62 69 
	6e 65 64 20 43 52 43 20 
	3d 20 30 78 25 38 78 2c 
	20 73 69 7a 65 20 3d 20 
	25 64 0 
)
.field public static valuetype 'int8[]' 'L_33' at $L_33
.data $L_33 = bytearray (67 65 74 52 4c 45 70 61 
	69 72 3a 20 75 6e 67 65 
	74 63 20 66 61 69 6c 65 
	64 0 
)
.field public static valuetype 'int8[]' 'L_32' at $L_32
.data $L_32 = bytearray (64 6f 52 65 76 65 72 73 
	69 62 6c 65 54 72 61 6e 
	73 66 6f 72 6d 61 74 69 
	6f 6e 0 
)
.field public static valuetype 'int8[]' 'L_31' at $L_31
.data $L_31 = bytearray (20 20 20 20 20 20 25 64 
	20 77 6f 72 6b 2c 20 25 
	64 20 62 6c 6f 63 6b 2c 
	20 72 61 74 69 6f 20 25 
	66 a 0 
)
.field public static valuetype 'int8[]' 'L_30' at $L_30
.data $L_30 = bytearray (20 20 20 20 73 6f 72 74 
	69 6e 67 20 61 62 6f 72 
	74 65 64 3b 20 72 61 6e 
	64 6f 6d 69 73 69 6e 67 
	20 62 6c 6f 63 6b a 0 
	
)
.field public static valuetype 'int8[]' 'L_29' at $L_29
.data $L_29 = bytearray (20 20 20 20 20 20 25 64 
	20 77 6f 72 6b 2c 20 25 
	64 20 62 6c 6f 63 6b 2c 
	20 72 61 74 69 6f 20 25 
	35 2e 32 66 a 0 
)
.field public static valuetype 'int8[]' 'L_28' at $L_28
.data $L_28 = bytearray (20 20 20 20 20 20 20 20 
	25 64 20 70 6f 69 6e 74 
	65 72 73 2c 20 25 64 20 
	73 6f 72 74 65 64 2c 20 
	25 64 20 73 63 61 6e 6e 
	65 64 a 0 
)
.field public static valuetype 'int8[]' 'L_27' at $L_27
.data $L_27 = bytearray (73 6f 72 74 49 74 0 
)
.field public static valuetype 'int8[]' 'L_26' at $L_26
.data $L_26 = bytearray (20 20 20 20 20 20 20 20 
	71 73 6f 72 74 20 5b 30 
	78 25 78 2c 20 30 78 25 
	78 5d 20 20 20 64 6f 6e 
	65 20 25 64 20 20 20 74 
	68 69 73 20 25 64 a 0 
	
)
.field public static valuetype 'int8[]' 'L_25' at $L_25
.data $L_25 = bytearray (20 20 20 20 20 20 20 20 
	62 75 63 6b 65 74 20 73 
	6f 72 74 69 6e 67 20 2e 
	2e 2e a 0 
)
.field public static valuetype 'int8[]' 'L_24' at $L_24
.data $L_24 = bytearray (20 20 20 20 20 20 20 20 
	73 69 6d 70 6c 65 53 6f 
	72 74 20 64 6f 6e 65 2e 
	a 0 
)
.field public static valuetype 'int8[]' 'L_23' at $L_23
.data $L_23 = bytearray (20 20 20 20 20 20 20 20 
	73 69 6d 70 6c 65 53 6f 
	72 74 20 2e 2e 2e a 0 
	
)
.field public static valuetype 'int8[]' 'L_22' at $L_22
.data $L_22 = bytearray (20 20 20 20 20 20 20 20 
	73 6f 72 74 20 69 6e 69 
	74 69 61 6c 69 73 65 20 
	2e 2e 2e a 0 
)
.field public static valuetype 'int8[]' 'L_21' at $L_21
.data $L_21 = bytearray (73 74 61 63 6b 20 6f 76 
	65 72 66 6c 6f 77 20 69 
	6e 20 71 53 6f 72 74 33 
	0 
)
.field public static valuetype 'int8[]' 'L_20' at $L_20
.data $L_20 = bytearray (20 20 20 20 20 20 20 20 
	20 20 73 68 65 6c 6c 20 
	69 6e 63 72 65 6d 65 6e 
	74 20 25 64 a 0 
)
.field public static valuetype 'int8[]' 'L_19' at $L_19
.data $L_19 = bytearray (63 6f 64 65 73 20 25 64 
	a 0 
)
.field public static valuetype 'int8[]' 'L_18' at $L_18
.data $L_18 = bytearray (73 65 6e 64 4d 54 46 56 
	61 6c 75 65 73 28 35 29 
	0 
)
.field public static valuetype 'int8[]' 'L_17' at $L_17
.data $L_17 = bytearray (63 6f 64 65 20 6c 65 6e 
	67 74 68 73 20 25 64 2c 
	20 0 
)
.field public static valuetype 'int8[]' 'L_16' at $L_16
.data $L_16 = bytearray (73 65 6c 65 63 74 6f 72 
	73 20 25 64 2c 20 0 
)
.field public static valuetype 'int8[]' 'L_15' at $L_15
.data $L_15 = bytearray (20 20 20 20 20 20 62 79 
	74 65 73 3a 20 6d 61 70 
	70 69 6e 67 20 25 64 2c 
	20 0 
)
.field public static valuetype 'int8[]' 'L_14' at $L_14
.data $L_14 = bytearray (73 65 6e 64 4d 54 46 56 
	61 6c 75 65 73 28 34 29 
	0 
)
.field public static valuetype 'int8[]' 'L_13' at $L_13
.data $L_13 = bytearray (73 65 6e 64 4d 54 46 56 
	61 6c 75 65 73 28 33 29 
	0 
)
.field public static valuetype 'int8[]' 'L_12' at $L_12
.data $L_12 = bytearray (73 65 6e 64 4d 54 46 56 
	61 6c 75 65 73 28 32 29 
	0 
)
.field public static valuetype 'int8[]' 'L_11' at $L_11
.data $L_11 = bytearray (73 65 6e 64 4d 54 46 56 
	61 6c 75 65 73 28 31 29 
	0 
)
.field public static valuetype 'int8[]' 'L_10' at $L_10
.data $L_10 = bytearray (a 0 
)
.field public static valuetype 'int8[]' 'L_9' at $L_9
.data $L_9 = bytearray (25 64 20 0 
)
.field public static valuetype 'int8[]' 'L_8' at $L_8
.data $L_8 = bytearray (20 20 20 20 20 20 70 61 
	73 73 20 25 64 3a 20 73 
	69 7a 65 20 69 73 20 25 
	64 2c 20 67 72 70 20 75 
	73 65 73 20 61 72 65 20 
	0 
)
.field public static valuetype 'int8[]' 'L_7' at $L_7
.data $L_7 = bytearray (20 20 20 20 20 20 69 6e 
	69 74 69 61 6c 20 67 72 
	6f 75 70 20 25 64 2c 20 
	5b 25 64 20 2e 2e 20 25 
	64 5d 2c 20 68 61 73 20 
	25 64 20 73 79 6d 73 20 
	28 25 34 2e 31 66 25 25 
	29 a 0 
)
.field public static valuetype 'int8[]' 'L_6' at $L_6
.data $L_6 = bytearray (73 65 6e 64 4d 54 46 56 
	61 6c 75 65 73 28 30 29 
	0 
)
.field public static valuetype 'int8[]' 'L_5' at $L_5
.data $L_5 = bytearray (20 20 20 20 20 20 25 64 
	20 69 6e 20 62 6c 6f 63 
	6b 2c 20 25 64 20 61 66 
	74 65 72 20 4d 54 46 20 
	26 20 31 2d 32 20 63 6f 
	64 69 6e 67 2c 20 25 64 
	2b 32 20 73 79 6d 73 20 
	69 6e 20 75 73 65 a 0 
	
)
.field public static valuetype 'int8[]' 'L_4' at $L_4
.data $L_4 = bytearray (73 65 74 44 65 63 6f 6d 
	70 72 65 73 73 53 74 72 
	75 63 74 75 72 65 53 69 
	7a 65 73 0 
)
.field public static valuetype 'int8[]' 'L_3' at $L_3
.data $L_3 = bytearray (68 62 4d 61 6b 65 43 6f 
	64 65 4c 65 6e 67 74 68 
	73 28 32 29 0 
)
.field public static valuetype 'int8[]' 'L_2' at $L_2
.data $L_2 = bytearray (68 62 4d 61 6b 65 43 6f 
	64 65 4c 65 6e 67 74 68 
	73 28 31 29 0 
)
.field public static valuetype 'int8[]' 'L_1' at $L_1
.data $L_1 = bytearray (62 73 53 65 74 53 74 72 
	65 61 6d 0 
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
.class private value explicit ansi sealed 'int32[512]' {.pack 1 .size 2048}
.class private value explicit ansi sealed 'int32[14]' {.pack 1 .size 56}
.class private value explicit ansi sealed 'uint32[256]' {.pack 1 .size 1024}
.class private value explicit ansi sealed 'int32[6][258]' {.pack 1 .size 6192}
.class private value explicit ansi sealed 'int32[6]' {.pack 1 .size 24}
.class private value explicit ansi sealed 'uint8[6][258]' {.pack 1 .size 1548}
.class private value explicit ansi sealed 'int32[258]' {.pack 1 .size 1032}
.class private value explicit ansi sealed 'uint8[18002]' {.pack 1 .size 18002}
.class private value explicit ansi sealed 'uint8[256]' {.pack 1 .size 256}
.class private value explicit ansi sealed 'int32[256]' {.pack 1 .size 1024}
.class private value explicit ansi sealed 'int8[1024]' {.pack 1 .size 1024}
.class private value explicit ansi sealed '_utimbuf' {.pack 1 .size 8}
.class private value explicit ansi sealed '_stat' {.pack 1 .size 36}
.class private value explicit ansi sealed 'int32[257]' {.pack 1 .size 1028}
.class private value explicit ansi sealed '__anontype_400306509_0' {.pack 1 .size 12}
.class private value explicit ansi sealed '__anontype_400306509_0[1000]' {.pack 1 .size 12000}
.class private value explicit ansi sealed 'uint8[6]' {.pack 1 .size 6}
.class private value explicit ansi sealed 'uint8[16]' {.pack 1 .size 16}
.class private value explicit ansi sealed 'uint16[6]' {.pack 1 .size 12}
.class private value explicit ansi sealed 'int32[516]' {.pack 1 .size 2064}
.class private value explicit ansi sealed 'int32[260]' {.pack 1 .size 1040}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'utime'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 '_stat'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 '_setmode'(int32, int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 '_isatty'(int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 '_chmod'(void*, int32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'strncmp'(void*, void*, uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) uint32 'strlen'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strcpy'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'strcmp'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'strcat'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'ferror'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'ungetc'(int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'remove'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'perror'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fputc'(int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) vararg int32 'fprintf'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'fopen'(void*, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 '_fileno'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fgetc'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fflush'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) int32 'fclose'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'free'(void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* 'malloc'(uint32) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '_errno'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__pctype_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void* '__iob_func'() preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void '__getmainargs'(void*, void*, void*, int32, void*) preservesig {}
.method public hidebysig static pinvokeimpl("msvcrt.dll" cdecl) void 'exit'(int32) preservesig {}
