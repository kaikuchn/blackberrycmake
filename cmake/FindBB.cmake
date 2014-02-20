if( BB_FIND_COMPONENTS )
  include(BBLibraryInfo)

  # upcase all list items
  foreach( component ${BB_FIND_COMPONENTS} )
    string( TOUPPER ${component} COMPONENT )
    set(BB_FIND_COMPONENTS_UPCASED ${BB_FIND_COMPONENTS_UPCASED} ${COMPONENT})
  endforeach()

  # if bbsystem is not in the list, add it to the front
  list(FIND BB_FIND_COMPONENTS_UPCASED BBSYSTEM bbsystem_is_in_list)
  if(NOT bbsystem_is_in_list)
    list(INSERT BB_FIND_COMPONENTS_UPCASED 0 BBSYSTEM)
  endif(NOT bbsystem_is_in_list)

  foreach( COMPONENT ${BB_FIND_COMPONENTS_UPCASED} )
    string( TOLOWER ${COMPONENT} _component )
    string( REPLACE "bb" "" _bb_stripped_component "${_component}" )
    
    if(DEFINED ${COMPONENT}_INCLUDE_DIR)
      set(COMPONENT_INCLUDE_DIR ${${COMPONENT}_INCLUDE_DIR})
    else(DEFINED ${COMPONENT}_INCLUDE_DIR)
      find_path(COMPONENT_INCLUDE_DIR
        NAMES Global.hpp global.h global.hpp ${_component}_global.h ${_component}_global.hpp 
        HINTS ${BB_INCLUDE_DIR_HINT}
        ENV BBDIR
        PATH_SUFFIXES include include/bb include/bb/${_component} include/bb/${_bb_stripped_component}
        PATHS
        $ENV{QNX_TARGET}/usr
      )
    endif(DEFINED ${COMPONENT}_INCLUDE_DIR)

    find_library(COMPONENT_LIBRARY
      NAMES ${COMPONENT}_LIBRARY_NAME ${_component}
      HINTS ${COMPONENT_LIBRARY_HINT}
      ENV BBDIR
      PATH_SUFFIXES lib64 lib libs64 libs libs/Win32 libs/Win64
      PATHS
      $ENV{QNX_TARGET}/x86/usr
      $ENV{QNX_TARGET}/armle-v7/usr
      ${BB_LIB_PATHS}
    )

    # add component to list if found
    if(COMPONENT_INCLUDE_DIR AND COMPONENT_LIBRARY)
      list(APPEND BB_LIBRARIES ${COMPONENT_LIBRARY})
      list(APPEND BB_INCLUDE_DIRS ${COMPONENT_INCLUDE_DIR})
    else(COMPONENT_INCLUDE_DIR AND COMPONENT_LIBRARY)
      message(WARNING "Could not find component: ${_component}")
      if(NOT COMPONENT_INCLUDE_DIR)
        message(SEND_ERROR "COMPONENT_INCLUDE_DIR: ${COMPONENT_INCLUDE_DIR}")
      endif(NOT COMPONENT_INCLUDE_DIR)
      if(NOT COMPONENT_LIBRARY)
        message(SEND_ERROR "COMPONENT_LIBRARY: ${COMPONENT_LIBRARY}")  
      endif(NOT COMPONENT_LIBRARY)
    endif(COMPONENT_INCLUDE_DIR AND COMPONENT_LIBRARY)

    set(COMPONENT_INCLUDE_DIR_HINT COMPONENT_INCLUDE_DIR/../..)
    set(COMPONENT_LIBRARY_HINT COMPONENT_LIBRARY)
    unset(COMPONENT_LIBRARY)
    unset(COMPONENT_INCLUDE_DIR)
  endforeach()
else( BB_FIND_COMPONENTS )
  message(STATUS "Did not specify any components.")
endif( BB_FIND_COMPONENTS )

# handle the QUIETLY and REQUIRED arguments and set BBCASCADES_FOUND to TRUE if
# all listed variables are TRUE
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(BB DEFAULT_MSG BB_LIBRARIES BB_INCLUDE_DIRS)

mark_as_advanced(BB_LIBRARIES BB_INCLUDE_DIRS)