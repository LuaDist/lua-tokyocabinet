# Copyright (C) 2007-2009 LuaDist.
# Created by Peter Kapec <kapecp@gmail.com>
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
#	Note:
#		Searching headers and libraries is very simple and is NOT as powerful as scripts
#		distributed with CMake, because LuaDist defines directories to search for.
#		Everyone is encouraged to contact the author with improvements. Maybe this file
#		becomes part of CMake distribution sometimes.

# - Find TokyoCabinet
# Find the native TokyoCabinet headers and libraries.
#
# TOKYOCABINET_INCLUDE_DIRS	- where to find m_apm.h, etc.
# TOKYOCABINET_LIBRARIES	- List of libraries when using TokyoCabinet.
# TOKYOCABINET_FOUND	- True if TokyoCabinet found.

# Look for the header file.
FIND_PATH(TOKYOCABINET_INCLUDE_DIR NAMES tcadb.h)

# Look for the library.
FIND_LIBRARY(TOKYOCABINET_LIBRARY NAMES tokyocabinet)

# Handle the QUIETLY and REQUIRED arguments and set TOKYOCABINET_FOUND to TRUE if all listed variables are TRUE.
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(TOKYOCABINET DEFAULT_MSG TOKYOCABINET_LIBRARY TOKYOCABINET_INCLUDE_DIR)

# Copy the results to the output variables.
IF(TOKYOCABINET_FOUND)
	SET(TOKYOCABINET_LIBRARIES ${TOKYOCABINET_LIBRARY})
	SET(TOKYOCABINET_INCLUDE_DIRS ${TOKYOCABINET_INCLUDE_DIR})
ELSE(TOKYOCABINET_FOUND)
	SET(TOKYOCABINET_LIBRARIES)
	SET(TOKYOCABINET_INCLUDE_DIRS)
ENDIF(TOKYOCABINET_FOUND)

MARK_AS_ADVANCED(TOKYOCABINET_INCLUDE_DIRS TOKYOCABINET_LIBRARIES)
