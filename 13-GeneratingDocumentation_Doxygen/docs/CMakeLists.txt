find_program(DOXYGEN_PATH doxygen REQUIRED)

if(DOXYGEN_PATH_NOTFOUND)
    message(FATAL_ERROR "Doxygen is needed to build the documentation. Please install it on your system.")
else ()
    message(STATUS "Doxygen found.")



    # A custom target which is going to run doxygen
    # The target is named 'documentation', the command which is run is 'DOXYGEN_PATH'(Binary file) which is popultated by running the find_program.
    # This will be done using doxyfile that was generated in the 'CMAKE_CURRENT_LIST_DIR'.
    # The working directory is the place from which we run doxygen, which is the root of the project 'PROJECT_SOURCE_DIR'
    # The BYPRODUCTS is going to be the index.html in the binary folder of the project.
    add_custom_target(documentation COMMAND ${DOXYGEN_PATH} ${CMAKE_CURRENT_LIST_DIR}/doxyFile WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
                    BYPRODUCTS ${CMAKE_BINARY_DIR}/html/index.html)

    # add_custom_command is a command we can run before or after a target that we have set up
    add_custom_command(
        TARGET documentation POST_BUILD COMMAND echo "Documentation successfully generated. You can preview at: ${CMAKE_BINARY_DIR}/html/index.html"
    )
endif()