.POSIX:

include config.mk

all: $(PROJECTNAME)

$(PROJECTNAME):
	$(MAKE) -C src CONFIG_MK="`pwd`/config.mk" INC="-I '`pwd`'/include" all
	cp src/$(PROJECTNAME) $(PROJECTNAME)

clean:
	rm -f $(PROJECTNAME)
	$(MAKE) -C src CONFIG_MK="`pwd`/config.mk" INC="-I '`pwd`'/inlcude" clean

.PHONY: all $(PROJECTNAME) clean
