# Otis
Allow developers of tweaks and themes to update them without Cydia. 

To compile it you need theos, just tap make.

The method to use it is:

-(void)Otis_checkupdate:(NSString *)tweakName fileServer:(NSURL *)fileServer file:(NSString *)file;

tweakName : Name of your Tweak/Theme

fileServer = The URL of your file.txt with version number.

file = file to upload (they must be in zip.)

In beta.

Feel free to contribute, all ideas are good.

Otis is actually not perfect but I am working to improve it. 

