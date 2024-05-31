cmake_minimum_required(VERSION 3.15)
project(Rooster CXX)



add_executable(Rooster src/Rooster.cpp src/main.cpp)



install(TARGETS Rooster DESTINATION "."
        RUNTIME DESTINATION bin
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        )
