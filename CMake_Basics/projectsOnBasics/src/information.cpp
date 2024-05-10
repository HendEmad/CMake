#include "information.h"

namespace Logging {
    std::string getOsName() {
        #ifdef _WIN32
            return "Windows 32-bit";
        #elif _WIN64
            return "Windows 64-bit";
        #elif _APPLE_ || _MACH_
            return "Mac OSX";
        #elif _linux_
            return "Linux";
        #elif _FreeBSD_
            return "FreeBSD";
        #elif __unix || __unix__
            return "Unix";
        #else
            return "Other";
        #endif
    }
};