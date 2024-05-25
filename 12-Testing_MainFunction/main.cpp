#include <iostream>

int run_app(int agc, char** argv);

int main() {  
    run_app(0, nullptr);  // (no.of parameters, null for the list of arguments)
    return 0;
}