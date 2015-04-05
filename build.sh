#Custom Build Script
#Modified from build.sh of ThunderZap for Xperia L. Credits to varun.chitre15


#Build
ZIMAGE="/home/avinabadalal/kernel-corsica/zapdos_corsica/arch/arm/boot/zImage"
IMAGE="/home/avinabadalal/kernel-corsica/zapdos_corsica/arch/arm/boot/Image"
KERNEL_DIR="/home/avinabadalal/kernel-corsica/zapdos_corsica"
BUILD_START=$(date +"%s")
export ARCH=arm
export SUBARCH=arm
export KBUILD_BUILD_USER="corphish"
export KBUILD_BUILD_HOST="pokedex"
if [ -a $KERNEL_DIR/arch/arm/boot/zImage ];
then
rm $ZIMAGE
rm $IMAGE
fi
make cyanogenmod_corsica_defconfig
make -j2

