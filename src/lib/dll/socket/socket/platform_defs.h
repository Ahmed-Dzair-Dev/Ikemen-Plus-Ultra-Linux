#ifndef PLATFORM_DEFS_H
#define PLATFORM_DEFS_H

#ifdef _WIN32
    #define STDCALL __stdcall
#else
    #define STDCALL
#endif

#endif // PLATFORM_DEFS_H
