#!/bin/sh
truncate -s 2M /tmp/my_sys_2m.img;
mkfs.ext2 /tmp/my_sys_2m.img
mkdir /mnt/new_disk
mount /tmp/my_sys_2m.img /mnt/new_disk
df
mkdir /mnt/new_disk/mydir
cd /mnt/new_disk/mydir
i=1; while touch file_$i; do echo file_$i; i=$[i+1]; done
cd /home/darkduck/Laba2
