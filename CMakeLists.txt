cmake_minimum_required(VERSION 2.8.11)

project(Project)

SET(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake" CACHE PATH "cmake modul path") 

include(BuildUtil)

# The version number.
set (Project_VERSION_MAJOR 0)
set (Project_VERSION_MINOR 0)
set (Project_VERSION_PATCH 1)
set (PROJECT_VERSION ${Project_VERSION_MAJOR}.${Project_VERSION_MINOR}.${Project_VERSION_PATCH})

# http://www.cmake.org/Wiki/CMake/Tutorials/How_to_create_a_ProjectConfig.cmake_file
# Offer the user the choice of overriding the installation directories
set(INSTALL_LIB_DIR lib CACHE PATH "Installation directory for libraries")
set(INSTALL_INCLUDE_DIR include CACHE PATH "Installation directory for header files")
if(WIN32 AND NOT CYGWIN)
  set(DEF_INSTALL_CMAKE_DIR CMake)
else()
  set(DEF_INSTALL_CMAKE_DIR lib/CMake/Project)
endif()
set(INSTALL_CMAKE_DIR ${DEF_INSTALL_CMAKE_DIR} CACHE PATH "Installation directory for CMake files")

# Make relative paths absolute (needed later on)
foreach(p LIB INCLUDE CMAKE)
  set(var INSTALL_${p}_DIR)
  if(NOT IS_ABSOLUTE "${${var}}")
    set(${var} "${CMAKE_INSTALL_PREFIX}/${${var}}")
  endif()
endforeach()

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)

# QML debuggen
#add_definitions(-DQT_QML_DEBUG)
# and set environment
# QML_COMPILER_DUMP=1
# QML_DISABLE_OPTIMIZER=1
# argument:
# $ executable -qmljsdebugger=port:3768,block

# BLACKBERRY is set by the blackberry.toolchain.cmake
if(${BLACKBERRY})
  set(Qt4 TRUE)
endif(${BLACKBERRY})

if(${Qt4})
  if(${BLACKBERRY})
    set(QT_QMAKE_EXECUTABLE ${BLACKBERRY_TOOLCHAIN_ROOT}/usr/bin/qmake)
    # bbsystem is always auto-added
    find_package(BB REQUIRED bbcascades bbdata)
  endif(${BLACKBERRY})
  # find qt
  find_package(Qt4 4.8 REQUIRED QtCore)
  include(${QT_USE_FILE})
  add_definitions(${QT_DEFINITIONS})

  include_directories("${BB_INCLUDE_DIRS}")
else(${Qt4})
  # cmake example from http://qt-project.org/doc/qt-5.0/qtdoc/cmake-manual.html
  # Find the QtWidgets library
  find_package(Qt5Core REQUIRED)
endif(${Qt4})

# code in a bb10 ndk project usually goes into that folder
add_subdirectory(src)

# Add all targets to the build-tree export set
export(TARGETS project
  FILE "${PROJECT_BINARY_DIR}/ProjectTargets.cmake")

# Export the package for use from the build-tree
# (this registers the build-tree with a global CMake-registry)
export(PACKAGE Project)



##################################################################
# Create the xxxxxxConfig.cmake and xxxxxxConfigVersion.cmake files

#-----------------------------------------------------------------
# ... for the build tree
set(CONF_INCLUDE_DIRS 
  "${PROJECT_SOURCE_DIR}/src"
  "${PROJECT_BINARY_DIR}"
)
configure_file(
  "ProjectConfig.cmake.in"
  "${PROJECT_BINARY_DIR}/ProjectConfig.cmake" @ONLY
)

#-----------------------------------------------------------------
# ... for the install tree
file(RELATIVE_PATH 
  REL_INCLUDE_DIR "${INSTALL_CMAKE_DIR}"
  "${INSTALL_INCLUDE_DIR}"
)
set(CONF_INCLUDE_DIRS 
  "\${PROJECT_CMAKE_DIR}/${REL_INCLUDE_DIR}"
)
configure_file(
  "ProjectConfig.cmake.in"
  "${PROJECT_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/ProjectConfig.cmake" @ONLY
)

#-----------------------------------------------------------------
# ... for both
configure_file(
  "ProjectConfigVersion.cmake.in"
  "${PROJECT_BINARY_DIR}/ProjectConfigVersion.cmake" @ONLY
)
 

##################################################################
# Install the xxxxxxConfig.cmake and xxxxxxConfigVersion.cmake
install(FILES
  "${PROJECT_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/ProjectConfig.cmake"
  "${PROJECT_BINARY_DIR}/ProjectConfigVersion.cmake"
  DESTINATION "${INSTALL_CMAKE_DIR}" COMPONENT dev)
 
# Install the export set for use with the install-tree
install(EXPORT ProjectTargets DESTINATION
  "${INSTALL_CMAKE_DIR}" COMPONENT dev)