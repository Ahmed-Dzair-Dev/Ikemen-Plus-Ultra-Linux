cmake_minimum_required(VERSION 3.10)
project(ssz)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Force 32-bit build
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32")

# Set output directory
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# Configure build types
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g -O0")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 -DNDEBUG")

# Set default build type if not specified
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build." FORCE)
endif()

# Source files
set(SOURCE_FILES
    ssz.cpp
)

# Header files
set(HEADER_FILES
    anticircular.hpp
    arrayandref.hpp
    compiler-state.hpp
    errmes.hpp
    jitcompiler.hpp
    pluginutil.hpp
    source.hpp
    sourcetree.hpp
    sszdef.h
    tokenkind.h
    tostring.hpp
    typeid.h
    x86.hpp
)

# Create shared library
add_library(ssz SHARED ${SOURCE_FILES} ${HEADER_FILES})

# Set library properties
set_target_properties(ssz PROPERTIES
    OUTPUT_NAME "ssz"
    VERSION 1.0.0
    SOVERSION 1
    POSITION_INDEPENDENT_CODE ON
)

# Add compiler flags for optimization (similar to Visual Studio settings)
if(CMAKE_BUILD_TYPE STREQUAL "Release")
    target_compile_options(ssz PRIVATE
        -O3                # Full optimization (equivalent to /Ox)
        -ffast-math        # Fast math operations
        -fomit-frame-pointer # Omit frame pointers
    )
endif()

# Add compiler flags for debug mode
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    target_compile_options(ssz PRIVATE
        -g                 # Generate debug information
        -O0                # No optimization
    )
endif()

# Add necessary libraries
target_link_libraries(ssz
    pthread
    dl
)

# Install the library
install(TARGETS ssz
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)

# Install headers
install(FILES ${HEADER_FILES}
    DESTINATION include/ssz
)
