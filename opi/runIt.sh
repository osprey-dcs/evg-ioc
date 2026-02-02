#!/bin/sh

export JAVA_HOME="/Applications/CSS_Phoebus.app/jdk"
PATH="$JAVA_HOME/Contents/Home/bin:$PATH"

export P="EVT:"

export arch="$EPICS_HOST_ARCH"
sh /Applications/CSS_Phoebus.app/product-5.0.2/phoebus.sh -resource "file://$PWD/ospreyEVT.bob?P=${P}"
