#!../../bin/linux-x86_64/evg

#- SPDX-FileCopyrightText: 2005 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

epicsEnvSet("P", "TST:")

## Register all support components
dbLoadDatabase "../../dbd/evg.dbd"
evg_registerRecordDeviceDriver(pdbbase) 

dbLoadRecords("../../db/ospreyEVG.db","P=$(P),NAME=EVG,IPADDR=127.0.0.1")

iocInit()
