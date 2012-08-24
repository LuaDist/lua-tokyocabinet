# Copyright (C) 2007-2012 LuaDist.
# Created by Peter Kapec
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

project ( tokyocabinet_lua C )
cmake_minimum_required ( VERSION 2.8 )
include ( cmake/dist.cmake )
include ( lua )

# Find TC
find_package ( TokyoCabinet REQUIRED )

# Build
include_directories ( ${TOKYOCABINET_INCLUDE_DIRS} )
add_definitions ( --std=c99 -D_GNU_SOURCE=1 )

install_lua_module ( tokyocabinet tokyocabinet.c LINK ${TOKYOCABINET_LIBRARIES} )

# Install all files and documentation
install_data ( COPYING )
install_doc ( doc/ )
install_example ( example/ )
install_test ( tcbtest.lua tcftest.lua tchtest.lua tcutest.lua )
