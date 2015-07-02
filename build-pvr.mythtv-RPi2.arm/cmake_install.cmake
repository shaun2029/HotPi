# Install script for directory: /media/Data/git/pi/OpenELEC.tv/pvr.mythtv

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kodi/addons/pvr.mythtv/pvr.mythtv.so.2.8.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kodi/addons/pvr.mythtv/pvr.mythtv.so.15.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kodi/addons/pvr.mythtv/pvr.mythtv.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/kodi/addons/pvr.mythtv" TYPE SHARED_LIBRARY FILES
    "/media/Data/git/pi/OpenELEC.tv/build-pvr.mythtv-RPi2.arm/pvr.mythtv.so.2.8.5"
    "/media/Data/git/pi/OpenELEC.tv/build-pvr.mythtv-RPi2.arm/pvr.mythtv.so.15.0"
    "/media/Data/git/pi/OpenELEC.tv/build-pvr.mythtv-RPi2.arm/pvr.mythtv.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kodi/addons/pvr.mythtv/pvr.mythtv.so.2.8.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kodi/addons/pvr.mythtv/pvr.mythtv.so.15.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kodi/addons/pvr.mythtv/pvr.mythtv.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/media/Data/git/pi/OpenELEC.tv/build.OpenELEC-RPi2.arm-6.0-devel/toolchain/bin/armv7ve-openelec-linux-gnueabi-strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kodi/addons" TYPE DIRECTORY FILES "/media/Data/git/pi/OpenELEC.tv/pvr.mythtv/pvr.mythtv")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/media/Data/git/pi/OpenELEC.tv/build-pvr.mythtv-RPi2.arm/lib/cppmyth/cmake_install.cmake")
  include("/media/Data/git/pi/OpenELEC.tv/build-pvr.mythtv-RPi2.arm/lib/kodi/cmake_install.cmake")
  include("/media/Data/git/pi/OpenELEC.tv/build-pvr.mythtv-RPi2.arm/lib/platform/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/media/Data/git/pi/OpenELEC.tv/build-pvr.mythtv-RPi2.arm/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
