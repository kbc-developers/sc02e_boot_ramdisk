#!/sbin/busybox sh

. /mbs/mbs_const
. /mbs/mbs_funcs.sh

BOOT_MODE=$1

#func_init_theme()
#{
#	mkdir -p $MBS_MNT_SDCARD_PATH
#	mount -t vfat $MBS_BLKDEV_SDCARD $MBS_MNT_SDCARD_PATH
#
#	if [ -d $MBS_THEME_PATH ]; then
#		cp -r $MBS_THEME_PATH/* /res/
#	fi
#
#	umount $MBS_MNT_SDCARD_PATH
#}

func_init_single()
{
    mkdir /system
    mkdir /data
	mkdir /etc
    chmod 0771 /data
}

#theme init move recovery pre-process
#func_init_theme

func_init_single
mbs_func_extract_files /mbs/root/recovery /mbs/root/recovery/file.list



