#!/bin/bash

gcc -o exploit -static $1
mv ./exploit ./initramfs

cd initramfs
find . | cpio -o -H newc -R root:root | gzip -9 > ../initramfs.cpio.gz
