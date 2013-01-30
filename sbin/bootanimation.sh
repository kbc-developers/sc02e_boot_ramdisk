#!/sbin/busybox sh


if [ -f /data/local/bootanimation.bin ]; then
  /data/local/bootanimation.bin
elif [ -f /data/local/bootanimation.zip ] || [ -f /system/media/bootanimation.zip ]; then
  /system/bin/setprop sys.bootanim_wait 1
  /sbin/bootanimation
elif [ -f /data/local/bootmovie.mp4 ] || [ -f /system/media/bootmovie.mp4  ]; then
  /system/bin/setprop sys.bootanim_wait 1
  /sbin/bootanimation
else
  #set graphic user & run
  /sbin/samsunganiwrap
fi;
