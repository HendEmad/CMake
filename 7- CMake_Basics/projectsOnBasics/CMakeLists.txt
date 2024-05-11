cmake_minimum_required(VERSION 3.20)
project(Rooster)

set(OUR_PROJECT_VERSION "One")

#[=[
the add_subdirectory command sets up a new variable scope. The OUR_PROJECT_VERSION variable is being set to three in CMakeLists.txt. 
We will see output saying that the project version is "One"; because the variables are set in included files live in their own scope.
#]=]

# Set up a cache variable named THE_SKY_IS_BLUE
set(THE_SKY_IS_BLUE "Yes" CACHE STRING "Is the sky blue?")

#The math lib.
add_subdirectory(src/math)
# The stats lib.
add_subdirectory(src/stats)

#Set the source files to use
set(SOURCE_FILES
    src/main.cpp
    src/information.cpp
    src/information.h)

function(create_and_link_executable EXEC_NAME LIB_NAME SOURCES)
    add_executable(${EXEC_NAME} ${${SOURCES}})
    target_link_libraries(${EXEC_NAME} PUBLIC ${LIB_NAME})
endfunction()

# The executable targer:
# add_executable(rooster ${SOURCE_FILES})
# targer_link_libraries(rooster PUBLIC libstats)


create_and_link_executable(rooster libstats SOURCE_FILES)

message("Our project version is: ${OUR_PROJECT_VERSION}")
message("Custom message: The compiler we are using is ${CMAKE_CXX_COMPILER}")
message("The processor architecture is $ENV{PROCESSOR_ARCHITECTURE}")
message(${THE_SKY_IS_BLUE})