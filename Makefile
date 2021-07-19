TARGET := iphone:clang:latest:latest
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_DEVICE_IP = 192.168.1.216


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Flutter

Flutter_FILES = Flutter.xm 
Flutter_CFLAGS = -fobjc-arc -Wno-unused-variable

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
