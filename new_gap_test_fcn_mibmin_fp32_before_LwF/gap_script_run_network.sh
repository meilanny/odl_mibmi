#!/bin/bash

MYHOME=/home/lanmei

#python3 network_generate.py Quantlab PULP.GAP9 ./dory/dory_examples/config_files/config_Quantlab_MV2_8bits.json --app_dir ./dory/dory_examples/application/QuantLab_MV2_8bits_GAP9_secondTry

export CC=/usr/bin/gcc #-11
export CXX=/usr/bin/g++ #-11
export GAP_RISCV_GCC_TOOLCHAIN=$MYHOME/gap_riscv_toolchain
cd $MYHOME/gap_sdk_private
source configs/gap9_v2.sh
# Only if you wanna build the entire sdk
# At least cmake 3.19
# make clean VERBOSE=1 all
# make openocd.all -j8
# Hello world test
cd $MYHOME/merge_net_MIBMI/new_gap_test_fcn_mibmi_fp32 #&& make all run

#platform=gvsoc
#cmake -B build
#cmake --build build -t run
#make clean all run CORE=8 platform=gvsoc
make all -j platform=gvsoc
make run platform=gvsoc
#cd ./dory/dory_examples/application/QuantLab_MV2_8bits_GAP9_secondTry
#make clean all run CORE=8 platform=gvsoc
