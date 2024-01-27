cmake_minimum_required(VERSION 3.22)
set(PluginName AudioPlugin)
project(${PluginName}Template)

set(CMAKE_CXX_STANDARD 17)

set(LIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/Libraries)
include(CMake/CPM.cmake)

CPMAddPackage(
    NAME JUCE
    GITHUB_REPOSITORY juce-framework/JUCE
    GIT_TAG 7.0.9
    VERSION 7.0.9
    SOURCE_DIR ${LIB_DIR}/JUCE
)

add_subdirectory(Plugin)