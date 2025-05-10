cmake_minimum_required(VERSION 3.10)
project(Ikemen_Plus_Ultra)

# Change this line in your CMakeLists.txt
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Force 32-bit build on 64-bit systems
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32")

# Define build configurations
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -D_DEBUG -DWIN32 -D_WINDOWS")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -DNDEBUG -DWIN32 -D_WINDOWS -O3")

# Set build types
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build." FORCE)
endif()

# Set output directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# Source files
set(SOURCE_FILES
    main.cpp
)

# Define the executable
add_executable(${PROJECT_NAME} ${SOURCE_FILES})

# Set properties for different configurations
set_target_properties(${PROJECT_NAME} PROPERTIES
    OUTPUT_NAME "Ikemen_Plus_Ultra"
    DEBUG_POSTFIX "_d"
)

# Link libraries (Ubuntu/Debian equivalents to Windows libraries)
target_link_libraries(${PROJECT_NAME}
    # Add any Linux equivalents of Windows libraries here
    # Example: SDL2 instead of Direct3D
)

# Install rules
install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION bin
)

# Unicode support (equivalent to CharacterSet Unicode in Visual Studio)
add_definitions(-DUNICODE -D_UNICODE)

# Additional compiler flags to mimic Visual Studio optimization settings
if(CMAKE_BUILD_TYPE STREQUAL "Release")
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 -ffast-math")
endif()