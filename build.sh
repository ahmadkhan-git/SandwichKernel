!/bin/bash

# Defined Variables
DIR=$(pwd)       # Present directory of the source
TC_PATH=/home/moin/Downloads/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-       # Toolchain/Cross compiler path
DF_CONFG=sandwich_defconfig         # Defconfig name


echo "**********************"
echo "                      "
echo "                      "
echo "Cleaning the directory"
echo "                      "
echo "                      "
echo "**********************"
make clean
make mrproper


echo "***************************"
echo "                           "
echo "                           "
echo "Initialization of operation"
echo "                           "
echo "                           "
echo "***************************"
export CROSS_COMPILE=$TC_PATH

echo "***********************"
echo "                       "
echo "                       "
echo "Compilation has started"
echo "                       "
echo "                       "
echo "***********************"
make $DF_CONFG
make -j2

echo "Compilation has been done."
