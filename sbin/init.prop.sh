#!/system/bin/sh

PROP_PATH=/data/TweakGS3.prop
KBC_PROP_PATH=/data/kbc_preferred.prop

if [ -f $KBC_PROP_PATH ] ; then
	PROP_PATH=$KBC_PROP_PATH
fi

LCD_DENSITY=`/sbin/getprefprop $PROP_PATH ro.sf.lcd_density`

setprop ro.kbc.propwritable 1

setprop ro.kbc.preferred.prop 1

if [ -n "$LCD_DENSITY" ]; then

#    setprop ro.sf.lcd_density $LCD_DENSITY
	setprop qemu.sf.lcd_density $LCD_DENSITY
	
fi

setprop ro.kbc.propwritable 0


