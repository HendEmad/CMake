find_package(Doxygen REQUIRED)

if(NOT DOXYGEN_FOUND)
    messgae(FATAL_ERROR "Doxygen is needed to be installed on your system to build the documentation.")
else()
    message(STATUS "Doxygen found.")

    # # Download css files
    # file(DOWNLOAD https://raw.githubusercontent.com/jothepro/doxygen-awesome-css/v2.3.1/doxygen-awesome.css
    # ${CMAKE_CURRENT_LIST_DIR}/doxygen-awesome.css)
    # file(DOWNLOAD https://raw.githubusercontent.com/jothepro/doxygen-awesome-css/v2.3.1/doxygen-awesome-sidebar-only.css
    #       ${CMAKE_CURRENT_LIST_DIR}/doxygen-awesome-sidebar-only.css)

    # Set doxyfile
    set(DOXYGEN_GENERATE_HTML YES)
    set(DOXYGEN_HTML_OUTPUT ${CMAKE_BINARY_DIR}/html)
    set(DOXYGEN_GENERATE_TREEVIEW YES)
    # list(APPEND DOXYGEN_HTML_EXTRA_STYLESHEET ${PROJECT_SOURCE_DIR}/docs/doxygen-awesome.css)
    # list(APPEND DOXYGEN_HTML_EXTRA_STYLESHEET ${PROJECT_SOURCE_DIR}/docs/doxygen-awesome-sidebar-only.css)

    # create documentation target with the name 'documentation' with scanning files in src with comment "Generating documentation"
    doxygen_add_docs(documentation ${PROJECT_SOURCE_DIR}/src COMMENT "Generating documentation")

endif()