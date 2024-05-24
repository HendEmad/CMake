#include <iostream>
#include <fmt/format.h>
#include "person.h"

int main() {
    Person p ("Hend", 23);
    std::cout << fmt::format("{} is {} years old.", p.getName(), p.getAge()) << std::endl;
    
    Person p2("John", 30);
    std::cout << fmt::format("{} is {} years old.", p2.getName(), p2.getAge()) << std::endl;

    fmt::println("Hello, world!");
    return 0;
}