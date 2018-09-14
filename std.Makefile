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
# Author  : Jeong Han Lee
# email   : han.lee@esss.se
# Date    : Monday, September 10 09:47:41 CEST 2018
# version : 0.0.2
#
#

where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(where_am_I)/../configure/DECOUPLE_FLAGS


ifneq ($(strip $(ASYN_DEP_VERSION)),)
asyn_VERSION=$(ASYN_DEP_VERSION)
endif



APP:=stdApp
APPDB:=$(APP)/Db
APPSRC:=$(APP)/src


USR_INCLUDES += -I$(where_am_I)$(APPSRC)

# USR_CFLAGS   += -Wno-unused-variable
# USR_CFLAGS   += -Wno-unused-function
# USR_CFLAGS   += -Wno-unused-but-set-variable
# USR_CPPFLAGS += -Wno-unused-variable
# USR_CPPFLAGS += -Wno-unused-function
# USR_CPPFLAGS += -Wno-unused-but-set-variable

TEMPLATES += $(wildcard $(APPDB)/*.db)
TEMPLATES += $(wildcard $(APPDB)/*.req)

DBDINC_SRCS += $(APPSRC)/scalerRecord.c
DBDINC_SRCS += $(APPSRC)/epidRecord.c
DBDINC_SRCS += $(APPSRC)/timestampRecord.c
DBDINC_SRCS += $(APPSRC)/throttleRecord.c


DBDINC_DBDS = $(subst .c,.dbd,   $(DBDINC_SRCS:$(APPSRC)/%=%))
DBDINC_HDRS = $(subst .c,.h,     $(DBDINC_SRCS:$(APPSRC)/%=%))
DBDINC_DEPS = $(subst .c,$(DEP), $(DBDINC_SRCS:$(APPSRC)/%=%))


HEADERS += $(APPSRC)/devScaler.h
HEADERS += $(APPSRC)/devScalerAsyn.h
HEADERS += $(APPSRC)/aiCvtDouble.h
HEADERS += $(DBDINC_HDRS)


SOURCES += $(APPSRC)/devScalerAsyn.c
SOURCES += $(APPSRC)/drvScalerSoft.c
SOURCES += $(APPSRC)/drvScaler974.cpp
SOURCES += $(APPSRC)/devEpidSoft.c
SOURCES += $(APPSRC)/devEpidSoftCallback.c
SOURCES += $(APPSRC)/devEpidFast.c
SOURCES += $(APPSRC)/devTimeOfDay.c 
SOURCES += $(APPSRC)/pvHistory.c
SOURCES += $(APPSRC)/femto.st
SOURCES += $(APPSRC)/delayDo.st
SOURCES += $(APPSRC)/delayCmd.cpp


# DBDINC_SRCS should be last of the series of SOURCES
SOURCES += $(DBDINC_SRCS)

DBDS += $(APPSRC)/delayDo.dbd
DBDS += $(APPSRC)/stdSupport.dbd

# SCRIPTS += showBurtDiff wrapCmd wrapper

$(DBDINC_DEPS): $(DBDINC_HDRS)

.dbd.h:
	$(DBTORECORDTYPEH)  $(USR_DBDFLAGS) -o  $@ $<


# db rule is the default in RULES_E3, so add the empty one

db:


.PHONY: db $(DBDINC_DEPS) .dbd.h
