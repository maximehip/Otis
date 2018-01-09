include /Users/maximedamery/theos/makefiles/common.mk

FRAMEWORK_NAME = Otis
Otis_FILES = Otis.mm SSZipArchive.m minizip/crypt.c minizip/ioapi_buf.c minizip/ioapi_mem.c minizip/ioapi.c minizip/minishared.c minizip/unzip.c minizip/zip.c minizip/aes_ni.c minizip/aescrypt.c minizip/aeskey.c minizip/aestab.c minizip/fileenc.c minizip/hmac.c minizip/prng.c minizip/pwd2key.c minizip/sha1.c
Otis_FRAMEWORKS = CoreGraphics UIKit
Otis_CFLAGS = -fobjc-arc
Otis_PUBLIC_HEADERS = Otis.h
Otis_INSTALL_PATH = /Library/Frameworks

include $(THEOS_MAKE_PATH)/framework.mk
