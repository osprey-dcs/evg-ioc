# SPDX-FileCopyrightText: 1997 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

# Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG

# Directories to build, any order
DIRS += configure

DIRS += timingApp
timingApp_DEPEND_DIRS = configure

ifneq (NO,$(OSPREYTIMING_BUILD_EXAMPLE))
DIRS += exampleApp
exampleApp_DEPEND_DIRS = timingApp
endif

DIRS += testApp
testApp_DEPEND_DIRS = timingApp

DIRS += iocBoot
iocBoot_DEPEND_DIRS = exampleApp


include $(TOP)/configure/RULES_TOP
