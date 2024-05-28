#include <gtest/gtest.h>
#include <string>
#include <sstream>
#include <iostream>
#include "C:\Users\Data-DCS\CMake\11-Generating_Documentation\2-GeneratingDocumentation_doxygen_add_doc\src\Calculator.h"

extern int run_app(int argc, char** argv);

TEST(run_appTest, run_app) {
    std::stringstream buffer;
    std::streambuf* prevcoutbuf = std::cout.rdbuf(buffer.rdbuf());

    run_app(1, nullptr);

    std::cout.rdbuf(prevcoutbuf);
    std::cout << "Actual output is: " << buffer.str() << std::endl;
    std::string expected_output = "add(10,4): 14\nsub(10,4): 6\nmul(10,4): 40\ndiv(10,4): 2\nmod(10,4): 2\n";
    EXPECT_EQ(buffer.str(), expected_output);
}