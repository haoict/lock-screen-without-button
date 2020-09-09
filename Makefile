ifeq ($(SIMULATOR), 1)
	ARCHS = x86_64
	TARGET = simulator:clang:13.7:12.0
else
	ARCHS = arm64 arm64e
	TARGET = iphone:clang:13.6:12.0
endif

PREFIX = "$(THEOS)/toolchain/XcodeDefault-11.5.xctoolchain/usr/bin/"

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = lockscreenwithoutbutton
lockscreenwithoutbutton_FILES = Tweak.xm
lockscreenwithoutbutton_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

ifneq (,$(filter x86_64,$(ARCHS)))
setup:: clean all
	@rm -f /opt/simject/$(TWEAK_NAME).dylib
	@cp -v $(THEOS_OBJ_DIR)/$(TWEAK_NAME).dylib /opt/simject/$(TWEAK_NAME).dylib
	@codesign -f -s - /opt/simject/$(TWEAK_NAME).dylib
	@cp -v $(PWD)/$(TWEAK_NAME).plist /opt/simject
endif

clean::
	rm -rf .theos packages
