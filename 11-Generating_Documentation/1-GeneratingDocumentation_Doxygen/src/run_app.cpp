#include <iostream>
#include "C:\Users\Data-DCS\CMake\13-GeneratingDocumentation_Doxygen\src\calculator.h"
using namespace std;

int run_app(int agc, char** argv) {
    calculator calc;
    cout << "add(10,4): " << calc.add(10, 4) << endl;
    cout << "sub(10,4): " << calc.sub(10, 4) << endl;
    cout << "mul(10,4): " << calc.mul(10, 4) << endl;
    cout << "div(10,4): " << calc.div(10, 4) << endl;
    cout << "mod(10,4): " << calc.mod(10, 4) << endl;
    return 0;
} 