####
#### SH BOOTIMG MAKE SCRIPT!
#### 4.3 Way
####
cp -rf ../arch/arm/boot/zImage ./
rm ramdisk-new.cpio
rm boot.img
cd ramdisk
chmod 644 *.rc
chmod 750 init*
chmod 640 fstab*
chmod 644 default.prop
chmod 771 data
chmod 755 dev
chmod 755 lib
chmod 755 lib/modules
chmod 644 lib/modules/*
chmod 755 proc
chmod 750 sbin
chmod 750 sbin/*
chmod 755 sys
chmod 755 system
find . | cpio -o -H newc -O ../ramdisk-new.cpio
cd ..
./mkbootimg --kernel zImage --ramdisk ramdisk-new.cpio --base 0x10000000 --pagesize 2048 --ramdiskaddr 0x11000000 -o boot.img
