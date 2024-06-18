#include <iostream>
#include "operations.h"
#include "dog.h"
#include "logger/include/log.h"
using namespace std;

int main(){

    double result = add(2,70);
    cout << "result : " << result << endl;

    Dog dog("Flitzy");
    dog.print_info();

   log_data("Hello there",logType::FATAL_ERROR);

    return 0;
}