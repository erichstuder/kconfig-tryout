cmake_minimum_required(VERSION 3.31)
project(main)

add_executable(main
    main.cpp
    ../comp_a/comp_a.cpp
    ../comp_b/comp_b.cpp
)

target_include_directories(main PRIVATE
    ./build
    comp_a
    comp_b
)

# target_compile_options(main PRIVATE -include config.h)
