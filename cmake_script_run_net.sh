#!/bin/bash

MYHOME=/home/lanmei

#python3 network_generate.py Quantlab PULP.GAP9 ./dory/dory_examples/config_files/config_Quantlab_MV2_8bits.json --app_dir ./dory/dory_examples/application/QuantLab_MV2_8bits_GAP9_secondTry

export CC=/usr/bin/gcc #-11
export CXX=/usr/bin/g++ #-11
export GAP_RISCV_GCC_TOOLCHAIN=$MYHOME/gap_riscv_toolchain

#export GAP_SDK_HOME=/home/lanmei/gap_sdk_dir/gap_sdk_private

export GAP_SDK_HOME=/home/lanmei/gap_sdk_private

#export KCONFIG_CONFIG="sdk.config"

#cd $MYHOME/gap_sdk_private
#source $GAP_SDK_HOME/configs/gap9_evk_audio.sh
source $GAP_SDK_HOME/configs/gap9_evk_audio.sh

#source $GAP_SDK_HOME/sourceme.sh

#source $GAP_SDK_HOME/configs/gap9_evk_audio.sh #gap9_v2.sh

#newer: source $GAP_SDK_HOME/configs/gap9_v2.sh

#cd $MYHOME/dory/dory/dory_examples/application/mibmi_exp22_config_MIBMINet_all_unsigned #&& make all run

#rm -rf build/

#platform=gvsoc
cmake -B build

cmake --build build -t menuconfig -j 10
cmake --build build -t run CORE=8 platform=board # --verbose

#make clean all run CORE=8 platform=gvsoc
