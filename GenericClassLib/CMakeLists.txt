cmake_minimum_required(VERSION 3.9)

# Define project
project(GenericClassLib VERSION 1.0.0 DESCRIPTION "GenericClassLib description" LANGUAGES CXX)

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

# Add export definitions
add_definitions(-DGENERICCLASS_EXPORT)

# Define library source files
set(SOURCE_FILES src/genericclass.cpp)

# Build library
add_library(${PROJECT_NAME} SHARED ${SOURCE_FILES})

# Include headers in library
target_include_directories(${PROJECT_NAME} PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
    PRIVATE src)

# Include version in library
set_target_properties(${PROJECT_NAME} PROPERTIES
    VERSION ${PROJECT_VERSION}
    SOVERSION 1)

# Export cmake config
install(TARGETS ${PROJECT_NAME} EXPORT ${PROJECT_NAME}Config
    ARCHIVE  DESTINATION ${CMAKE_INSTALL_LIBDIR}
    LIBRARY  DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME  DESTINATION ${CMAKE_INSTALL_BINDIR})

# Install headers in install folder
install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME})

# Install cmake config in install folder
install(EXPORT ${PROJECT_NAME}Config DESTINATION lib/cmake/${PROJECT_NAME})

# Install cmake targets in install folder
export(TARGETS ${PROJECT_NAME} FILE ${PROJECT_NAME}Config.cmake)