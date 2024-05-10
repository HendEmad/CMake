set(OUR_PROJECT_VERSION "Three")
add_library(libstats STATIC stats.cpp)
target_include_directories(libstats PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_directories(libstats PUBLIC libmath)