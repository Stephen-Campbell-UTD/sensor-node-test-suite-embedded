################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1110/ccs/tools/compiler/ti-cgt-armllvm_1.3.0.LTS/bin/tiarmclang.exe" -c -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mlittle-endian -mthumb -Oz -I"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite" -I"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite/Debug" -I"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source" -I"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ticlang" -DDeviceFamily_CC13X2X7 -gstrict-dwarf -gdwarf-3 -march=armv7e-m -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite/Debug/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-1289817905:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-1289817905-inproc

build-1289817905-inproc: ../buttonled.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"C:/ti/ccs1110/xdctools_3_62_01_16_core/xs" --xdcpath="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source;C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages;" xdc.tools.configuro -o configPkg -t ti.targets.arm.clang.M4F -p ti.platforms.simplelink:CC1352P7 -r release -c "C:/ti/ccs1110/ccs/tools/compiler/ti-cgt-armllvm_1.3.0.LTS" --compileOptions "-mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mlittle-endian -mthumb -Oz -I\"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite\" -I\"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite/Debug\" -I\"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source\" -I\"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ticlang\" -DDeviceFamily_CC13X2X7 -gstrict-dwarf -gdwarf-3 -march=armv7e-m  " "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-1289817905 ../buttonled.cfg
configPkg/compiler.opt: build-1289817905
configPkg/: build-1289817905

build-65557247: ../buttonled.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs1110/ccs/utils/sysconfig_1.11.0/sysconfig_cli.bat" -s "C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/.metadata/product.json" --script "C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite/buttonled.syscfg" -o "syscfg" --compiler ticlang
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/ti_devices_config.c: build-65557247 ../buttonled.syscfg
syscfg/ti_drivers_config.c: build-65557247
syscfg/ti_drivers_config.h: build-65557247
syscfg/ti_utils_build_linker.cmd.genlibs: build-65557247
syscfg/syscfg_c.rov.xs: build-65557247
syscfg/ti_utils_runtime_model.gv: build-65557247
syscfg/ti_utils_runtime_Makefile: build-65557247
syscfg/: build-65557247

syscfg/%.o: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1110/ccs/tools/compiler/ti-cgt-armllvm_1.3.0.LTS/bin/tiarmclang.exe" -c -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mlittle-endian -mthumb -Oz -I"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite" -I"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite/Debug" -I"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source" -I"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ticlang" -DDeviceFamily_CC13X2X7 -gstrict-dwarf -gdwarf-3 -march=armv7e-m -MMD -MP -MF"syscfg/$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/MicTestSuite/Debug/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


