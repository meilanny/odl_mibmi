# Makefile
# Alessio Burrello <alessio.burrello@unibo.it>
#
# Copyright (C) 2019-2020 University of Bologna
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


CORE ?= 1

APP = merge_net

# User settings
IN_CH?=928
OUT_CH?=2
NUM_CORES?=8
STEP?= FORWARD_BACKWARD_PROP #'BACKWARD_ERROR' #'FORWARD' # Possible steps: 'FORWARD', 'BACKWARD_GRAD', 'BACKWARD_ERROR'
#APP_CFLAGS += -DDEBUG
APP_CFLAGS += -DOPTIMIZE
MATMUL_TYPE?=0
NUM_MATMULS?=24		# When profiling with multiple matmul algorithms
NUM_SIZES?=3		# When profiling multiple sizes of the network
# End of user settings

APP_SRCS := $(wildcard ./*.c)
#APP_SRCS = src/main.c src/net.c

TRAIN_LIB=../../pulp-trainlib/lib
TRAIN_LIB_SRCS=$(TRAIN_LIB)/sources

APP_SRCS += $(TRAIN_LIB_SRCS)/pulp_matmul_fp32.c
APP_SRCS += $(TRAIN_LIB_SRCS)/pulp_linear_fp32.c
APP_SRCS += $(TRAIN_LIB_SRCS)/pulp_act_fp32.c
APP_SRCS += $(TRAIN_LIB_SRCS)/pulp_losses_fp32.c
APP_SRCS += $(TRAIN_LIB_SRCS)/pulp_train_utils_fp32.c
APP_SRCS += $(TRAIN_LIB_SRCS)/pulp_optimizers_fp32.c


# -O2 with -fno-indirect-inlining is just as fast as -O3 and reduces code size considerably
# by not inlining of small functions in the management code
#APP_CFLAGS += -DNUM_CORES=$(CORE) -Iinc -O2 -fno-indirect-inlining -flto -w

APP_CFLAGS += -DNUM_CORES=$(CORE) -Iinc -w #-flto

DATA_TYPE?='fp32'
APP_CFLAGS += -I. -I$(TRAIN_LIB)/include
APP_CFLAGS += -O3 -g3
APP_CFLAGS += -Wno-error
APP_CFLAGS += -DFABRIC 
APP_CFLAGS += -DCLUSTER
APP_CFLAGS += -DNUM_CORES=$(NUM_CORES)
#APP_CFLAGS += -DPROF_NET
APP_CFLAGS += -DMATCHCHECK
APP_CFLAGS += -DMEMOCC_COMP
#APP_CFLAGS += -DDEBUG
#APP_CFLAGS += -mhwloopalign
APP_CFLAGS += -DMATMUL_TYPE=${MATMUL_TYPE}

APP_LDFLAGS += -lm -Wl,--print-memory-usage  #-flto

# STATISTICS
APP_CFLAGS += -DSTATS

GAP9_DEFAULT_FLASH_TYPE = DEFAULT_FLASH
GAP9_DEFAULT_RAM_TYPE = DEFAULT_RAM

GAP8_DEFAULT_FLASH_TYPE = HYPERFLASH
GAP8_DEFAULT_RAM_TYPE = HYPERRAM

PULP_DEFAULT_FLASH_TYPE = HYPERFLASH
PULP_DEFAULT_RAM_TYPE = HYPERRAM

FLASH_TYPE ?= $($(TARGET_CHIP_FAMILY)_DEFAULT_FLASH_TYPE)
RAM_TYPE ?= $($(TARGET_CHIP_FAMILY)_DEFAULT_RAM_TYPE)

APP_CFLAGS += -DGAP_SDK=1
APP_CFLAGS += -DTARGET_CHIP_FAMILY_$(TARGET_CHIP_FAMILY)

ifeq '$(FLASH_TYPE)' 'MRAM'
READFS_FLASH = target/chip/soc/mram
endif


APP_CFLAGS += -DFLASH_TYPE=$(FLASH_TYPE) -DUSE_$(FLASH_TYPE) -DUSE_$(RAM_TYPE)
APP_CFLAGS += -DSINGLE_CORE_DMA

get_golden:
	python3 utils/GM.py --in_size $(IN_CH) --out_size $(OUT_CH) --step $(STEP)

profile_all_optim:
	python3 ./utils/profile_optimized.py --num_matmuls ${NUM_MATMULS} --step ${STEP} --cores ${NUM_CORES} --data_type ${DATA_TYPE} --in_size ${IN_CH} --out_size ${OUT_CH}

profile_all_sizes:
	python3 ./utils/profile_sizes.py --num_sizes ${NUM_SIZES} --step ${STEP} --cores ${NUM_CORES} --data_type ${DATA_TYPE} --matmul_type ${MATMUL_TYPE}


#include vars.mk

include $(RULES_DIR)/pmsis_rules.mk
