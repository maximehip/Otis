#include "Otis.h"

// FUNCTION

@implementation Otis

-(void)Otis_checkupdate:(NSString *)tweakName fileServer:(NSURL *)fileServer file:(NSString *)file {

	NSFileManager *fileManager = [NSFileManager defaultManager];

	NSString *pathTweak = [NSString stringWithFormat:@"/Library/MobileSubstrate/DynamicLibraries/%@.dylib", tweakName];

	NSStringEncoding encoding;
	NSError *error;
	NSString *str = [NSString stringWithContentsOfURL:fileServer usedEncoding:&encoding error:&error];

	NSString *path = [NSString stringWithFormat:@"/Library/Application Support/%@/version.txt", tweakName];
	NSString *version = [NSString stringWithContentsOfFile:path
                                              encoding:NSUTF8StringEncoding
                                                 error:NULL];
	if ([fileManager fileExistsAtPath:pathTweak]) { 
		if (str != version) {
				NSLog(@"Update available");
				[SSZipArchive unzipFileAtPath:file toDestination:@"/Library/MobileSubstrate/DynamicLibraries/"];
		} else {
			UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No update" 
                                                    message:@"Your tweak is update" 
                                                    delegate:self 
                                                    cancelButtonTitle:@"OK" 
                                                    otherButtonTitles:nil];
    		[alert show];
		}	
	} else {
		NSLog(@"No tweak found");
	}
}

@end