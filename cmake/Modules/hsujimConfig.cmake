INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_HSUJIM hsujim)

FIND_PATH(
    HSUJIM_INCLUDE_DIRS
    NAMES hsujim/api.h
    HINTS $ENV{HSUJIM_DIR}/include
        ${PC_HSUJIM_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    HSUJIM_LIBRARIES
    NAMES gnuradio-hsujim
    HINTS $ENV{HSUJIM_DIR}/lib
        ${PC_HSUJIM_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/hsujimTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(HSUJIM DEFAULT_MSG HSUJIM_LIBRARIES HSUJIM_INCLUDE_DIRS)
MARK_AS_ADVANCED(HSUJIM_LIBRARIES HSUJIM_INCLUDE_DIRS)
