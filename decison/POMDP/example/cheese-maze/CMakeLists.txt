cmake_minimum_required(VERSION 2.8)
project(CheeseMaze)

message(STATUS CMAKE_CURRENT_LIST_FILE: ${CMAKE_CURRENT_LIST_FILE})
string(REGEX REPLACE "(.+)example.+" "\\1" ROOT_PATH ${CMAKE_CURRENT_LIST_FILE})
message(STATUS ROOT_PATH: ${ROOT_PATH})

include_directories(${ROOT_PATH}pomdp-solver/step-solver/)
aux_source_directory(. cheesemaze)
file(GLOB step-solver "${ROOT_PATH}/pomdp-solver/step-solver/*.cc")

add_executable(CheeseMaze ${cheesemaze} ${step-solver})