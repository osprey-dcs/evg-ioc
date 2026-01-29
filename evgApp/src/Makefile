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
evg_DBD += asSupport.dbd
evg_DBD += copyTime.dbd
evg_DBD += goldenBoot.dbd

# Add all the support libraries needed by this IOC
evg_LIBS += feed
evg_LIBS += autosave

# evg_registerRecordDeviceDriver.cpp derives from evg.dbd
evg_SRCS += evg_registerRecordDeviceDriver.cpp
evg_SRCS += copyTime.c
evg_SRCS += goldenBoot.c

# Build the main IOC entry point on workstation OSs.
evg_SRCS_DEFAULT += evgMain.cpp
evg_SRCS_vxWorks += -nil-

ifneq (,$(CAPUTLOG))
evg_DBD += caPutLog.dbd
evg_LIBS += caPutLog
endif

ifneq (,$(RECSYNC))
evg_DBD += reccaster.dbd
evg_LIBS += reccaster
endif

ifdef LINSTAT_0_0_0
evg_DBD += linStat.dbd
evg_LIBS += linStat
endif

ifdef PVXS_MAJOR_VERSION # prefer v2
evg_DBD += pvxsIoc.dbd
evg_LIBS += pvxsIoc pvxs
endif

# Finally link to the EPICS Base libraries
evg_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

