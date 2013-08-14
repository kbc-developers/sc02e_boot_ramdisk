#!/system/bin/sh

PROP_PATH=/data/TweakGS3.prop

setprop ro.kbc.propwritable 1

LCD_DENSITY=`grep ro\.sf\.lcd_density $PROP_PATH | cut -d'=' -f2`
if [ -n "$LCD_DENSITY" ]; then
    setprop ro.sf.lcd_density $LCD_DENSITY
fi

setprop ro.kbc.propwritable 0

