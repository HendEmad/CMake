#include "calculator.h"
#include <iostream>
using namespace std;

int calculator::add(int a, int b) {
    return a + b;
}

int calculator::sub(int a, int b) {
    return a - b;
}

int calculator::mul(int a, int b) {
    return a * b;
}

int calculator::div(int a, int b) {
    return a / b;
}

int calculator::mod(int a, int b) {
    return a % b;
}

void calculator::print_description() {
    cout << "This is a simple calculator class that can add, sub, mul, div, and mod two numbers using C++" << endl;
} 