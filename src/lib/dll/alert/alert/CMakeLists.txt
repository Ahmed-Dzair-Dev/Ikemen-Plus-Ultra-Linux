cmake_minimum_required(VERSION 3.10)
project(alert)

# Set C++ standard (assuming modern C++)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Force 32-bit build on Linux
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -m32")

# Set output name and directory
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# Create shared library
add_library(alert SHARED 
    alert.cpp
)

# Set the output name to libalert.so
set_target_properties(alert PROPERTIES
    OUTPUT_NAME "alert"
    PREFIX "lib"
    SUFFIX ".so"
)

# Optimization flags for Release build
target_compile_options(alert PRIVATE
    $<$<CONFIG:Release>:-O3 -fomit-frame-pointer -finline-functions>
    $<$<CONFIG:Debug>:-O0 -g>
)

# Set library version if needed
# set_target_properties(alert PROPERTIES VERSION 1.0.0 SOVERSION 1)

# Install rules (optional)
install(TARGETS alert
    LIBRARY DESTINATION lib
)
