#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "InheritanceClassLib" for configuration "Release"
set_property(TARGET InheritanceClassLib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(InheritanceClassLib PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/InheritanceClassLib.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/InheritanceClassLib.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS InheritanceClassLib )
list(APPEND _IMPORT_CHECK_FILES_FOR_InheritanceClassLib "${_IMPORT_PREFIX}/lib/InheritanceClassLib.lib" "${_IMPORT_PREFIX}/bin/InheritanceClassLib.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
