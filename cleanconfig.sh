#!/bin/sh
export KERNELDIR=/mnt/kernels/AGNi_pureMIUI

if [ -f /mnt/kernels/AGNi_pureMIUI/AGNi_stamp.sh ]; then
	. /mnt/kernels/AGNi_pureMIUI/AGNi_stamp.sh
fi
if [ ! -d $COMPILEDIR ]; then
	COUT=$KERNELDIR/OUTPUT
	mkdir $COUT
else
	COUT=$COMPILEDIR
fi

if [ -f $COUT/.config ];
	then
	rm $COUT/.config
	rm $COUT/.config.old
	echo "   Compile folder configs cleared !"
else
	echo "   Compile folder has no configs."
fi

