#
#  Copyright (c) 2017 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# 
# Author  : jhlee
# email   : jhlee@esss.se
# Date    : generated by 2018Apr20-1609-54CEST
# version : 0.0.0 
#
# template file is generated by ./prepare_module.bash with ae71298c8b18da099c3143fd6c148e9c6f5456bf

# Please look at many other _module_.Makefile in e3-* repository
# 

#where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(REQUIRE_TOOLS)/driver.makefile

# APP:=calcApp
# APPDB:=$(APP)/Db
# APPSRC:=$(APP)/src


# USR_INCLUDES += -I$(where_am_I)/$(APPSRC)

# USR_CFLAGS   += -Wno-unused-variable
# USR_CFLAGS   += -Wno-unused-function
# USR_CFLAGS   += -Wno-unused-but-set-variable
# USR_CPPFLAGS += -Wno-unused-variable
# USR_CPPFLAGS += -Wno-unused-function
# USR_CPPFLAGS += -Wno-unused-but-set-variable

# TEMPLATES += $(wildcard $(APPDB)/*.db)

# DBDINC_SRCS += $(APPSRC)/swaitRecord.c
# DBDINC_SRCS += $(APPSRC)/sseqRecord.c
# DBDINC_SRCS += $(APPSRC)/aCalcoutRecord.c
# DBDINC_SRCS += $(APPSRC)/sCalcoutRecord.c
# DBDINC_SRCS += $(APPSRC)/transformRecord.c

# DBDINC_DBDS = $(subst .c,.dbd,   $(DBDINC_SRCS:$(APPSRC)/%=%))
# DBDINC_HDRS = $(subst .c,.h,     $(DBDINC_SRCS:$(APPSRC)/%=%))
# DBDINC_DEPS = $(subst .c,$(DEP), $(DBDINC_SRCS:$(APPSRC)/%=%))


# HEADERS += $(APPSRC)/sCalcPostfix.h
# HEADERS += $(APPSRC)/aCalcPostfix.h
# HEADERS += $(DBDINC_HDRS)


# SOURCES += $(APPSRC)/sCalcPostfix.c
# SOURCES += $(APPSRC)/sCalcPerform.c
# SOURCES += $(APPSRC)/aCalcPostfix.c
# SOURCES += $(APPSRC)/aCalcPerform.c

# SOURCES += $(APPSRC)/calcUtil.c
# SOURCES += $(APPSRC)/myFreeListLib.c
# SOURCES += $(APPSRC)/devsCalcoutSoft.c
# SOURCES += $(APPSRC)/devaCalcoutSoft.c
# SOURCES += $(APPSRC)/subAve.c
# SOURCES += $(APPSRC)/swaitRecord.c
# SOURCES += $(APPSRC)/editSseq.st
# SOURCES += $(APPSRC)/interp.c
# SOURCES += $(APPSRC)/arrayTest.c
# SOURCES += $(APPSRC)/aCalcMonitorMem.c
# # DBDINC_SRCS should be last of the series of SOURCES
# SOURCES += $(DBDINC_SRCS)

# DBDS += $(APPSRC)/calcSupport_LOCAL.dbd
# DBDS += $(APPSRC)/calcSupport_withSNCSEQ.dbd
# DBDS += $(APPSRC)/calcSupport_withSSCAN.dbd


# $(DBDINC_DEPS): $(DBDINC_HDRS)

# .dbd.h:
# 	$(DBTORECORDTYPEH)  $(USR_DBDFLAGS) -o  $<


# The following lines could be useful if one uses the external lib
#
# Examples...
# 
# USR_CFLAGS += -fPIC
# USR_CFLAGS   += -DDEBUG_PRINT
# USR_CPPFLAGS += -DDEBUG_PRINT
# USR_CPPFLAGS += -DUSE_TYPED_RSET
# USR_INCLUDES += -I/usr/include/libusb-1.0
# USR_LDFLAGS += -lusb-1.0
# USR_LDFLAGS += -L /opt/etherlab/lib
# USR_LDFLAGS += -lethercat
# USR_LDFLAGS += -Wl,-rpath=/opt/etherlab/lib

## SYSTEM LIBS 
##
# USR_LIBS += boost_regex
# USR_LIBS += readline
# USR_LIBS += xml2

#


