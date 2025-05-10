cmake_minimum_required(VERSION 3.10) # Minimum required CMake version

# Define the project name and language
project(shell CXX)

# Add the source file to create a shared library
# The library will be named 'shell', and CMake will automatically
# prefix 'lib' and suffix '.so' on Linux, resulting in 'libshell.so'.
add_library(shell SHARED shell.cpp)

# --- Configure for 32-bit build ---
# This requires a 32-bit compatible toolchain and libraries installed
# on your Linux system (e.g., gcc-multilib, g++-multilib on Debian/Ubuntu).
# The -m32 flag tells the compiler and linker to target 32-bit architecture.
target_compile_options(shell PRIVATE -m32)
target_link_options(shell PRIVATE -m32)

# --- Optional Configurations (Mapping from vcxproj) ---
# The vcxproj had Debug and Release configurations. CMake handles these
# automatically via the build type (e.g., Debug, Release, RelWithDebInfo, MinSizeRel).
# Optimization levels are typically handled by the build type.
# Debug info is also handled by the build type.

# You can customize output directories if needed, but CMake's defaults are usually fine.
# set_target_properties(shell PROPERTIES
#     LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
# )

# The .def file is Windows-specific for symbol export and is not used on Linux.
# On Linux, symbol visibility is typically controlled by compiler attributes
# (e.g., __attribute__((visibility("default")))) in the source code, or by
# default behavior (often all non-static symbols are exported).
# This CMakeLists.txt assumes the source code handles visibility if needed,
# or that default export behavior is acceptable.
