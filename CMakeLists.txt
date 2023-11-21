set(srcs
    "src/runtime/builder.c"
    "src/runtime/emitter.c"
    "src/runtime/refmap.c"
    "src/runtime/verifier.c"
    "src/runtime/json_parser.c"
    "src/runtime/json_printer.c")

set(include_dirs config include)

set(priv_include_dirs config include)

list(APPEND priv_include_dirs)

add_prefix(srcs "${CMAKE_CURRENT_LIST_DIR}/flatcc/" ${srcs})
add_prefix(include_dirs "${CMAKE_CURRENT_LIST_DIR}/flatcc/" ${include_dirs})
add_prefix(priv_include_dirs "${CMAKE_CURRENT_LIST_DIR}/flatcc/" ${priv_include_dirs})

message(STATUS "DEBUG: Using flatcc component folder: ${CMAKE_CURRENT_LIST_DIR}.")

idf_component_register(SRCS "${srcs}"
                    INCLUDE_DIRS "${include_dirs}"
                    PRIV_INCLUDE_DIRS "${priv_include_dirs}")

