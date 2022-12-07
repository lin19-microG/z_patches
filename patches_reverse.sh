#!/bin/bash

clear_set() {
  cd $1
  echo "Clearing: $PWD"
  git add . > /dev/null
  git stash > /dev/null
  find -name *.orig | while read LINE; do rm $LINE; done
  find -name *.rej | while read LINE; do rm $LINE; done
  git clean -f > /dev/null
  git stash clear > /dev/null
  git stash > /dev/null
  cd $TOPDIR
}

THISDIR=$PWD

cd ..
TOPDIR=$PWD


clear_set art
clear_set external/conscrypt
clear_set external/openssh
clear_set frameworks/ex
clear_set frameworks/opt/net/wifi
clear_set packages/apps/Bluetooth
clear_set packages/apps/Nfc
clear_set packages/apps/SetupWizard
clear_set packages/modules/NetworkStack
clear_set packages/providers/DownloadProvider
clear_set system/bt
clear_set system/extras
clear_set system/netd

cd $THISDIR
