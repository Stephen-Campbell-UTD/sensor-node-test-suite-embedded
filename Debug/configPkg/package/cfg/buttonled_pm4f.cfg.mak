# invoke SourceDir generated makefile for buttonled.pm4f
buttonled.pm4f: .libraries,buttonled.pm4f
.libraries,buttonled.pm4f: package/cfg/buttonled_pm4f.xdl
	$(MAKE) -f C:\Users\kingi\Documents\UTD\Senior_Design\CCS\buttonLEDP71/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\kingi\Documents\UTD\Senior_Design\CCS\buttonLEDP71/src/makefile.libs clean

