ARCHS = arm64
include theos/makefiles/common.mk

BUNDLE_NAME = TwitPref
TwitPref_FILES = TwitPref.mm
TwitPref_INSTALL_PATH = /Library/PreferenceBundles
TwitPref_FRAMEWORKS = UIKit
TwitPref_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/TwitPref.plist$(ECHO_END)
