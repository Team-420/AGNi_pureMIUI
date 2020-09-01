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

echo "`rm -rf $COUT/*`" > /dev/null
if [ -f $COUT/.config ]; then
	echo "`rm -rf $COUT/.*`" > /dev/null
fi
if [ -d $KERNELDIR/READY_ZIP ];
	then
	echo "`rm -rf $KERNELDIR/READY_ZIP/*`" > /dev/null
fi

echo "   Compile folder EMPTY !"

