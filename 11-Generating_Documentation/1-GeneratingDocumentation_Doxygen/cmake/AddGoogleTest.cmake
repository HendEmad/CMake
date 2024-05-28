include(FetchContent)

FetchContent_Declare (
    googletest
    GIT_REPOSITORY http://github.com/google/googletest.git
    GIT_TAG v1.14.0
)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)