#!/bin/bash

# Slackware menu for local installation

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

install -Dm755 0 /usr/bin/0
install -Dm755 0auto-updater /usr/bin/0auto-updater
install -Dm755 0build /usr/bin/0build
install -Dm755 0build-package /usr/bin/0build-package
install -Dm755 0clean-tree /usr/bin/0clean-tree
install -Dm755 0commit-push /usr/bin/0commit-push
install -Dm755 0delete-branches /usr/bin/0delete-branches
install -Dm755 0download-source-tarballs /usr/bin/0download-source-tarballs
install -Dm755 0lspkg /usr/bin/0lspkg
install -Dm755 0make-missing-readmes /usr/bin/0make-missing-readmes
install -Dm755 0make-readme /usr/bin/0make-readme
install -Dm755 0make-updater /usr/bin/0make-updater
install -Dm755 0meld /usr/bin/0meld
install -Dm755 0patch /usr/bin/0patch
install -Dm755 0pkginfo /usr/bin/0pkginfo
install -Dm755 0pull-request /usr/bin/0pull-request
install -Dm755 0replace-string /usr/bin/0replace-string
install -Dm755 0reset /usr/bin/0reset
install -Dm755 0setup /usr/bin/0setup
install -Dm755 0slackware-binary-dependencies /usr/bin/0slackware-binary-dependencies
install -Dm755 0takeover /usr/bin/0takeover
install -Dm755 0tar /usr/bin/0tar
install -Dm755 0update-md5-info /usr/bin/0update-md5-info
install -Dm755 0whichpkg /usr/bin/0whichpkg

mkdir -p /usr/share/0scripts
install -Dm755 updater.template /usr/share/0scripts/updater.template
install -Dm644 0scriptsrc /usr/share/0scripts/0scriptsrc
install -Dm644 README.md /usr/share/0scripts/README.md
install -Dm644 example/plus42.tar.gz /usr/share/0scripts/plus42.tar.gz
cp -axu media /usr/share/0scripts/

