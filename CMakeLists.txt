# Copyright (C) 2007-2009 LuaDist.
# Created by Peter Kapec
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

PROJECT(tokyocabinet_lua C)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
INCLUDE(dist.cmake)

# Find TC
FIND_PACKAGE(TokyoCabinet REQUIRED)

# Build
INCLUDE_DIRECTORIES(${TOKYOCABINET_INCLUDE_DIRS})
ADD_DEFINITIONS(--std=c99 -D_GNU_SOURCE=1)

ADD_LUA_MODULE(tokyocabinet tokyocabinet.c)
TARGET_LINK_LIBRARIES(tokyocabinet ${TOKYOCABINET_LIBRARIES})

# Install all files and documentation
INSTALL(TARGETS tokyocabinet DESTINATION ${INSTALL_CMOD})

INSTALL(FILES overview.html COPYING DESTINATION ${INSTALL_DATA})
INSTALL(DIRECTORY doc/ DESTINATION ${INSTALL_DOC})

INSTALL(DIRECTORY example/ DESTINATION ${INSTALL_EXAMPLE})
INSTALL(FILES tcbtest.lua tcftest.lua tchtest.lua tcutest.lua DESTINATION ${INSTALL_TEST})
