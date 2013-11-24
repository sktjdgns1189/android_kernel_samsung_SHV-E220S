#!/sbin/busybox sh

mount -o remount,rw /system
/sbin/busybox mount -t rootfs -o remount,rw rootfs

if [ ! -f /system/app/STweaks.apk ]; then
  cat /res/STweaks.apk > /system/app/STweaks.apk
  chown 0.0 /system/app/STweaks.apk
  chmod 644 /system/app/STweaks.apk
fi

mkdir -p /mnt/ntfs
chmod 777 /mnt/ntfs
mount -o mode=0777,gid=1000 -t tmpfs tmpfs /mnt/ntfs

/res/uci.sh apply

if [ -d /system/etc/init.d ]; then
  /sbin/busybox run-parts /system/etc/init.d
fi;

/sbin/busybox mount -t rootfs -o remount,ro rootfs
mount -o remount,ro /system
