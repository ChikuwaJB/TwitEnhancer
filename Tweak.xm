#define SettingsPath @"/var/mobile/Library/Preferences/com.index5.TwitPref.plist"
static NSDictionary *settings;

%hook TFNTwitterAccount
	-(bool) isEmojiFavoritesEnabled {
		if([settings objectForKey:@"isEmojiFavoritesEnabled"] ? [[settings objectForKey:@"isEmojiFavoritesEnabled"] boolValue] : YES){
			return TRUE;
		} else {
			return FALSE;
		}
	}
%end

%ctor{
settings=[NSDictionary dictionaryWithContentsOfFile:SettingsPath];
}
