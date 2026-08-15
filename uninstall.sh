#!/bin/bash

# Slackware menu for local uninstallation

# Copyright 2026 Antonio Leal, Porto Salvo, Oeiras, Portugal
# All rights reserved.
#
# Redistribution and use of this script, with or without modification, is
# permitted provided that the following conditions are met:
#
# 1. Redistributions of this script must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
#  THIS SOFTWARE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY EXPRESS OR IMPLIED
#  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
#  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO
#  EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
#  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

set -e

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR

rm -rf /usr/bin/0
rm -rf /usr/bin/0auto-updater
rm -rf /usr/bin/0build
rm -rf /usr/bin/0build-package
rm -rf /usr/bin/0clean-tree
rm -rf /usr/bin/0commit-push
rm -rf /usr/bin/0delete-branches
rm -rf /usr/bin/0download-source-tarballs
rm -rf /usr/bin/0lspkg
rm -rf /usr/bin/0make-missing-readmes
rm -rf /usr/bin/0make-readme
rm -rf /usr/bin/0make-updater
rm -rf /usr/bin/0meld
rm -rf /usr/bin/0patch
rm -rf /usr/bin/0pkginfo
rm -rf /usr/bin/0pull-request
rm -rf /usr/bin/0replace-string
rm -rf /usr/bin/0reset
rm -rf /usr/bin/0setup
rm -rf /usr/bin/0slackware-binary-dependencies
rm -rf /usr/bin/0takeover
rm -rf /usr/bin/0tar
rm -rf /usr/bin/0update-md5-info
rm -rf /usr/bin/0whichpkg

rm -rf /usr/share/0scripts
rm -rf /usr/share/pixmaps/zeroscripts.png
rm -rf /usr/share/kservices5/ServiceMenus/zeroscripts.desktop
