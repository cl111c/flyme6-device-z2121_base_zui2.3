#!/system/bin/sh

APLOG_DIR=/data/local/log/aplog
TMLOG_DIR=/persist/testmode
TMLOG_ALL_DIR=/persist/testmode.*
GPSLOG_DIR=/data/gps/log
ANR_DIR=/data/anr
RECOVERY_DIR=/cache/recovery
CRASH_DIR=/data/tombstones
BT_ENABLE=$APLOG_DIR/bluetooth.enable
BT_DIR=/data/misc/bluedroid
BT_ETC_DIR=/system/etc/bluetooth
WLAN_DIR=/data/misc/wifi
DDR_ID=/sys/devices/system/soc/soc0/ddr_id

cd $APLOG_DIR && rm -fr gps anr recovery wlan
cat /proc/interrupts > $APLOG_DIR/interrupts.txt
cat /proc/meminfo > $APLOG_DIR/meminfo.txt
cat /d/ion/heaps/system > $APLOG_DIR/ion_system.txt
getprop > $APLOG_DIR/prop.txt
[ -e /system/build.prop ] && cp /system/build.prop $APLOG_DIR/
[ -e /system/etc/version.conf ] && cp /system/etc/version.conf $APLOG_DIR/
[ -d $GPSLOG_DIR ] && cp -a $GPSLOG_DIR $APLOG_DIR/gps
[ -d $ANR_DIR ] &&  cp -a $ANR_DIR $APLOG_DIR/anr
[ -d $RECOVERY_DIR ] && cp -a $RECOVERY_DIR $APLOG_DIR/recovery
[ -d $CRASH_DIR ] && cp -a $CRASH_DIR $APLOG_DIR/tombstones
[ -e $BT_ENABLE ] && [ -d $BT_ETC_DIR ] && cp $BT_ETC_DIR/* $APLOG_DIR/bluetooth
[ -e $BT_ENABLE ] && [ -d $BT_DIR ] && cp $BT_DIR/* $APLOG_DIR/bluetooth
[ -d $WLAN_DIR ] && cp -a $WLAN_DIR $APLOG_DIR/wlan
[ -e $TMLOG_DIR ] && cp -a $TMLOG_DIR $APLOG_DIR
[ -e $TMLOG_DIR ] && cp -a $TMLOG_ALL_DIR $APLOG_DIR
[ -e $DDR_ID ] && cat $DDR_ID > $APLOG_DIR/ddr_id

FILENAME=$(date +%Y_%m_%d_%H_%M_%S)

mkdir -p /sdcard/log
tar zcf /sdcard/log/${FILENAME}.tgz -C /data/local/log aplog
rm -rf $APLOG_DIR/tombstones/*
rm -rf $APLOG_DIR/bluetooth/*

