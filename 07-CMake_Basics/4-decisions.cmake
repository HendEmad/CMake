# true variable; defined
set(var1 TRUE)
if(var1)
    message("Var1 is true")
else()
    message("Var1 is false")
endif()

# If the var is not defined
if(var)
    message("var is true")
else()
    message("var is false")
endif()

# The variable is defined
set(var2 1)
if(${var2})
    message("var2 is true")
else()
    message("var2 is false")
endif()


set(var3 1)
if(var3)
    message("var3 is true")
else()
    message("var3 is false")
endif()


set(var4 1575)
if(var4)
    message("var4 is true")
else()
    message("var4 is false")
endif()

set(var4 TRUE)  # error
if(${var4})
    message("var4 is true")
else()
    message("var4 is false")
endif()

# example
set(n1 OFF)
set(n2 "n1")
if(n2)
    message("n2 is true")
else()
    message("n2 is false")
endif()

if(n2)
    message("n2 is true")
else()
    message("n2 is false")
endif()