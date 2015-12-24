static NSString *SettingsPath = [[NSFileManager defaultManager] fileExistsAtPath:@"/var/mobile/Library/Preferences/com.index5.TwitPref.plist"] ? [NSHomeDirectory() stringByAppendingPathComponent:@"/var/mobile/Library/Preferences/com.index5.TwitPref.plist"] : nil;
#define TisEmojiFavoritesEnabled [[[NSDictionary dictionaryWithContentsOfFile: SettingsPath] objectForKey:@"isEmojiFavoritesEnabled"] boolValue]
#define TisJapanNewsV2Enabled [[[NSDictionary dictionaryWithContentsOfFile: SettingsPath] objectForKey:@"isJapanNewsV2Enabled"] boolValue]

%hook TFNTwitterAccount
	-(bool) isEmojiFavoritesEnabled {
		if(TisEmojiFavoritesEnabled){
			return TRUE;
		} else {
			return FALSE;
		}
	}
%end

