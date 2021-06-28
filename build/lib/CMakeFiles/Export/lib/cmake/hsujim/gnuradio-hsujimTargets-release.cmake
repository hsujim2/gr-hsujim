#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "gnuradio::gnuradio-hsujim" for configuration "Release"
set_property(TARGET gnuradio::gnuradio-hsujim APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gnuradio::gnuradio-hsujim PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgnuradio-hsujim.so.4d5bfe8e"
  IMPORTED_SONAME_RELEASE "libgnuradio-hsujim.so.1.0.0git"
  )

list(APPEND _IMPORT_CHECK_TARGETS gnuradio::gnuradio-hsujim )
list(APPEND _IMPORT_CHECK_FILES_FOR_gnuradio::gnuradio-hsujim "${_IMPORT_PREFIX}/lib/libgnuradio-hsujim.so.4d5bfe8e" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
