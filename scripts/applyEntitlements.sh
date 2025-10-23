#!/bin/sh

set -ex

codesign -s - -f --entitlements ioc.entitlements ../bin/darwin-x86/evg
#codesign -s - -f --entitlements net.entitlements ../bin/darwin-x86/evg
