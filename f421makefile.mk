
TARGETS_F421 :=  WRAITH32_F421 AIKON_SINGLE_F421 AIKON_55A_F421 FOXEER_F421 HAKRC_K_F421 \
	             HAKRC_G_F421 TEKKO32_F421 AT32DEV_F421 DARWIN_F421 NEUTRON_F421 AT32SLOTCAR_F421\
				 HAKRC_G23_F421 NEUTRON_MINIAIO_F421 FOXEER_F421

HAL_FOLDER_F421 := $(HAL_FOLDER)/f421

MCU_F421 := -mcpu=cortex-m4 -mthumb 
LDSCRIPT_F421 := $(HAL_FOLDER_F421)/AT32F421x6_FLASH.ld

SRC_DIR_F421 := \
	$(HAL_FOLDER_F421)/Startup \
	$(HAL_FOLDER_F421)/Src \
	$(HAL_FOLDER_F421)/Drivers/drivers/src

CFLAGS_F421 := \
	-I$(HAL_FOLDER_F421)/Inc \
	-I$(HAL_FOLDER_F421)/Drivers/drivers/inc \
	-I$(HAL_FOLDER_F421)/Drivers/CMSIS/cm4/core_support \
	-I$(HAL_FOLDER_F421)/Drivers/CMSIS/cm4/device_support

CFLAGS_F421 += \
	 -DAT32F421K8U7 \
	 -DUSE_STDPERIPH_DRIVER


SRC_F421 := $(foreach dir,$(SRC_DIR_F421),$(wildcard $(dir)/*.[cs]))
