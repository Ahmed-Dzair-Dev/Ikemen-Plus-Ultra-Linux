cmake_minimum_required(VERSION 3.10)
project(file)

# Set C++ standard (assuming C++11 as a reasonable default)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Force 32-bit build on Linux
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -m32")

# Set output name to libfile.so
set(CMAKE_SHARED_LIBRARY_PREFIX "lib")
set(CMAKE_SHARED_LIBRARY_SUFFIX ".so")

# Create shared library target
add_library(file SHARED file.cpp)

# Set the output directory for the shared library
set_target_properties(file PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
)

# Configure build types
# Debug configuration
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0 -g")

# Release configuration
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -finline-functions -fomit-frame-pointer")

# Include directories (adapt as needed)
target_include_directories(file PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    # Add other include directories as needed
)

# Install rules
install(TARGETS file
    LIBRARY DESTINATION lib
)
