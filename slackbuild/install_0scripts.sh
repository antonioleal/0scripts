#!/bin/bash

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR/..

rm -rf /tmp/0scripts*
./slackbuild/0scripts.SlackBuild
PKG=$(ls -1 /tmp/0scripts* | head)
/sbin/upgradepkg --install-new $PKG
