# Install script for directory: C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/src/v.0.1.7-415c4c63cd.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/pkgs/concurrencpp_x64-windows")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "OFF")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "concurrencpp_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/x64-windows-rel/concurrencpp.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "concurrencpp_Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/x64-windows-rel/concurrencpp.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "concurrencpp_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/concurrencpp-0.1.7/concurrencppTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/concurrencpp-0.1.7/concurrencppTargets.cmake"
         "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/x64-windows-rel/CMakeFiles/Export/c231dab5fef6beb897d5feeae56fb8ed/concurrencppTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/concurrencpp-0.1.7/concurrencppTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/concurrencpp-0.1.7/concurrencppTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/concurrencpp-0.1.7" TYPE FILE FILES "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/x64-windows-rel/CMakeFiles/Export/c231dab5fef6beb897d5feeae56fb8ed/concurrencppTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/concurrencpp-0.1.7" TYPE FILE FILES "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/x64-windows-rel/CMakeFiles/Export/c231dab5fef6beb897d5feeae56fb8ed/concurrencppTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "concurrencpp_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/concurrencpp-0.1.7" TYPE FILE FILES
    "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/src/v.0.1.7-415c4c63cd.clean/cmake/concurrencppConfig.cmake"
    "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/x64-windows-rel/concurrencppConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "concurrencpp_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/src/v.0.1.7-415c4c63cd.clean/include/")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/Baile/source/repos/ConcurrenyTest/vcpkg_installed/vcpkg/blds/concurrencpp/x64-windows-rel/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
