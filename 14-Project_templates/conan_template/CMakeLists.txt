cmake_minimum_required(VERSION 3.20)

set(CMAKE_TOOLCHAIN_FILE "${CMAKE_BINARY_DIR}/conan_toolchain.cmake")

project(Rooster VERSION 1.0.0 LANGUAGES CXX)
enable_testing()
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

#Require C++20
set(CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 20)

#Bring  in the depencies
find_package(fmt CONFIG REQUIRED)
find_package(GTest CONFIG REQUIRED)
find_package(sfml CONFIG REQUIRED)

set(stest_force_shared_crt ON CACHE BOOL "" FORCE)

add_subdirectory(src/lib1)
add_subdirectory(src/lib2)
add_subdirectory(src/arithmetic)
add_subdirectory(src/core)
add_subdirectory(test)
add_subdirectory(docs)

#Create an executable that uses the core library
add_executable(rooster src/main/main.cpp)
# target_link_libraries(main core lib1 lib2 arithmetic fmt)
# Link the executable witht the core library
target_link_libraries(rooster PRIVATE sfml-graphics)

include(ClangFormat)
add_clang_format_target(format-code ${PROJECT_SOURCE_DIR})