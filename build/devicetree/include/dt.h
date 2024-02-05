// ############################################################################# 
// Device tree content
// Generation time : 10/01/2024 17:05:58 
//
// THIS IS A GENERATED FILE, DO NOT EDIT !
//
// This file is the static output of the device tree. It aims to define all 
// available features from the board you are using. It is generated from the 
// device tree generator python script : dtGenerator.py.
// #############################################################################

#pragma once

#include "pmsis_types.h"
#include "pmsis/pmsis_types.h"
#include "pmsis/errno.h"

// BSP includes ****************************************************************

#include "bsp/boards/bsp_gap9mod_v1_0_b.h"
#include "bsp/boards/bsp_gap9evk_v1_3.h"

// powersupplygpio *************************************************************

#include "bsp/powersupply/powersupplygpio.h"

#define DT_CAM3V3_PAD_ID ( 0 )

extern pi_device_t cam3v3_dev;

// aps256xxn *******************************************************************

#include "bsp/ram/aps256xxn.h"

#define DT_APS256XXN_RAM_AES_CONF_QK_EN   ( 0 )
#define DT_APS256XXN_RAM_AES_CONF_ENABLED ( 0 )
#define DT_APS256XXN_MBA                  ( 33554432 )
#define DT_APS256XXN_RESERVE_ADDR_0       ( 1 )
#define DT_APS256XXN_XIP_EN               ( 0 )
#define DT_APS256XXN_BAUDRATE             ( 200000000 )
#define DT_APS256XXN_RAM_SIZE             ( 33554432 )
#define DT_APS256XXN_RAM_START            ( 0 )
#define DT_APS256XXN_SPI_CS               ( 1 )
#define DT_APS256XXN_SPI_ITF              ( 0 )

extern pi_device_t aps256xxn_dev;

// mx25u51245g *****************************************************************

#include "bsp/flash/mx25u51245g.h"

#define DT_MX25U51245G_BAUDRATE    ( 200000000 )
#define DT_MX25U51245G_XIP_EN      ( 0 )
#define DT_MX25U51245G_SECTOR_SIZE ( 4096 )
#define DT_MX25U51245G_SIZE        ( 67108864 )
#define DT_MX25U51245G_SPI_CS      ( 0 )
#define DT_MX25U51245G_SPI_ITF     ( 0 )

extern pi_device_t mx25u51245g_dev;

// mram ************************************************************************

#include "bsp/flash/mram.h"

#define DT_MRAM_ITF      ( 0 )
#define DT_MRAM_BAUDRATE ( 34000000 )
#define DT_MRAM_XIP_EN   ( 0 )

extern pi_device_t mram_dev;

// Devices pointers ************************************************************

#define DEVICE_PTR_POWERSUPPLY_CAM3V3 &cam3v3_dev
#define DEVICE_PTR_RAM_APS256XXN &aps256xxn_dev
#define DEVICE_PTR_FLASH_MX25U51245G &mx25u51245g_dev
#define DEVICE_PTR_FLASH_MRAM &mram_dev

#define DEVICE_PTR_RAM_DEFAULT DEVICE_PTR_RAM_APS256XXN
#define DEVICE_PTR_FLASH_DEFAULT DEVICE_PTR_FLASH_MX25U51245G

// Devices enum ****************************************************************

typedef enum {
	PI_POWERSUPPLY_CAM3V3,
	PI_RAM_APS256XXN,
	PI_RAM_DEFAULT,
	PI_FLASH_MX25U51245G,
	PI_FLASH_DEFAULT,
	PI_FLASH_MRAM,
} pi_device_e;


// Devices FPV2 register *******************************************************

#if defined(CONFIG_DRIVER_FLASH_PARTITION_V2)
pi_err_t pi_register_fpv2_flashs(void);

#endif
// Devices API *****************************************************************

pi_err_t pi_open(pi_device_e device_enum, pi_device_t** device_ptr);

pi_err_t pi_close(pi_device_e device_enum);

// Padfun registers ************************************************************

#define PADFUN0_INIT ( 0x54000001 )
#define PADFUN1_INIT ( 0x55555555 )
#define PADFUN2_INIT ( 0x55555555 )
#define PADFUN3_INIT ( 0x55555555 )
#define PADFUN4_INIT ( 0x55555555 )
#define PADFUN5_INIT ( 0x55555555 )

// Reprog registers ************************************************************

#define REPROG0_INIT ( 0x040C2040 )
#define REPROG1_INIT ( 0x0C289206 )
#define REPROG2_INIT ( 0x144D240E )
#define REPROG3_INIT ( 0x2179B616 )

// Pads define *****************************************************************

#define PAD_APS256XXN_RWDS   ( PI_PAD_012 )
#define PAD_APS256XXN_CSN1   ( PI_PAD_011 )
#define PAD_APS256XXN_SN0    ( PI_PAD_010 )
#define PAD_APS256XXN_DQ7    ( PI_PAD_009 )
#define PAD_APS256XXN_DQ6    ( PI_PAD_008 )
#define PAD_APS256XXN_DQ5    ( PI_PAD_007 )
#define PAD_APS256XXN_DQ4    ( PI_PAD_006 )
#define PAD_APS256XXN_DQ3    ( PI_PAD_005 )
#define PAD_APS256XXN_DQ2    ( PI_PAD_004 )
#define PAD_APS256XXN_DQ1    ( PI_PAD_003 )
#define PAD_APS256XXN_DQ0    ( PI_PAD_002 )
#define PAD_APS256XXN_CK     ( PI_PAD_001 )
#define PAD_MX25U51245G_RWDS ( PI_PAD_012 )
#define PAD_MX25U51245G_CSN1 ( PI_PAD_011 )
#define PAD_MX25U51245G_SN0  ( PI_PAD_010 )
#define PAD_MX25U51245G_DQ7  ( PI_PAD_009 )
#define PAD_MX25U51245G_DQ6  ( PI_PAD_008 )
#define PAD_MX25U51245G_DQ5  ( PI_PAD_007 )
#define PAD_MX25U51245G_DQ4  ( PI_PAD_006 )
#define PAD_MX25U51245G_DQ3  ( PI_PAD_005 )
#define PAD_MX25U51245G_DQ2  ( PI_PAD_004 )
#define PAD_MX25U51245G_DQ1  ( PI_PAD_003 )
#define PAD_MX25U51245G_DQ0  ( PI_PAD_002 )
#define PAD_MX25U51245G_CK   ( PI_PAD_001 )

