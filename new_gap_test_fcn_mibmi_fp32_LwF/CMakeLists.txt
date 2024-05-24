cmake_minimum_required(VERSION 3.19.5)

# Application

set(TARGET_NAME         "main")
set(MAIN                "main.c")


# Cmake pre-inits

set(CONFIG_GAP_SDK_HOME $ENV{GAP_SDK_HOME})
include ($ENV{GAP_SDK_HOME}/utils/cmake/setup.cmake)
set(BOARD_NAME gap9_evk)
set(PMSIS_OS freertos)
set(platform $ENV{PLATFORM})


set (FLASH_TYPE DEFAULT_FLASH)
set (RAM_TYPE   DEFAULT_RAM) 


# PULP trainlib
set(MATMUL_TYPE_FW_L0  0)         # Selects which optimized matmul to be used in FW (see mm_manager_list.txt or "MM_manager()" body to verify which one is called)
set(MATMUL_TYPE_WG_L0  0)         # Selects which optimized matmul to be used in WEIGHT GRAD (see mm_manager_list.txt or "MM_manager()" body to verify which one is called)
set(MATMUL_TYPE_IG_L0  0)         # Selects which optimized matmul to be used in IN GRAD (see mm_manager_list.txt or "MM_manager()" body to verify which one is called)

set (NUM_MATMULS 24)


set(GAP9_SDK_DIR        /home/lanmei/gap_sdk_private/)
set(CURDIR              /home/lanmei/dory/dory/dory_examples/application/Quantlab_MIBMI_GAP9/)
set(BUILD_DIR           ${CURDIR}/build)
set(TRAINLIB_DIR        /home/lanmei/pulp-trainlib)
set(TRAINLIB_EXAMPLE_DIR	/home/lanmei/merge_net_MIBMI/new_gap_test_fcn_mibmi_fp32)


list (APPEND TARGET_SRCS 
                         
                         ${MAIN}
)


list (APPEND TARGET_INCS 
                         
                         -I${TILER_INC}
                         -I${TILER_EMU_INC}
                         -I${GAP_SDK_HOME}/libs/gap_lib/include
                         -I${GAP9_SDK_DIR}rtos/pmsis/bsp/include/bsp
                         -I${GAP9_SDK_DIR}rtos/pmsis/bsp/include/bsp/ram
                         -I${GAP9_SDK_DIR}rtos/pmsis/bsp/include/bsp/flash
                         -I${GAP9_SDK_DIR}rtos/sfu/include
                         -I.
                         -I${DSP_DIR}
                         -I${DSP_LUT_DIR}
                         -I${AUTOTILER_DIR}
                         -I${AUTOTILER_MFCC_DIR}
                         -I${WAVIO_DIR}
                         -I${DSP_GEN_DIR}
                         -I${TRAINLIB_DIR}/lib/include
                         -I${TRAINLIB_DIR}
                         
                         -I${CURDIR}/inc
                         -I${TRAINLIB_DIR}/lib/include
                         -I${TRAINLIB_DIR}
                         -I$ENV{GAP_SDK_HOME}/rtos/pmsis/bsp/include
                         -I$ENV{GAP_SDK_HOME}/rtos/pmsis/bsp/include/bsp
                         
                         -I${TRAINLIB_EXAMPLE_DIR}/

)


set (NUM_CORES 8)
set (GAP_SDK 1)

set (TARGET_CHIP_FAMILY_GAP9 1)
list (APPEND TARGET_SRCS ${CURDIR}src/BNReluConvolution0.c
                         ${CURDIR}src/BNReluConvolution1.c 
                         #${CURDIR}src/BNReluConvolution2.c 
                         ${CURDIR}src/BNReluConvolution3.c 
                         ${CURDIR}src/BNReluConvolution4.c 
                         ${CURDIR}src/dory_dma.c
                         ${CURDIR}src/FullyConnected6.c 
                         ${CURDIR}src/mem.c 
                         ${CURDIR}src/net_utils.c 
                         ${CURDIR}src/network.c 
                         ${CURDIR}src/Pooling2.c 
                         ${CURDIR}src/Pooling5.c 
                         ${CURDIR}src/pulp_nn_avgpool_u2_u2.c 
                         ${CURDIR}src/pulp_nn_conv_i8_i8_i2.c 
                         ${CURDIR}src/pulp_nn_conv_i8_u2_i2.c 
                         ${CURDIR}src/pulp_nn_depthwise_i8_u2_i2.c 
                         ${CURDIR}src/pulp_nn_depthwise_u2_i8_i2.c 
                         ${CURDIR}src/pulp_nn_linear_u2_i32_i2.c 
                         ${CURDIR}src/pulp_nn_matmul_i8_i8_i2.c 
                         ${CURDIR}src/pulp_nn_matmul_i8_u2_i2.c 
                         ${CURDIR}src/pulp_nn_matmul_u8_i8_i2.c
                                        
)

list (APPEND TARGET_SRCS 
                         ${TRAINLIB_DIR}/lib/sources/pulp_act_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_act_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_conv2d_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_conv2d_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_conv_dw_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_conv_dw_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_conv_pw_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_conv_pw_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_im2col_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_im2col_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_linear_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_linear_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_losses_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_losses_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_matmul_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_matmul_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_mhsa_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_optimizers_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_optimizers_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_pooling_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_pooling_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_rnn_fp32.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_train_utils_fp16.c
                         ${TRAINLIB_DIR}/lib/sources/pulp_train_utils_fp32.c
                         
                         ${TRAINLIB_EXAMPLE_DIR}/net.c
)



list(APPEND TARGET_CFLAGS   -O2
                            -s
                            -w
                            #-mno-memcpy
                            #-fno-tree-loop-distribute-patterns
                            #-Wno-incompatible-pointer-types
                            -O2 -fno-indirect-inlining

)


list(APPEND TARGET_PREPROCESSOR 
                                -DNUM_CORES=${NUM_CORES}
                                -DGAP_SDK=${GAP_SDK}
                                -DFLASH_TYPE=${FLASH_TYPE}
                                -DUSE_${FLASH_TYPE}
                                -DUSE_${RAM_TYPE}
                                -DTARGET_CHIP_FAMILY_GAP9
                                -DMATMUL_TYPE_FW_L0=${MATMUL_TYPE_FW_L0}
                                -DMATMUL_TYPE_WG_L0=${MATMUL_TYPE_WG_L0}
                                -DMATMUL_TYPE_IG_L0=${MATMUL_TYPE_IG_L0}
                                -DSINGLE_CORE_DMA
                                -DCONFIG_GAP9=1

)


list(APPEND READFS_FILES 
                        ${CURDIR}hex/BNReluConvolution0_weights.hex
                        ${CURDIR}hex/BNReluConvolution1_weights.hex
                        #${CURDIR}hex/BNReluConvolution2_weights.hex
                        ${CURDIR}hex/BNReluConvolution3_weights.hex
                        ${CURDIR}hex/BNReluConvolution4_weights.hex
                        ${CURDIR}hex/FullyConnected6_weights.hex
                        ${CURDIR}hex/inputs.hex
)


project (${TARGET_NAME} C ASM)

add_executable (${TARGET_NAME} ${TARGET_SRCS})



target_compile_options(${TARGET_NAME} PUBLIC   ${TARGET_CFLAGS}
                                               ${TARGET_INCS}
                                               ${TARGET_PREPROCESSOR}

)

#target_link_libraries(${TARGET_NAME} PRIVATE m)
list(APPEND TABLE_CFLAGS -lm)

setupos(${TARGET_NAME})

