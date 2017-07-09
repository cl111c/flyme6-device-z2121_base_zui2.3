#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:45999350:1ab237fd039ec0d333a4febaf3b5b2cf0036bca5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:43001074:a96bff3118b9a074bfa1a9d15047136b473fbb2c EMMC:/dev/block/bootdevice/by-name/recovery 1ab237fd039ec0d333a4febaf3b5b2cf0036bca5 45999350 a96bff3118b9a074bfa1a9d15047136b473fbb2c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
