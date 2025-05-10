# Install script for directory: /home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/build/lib/libssz.so.1.0.0"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/build/lib/libssz.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/build/lib/libssz.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssz.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ssz" TYPE FILE FILES
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/anticircular.hpp"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/arrayandref.hpp"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/compiler-state.hpp"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/errmes.hpp"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/jitcompiler.hpp"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/pluginutil.hpp"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/source.hpp"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/sourcetree.hpp"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/sszdef.h"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/tokenkind.h"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/tostring.hpp"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/typeid.h"
    "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/x86.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/sis/Documents/ikemenplus/Ikemen-Plus-Ultra-srcOnly/src/lib/dll/ssz/ssz/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
