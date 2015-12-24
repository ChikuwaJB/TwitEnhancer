ARCHS = armv7 arm64
export TARGET = iphone:clang:latest:latest
export THEOS_DEVICE_IP = 127.0.0.1
export THEOS_DEVICE_PORT = 2222
THEOS_PACKAGE_DIR_NAME = debs

include theos/makefiles/common.mk

TWEAK_NAME = TwitEnhancer
TwitEnhancer_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += twitpref
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 Twitter; killall -9 SpringBoard"
