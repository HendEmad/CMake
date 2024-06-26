cmake_minimum_required(VERSION 3.20)
project(Dependencies)

enable_testing()

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(CPM)
CPMAddPackage("gh:catchorg/Catch2#v3.4.0")
CPMAddPackage("gh:fmtlib/fmt#10.1.1")
CPMAddPackage("gh:SFML/SFML#2.6.1")

add_subdirectory(src)
add_subdirectory(test)
add_subdirectory(docs)

add_executable(rooster main.cpp)
target_link_libraries(rooster PRIVATE run_app)

add_executable(gui gui.cpp)
target_link_libraries(gui PRIVATE sfml-graphics sfml-window sfml-system)

add_executable(use_fmt use_fmt.cpp)
target_link_libraries(use_fmt PRIVATE fmt::fmt)
