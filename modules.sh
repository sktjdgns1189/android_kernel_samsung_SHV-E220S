rm -rf ../Modules/*
find -name '*.ko' -exec cp -av {} ../Modules \;
        for i in ../Modules/*; do /opt/toolchains/arm-eabi-4.6/bin/arm-eabi-strip --strip-unneeded $i;done;\
