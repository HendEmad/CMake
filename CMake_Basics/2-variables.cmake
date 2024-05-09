# Declaring variables; Regular variables
set (var1 "Text1")
set ([[var2]] "text2")
set ("var3" "text3")

# Printing values
message (${var1})  # Text1
message (${var2})  # Text2
message (${var3})  # Text3

# Variable reference
set (one abc)
set (two ${one}de)
set (three ${two} fg)
set (four thre)
set(five ${${four}e})

message (${one})  # abc
message (${two})  # abcde
message (${three})  # abcdefg
message (${four})  # thre
message (${five})  # abcdefg

# Environment variables
# Your own environemnt variables will affect the running cmake instance only, they won't affect the system variables
set (ENV{MY_PATH} "c:/Program Files/parent/child/bin")
message ($ENV{MY_PATH})  # c:/Program Files/parent/child/bin

# To read environemnt variables from your system
message ($ENV{TMP})  # C:\Users\Data-DCS\AppData\Local\Temp
message ($ENV{ZES_ENABLE_SYSMAN})  # 1

# Cache variables
set(cache_var "The value" CACHE STRING "This is a cache variable")
message (${cache_var})  # The value

# Pre-defined variables
# Print the cmake version
message (${CMAKE_VERSION})  # 3.29.2
# Print the location of the cmake executable
message (${CMAKE_COMMAND})  # C:/Program Files/CMake/bin/cmake.exe
# Print the location of the current list file
message (${CMAKE_CURRENT_LIST_FILE})  # C:/Users/Data-DCS/CMake/CMake_Basics/2-variables.cmake