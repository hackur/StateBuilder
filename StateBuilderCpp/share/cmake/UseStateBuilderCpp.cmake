#
# This file sets up include directories, link directories, and
# compiler settings for a project to use with STATEBUILDERCPP.  It should not be
# included directly, but rather through the STATEBUILDERCPP_USE_FILE setting
# obtained from FsmCppConfig.cmake.
#

#IF(STATEBUILDERCPP_BUILD_SETTINGS_FILE AND NOT SKIP_STATEBUILDERCPP_BUILD_SETTINGS_FILE)
#  INCLUDE(${CMAKE_ROOT}/Modules/CMakeImportBuildSettings.cmake)
#  CMAKE_IMPORT_BUILD_SETTINGS(${STATEBUILDERCPP_BUILD_SETTINGS_FILE})
#ENDIF(STATEBUILDERCPP_BUILD_SETTINGS_FILE AND NOT SKIP_STATEBUILDERCPP_BUILD_SETTINGS_FILE)

# Add compiler flags needed to use STATEBUILDERCPP.
#SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${STATEBUILDERCPP_REQUIRED_C_FLAGS}")
#SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${STATEBUILDERCPP_REQUIRED_CXX_FLAGS}")
#SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${STATEBUILDERCPP_REQUIRED_LINK_FLAGS}")
#SET(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${STATEBUILDERCPP_REQUIRED_LINK_FLAGS}")
#SET(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} ${STATEBUILDERCPP_REQUIRED_LINK_FLAGS}")

# Add compiler definitions needed to use STATEBUILDERCPP.
ADD_DEFINITIONS(${STATEBUILDERCPP_DEFINITIONS})

# Add include directories needed to use STATEBUILDERCPP.
INCLUDE_DIRECTORIES(BEFORE ${STATEBUILDERCPP_INCLUDE_DIRS}
                           ${CMAKE_CURRENT_SOURCE_DIR}
                           ${CMAKE_CURRENT_BINARY_DIR})

# Add link directories needed to use STATEBUILDERCPP.
LINK_DIRECTORIES(${STATEBUILDERCPP_LIBRARY_DIRS})

# Load settings fro the system Qt4 with which STATEBUILDERCPP was built, if any.
#IF(STATEBUILDERCPP_USE_SYSTEM_Qt4)
#    FIND_PACKAGE(Qt4)
#    IF(Qt4_FOUND)
#      INCLUDE(${Qt4_CMAKE_DIR}/UseQt4.cmake)
#    ELSE(Qt4_FOUND)
#      MESSAGE(FATAL_ERROR
#        "UseSTATEBUILDERCPP could not load Qt4 settings from \"${Qt4_DIR}\" even through "
#        "STATEBUILDERCPP was built using Qt4 from this location."
#        )
#    ENDIF(Qt4_FOUND)
#ENDIF(STATEBUILDERCPP_USE_SYSTEM_Qt4)
