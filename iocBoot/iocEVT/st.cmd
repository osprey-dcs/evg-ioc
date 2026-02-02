#!../../bin/linux-x86_64/ospreyTimingIoc

epicsEnvSet(EVT_IPADDR, "$(EVT_IPADDR=127.0.0.1)")
epicsEnvSet("P", "EVT:")

## Register all support components
dbLoadDatabase "../../dbd/ospreyTimingIoc.dbd"
ospreyTimingIoc_registerRecordDeviceDriver(pdbbase)

dbLoadRecords("../../db/ospreyEVT.db","P=$(P),NAME=EVT,IPADDR=$(EVG_IPV4)")

iocInit()
