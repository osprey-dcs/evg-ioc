#!/bin/sh

export JAVA_HOME="/Applications/CSS_Phoebus.app/jdk"
PATH="$JAVA_HOME/Contents/Home/bin:$PATH"

export P="EVG:"

export arch="$EPICS_HOST_ARCH"
#sh /Applications/CSS_Phoebus.app/phoebus-4.7.3-SNAPSHOT/phoebus.sh -resource "file://$PWD/EVG_sysmon.bob?app=display_runtime"
sh /Applications/CSS_Phoebus.app/product-5.0.2/phoebus.sh -resource "file://$PWD/EVG_sysmon.bob?app=display_runtime"
