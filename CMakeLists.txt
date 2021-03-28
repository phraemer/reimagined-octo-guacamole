cmake_minimum_required(VERSION 3.15)

set(PROJECT_NAME "rog" CACHE INTERNAL "Just testing some stuff")

include(cmake/CPM.cmake)

project(${PROJECT_NAME} LANGUAGES CXX VERSION 0.0.1)

add_executable(${PROJECT_NAME} rog.cpp)

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 20)

if (APPLE)
  CPMAddPackage(
    NAME Ccache.cmake
    GITHUB_REPOSITORY TheLartians/Ccache.cmake
    VERSION 1.2.2
  )
endif()

CPMAddPackage(
  NAME FMT
  GITHUB_REPOSITORY fmtlib/fmt
  GIT_TAG 7.1.3
)

target_link_libraries(${PROJECT_NAME}
  PUBLIC
    fmt
)
