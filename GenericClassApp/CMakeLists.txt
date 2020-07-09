cmake_minimum_required(VERSION 3.9)

# Define project
project(GenericClassApp VERSION 1.0.0 DESCRIPTION "GenericClassApp description" LANGUAGES CXX)

# Use 'Release' by default for build
set(DEFAULT_BUILD_TYPE "Release")
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message(STATUS "Setting build type to '${DEFAULT_BUILD_TYPE}' as none was specified.")
  set(CMAKE_BUILD_TYPE "${DEFAULT_BUILD_TYPE}" CACHE STRING "Choose the type of build." FORCE)
  # Set the possible values of build type for cmake-gui
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
endif()

# Define GNU standard installation directories
include(GNUInstallDirs)

# Define app source files
set(SOURCE_FILES src/genericclassapp.cpp)

# Find GenericClassLib library
message(GenericClassLib_DIR: ${GenericClassLib_DIR})
find_package(GenericClassLib CONFIG REQUIRED)

# Build executable
add_executable(${PROJECT_NAME} ${SOURCE_FILES})
# Link to libraries
target_link_libraries(${PROJECT_NAME} GenericClassLib)

# Define library paths
set(GENERICCLASSLIB_PATH 3rdparty/GenericClassLib)
set(GENERICCLASSLIB_FULL_PATH ${PROJECT_SOURCE_DIR}/${GENERICCLASSLIB_PATH})
# Define dll paths to be copied to install and build locations
set(GENERICCLASSLIB_DLLS_REL_PATH ${GENERICCLASSLIB_PATH}/bin/GenericClassLib.dll)
set(GENERICCLASSLIB_DLLS_FULL_PATH ${GENERICCLASSLIB_FULL_PATH}/bin/GenericClassLib.dll)

# Copy library dlls to build directory
add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${GENERICCLASSLIB_DLLS_FULL_PATH} $<TARGET_FILE_DIR:${PROJECT_NAME}>
)

# Install app in install directory
install(TARGETS ${PROJECT_NAME} DESTINATION bin)
# Install dlls in install directory
install(FILES ${GENERICCLASSLIB_DLLS_REL_PATH} DESTINATION bin)
