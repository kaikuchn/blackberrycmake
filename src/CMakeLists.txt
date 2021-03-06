set(HEADERS
  # list of header files
)

if(${Qt4})
  set(QT_MOC_HDRS)
  qt4_wrap_cpp(MOC_OUTFILES ${QT_MOC_HEADERS})
endif(${Qt4})

set(QT_SRCS
  # list of src files, usually at least app.cpp, main.cpp
)

# configure a header file to pass some of the CMake settings
# to the source code
configure_file (
  "${PROJECT_SOURCE_DIR}/config.h.in"
  "${CMAKE_CURRENT_BINARY_DIR}/config.h"
  )

add_library(project STATIC ${QT_SRCS} ${MOC_OUTFILES})

if(${Qt4})
  target_link_libraries(project ${QT_LIBRARIES} ${BB_LIBRARIES})
else(${Qt4})
  target_link_libraries(project Qt5::Core)
endif(${Qt4})

set_target_properties(project PROPERTIES
  PUBLIC_HEADER "${HEADERS}")
  
install(TARGETS project
  # IMPORTANT: Add the project library to the "export-set"
  EXPORT JSONReadWriteTargets
  ARCHIVE DESTINATION "${INSTALL_LIB_DIR}" COMPONENT dev
  PUBLIC_HEADER DESTINATION "${INSTALL_INCLUDE_DIR}" COMPONENT dev
)