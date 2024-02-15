#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "concurrencpp::concurrencpp" for configuration "Debug"
set_property(TARGET concurrencpp::concurrencpp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(concurrencpp::concurrencpp PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/debug/lib/concurrencpp.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/debug/bin/concurrencpp.dll"
  )

list(APPEND _cmake_import_check_targets concurrencpp::concurrencpp )
list(APPEND _cmake_import_check_files_for_concurrencpp::concurrencpp "${_IMPORT_PREFIX}/debug/lib/concurrencpp.lib" "${_IMPORT_PREFIX}/debug/bin/concurrencpp.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
