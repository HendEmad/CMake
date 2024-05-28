include(AddGoogleTest)

add_executable(
    unit_tests
    test_calc.cpp
    test_run_app.cpp
)

target_link_libraries(
    unit_tests PRIVATE run_app GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(unit_tests)