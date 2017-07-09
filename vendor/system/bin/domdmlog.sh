#!/system/bin/sh

# start modem offline log
if [ -e /data/local/log/mdmlog.enable ]; then
    setprop "persist.sys.lenovo.log.qxdmcfg" "/sdcard/log_cfg/cs.cfg"
    setprop "persist.sys.lenovo.log.path" "/sdcard/log"
    setprop "ctl.start" startmdmlog 
fi

