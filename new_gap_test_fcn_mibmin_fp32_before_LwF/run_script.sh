#!/bin/bash

source /home/lanmei/pulp-sdk/configs/pulp-open.sh

export PULP_RISCV_GCC_TOOLCHAIN=/home/lanmei/Downloads/riscv

make clean get_golden all run 
