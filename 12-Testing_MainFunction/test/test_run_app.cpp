#include <catch2/catch_test_macros.hpp>
#include <string>
#include <sstream>
#include <iostream>
#include "C:\Users\Data-DCS\CMake\12-Testing_MainFunction\src\calculator.h"
using namespace std;

extern int run_app(int argc, char** argv);

TEST_CASE("Test run_app function", "[run_appp]") {
    // Redirect cout to a stringstream
    stringstream buffer;
    streambuf* prevcoutbuf = cout.rdbuf(buffer.rdbuf());

    run_app(1, nullptr);

    // Restre cout to the previous buffer
    cout.rdbuf(prevcoutbuf);

    // check the output and compare it with the expected one
    string expected_output = "add(10, 4): 14\nsub(10, 4): 6\ndiv(10, 4): 2\nmul(10, 4): 40\nmod(10, 4): 2\n";
    REQUIRE(buffer.str() == expected_output);
}