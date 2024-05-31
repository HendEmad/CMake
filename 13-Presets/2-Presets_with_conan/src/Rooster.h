#pragma once

#include <vector>
#include <string>


#ifdef _WIN32
  #define ROOSTER_EXPORT __declspec(dllexport)
#else
  #define ROOSTER_EXPORT
#endif

ROOSTER_EXPORT void Rooster();
ROOSTER_EXPORT void Rooster_print_vector(const std::vector<std::string> &strings);
