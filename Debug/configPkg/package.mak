#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#

unexport MAKEFILE_LIST
MK_NOGENDEPS := $(filter clean,$(MAKECMDGOALS))
override PKGDIR = configPkg
XDCINCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(XPKGPATH))))
XDCCFGDIR = package/cfg/

#
# The following dependencies ensure package.mak is rebuilt
# in the event that some included BOM script changes.
#
ifneq (clean,$(MAKECMDGOALS))
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/utils.js:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/utils.js
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/xdc.tci:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/xdc.tci
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/template.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/template.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/om2.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/om2.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/xmlgen.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/xmlgen.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/xmlgen2.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/xmlgen2.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/Warnings.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/Warnings.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/IPackage.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/IPackage.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/package.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/package.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/services/global/Clock.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/services/global/Clock.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/services/global/Trace.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/services/global/Trace.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/bld.js:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/bld.js
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/BuildEnvironment.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/BuildEnvironment.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/PackageContents.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/PackageContents.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/_gen.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/_gen.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Library.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Library.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Executable.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Executable.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Repository.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Repository.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Configuration.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Configuration.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Script.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Script.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Manifest.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Manifest.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Utils.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/Utils.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/ITarget.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/ITarget.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/ITarget2.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/ITarget2.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/ITarget3.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/ITarget3.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/ITargetFilter.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/ITargetFilter.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/package.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/bld/package.xs
package.mak: config.bld
C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/ITarget.xs:
package.mak: C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/ITarget.xs
C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/C28_large.xs:
package.mak: C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/C28_large.xs
C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/C28_float.xs:
package.mak: C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/C28_float.xs
C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/package.xs:
package.mak: C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/package.xs
C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/arm/elf/IArm.xs:
package.mak: C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/arm/elf/IArm.xs
C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/arm/elf/package.xs:
package.mak: C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/arm/elf/package.xs
C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/arm/clang/ITarget.xs:
package.mak: C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/arm/clang/ITarget.xs
C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/arm/clang/package.xs:
package.mak: C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/arm/clang/package.xs
package.mak: package.bld
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/tools/configuro/template/compiler.opt.xdt:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/tools/configuro/template/compiler.opt.xdt
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/services/io/File.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/services/io/File.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/services/io/package.xs:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/services/io/package.xs
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/tools/configuro/template/compiler.defs.xdt:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/tools/configuro/template/compiler.defs.xdt
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/tools/configuro/template/custom.mak.exe.xdt:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/tools/configuro/template/custom.mak.exe.xdt
C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/tools/configuro/template/package.xs.xdt:
package.mak: C:/ti/ccs1110/xdctools_3_62_01_16_core/packages/xdc/tools/configuro/template/package.xs.xdt
endif

ti.targets.arm.clang.M4F.rootDir ?= C:/ti/ccs1110/ccs/tools/compiler/ti-cgt-armllvm_1.3.0.LTS
ti.targets.arm.clang.packageBase ?= C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages/ti/targets/arm/clang/
.PRECIOUS: $(XDCCFGDIR)/%.om4f
.PHONY: all,m4f .dlls,m4f .executables,m4f test,m4f
all,m4f: .executables,m4f
.executables,m4f: .libraries,m4f
.executables,m4f: .dlls,m4f
.dlls,m4f: .libraries,m4f
.libraries,m4f: .interfaces
	@$(RM) $@
	@$(TOUCH) "$@"

.help::
	@$(ECHO) xdc test,m4f
	@$(ECHO) xdc .executables,m4f
	@$(ECHO) xdc .libraries,m4f
	@$(ECHO) xdc .dlls,m4f


all: .executables 
.executables: .libraries .dlls
.libraries: .interfaces

PKGCFGS := $(wildcard package.xs) package/build.cfg
.interfaces: package/package.xdc.inc package/package.defs.h package.xdc $(PKGCFGS)

-include package/package.xdc.dep
package/%.xdc.inc package/%_configPkg.c package/%.defs.h: %.xdc $(PKGCFGS)
	@$(MSG) generating interfaces for package configPkg" (because $@ is older than $(firstword $?))" ...
	$(XSRUN) -f xdc/services/intern/cmd/build.xs $(MK_IDLOPTS) -m package/package.xdc.dep -i package/package.xdc.inc package.xdc

.dlls,m4f .dlls: buttonled.pm4f

-include package/cfg/buttonled_pm4f.mak
-include package/cfg/buttonled_pm4f.cfg.mak
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/buttonled_pm4f.dep
endif
buttonled.pm4f: package/cfg/buttonled_pm4f.xdl
	@


ifeq (,$(wildcard .libraries,m4f))
buttonled.pm4f package/cfg/buttonled_pm4f.c: .libraries,m4f
endif

package/cfg/buttonled_pm4f.c package/cfg/buttonled_pm4f.h package/cfg/buttonled_pm4f.xdl: override _PROG_NAME := buttonled.xm4f
package/cfg/buttonled_pm4f.c: package/cfg/buttonled_pm4f.cfg
package/cfg/buttonled_pm4f.xdc.inc: package/cfg/buttonled_pm4f.xdl
package/cfg/buttonled_pm4f.xdl package/cfg/buttonled_pm4f.c: .interfaces

clean:: clean,m4f
	-$(RM) package/cfg/buttonled_pm4f.cfg
	-$(RM) package/cfg/buttonled_pm4f.dep
	-$(RM) package/cfg/buttonled_pm4f.c
	-$(RM) package/cfg/buttonled_pm4f.xdc.inc

clean,m4f::
	-$(RM) buttonled.pm4f
.executables,m4f .executables: buttonled.xm4f

buttonled.xm4f: |buttonled.pm4f

-include package/cfg/buttonled.xm4f.mak
buttonled.xm4f: package/cfg/buttonled_pm4f.om4f 
	$(RM) $@
	@$(MSG) lnkm4f $@ ...
	$(RM) $(XDCCFGDIR)/$@.map
	$(ti.targets.arm.clang.M4F.rootDir)/bin/tiarmclang -Wl,-q -Wl,-u,_c_int00 -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16  -o $@ package/cfg/buttonled_pm4f.om4f -Xlinker package/cfg/buttonled_pm4f.xdl   -Wl,-w -Wl,-c -Wl,-m,$(XDCCFGDIR)/$@.map
	
buttonled.xm4f: export C_DIR=
buttonled.xm4f: PATH:=$(ti.targets.arm.clang.M4F.rootDir)/bin/;$(PATH)
buttonled.xm4f: Path:=$(ti.targets.arm.clang.M4F.rootDir)/bin/;$(PATH)

buttonled.test test,m4f test: buttonled.xm4f.test

buttonled.xm4f.test:: buttonled.xm4f
ifeq (,$(_TESTLEVEL))
	@$(MAKE) -R -r --no-print-directory -f $(XDCROOT)/packages/xdc/bld/xdc.mak _TESTLEVEL=1 buttonled.xm4f.test
else
	@$(MSG) running $<  ...
	$(call EXEC.buttonled.xm4f, ) 
endif

clean,m4f::
	-$(RM) $(wildcard .tmp,buttonled.xm4f,*)


clean:: clean,m4f

clean,m4f::
	-$(RM) buttonled.xm4f
%,copy:
	@$(if $<,,$(MSG) don\'t know how to build $*; exit 1)
	@$(MSG) cp $< $@
	$(RM) $@
	$(CP) $< $@
buttonled_pm4f.om4f,copy : package/cfg/buttonled_pm4f.om4f
buttonled_pm4f.sm4f,copy : package/cfg/buttonled_pm4f.sm4f

$(XDCCFGDIR)%.c $(XDCCFGDIR)%.h $(XDCCFGDIR)%.xdl: $(XDCCFGDIR)%.cfg $(XDCROOT)/packages/xdc/cfg/Main.xs | .interfaces
	@$(MSG) "configuring $(_PROG_NAME) from $< ..."
	$(CONFIG) $(_PROG_XSOPTS) xdc.cfg $(_PROG_NAME) $(XDCCFGDIR)$*.cfg $(XDCCFGDIR)$*

.PHONY: release,configPkg
ifeq (,$(MK_NOGENDEPS))
-include package/rel/configPkg.tar.dep
endif
package/rel/configPkg/configPkg/package/package.rel.xml: package/package.bld.xml
package/rel/configPkg/configPkg/package/package.rel.xml: package/build.cfg
package/rel/configPkg/configPkg/package/package.rel.xml: package/package.xdc.inc
package/rel/configPkg/configPkg/package/package.rel.xml: .force
	@$(MSG) generating external release references $@ ...
	$(XS) $(JSENV) -f $(XDCROOT)/packages/xdc/bld/rel.js $(MK_RELOPTS) . $@

configPkg.tar: package/rel/configPkg.xdc.inc package/rel/configPkg/configPkg/package/package.rel.xml
	@$(MSG) making release file $@ "(because of $(firstword $?))" ...
	-$(RM) $@
	$(call MKRELTAR,package/rel/configPkg.xdc.inc,package/rel/configPkg.tar.dep)


release release,configPkg: all configPkg.tar
clean:: .clean
	-$(RM) configPkg.tar
	-$(RM) package/rel/configPkg.xdc.inc
	-$(RM) package/rel/configPkg.tar.dep

clean:: .clean
	-$(RM) .libraries $(wildcard .libraries,*)
clean:: 
	-$(RM) .dlls $(wildcard .dlls,*)
#
# The following clean rule removes user specified
# generated files or directories.
#

ifneq (clean,$(MAKECMDGOALS))
ifeq (,$(wildcard package))
    $(shell $(MKDIR) package)
endif
ifeq (,$(wildcard package/cfg))
    $(shell $(MKDIR) package/cfg)
endif
ifeq (,$(wildcard package/lib))
    $(shell $(MKDIR) package/lib)
endif
ifeq (,$(wildcard package/rel))
    $(shell $(MKDIR) package/rel)
endif
ifeq (,$(wildcard package/internal))
    $(shell $(MKDIR) package/internal)
endif
endif
clean::
	-$(RMDIR) package

include custom.mak