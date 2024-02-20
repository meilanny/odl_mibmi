# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile ASM with /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc
# compile C with /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc
ASM_DEFINES = -DCONFIG_DRIVER_FLASH_PARTITION_V2=1 -DUSE_FLASH_PARTITION_V2=1

ASM_INCLUDES = -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/pmsis_archi -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/maestro/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/i2s/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/efuse/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/fll/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/cluster/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_core/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/timer/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/fc_event/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/pad/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/gpio/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/ffc/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/perf/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/watchdog/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/i2c/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/i3c/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_datamove/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/spim/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_timeout/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_timestamp/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/dmacpy/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/pwm/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/rtc/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/xip/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_hyperbus/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_octospi/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_aes/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_aes_dual_core/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_cpi/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_csi2/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_uart/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_fifo/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_sdio/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/quiddikey/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/freertos_kernel/include -I/home/lanmei/merge_net_MIBMI_new/build/devicetree/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/bsp/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/freertos_kernel/portable/GCC/RI5CY-GAP9 -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/config -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/pmsis/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/pmsis/include/cores/TARGET_RISCV_32 -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/pmsis/include/pmsis/implem -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/libs/printf -I/home/lanmei/gap_sdk_private/rtos/pmsis/api/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/api/include/pmsis/chips -I/home/lanmei/gap_sdk_private/rtos/pmsis/api/include/pmsis/chips/gap9 -I/home/lanmei/gap_sdk_private/rtos/pmsis/archi/chips/gap9_v2/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/libs/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/rtos/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/rtos

ASM_FLAGS =  -x assembler-with-cpp -DASSEMBLY_LANGUAGE -Os -DCHIP_FAMILY=9 -D__GAP9__ -DCHIP_VERSION=2 -O2 -s -mno-memcpy -fno-tree-loop-distribute-patterns -DCONFIG_FREERTOS_USE_TRACE_FACILITIES=0 -DconfigMAX_PRIORITIES=3 -D__FREERTOS__ -D__USE_TCDM_MALLOC__=1 -DPMSIS_DRIVERS=1 -D__FC_MALLOC_NATIVE__=0 -D__L2_MALLOC_NATIVE__=0 -D__PMSIS_L2_MALLOC_NATIVE__=0 -D__riscv__ -D__GAP__ -D__RISCV_ARCH_GAP__=1 -DFEATURE_CLUSTER=1 -DGAP_SDK_VERSION=release-v5.15.0 -D__PLATFORM_BOARD__ -D__PLATFORM__=ARCHI_PLATFORM_BOARD -DRTOS_TICK_RATE_HZ=100 -DPI_CL_CC_STACK_SIZE=2048 -DPI_CL_SLAVE_STACK_SIZE=1024 -DPMSIS_TASK_EVENT_KERNEL_SIZE=256 -D__SEMIHOSTING__ -DPRINTF_SEMIHOST -DPRINTF_DISABLE_SUPPORT_FLOAT -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL -DFC_APP_MAIN_STACK_SIZE=2048 -DPI_LOG_DEFAULT_LEVEL=PI_LOG_NONE -DCONFIG_FLL_MAXDCO_FREQ=900000000 -DCONFIG_FREQUENCY_PERIPH=160000000 -DCONFIG_FREQUENCY_FC=50000000 -DCONFIG_FREQUENCY_CLUSTER=50000000 -DCONFIG_FREQUENCY_SFU=50000000 -DCONFIG_FREQUENCY_FPGA=50000000 -DCONFIG_FAST_OSC_FREQUENCY=24576063 -DCONFIG_DEVICE_TREE -D__GAP_BOARD_GAP9MOD_V1_0_B__=1 -D__GAP_BOARD_GAP9EVK_V1_3__=1 -DCONFIG_MRAM=1 -DCONFIG_MX25U51245G=1 -D__GAP_DRIVER_MX25U51245G_DEFAULT__=1 -D__GAP_DRIVER_HOSTFS__=1 -D__GAP_DRIVER_READFS__=1 -DCONFIG_DRIVER_FLASH_PARTITION_V2=1 -DCONFIG_APS256XXN=1 -D__GAP_DRIVER_APS256XXN_DEFAULT__=1 -D__GAP_POWERSUPPLYGPIO__=1 -DPREEMPTION=1 -D__GAP10_ARCHI__=1

C_DEFINES = -DCONFIG_DRIVER_FLASH_PARTITION_V2=1 -DUSE_FLASH_PARTITION_V2=1

C_INCLUDES = -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/pmsis_archi -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/maestro/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/i2s/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/efuse/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/fll/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/cluster/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_core/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/timer/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/fc_event/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/pad/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/gpio/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/ffc/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/perf/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/watchdog/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/i2c/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/i3c/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_datamove/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/spim/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_timeout/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_timestamp/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/dmacpy/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/pwm/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/rtc/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/xip/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_hyperbus/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_octospi/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_aes/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_aes_dual_core/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_cpi/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_csi2/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_uart/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_fifo/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/udma_sdio/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/implem/chips/gap9/quiddikey/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/freertos_kernel/include -I/home/lanmei/merge_net_MIBMI_new/build/devicetree/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/bsp/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/freertos_kernel/portable/GCC/RI5CY-GAP9 -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/config -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/pmsis/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/pmsis/include/cores/TARGET_RISCV_32 -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/gap9/pmsis/include/pmsis/implem -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/libs/printf -I/home/lanmei/gap_sdk_private/rtos/pmsis/api/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/api/include/pmsis/chips -I/home/lanmei/gap_sdk_private/rtos/pmsis/api/include/pmsis/chips/gap9 -I/home/lanmei/gap_sdk_private/rtos/pmsis/archi/chips/gap9_v2/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/libs/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/rtos/include -I/home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/rtos

C_FLAGS =  -march=rv32imcxgap9 -mPE=8 -mFC=1 -mint64  -fcommon -fno-jump-tables -fno-tree-loop-distribute-patterns -fno-delete-null-pointer-checks -fomit-frame-pointer -Os -fmessage-length=0 -fno-exceptions -ffunction-sections -fdata-sections -funsigned-char -Wall -Wextra -Wno-error -Wno-unused-parameter -Wno-unused-function -Wno-unused-variable -Wno-unused-but-set-variable -Wno-implicit-fallthrough  -Wno-discarded-qualifiers -DCHIP_FAMILY=9 -D__GAP9__ -DCHIP_VERSION=2 -O2 -s -mno-memcpy -fno-tree-loop-distribute-patterns -DCONFIG_FREERTOS_USE_TRACE_FACILITIES=0 -DconfigMAX_PRIORITIES=3 -D__FREERTOS__ -D__USE_TCDM_MALLOC__=1 -DPMSIS_DRIVERS=1 -D__FC_MALLOC_NATIVE__=0 -D__L2_MALLOC_NATIVE__=0 -D__PMSIS_L2_MALLOC_NATIVE__=0 -D__riscv__ -D__GAP__ -D__RISCV_ARCH_GAP__=1 -DFEATURE_CLUSTER=1 -DGAP_SDK_VERSION=release-v5.15.0 -D__PLATFORM_BOARD__ -D__PLATFORM__=ARCHI_PLATFORM_BOARD -DRTOS_TICK_RATE_HZ=100 -DPI_CL_CC_STACK_SIZE=2048 -DPI_CL_SLAVE_STACK_SIZE=1024 -DPMSIS_TASK_EVENT_KERNEL_SIZE=256 -D__SEMIHOSTING__ -DPRINTF_SEMIHOST -DPRINTF_DISABLE_SUPPORT_FLOAT -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL -DFC_APP_MAIN_STACK_SIZE=2048 -DPI_LOG_DEFAULT_LEVEL=PI_LOG_NONE -DCONFIG_FLL_MAXDCO_FREQ=900000000 -DCONFIG_FREQUENCY_PERIPH=160000000 -DCONFIG_FREQUENCY_FC=50000000 -DCONFIG_FREQUENCY_CLUSTER=50000000 -DCONFIG_FREQUENCY_SFU=50000000 -DCONFIG_FREQUENCY_FPGA=50000000 -DCONFIG_FAST_OSC_FREQUENCY=24576063 -DCONFIG_DEVICE_TREE -D__GAP_BOARD_GAP9MOD_V1_0_B__=1 -D__GAP_BOARD_GAP9EVK_V1_3__=1 -DCONFIG_MRAM=1 -DCONFIG_MX25U51245G=1 -D__GAP_DRIVER_MX25U51245G_DEFAULT__=1 -D__GAP_DRIVER_HOSTFS__=1 -D__GAP_DRIVER_READFS__=1 -DCONFIG_DRIVER_FLASH_PARTITION_V2=1 -DCONFIG_APS256XXN=1 -D__GAP_DRIVER_APS256XXN_DEFAULT__=1 -D__GAP_POWERSUPPLYGPIO__=1 -DPREEMPTION=1 -D__GAP10_ARCHI__=1 -std=gnu99

