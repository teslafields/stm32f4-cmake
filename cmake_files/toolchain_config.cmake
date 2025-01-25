set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
add_compile_options(
    -Wall
    -g3 -Og
    -mlittle-endian
    -mthumb
    -mcpu=cortex-m4
    -mthumb-interwork
    -mfloat-abi=hard
    -mfpu=fpv4-sp-d16
)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} \
    -Wl,--print-memory-usage \
    -Wl,--no-export-dynamic \
    -Wall -g \
    -fno-common \
    -mthumb \
    -mcpu=cortex-m4 \
    -mthumb-interwork \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -Xlinker --gc-sections \
    -Xlinker -static \
    -Xlinker -z \
    -Xlinker muldefs \
    -static \
" )
