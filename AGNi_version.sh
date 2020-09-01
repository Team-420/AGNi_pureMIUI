#!/bin/sh

## AGNi version info
KERNELDIR=/mnt/kernels/AGNi_pureMIUI

export AGNI_VERSION_PREFIX="stable"
export AGNI_VERSION="v9.5.2"
sed -i 's/v9.5.1_stable-EAS/v9.5.2_stable-EAS/' $KERNELDIR/arch/arm64/configs/agni_*
sed -i 's/ini_set("rom_version",	"v9.5.1_stable");/ini_set("rom_version",	"v9.5.2_stable");/' $KERNELDIR/anykernel3/META-INF/com/google/android/aroma-config

echo "	AGNi Version info loaded."

