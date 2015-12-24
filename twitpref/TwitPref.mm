#import <Preferences/Preferences.h>

@interface TwitPrefListController: PSListController {
}
@end

@implementation TwitPrefListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"TwitPref" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
