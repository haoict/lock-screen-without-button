ARCHS = arm64 arm64e
TARGET = iphone::12.0:latest
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = lockscreenwithoutbutton
lockscreenwithoutbutton_FILES = Tweak.xm
lockscreenwithoutbutton_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

clean::
	rm -rf .theos packages