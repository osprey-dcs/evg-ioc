# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = evg
# evg.dbd will be created and installed
DBD += evg.dbd

# evg.dbd will be made up from these files:
evg_DBD += base.dbd
evg_DBD += feed.dbd
evg_DBD += copyTime.dbd

# Add all the support libraries needed by this IOC
evg_LIBS += feed

# evg_registerRecordDeviceDriver.cpp derives from evg.dbd
evg_SRCS += evg_registerRecordDeviceDriver.cpp
evg_SRCS += copyTime.c

# Build the main IOC entry point on workstation OSs.
evg_SRCS_DEFAULT += evgMain.cpp
evg_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#evg_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
evg_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

