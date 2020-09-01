export CROSS_COMPILE=/home/sleepy/android/toolchains/gcc-arm-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-
export CROSS_COMPILE_ARM32=/home/sleepy/android/toolchains/gcc-arm-9.2-2019.12-x86_64-arm-none-eabi/bin/arm-none-eabi-
export ARCH=arm64
export SUBARCH=arm64
make O=out agni_whyred_defconfig
make O=out -j12