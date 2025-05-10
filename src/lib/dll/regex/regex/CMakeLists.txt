cmake_minimum_required(VERSION 3.10)
project(regex)

# Set C++ standard (assuming modern C++)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Force 32-bit build on Linux
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -m32")

# Create shared library
add_library(regex SHARED regex.cpp)

# Set the output name to libregex.so
set_target_properties(regex PROPERTIES
    OUTPUT_NAME regex
    PREFIX "lib"
    SUFFIX ".so"
)

# Add preprocessor definitions equivalent to the original project
target_compile_definitions(regex PRIVATE
    $<$<CONFIG:Debug>:_DEBUG>
    $<$<CONFIG:Release>:NDEBUG>
)

# Set optimization levels
target_compile_options(regex PRIVATE
    $<$<CONFIG:Debug>:-O0 -g>
    $<$<CONFIG:Release>:-O3>
)

# Install the library
install(TARGETS regex
    LIBRARY DESTINATION lib
)
