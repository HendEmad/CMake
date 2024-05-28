#include <gtest/gtest.h>
#include "C:\Users\Data-DCS\CMake\11-Generating_Documentation\2-GeneratingDocumentation_doxygen_add_doc\src\Calculator.h"

TEST(calculatrTest, add) {
    Calculator calc;
    EXPECT_EQ(calc.add(2,3), 5);
    EXPECT_EQ(calc.add(-2,3), 1);
    EXPECT_EQ(calc.add(0,0), 0);
}

TEST(calculatrTest, sub) {
    Calculator calc;
    EXPECT_EQ(calc.sub(5,3), 2);
    EXPECT_EQ(calc.sub(3,5), -2);
    EXPECT_EQ(calc.sub(0,0), 0);
}

TEST(calculatrTest, mul) {
    Calculator calc;
    EXPECT_EQ(calc.mul(2,3), 6);
    EXPECT_EQ(calc.mul(-2,3), -6);
    EXPECT_EQ(calc.mul(0,0), 0);
}

TEST(calculatrTest, div) {
    Calculator calc;
    EXPECT_EQ(calc.div(6,3), 2);
    EXPECT_EQ(calc.div(5,2), 2);
}

TEST(calculatrTest, mod) {
    Calculator calc;
    EXPECT_EQ(calc.mod(6,4), 2);
    EXPECT_EQ(calc.mod(5,2), 1);
}