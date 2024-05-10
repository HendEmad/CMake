# A macro to modify a variable in the global scope
macro(ModifyGlobalVariables var1 var2) 
    set (${var1} "New value for var1")
    set(${var2} "New value for var2")
endmacro()

# Define the global variables
set(globalVar1 "Original value for var1")
set(globalVar2 "original value for var2")

message("Before macro call: ")
message("globalVar1 = ${globalVar1}")
message("globalVar2 = ${globalVar2}")

# Call the function to modify the global variables
ModifyGlobalVariables(globalVar1 globalVar2)

message ("After macro call: ")
message("globalVar1 = ${globalVar1}")
message("globalVar2 = ${globalVar2}")
 
# What is going to happen when the macro is called?
# The cmake runtime will copy the code inside the body of the macro and put it in the place of calling statement,
# and then replace places of the parameters with the new variables inside the call statement, in this example:
# var1 is replaced with globalVar1 and var2 is replaced with globalVar2
# The body will be like: 
# set(${globalVar1} "new value for var1")
# set(${globalVar2} "new value for var2")
# It modifies the variables globally immediatelly as cmake operats in the global scope

# example 2:
# A macro to inrement a variable
macro(Incrementvariable var)
    math(EXPR ${var} "${${var}} + 1")
    # we don't need to set the new value of var into the global scope
    # set(${var} ${${var}} PARENT_SCOPE)
endmacro()

# Define a variable
set(MyVariable 0)

# Call the macro to increment the variable
Incrementvariable(MyVariable)
# Print the value of the variable
message("MyVariable = ${MyVariable}")

# Call the macro to increment the variable again
Incrementvariable(MyVariable)
message("MyVariable = ${MyVariable}")

# Write a loop that increments the MyVariables/ calls the incrementable fucntion three times
foreach(loop_var RANGE 2)
    message("Loop_var: ${loop_var}")
    Incrementvariable(MyVariable)
endforeach()

message("MyVariable = ${MyVariable}")