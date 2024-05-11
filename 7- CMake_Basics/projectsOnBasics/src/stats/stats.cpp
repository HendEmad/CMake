#include "C:\Users\Data-DCS\CMake\CMake_Basics\projectsOnBasics\src\math\include\supermath.h"
#include "C:\Users\Data-DCS\CMake\CMake_Basics\projectsOnBasics\src\stats\include\stats.h"
#include "C:\Users\Data-DCS\CMake\CMake_Basics\projectsOnBasics\src\math\supermath.cpp"

double mean(int* values, int count) {
    int sum = 0;
    for(int i = 0; i < count; i++) {
        sum = add(sum, values[i]);
    }
    return double(sum) / count;
}