## THIS IS A GENERATED FILE -- DO NOT EDIT
.configuro: .libraries,m4f linker.cmd package/cfg/buttonled_pm4f.om4f

# To simplify configuro usage in makefiles:
#     o create a generic linker command file name 
#     o set modification times of compiler.opt* files to be greater than
#       or equal to the generated config header
#
linker.cmd: package/cfg/buttonled_pm4f.xdl
	$(SED) 's"^\"\(package/cfg/buttonled_pm4fcfg.cmd\)\"$""\"C:/Users/kingi/Documents/UTD/Senior_Design/CCS/buttonLEDP71/Debug/configPkg/\1\""' package/cfg/buttonled_pm4f.xdl > $@
	-$(SETDATE) -r:max package/cfg/buttonled_pm4f.h compiler.opt compiler.opt.defs
