# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=..

include $(TOP)/configure/CONFIG

DBDDEPENDS_FILES += testBitTable.dbd$(DEP)
TARGETS += $(COMMON_DIR)/testBitTable.dbd
testBitTable_DBD += base.dbd
testBitTable_DBD += ospreyTiming.dbd

TESTFILES += $(COMMON_DIR)/testBitTable.dbd

TESTPROD_IOC += testBitTable
testBitTable_SRCS += testBitTable.c
testBitTable_SRCS += testBitTable_registerRecordDeviceDriver.cpp

PROD_LIBS += ospreyTiming
PROD_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

