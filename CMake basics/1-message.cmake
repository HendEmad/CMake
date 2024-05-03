##### USING CMAKE IN SCRIPTING MODE --> .cmake file #####
# To run it in a script mode, we use command cmake -p <script_name>.cmake
# in this case, no project will be created
#----------------------------------------------------------------------------#

# It is used if we want to output something in the build process of cmake project.

# There are differnet ways to pass parameters to cmake commands:
# 1. Arguments in quotes -> ex: 
message("CMake is easy")

#2. Bracket arguments: can be used to print multiple lines -> ex:
message([=[ CMake
               is
               easy
]=])

#3. Naked arguments: here both spaces and semicolons acts as separators -> ex: 
message(CMake\ is\ easy)  # here the number of arguments is 1
message(CMake is easy)  # here we pass 3 arguments; as the space is a separator
message(CMake; is; easy)  # here we pass 4 arguments; as the semicolon acts as a separator

# quoted arguments ans escape sequences
# Escaping characters
# message("The sky is blue: \"\n my friend")
# message("With great power...
#                 comes great responsibiliity")

# # variable evaluation
# message("The cmake version is ${CMAKE_VERSION}")