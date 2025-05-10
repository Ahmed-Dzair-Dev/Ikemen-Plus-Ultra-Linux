#ifdef _WIN32
#include <windows.h>
#include <process.h>
// Windows-specific code
#else
// Linux/Unix equivalent headers and code
#include <dlfcn.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#endif

// Fix the __stdcall definition to avoid conflicts
#if !defined(_WIN32) && !defined(__stdcall)
// Leave this empty - don't redefine it here as it will be defined in sszdef.h
#endif

#include <stdint.h>

// Use the same function pointer type on both platforms
void* (*sszrefnewfunc)(intptr_t);
void (*sszrefdeletefunc)(void*);

#include "../../ssz/ssz/sszdef.h"
#include "../../ssz/ssz/typeid.h"
#include "../../ssz/ssz/arrayandref.hpp"
#include "../../ssz/ssz/pluginutil.hpp"

// Add the refToStr implementation here
#ifndef _WIN32
std::string PluginUtil::refToStr(Reference ref) {
    // Use std::WSTR instead of std::wstring
    std::WSTR wstr = refToWstr(ref);
    // Convert WSTR (char16_t) to string (char)
    std::string str;
    for (char16_t ch : wstr) {
        // Simple conversion - just take the lower byte for ASCII
        // This is a simplified approach and may not work for all Unicode characters
        if (ch < 256) {
            str.push_back(static_cast<char>(ch));
        } else {
            // For non-ASCII characters, add a placeholder
            str.push_back('?');
        }
    }
    return str;
}
#endif

TUserFunc(bool, ShellOpen, bool act, bool wait, Reference direct, Reference param, Reference file) {
#ifdef _WIN32
    SHELLEXECUTEINFO sei;
    std::wstring f = pu->refToWstr(file);
    std::wstring p = pu->refToWstr(param);
    std::wstring d = pu->refToWstr(direct);
    sei.cbSize = sizeof(sei);
    sei.fMask = wait ? SEE_MASK_NOCLOSEPROCESS : 0;
    sei.hwnd = 0;
    sei.lpVerb = L"open";
    sei.lpFile = f.c_str();
    sei.lpParameters = p.c_str();
    sei.lpDirectory = d.c_str();
    sei.nShow = (act ? SW_NORMAL : SW_SHOWMINNOACTIVE);
    if(ShellExecuteEx(&sei)){
        if(wait) WaitForSingleObject(sei.hProcess, INFINITE);
    }else{
        return false;
    }
    return true;
#else
    // Linux implementation
    // Use refToStr directly instead of trying to convert from WSTR to wstring
    std::string f = pu->refToStr(file);
    std::string p = pu->refToStr(param);
    std::string d = pu->refToStr(direct);

    // Save current directory if we need to change it
    char cwd[PATH_MAX];
    bool needDirChange = !d.empty();
    if (needDirChange && getcwd(cwd, sizeof(cwd)) == NULL) {
        return false;
    }

    // Change to specified directory if needed
    if (needDirChange && chdir(d.c_str()) != 0) {
        return false;
    }

    // Build command
    std::string cmd = "xdg-open \"" + f + "\"";
    if (!p.empty()) {
        cmd += " " + p;
    }

    // Execute command
    int result;
    if (wait) {
        result = system(cmd.c_str());
    } else {
        cmd += " &";
        result = system(cmd.c_str());
    }

    // Restore original directory if needed
    if (needDirChange) {
        chdir(cwd);
    }
    return (result == 0);
#endif
}

TUserFunc(bool, MoveTrash, Reference file) {
#ifdef _WIN32
    std::wstring f = pu->refToWstr(file);
    wchar_t* pwc = _wfullpath(NULL, f.c_str(), 0);
    if(pwc == NULL) return false;
    f = pwc;
    free(pwc);
    SHFILEOPSTRUCT sfos;
    ZeroMemory(&sfos, sizeof(SHFILEOPSTRUCT));
    f += L'\0';
    f += L'\0';
    sfos.hwnd = NULL;
    sfos.wFunc = FO_DELETE;
    sfos.pFrom = f.data();
    sfos.fFlags = FOF_ALLOWUNDO | FOF_NOCONFIRMATION | FOF_WANTNUKEWARNING;
    return SHFileOperation(&sfos) == 0;
#else
    // Linux implementation
    // Use refToStr directly
    std::string f = pu->refToStr(file);

    // Try using gio trash (GNOME)
    std::string cmd = "gio trash \"" + f + "\" 2>/dev/null";
    int result = system(cmd.c_str());

    // If gio fails, try trash-cli
    if (result != 0) {
        cmd = "trash-put \"" + f + "\" 2>/dev/null";
        result = system(cmd.c_str());
    }

    // If both fail, try rm as a last resort
    if (result != 0) {
        cmd = "rm -f \"" + f + "\"";
        result = system(cmd.c_str());
    }
    return (result == 0);
#endif
}
