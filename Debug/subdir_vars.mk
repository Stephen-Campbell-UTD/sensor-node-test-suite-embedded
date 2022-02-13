################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CFG_SRCS += \
../buttonled.cfg 

CMD_SRCS += \
../cc13x2x7_cc26x2x7_tirtos.cmd 

SYSCFG_SRCS += \
../buttonled.syscfg 

C_SRCS += \
../buttonled.c \
./syscfg/ti_devices_config.c \
./syscfg/ti_drivers_config.c \
../displayBatmon.c \
../main_tirtos.c 

GEN_CMDS += \
./configPkg/linker.cmd 

GEN_FILES += \
./configPkg/linker.cmd \
./configPkg/compiler.opt \
./syscfg/ti_devices_config.c \
./syscfg/ti_drivers_config.c 

GEN_MISC_DIRS += \
./configPkg/ \
./syscfg/ 

C_DEPS += \
./buttonled.d \
./syscfg/ti_devices_config.d \
./syscfg/ti_drivers_config.d \
./displayBatmon.d \
./main_tirtos.d 

GEN_OPTS += \
./configPkg/compiler.opt 

OBJS += \
./buttonled.o \
./syscfg/ti_devices_config.o \
./syscfg/ti_drivers_config.o \
./displayBatmon.o \
./main_tirtos.o 

GEN_MISC_FILES += \
./syscfg/ti_drivers_config.h \
./syscfg/ti_utils_build_linker.cmd.genlibs \
./syscfg/syscfg_c.rov.xs \
./syscfg/ti_utils_runtime_model.gv \
./syscfg/ti_utils_runtime_Makefile 

GEN_MISC_DIRS__QUOTED += \
"configPkg\" \
"syscfg\" 

OBJS__QUOTED += \
"buttonled.o" \
"syscfg\ti_devices_config.o" \
"syscfg\ti_drivers_config.o" \
"displayBatmon.o" \
"main_tirtos.o" 

GEN_MISC_FILES__QUOTED += \
"syscfg\ti_drivers_config.h" \
"syscfg\ti_utils_build_linker.cmd.genlibs" \
"syscfg\syscfg_c.rov.xs" \
"syscfg\ti_utils_runtime_model.gv" \
"syscfg\ti_utils_runtime_Makefile" 

C_DEPS__QUOTED += \
"buttonled.d" \
"syscfg\ti_devices_config.d" \
"syscfg\ti_drivers_config.d" \
"displayBatmon.d" \
"main_tirtos.d" 

GEN_FILES__QUOTED += \
"configPkg\linker.cmd" \
"configPkg\compiler.opt" \
"syscfg\ti_devices_config.c" \
"syscfg\ti_drivers_config.c" 

C_SRCS__QUOTED += \
"../buttonled.c" \
"./syscfg/ti_devices_config.c" \
"./syscfg/ti_drivers_config.c" \
"../displayBatmon.c" \
"../main_tirtos.c" 

SYSCFG_SRCS__QUOTED += \
"../buttonled.syscfg" 


