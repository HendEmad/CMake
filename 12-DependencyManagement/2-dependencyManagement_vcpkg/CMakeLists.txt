cmake_minimum_required(VERSION 3.20)

# Set the toolchain file for vcpkg
set(CMAKE_TOOLCHAIN_FILE "$ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")

project(Dependencies)

# Enable testing
enable_testing()

# Append custom CMake module path
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

# Set C++ standard
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find packages using vcpkg
find_package(Catch2 CONFIG REQUIRED)
find_package(fmt CONFIG REQUIRED)
find_package(SFML COMPONENTS graphics window system CONFIG REQUIRED)

# Add subdirectories
add_subdirectory(src)
add_subdirectory(test)
add_subdirectory(docs)

# Define the executable targets
add_executable(rooster main.cpp)
target_link_libraries(rooster PRIVATE run_app)

add_executable(gui gui.cpp)
target_link_libraries(gui PRIVATE sfml-graphics sfml-window sfml-system)

add_executable(use_fmt use_fmt.cpp)
target_link_libraries(use_fmt PRIVATE fmt::fmt)

# Output CMake module path for debugging
message(STATUS "CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")
