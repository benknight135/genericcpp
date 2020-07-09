#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GenericClassLib" for configuration "Release"
set_property(TARGET GenericClassLib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(GenericClassLib PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/GenericClassLib.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/GenericClassLib.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS GenericClassLib )
list(APPEND _IMPORT_CHECK_FILES_FOR_GenericClassLib "${_IMPORT_PREFIX}/lib/GenericClassLib.lib" "${_IMPORT_PREFIX}/bin/GenericClassLib.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
