mbs_func_print_log()
{
    MSG_=$1
    echo $MSG_ >> $MBS_LOG
}

mbs_func_set_feature_aosp()
{
    ROM_TYPE_=$1

    mount -t proc proc /proc
    echo $ROM_TYPE_ > /proc/sys/kernel/feature_aosp
    umount /proc
}

mbs_func_extract_files()
{
    SRC_DIR_=$1
    LIST_FILE_=$2

    for FILE_ in `egrep -v '(^#|^$)' $LIST_FILE_`; do
        cp $SRC_DIR_$FILE_ $FILE_
        mbs_func_print_log "cp $SRC_DIR_$FILE_ $FILE_"
    done
}

mbs_func_get_low_power_mode()
{
    mount -t sysfs sysfs /sys
    MODE_=`cat /sys/class/power_supply/battery/batt_lp_charging`
    umount /sys
    echo $MODE_
}

mbs_func_get_recovery_mode()
{
    mount -t proc proc /proc
#    MODE_=`grep -c bootmode=2 /proc/cmdline`
    MODE_=`grep -c bootmode=3 /proc/cmdline`
    umount /proc
    echo $MODE_
}

mbs_func_cleanup_sbin()
{
    rm /sbin/dedupe
    rm /sbin/dump_image
    rm /sbin/edify
    rm /sbin/erase_image
    rm /sbin/flash_image
    rm /sbin/getprop
    rm /sbin/minizip
    rm /sbin/nandroid
    rm /sbin/setprop
    rm /sbin/unyaffs
    rm /sbin/volume
}

