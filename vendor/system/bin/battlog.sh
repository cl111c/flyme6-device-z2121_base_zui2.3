#!/system/bin/sh
######################################################################
# Used to record battery, charge and tempurature informations.
# Output file format: xml
# battlog.sh "$(date)" /data/logs/battlog 1 1 1
######################################################################

MOD_BASE="BC_BASE"
VER_BASE=4
MOD_QC="BC_QC"
VER_QC=2
MOD_FG_SRAM="BC_FG_SRAM"
VER_FG_SRAM=2
tz_num=38
local utime
local ktime

if [ -n "$1" ] && [ -n "$2" ] && [ -n "$3" ] && [ -n "$4" ] && [ -n "$5" ]; then
	bc_date="$1"
	of_base="$2"
	of_qc="$2.qc"
	of_sram="$2.sram"
	tf="$2.tmp"
	tf2="$2.tmp2"
	ps_enable=$3
	qc_enable=$4
	fg_sram_enable=$5
else
	exit
fi

get_temp_prop() {
	p1=
	i=0
	while [ $i -lt $tz_num ]
	do
		p1+=" "/sys/devices/virtual/thermal/thermal_zone$i/type
		i=$(($i+1))
	done
	prop=`cat $p1  | tr '\n' ','`
}

get_temp_value() {
	p1=
	i=0
	while [ $i -lt $tz_num ]
	do
		p1+=" "/sys/devices/virtual/thermal/thermal_zone$i/temp
		i=$(($i+1))
	done
	value=`cat $p1  | tr '\n' ','`
}

get_freq_value() {
	p1=
	i=0
	echo 0 >$tf2
	while [ $i -lt 4 ]
	do
		if [ -f "/sys/devices/system/cpu/cpu$i/cpufreq/scaling_cur_freq" ]; then
			p1+=" "/sys/devices/system/cpu/cpu$i/cpufreq/scaling_cur_freq
		else
			p1+=" "$tf2
		fi
		i=$(($i+1))
	done
	p1+=" ""/sys/devices/soc/b00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/gpuclk"
	value=`cat $p1  | tr '\n' ','`
	rm $tf2
}

get_usbin() {
	value=`cat /sys/class/hwmon/hwmon2/device/chg_temp /sys/class/hwmon/hwmon2/device/usb_dm /sys/class/hwmon/hwmon2/device/usb_dp /sys/class/hwmon/hwmon2/device/usbin | tr '\n' ',' | tr ' ' ',' |  tr ':' ',' | cut -d "," -f  2,6,10,14`","
}

get_prop() {
	a=`cat $1`
	b=""
	arr=(${a//= / })
	for i in ${arr[@]}
	do
		c=${i%=*}
		b=$b"${c:13},"
	done
	prop=`echo $(echo $b | tr '[A-Z]' '[a-z]')`
}

get_value() {
	 a=`cat $1`
	 value=""
	 arr=(${a//= / })
	 for i in ${arr[@]}
	 do
	 	value=$value${i#*=}","
	 done
}

dump_peripheral () {
	local base=$1
	local size=$2
	local dump_path=$3
	echo $base > $dump_path/address
	echo $size > $dump_path/count
	cat $dump_path/data >>$tf
}

qc_charger_dump() {
	# dump_peripheral 0x21000 0x500 "/sys/kernel/debug/spmi/spmi-0"
	# dump_peripheral 0x21600 0x100 "/sys/kernel/debug/spmi/spmi-0"

	# SMBCHG_CHGR_SMBCHG_CHGR
	dump_peripheral 0x21004 0x18 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x210F1 0xF "/sys/kernel/debug/spmi/spmi-0"

	# SMBCHG_OTG_SMBCHG_OTG
	dump_peripheral 0x21104 0x2 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x211F1 0x3 "/sys/kernel/debug/spmi/spmi-0"

	# SMBCHG_BAT_IF_SMBCHG_BATIF
	dump_peripheral 0x21204 0x18 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x21240 0x3 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x212D0 0x1 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x212F1 0xF "/sys/kernel/debug/spmi/spmi-0"

	# SMBCHG_USB_CHGPTH_SMBCHG_USB
	dump_peripheral 0x21304 0x18 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x21340 0xF "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x213F1 0xF "/sys/kernel/debug/spmi/spmi-0"

	# SMBCHG_DC_CHGPTH_SMBCHG_DC
	dump_peripheral 0x21404 0x18 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x214F1 0xB "/sys/kernel/debug/spmi/spmi-0"

	# SMBCHG_MISC_SMBCHG_MISC
	dump_peripheral 0x21600 0x1C "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x21640 0x3 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x216F1 0xF "/sys/kernel/debug/spmi/spmi-0"
}

qc_fg_dump() {	
	# dump_peripheral 0x24000 0x700 "/sys/kernel/debug/spmi/spmi-0"

	# FG_SOC_FG_SOC - PMI8996
	dump_peripheral 0x24004 0x18 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24050 0x5 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x240CF 0x1 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x240D0 0xC "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x240E0 0x1B "/sys/kernel/debug/spmi/spmi-0"

	# FG_BATT_FG_BATT - PMI8996
	dump_peripheral 0x24104 0x7 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24110 0xC "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24150 0x4 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x241D0 0x28 "/sys/kernel/debug/spmi/spmi-0"

	# FG_ADC_USR_FG_ADC - PMI8996
	dump_peripheral 0x24204 0x2 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24210 0xC "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24246 0x1 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24253 0x17 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x242D0 0x12 "/sys/kernel/debug/spmi/spmi-0"

	# FG_ADC_MDM_FG_ADC - PMI8996
	dump_peripheral 0x24304 0x2 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24310 0xC "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24346 0x1 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24353 0x17 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x243D0 0x12 "/sys/kernel/debug/spmi/spmi-0"

	# FG_MEMIF_FG_MEMIF - PMI8996
	dump_peripheral 0x24400 0x6 "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24410 0xC "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x24450 0x1B "/sys/kernel/debug/spmi/spmi-0"
	dump_peripheral 0x244D0 0x14 "/sys/kernel/debug/spmi/spmi-0"
}

qc_fg_sram_dump() {	
	dump_peripheral 0x400 0x200 "/sys/kernel/debug/fg_memif"
}

battlog() {
	utime=($(cat /proc/uptime))
	ktime=${utime[0]}
	if [ $ps_enable -eq 1 ]; then
		if [ ! -s $of_base ] || [ ! -e $of_base ]; then
			buf="<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
			buf+="<config desc=\"$MOD_BASE\" version=\""$VER_BASE"\">\n<modules>\n"
			buf+="<module name=\"sys_date\" prop=\"date\"/>\n"
			buf+="<module name=\"uptime\" prop=\"uptime\"/>\n"
			get_prop "/sys/class/power_supply/battery/uevent"
			buf+="<module name=\"ps_battery\" prop=\""$prop"\"/>\n"						
			get_prop "/sys/class/power_supply/usb-parallel/uevent"
			buf+="<module name=\"ps_parallel\" prop=\""$prop"\"/>\n"
			get_prop "/sys/class/power_supply/bms/uevent"
			buf+="<module name=\"ps_bms\" prop=\""$prop"\"/>\n"
			get_prop "/sys/class/power_supply/usb/uevent"
			buf+="<module name=\"ps_usb\" prop=\""$prop"\"/>\n"
			buf+="<module name=\"smb1351\" prop=\"smb1351_registers\"/>\n"
			buf+="<module name=\"freq\" prop=\"cpu0,cpu1,cpu2,cpu3,gpu,\"/>\n"
			get_temp_prop
			buf+="<module name=\"temp\" prop=\""$prop"\"/>\n"
			buf+="<module name=\"usbin\" prop=\"chg_temp,usb_dm,usb_dp,usbin,\"/>\n"
			buf+="</modules>\n<records>"
			echo $buf >$of_base
		fi
		echo "<record>" >$tf
		echo "<sys_date> ""$bc_date"" </sys_date>" >>$tf
		echo "<uptime> ""${ktime}"" </uptime>" >>$tf
		get_value "/sys/class/power_supply/battery/uevent"
		echo "<ps_battery> ""$value"" </ps_battery>" >>$tf
		get_value "/sys/class/power_supply/usb-parallel/uevent"
		echo "<ps_parallel> ""$value"" </ps_parallel>" >>$tf
		get_value "/sys/class/power_supply/bms/uevent"
		echo "<ps_bms> ""$value"" </ps_bms>" >>$tf
		get_value "/sys/class/power_supply/usb/uevent"
		echo "<ps_usb> ""$value"" </ps_usb>" >>$tf
		if [[ "$value" == "usb,1"* ]]; then
			value=`cat /d/smb1351/smb1351_registers`
			echo "<smb1351> ""$value"" </smb1351>" >>$tf
		else
			echo "<smb1351> """" </smb1351>" >>$tf
		fi
		get_freq_value
		echo "<freq> ""$value"" </freq>" >>$tf
		get_temp_value
		echo "<temp> ""$value"" </temp>" >>$tf
		get_usbin
		echo "<usbin> ""$value"" </usbin>" >>$tf
		echo "</record>" >>$tf
		cat $tf >>$of_base
	fi

	if [ $qc_enable -eq 1 ]; then
		if [ ! -s $of_qc ] || [ ! -e $of_qc ]; then
			buf="<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
			buf+="<config desc=\"$MOD_QC\" version=\""$VER_QC"\">\n<modules>\n"
			buf+="<module name=\"sys_date\" prop=\"date\"/>\n"
			buf+="<module name=\"uptime\" prop=\"uptime\"/>\n"
			buf+="<module name=\"qc_charge\" prop=\"qc_registers\"/>\n"
			buf+="<module name=\"qc_fg\" prop=\"qc_registers\"/>\n"
			buf+="</modules>\n<records>"
			echo $buf >$of_qc
		fi
		echo "<record>" >$tf
		echo "<sys_date> ""$bc_date"" </sys_date>" >>$tf
		echo "<uptime> ""${ktime}"" </uptime>" >>$tf
		echo "<qc_charge>" >>$tf
		qc_charger_dump
		echo "</qc_charge>" >>$tf
		echo "<qc_fg>" >>$tf
		qc_fg_dump
		echo "</qc_fg>" >>$tf
		echo "</record>" >>$tf
		cat $tf >>$of_qc
	fi
	
	if [ $fg_sram_enable -eq 1 ]; then
		if [ ! -s $of_sram ] || [ ! -e $of_sram ]; then
			buf="<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
			buf+="<config desc=\"$MOD_FG_SRAM\" version=\""$VER_FG_SRAM"\">\n<modules>\n"
			buf+="<module name=\"sys_date\" prop=\"date\"/>\n"
			buf+="<module name=\"uptime\" prop=\"uptime\"/>\n"
			buf+="<module name=\"qc_fg_sram\" prop=\"qc_registers\"/>\n"
			buf+="</modules>\n<records>"
			echo $buf >$of_sram
		fi
		echo "<record>" >$tf
		echo "<sys_date> ""$bc_date"" </sys_date>" >>$tf
		echo "<uptime> ""${ktime}"" </uptime>" >>$tf
		echo "<qc_fg_sram>" >>$tf
		qc_fg_sram_dump
		echo "</qc_fg_sram>" >>$tf
		echo "</record>" >>$tf
		cat $tf >>$of_sram
	fi
}

battlog
