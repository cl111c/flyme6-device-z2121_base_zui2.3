#!/system/bin/sh

umask 022

LOGFILE="/data/local/log/aplog/dmesglog"

PMLOGSHELL_ENG="/system/bin/pmlog.sh"
PMLOGSHELL_USER="/data/local/log/pmlog.sh"
PMLOGFILE="/data/local/log/aplog/pmlog"
SMD_LOGFILE="/data/local/log/aplog/smd_log"
TZ_LOGFILE="/data/local/log/aplog/tzlog"
QSEE_LOGFILE="/data/local/log/aplog/qseelog"
LASTKMSG_LOGFILE="/data/local/log/aplog/lastkmsg"
LKMSG_LOGFILE="/data/local/log/aplog/lkmsg"
XBLMSG_LOGFILE="/data/local/log/aplog/xblmsg"
BATT_LOGSHELL="/system/bin/battlog.sh"
BATT_LOGFILE="/data/local/log/aplog/battlog"
BATT_LOGFILE_QC="/data/local/log/aplog/battlog.qc"
BATT_LOGFILE_SRAM="/data/local/log/aplog/battlog.sram"

# mv files.x-1 to files.x
mv_files()
{
	if [ -z "$1" ]; then
	  echo "No file name!"
	  return
	fi
	if [ -z "$2" ]; then
	  LAST_FILE=5
	else
	  LAST_FILE=$2
	fi

#	echo $1 $2 $LAST_FILE
	i=$LAST_FILE
	while [ $i -gt 0 ]; do
#	for ((i=$LAST_FILE; i>=0; i--)); do
	  prev=$(($i-1))
	  if [ -e "$1.$prev" ]; then
#	    echo mv $1.$prev $1.$i
	    mv $1.$prev $1.$i
	  fi
	  i=$(($i-1))
	done

	if [ -e $1 ]; then
#	  echo mv $1 $1.1
	  mv $1 $1.1
	fi
}

mv_files $LOGFILE
mv_files $PMLOGFILE
mv_files $SMD_LOGFILE
mv_files $TZ_LOGFILE
mv_files $QSEE_LOGFILE
mv_files $BATT_LOGFILE
mv_files $BATT_LOGFILE_QC
mv_files $BATT_LOGFILE_SRAM
date  >> $TZ_LOGFILE
echo "" >> $TZ_LOGFILE

date  >> $QSEE_LOGFILE
echo "" >> $QSEE_LOGFILE

if [ -e /d/le_rkm ]; then
    mv_files $LASTKMSG_LOGFILE
    cat /d/le_rkm/last_kmsg > $LASTKMSG_LOGFILE
    mv_files $LKMSG_LOGFILE
    cat /d/le_rkm/lk_mesg > $LKMSG_LOGFILE
    mv_files $XBLMSG_LOGFILE
    cat /d/le_rkm/sbl1_mesg > $XBLMSG_LOGFILE
fi

batt=1
while [ 1 ]
do
	date  >> $LOGFILE
	echo "" >> $LOGFILE
# /data/local/log/pmlog.sh can bypass /system/bin/pmlog.sh
# You can push pmlog.sh to /data/local/log after change it
	if [ -e $PMLOGSHELL_USER ]; then
# Use . to inherit the environment
		. $PMLOGSHELL_USER $LOGFILE $PMLOGFILE
	else
		if [ -e $PMLOGSHELL_ENG ]; then
# Use . to inherit the environment
		. $PMLOGSHELL_ENG $LOGFILE $PMLOGFILE
		fi
	fi
	if [ $batt -eq 1 ]; then
		. $BATT_LOGSHELL "$(date)" $BATT_LOGFILE 1 1 1
		batt=1
	else
		batt=1
	fi

    cat /d/tzdbg/qsee_log >> $QSEE_LOGFILE
    cat /d/tzdbg/log >> $TZ_LOGFILE
	dmesg -c >> $LOGFILE
	sleep 2
done

