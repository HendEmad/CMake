# A function that mimicks the return mechanism
function(ModifyGlobalVariables var1 var2)
    set(${var1} "New value for var1" PARENT_SCOPE)  # change the value of var1 globally
    set(${var2} "New value for var2" PARENT_SCOPE)
endfunction()

# Define two global variables
set(globalVar1 "Original value for var1")
set(globalVar2 "Original value for var2")

message("Before function call: ")
message("Global var1 = ${globalVar1}")
message("Global var2 = ${globalVar2}")

# Call the function to modify the global variables
ModifyGlobalVariables(globalVar1 globalVar2)

message("After funciton call: ")
message("Global var1 = ${globalVar1}")
message("Global var2 = ${globalVar2}")

# A function to increment a variable
function(Incrementvariable var)
    math (EXPR ${var} "${${var}} + 1")
    set(${var} ${${var}} PARENT_SCOPE)
endfunction()

set(variable 0) 
# call the funciton to increment the variable
Incrementvariable(variable)
message("My variable: ${variable}")

Incrementvariable(variable)
message("My variable: ${variable}")

# a loop to call the incrementable function twice
foreach(loop_var RANGE 1)
    message("loop var: ${loop_var}")
    Incrementvariable(variable)
endforeach()

message("My variable: ${variable}")