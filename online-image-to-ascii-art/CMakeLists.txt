cmake_minimum_required(VERSION 3.22.4)

set(CXX_STANDARD 20)

project(Ascii-Arg-Generation)

include(${CMAKE_CURRENT_LIST_DIR}/conan.cmake)
conan_install()
include(${CMAKE_CURRENT_BINARY_DIR}/conan_toolchain.cmake)

find_package(CURL REQUIRED)
find_package(fmt REQUIRED)
find_package(stb REQUIRED)

add_executable(asciiarggen asciiartgen.cpp)
target_link_libraries(asciiarggen PRIVATE CURL::libcurl fmt::fmt stb::stb)
