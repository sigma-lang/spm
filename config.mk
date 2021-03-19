# Program name
PROJECTNAME = "spm"

# Program version
VERSION = 1.0

PKG_CONFIG = pkg-config

# Includes
INCLUDES = `$(PKG_CONFIG) --cflags libgit2`
LIBS = `$(PKG_CONFIG) --libs libgit2`

# Compiler flags
_CFLAGS = -std=c99 -Wall -Wextra -O2 \
		 -DVERSION=\"$(VERSION)\" \
		 $(INCLUDES) $(CFLAGS)

_LDFLAGS = $(LIBS) $(LDFLAGS)
