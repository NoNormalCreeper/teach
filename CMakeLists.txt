cmake_minimum_required(VERSION 3.29)

project(HelloWorld)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_library(a 
    src/a.cpp 
)

add_executable(main 
    src/main.cpp 
)
target_link_libraries(main a)
target_include_directories(main PRIVATE include)

add_executable(test 
    src/main.cpp 
)
target_link_libraries(test a)
target_include_directories(test PRIVATE include)


