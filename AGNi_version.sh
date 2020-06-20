#!/bin/sh

## AGNi version info
KERNELDIR=`readlink -f .`

export AGNI_VERSION_PREFIX="stable"
export AGNI_VERSION="v1.3"
sed -i 's/v1.3_RC1-EAS/v1.3_stable-EAS/' $KERNELDIR/arch/arm64/configs/Team_*

echo "	AGNi Version info loaded."

