// ############################################################################# 
// Device tree content
// Generation time : 19/12/2023 20:36:52 
//
// THIS IS A GENERATED FILE, DO NOT EDIT !
//
// This file is the static output of the device tree. It aims to define all 
// available features from the board you are using. It is generated from the 
// device tree generator python script : dtGenerator.py.
// #############################################################################

#include "dt.h"

// powersupplygpio *************************************************************

pi_powersupplygpio_conf_t cam3v3_conf = {
	.pad_id = DT_CAM3V3_PAD_ID,
};

pi_powersupplygpio_data_t cam3v3_data;

pi_device_t cam3v3_dev = {
	.config = &cam3v3_conf,
	.data   = &cam3v3_data,
	.api    = (pi_device_api_t *) &powersupplygpio_api
};

// aps256xxn *******************************************************************

pi_aps256xxn_conf_t aps256xxn_conf = {
	.ram.aes_conf.qk_en   = DT_APS256XXN_RAM_AES_CONF_QK_EN,
	.ram.aes_conf.enabled = DT_APS256XXN_RAM_AES_CONF_ENABLED,
	.mba                  = DT_APS256XXN_MBA,
	.reserve_addr_0       = DT_APS256XXN_RESERVE_ADDR_0,
	.xip_en               = DT_APS256XXN_XIP_EN,
	.baudrate             = DT_APS256XXN_BAUDRATE,
	.ram_size             = DT_APS256XXN_RAM_SIZE,
	.ram_start            = DT_APS256XXN_RAM_START,
	.spi_cs               = DT_APS256XXN_SPI_CS,
	.spi_itf              = DT_APS256XXN_SPI_ITF,
};

pi_aps256xxn_data_t aps256xxn_data;

pi_device_t aps256xxn_dev = {
	.config = &aps256xxn_conf,
	.data   = &aps256xxn_data,
	.api    = (pi_device_api_t *) &aps256xxn_api
};

// mx25u51245g *****************************************************************

pi_mx25u51245g_conf_t mx25u51245g_conf = {
	.baudrate    = DT_MX25U51245G_BAUDRATE,
	.xip_en      = DT_MX25U51245G_XIP_EN,
	.sector_size = DT_MX25U51245G_SECTOR_SIZE,
	.size        = DT_MX25U51245G_SIZE,
	.spi_cs      = DT_MX25U51245G_SPI_CS,
	.spi_itf     = DT_MX25U51245G_SPI_ITF,
};

pi_mx25u51245g_data_t mx25u51245g_data;

pi_device_t mx25u51245g_dev = {
	.config = &mx25u51245g_conf,
	.data   = &mx25u51245g_data,
	.api    = (pi_device_api_t *) &mx25u51245g_api
};

// mram ************************************************************************

pi_mram_conf_t mram_conf = {
	.itf      = DT_MRAM_ITF,
	.baudrate = DT_MRAM_BAUDRATE,
	.xip_en   = DT_MRAM_XIP_EN,
};

pi_mram_data_t mram_data;

pi_device_t mram_dev = {
	.config = &mram_conf,
	.data   = &mram_data,
	.api    = (pi_device_api_t *) &mram_api
};

// Flash partition v2 memories *************************************************

#if defined(CONFIG_DRIVER_FLASH_PARTITION_V2)
#include <bsp/flash_partition_v2.h>
typedef struct {
    pi_fpv2_device_ref_t ref;
    pi_device_e memory;
} pi_fpv2_memory_ref_t;

#endif
#if defined(CONFIG_DRIVER_FLASH_PARTITION_V2)
pi_fpv2_memory_ref_t fpv2_memory_refs[2] = {
    { .ref = { PI_FPV2_DEV_TYPE_OCTOSPI, 0, 0}, .memory = PI_FLASH_MX25U51245G},
    { .ref = { PI_FPV2_DEV_TYPE_MRAM, 0, 0}, .memory = PI_FLASH_MRAM},
};
#endif
// Devices FPV2 register *******************************************************

#if defined(CONFIG_DRIVER_FLASH_PARTITION_V2)
pi_err_t pi_register_fpv2_flashs(void)
{
    pi_err_t err = PI_OK;
    for(size_t i = 0; i < sizeof(fpv2_memory_refs)/sizeof(fpv2_memory_refs[0]); i++)
    {
        err = pi_fpv2_device_register(&fpv2_memory_refs[i].ref,
                                      fpv2_memory_refs[i].memory);
        if (PI_OK != err)
        {
            break;
        }
    }
    return err;
}
#endif
// Devices API *****************************************************************

pi_err_t pi_open(pi_device_e device_enum, pi_device_t** device_ptr)
{
	pi_err_t err = PI_OK;
	switch (device_enum)
	{
		case PI_POWERSUPPLY_CAM3V3:
		{
			*device_ptr = DEVICE_PTR_POWERSUPPLY_CAM3V3;
			break;
		}
		case PI_RAM_APS256XXN:
		case PI_RAM_DEFAULT :
		{
			*device_ptr = DEVICE_PTR_RAM_APS256XXN;
			break;
		}
		case PI_FLASH_MX25U51245G:
		case PI_FLASH_DEFAULT :
		{
			*device_ptr = DEVICE_PTR_FLASH_MX25U51245G;
			break;
		}
		case PI_FLASH_MRAM:
		{
			*device_ptr = DEVICE_PTR_FLASH_MRAM;
			break;
		}
		default:
		{
			err = PI_ERR_NOT_FOUND;
			break;
		}
	}
	if ((device_ptr != NULL) && (err == PI_OK))
	{
		err = (*device_ptr)->api->open(*device_ptr);
	}
	return err;
}

pi_err_t pi_close(pi_device_e device_enum)
{
	pi_err_t err = PI_OK;
	pi_device_t* device_ptr = NULL;

	switch (device_enum)
	{
		case PI_POWERSUPPLY_CAM3V3:
		{
			device_ptr = DEVICE_PTR_POWERSUPPLY_CAM3V3;
			break;
		}
		case PI_RAM_APS256XXN:
		case PI_RAM_DEFAULT :
		{
			device_ptr = DEVICE_PTR_RAM_APS256XXN;
			break;
		}
		case PI_FLASH_MX25U51245G:
		case PI_FLASH_DEFAULT :
		{
			device_ptr = DEVICE_PTR_FLASH_MX25U51245G;
			break;
		}
		case PI_FLASH_MRAM:
		{
			device_ptr = DEVICE_PTR_FLASH_MRAM;
			break;
		}
		default:
		{
			err = PI_ERR_NOT_FOUND;
			break;
		}
	}
	if ((device_ptr != NULL) && (err == PI_OK))
	{
		err = (device_ptr)->api->close(device_ptr);
	}
	return err;
}

