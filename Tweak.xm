#define SettingsPath @"/var/mobile/Library/Preferences/com.index5.TwitPref.plist"

#define TisJapanNewsV2Enabled [[[NSDictionary dictionaryWithContentsOfFile: SettingsPath] objectForKey:@"isJapanNewsV2Enabled"] boolValue]

%hook TFNTwitterAccount
	-(bool) isEmojiFavoritesEnabled {
		if([[NSDictionary dictionaryWithContentsOfFile: SettingsPath] objectForKey:@"isEmojiFavoritesEnabled"] ? [[[NSDictionary dictionaryWithContentsOfFile: SettingsPath] objectForKey:@"isEmojiFavoritesEnabled"] boolValue] : YES){
			return TRUE;
		} else {
			return FALSE;
		}
	}
%end

