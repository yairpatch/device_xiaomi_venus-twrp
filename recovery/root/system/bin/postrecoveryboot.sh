#!/sbin/sh

datamount=$( mount | grep "/data" | wc -l )
modprobe -a -d /vendor/lib/modules/ fts_touch_spi
if [[ $datamount == 0 ]]; then
	exit 0
	else
		if [ ! -d "/data/media/0" ];then
			mkdir -p /data/media/0
		fi
fi
