################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs1110/ccs/tools/compiler/ti-cgt-armllvm_1.3.0.LTS

GEN_OPTS__FLAG := @"configPkg/compiler.opt" 
GEN_CMDS__FLAG := -Wl,-l"configPkg/linker.cmd" 

ORDERED_OBJS += \
"./buttonled.o" \
"./syscfg/ti_devices_config.o" \
"./syscfg/ti_drivers_config.o" \
"./displayBatmon.o" \
"./main_tirtos.o" \
"../cc13x2x7_cc26x2x7_tirtos.cmd" \
-Wl,-l"ti/grlib/lib/ticlang/m4f/grlib.a" \
-Wl,-l"third_party/spiffs/lib/ticlang/m4f/spiffs_cc26xx.a" \
-Wl,-l"ti/drivers/lib/ticlang/m4f/drivers_cc13x2x7.a" \
-Wl,-lti_utils_build_linker.cmd.genlibs \
$(GEN_CMDS__FLAG) \
-Wl,-l"ti/devices/cc13x2x7_cc26x2x7/driverlib/bin/ticlang/driverlib.lib" \
-Wl,-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
MicTestSuite.out \

EXE_OUTPUTS__QUOTED += \
"MicTestSuite.out" \

BIN_OUTPUTS += \
MicTestSuite.hex \

BIN_OUTPUTS__QUOTED += \
"MicTestSuite.hex" \


# All Target
all: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "MicTestSuite.out"

dependents:
	-cd C:/Users/kingi/Documents/UTD/Senior_Design/CCS/tirtos_builds_cc13x2x7_cc26x2x7_release_ticlang/Debug && $(MAKE) clean all

# Tool invocations
MicTestSuite.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS) C:/Users/kingi/Documents/UTD/Senior_Design/CCS/tirtos_builds_cc13x2x7_cc26x2x7_release_ticlang/Debug/tirtos_builds_cc13x2x7_cc26x2x7_release_ticlang.lib
	@echo 'Building target: "$@"'
	@echo 'Invoking: Arm Linker'
	"C:/ti/ccs1110/ccs/tools/compiler/ti-cgt-armllvm_1.3.0.LTS/bin/tiarmclang.exe" -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mlittle-endian -mthumb -Oz -DDeviceFamily_CC13X2X7 -gstrict-dwarf -gdwarf-3 -march=armv7e-m -Wl,-m"MicTestSuite.map" -Wl,-i"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source" -Wl,-i"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages" -Wl,-i"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite/Debug/syscfg" -Wl,-i"C:/ti/ccs1110/ccs/tools/compiler/ti-cgt-armllvm_1.3.0.LTS/lib" -Wl,--diag_wrap=off -Wl,--display_error_number -Wl,--warn_sections -Wl,--xml_link_info="MicTestSuite_linkInfo.xml" -Wl,--rom_model -o "MicTestSuite.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

MicTestSuite.hex: $(EXE_OUTPUTS)
	@echo 'Building secondary target: "$@"'
	@echo 'Invoking: Arm Hex Utility'
	"C:/ti/ccs1110/ccs/tools/compiler/ti-cgt-armllvm_1.3.0.LTS/bin/tiarmhex.exe" --diag_wrap=off -o "MicTestSuite.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building secondary target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(GEN_MISC_FILES__QUOTED)$(BIN_OUTPUTS__QUOTED)$(GEN_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "buttonled.o" "syscfg\ti_devices_config.o" "syscfg\ti_drivers_config.o" "displayBatmon.o" "main_tirtos.o" 
	-$(RM) "buttonled.d" "syscfg\ti_devices_config.d" "syscfg\ti_drivers_config.d" "displayBatmon.d" "main_tirtos.d" 
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:
C:/Users/kingi/Documents/UTD/Senior_Design/CCS/tirtos_builds_cc13x2x7_cc26x2x7_release_ticlang/Debug/tirtos_builds_cc13x2x7_cc26x2x7_release_ticlang.lib:

-include ../makefile.targets

