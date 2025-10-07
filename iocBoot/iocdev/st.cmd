#!../../bin/linux-x86_64/evg

epicsEnvSet(EVG_IPV4, "$(EVG_IPV4=127.0.0.1)")
epicsEnvSet("P", "EVG:")

## Register all support components
dbLoadDatabase "../../dbd/evg.dbd"
evg_registerRecordDeviceDriver(pdbbase) 

dbLoadRecords("../../db/evgApp.db","P=$(P),NAME=EVG,IPADDR=$(EVG_IPV4)")
dbLoadRecords("../../db/ospreyEVG.db","P=$(P),NAME=EVG")
dbLoadRecords("../../db/ospreyEVR.db","P=$(P),NAME=EVG")

iocInit()
dbpf EVG:GLD:autoboot 1
