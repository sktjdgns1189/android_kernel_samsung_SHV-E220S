#!/bin/bash
########################################
# Sayanogenmod 10.1-10.2 Kernel Source #
# Android 4.2.2 - 4.3.1                #
# by Sunghun.Ra [Say]                  #
########################################

make say_defconfig
make -j8
echo :
echo :
echo :
echo If you want make a boot image, use Merge-Tool_*version* folder.
echo Modules : modules.sh
echo by Sunghun.Ra
