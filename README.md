# Otis
Allow developer of tweak and theme to update them without Cydia 

To compile it you need theos, just tap make.

The method to use it is :

-(void)Otis_checkupdate:(NSString *)tweakName fileServer:(NSURL *)fileServer file:(NSString *)file;

tweakName : Name of your Tweak/Theme

fileServer = The URL of your file.txt with version number

file = file to upload (they must be in zip)

It's actually a BETA.

Feel free to contribute, all ideas are good.

Otis is actually not perfect but I work to improve it. 

