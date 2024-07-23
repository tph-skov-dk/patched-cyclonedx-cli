#!/bin/sh

DIST=./cyclonedx-cli/src/cyclonedx/bin/*/*/cyclonedx.exe

(ls $DIST > /dev/null 2>&1) || echo "could not find exe at '$DIST' - have you ran build.sh?"
(ls $DIST > /dev/null 2>&1) || exit 127

set -xe

$DIST $@
