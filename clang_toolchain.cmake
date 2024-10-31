set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_ASM_COMPILER clang)
set(CMAKE_LINKER lld)

set(CMAKE_AR llvm-ar)
set(CMAKE_OBJCOPY llvm-objcopy)
set(CMAKE_OBJCOPY_BIN llvm-objcopy)
set(CMAKE_RANLIB llvm-ranlib)
set(CMAKE_STRIP llvm-strip)
set(CMAKE_SIZE_BIN llvm-size)
set(CMAKE_NM llvm-nm)

set(CMAKE_C_COMPILER_TARGET wasm32-unknown-unknown)
set(CMAKE_CXX_COMPILER_TARGET wasm32-unknown-unknown)
set(CMAKE_ASM_COMPILER_TARGET wasm32-unknown-unknown)

set(CMAKE_ASM_FLAGS_MINSIZEREL "-Oz -DNDEBUG" CACHE STRING "")
set(CMAKE_C_FLAGS_MINSIZEREL "-Oz -DNDEBUG" CACHE STRING "")
set(CMAKE_CXX_FLAGS_MINSIZEREL "-Oz -DNDEBUG" CACHE STRING "")
