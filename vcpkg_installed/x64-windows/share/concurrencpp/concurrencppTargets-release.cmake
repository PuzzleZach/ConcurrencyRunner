#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "concurrencpp::concurrencpp" for configuration "Release"
set_property(TARGET concurrencpp::concurrencpp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(concurrencpp::concurrencpp PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/concurrencpp.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/concurrencpp.dll"
  )

list(APPEND _cmake_import_check_targets concurrencpp::concurrencpp )
list(APPEND _cmake_import_check_files_for_concurrencpp::concurrencpp "${_IMPORT_PREFIX}/lib/concurrencpp.lib" "${_IMPORT_PREFIX}/bin/concurrencpp.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
