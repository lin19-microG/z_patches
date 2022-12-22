#!/bin/bash

THISDIR=$PWD

cd ..
TOPDIR=$PWD

#cd device/common
#echo "Patching $PWD (Use https f. common GPS configuration)"
#patch -p1 < $THISDIR/patch_050_device-common.patch
#echo "-"
#cd $TOPDIR

#cd device/oneplus/hotdog
#echo "Patching $PWD (prevent recovery from being overwritten)"
#patch -p1 < $THISDIR/patch_020_hotdog-recovery.patch
#echo "-"
#cd $TOPDIR

cd vendor/lineage
echo "Patching $PWD (Signing the build)"
patch -p1 < $THISDIR/patch_010_vendor.patch
echo "-"
cd $TOPDIR


cd $THISDIR
