.POSIX:

include $(CONFIG_MK)

OBJECTS = main.o

all: $(PROJECTNAME)

.c.o:
	$(CXX) $(_CFLAGS) $(INC) -c $<

$(PROJECTNAME): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(PROJECTNAME) $(_LDFLAGS)

clean:
	rm -f $(PROJECTNAME) $(OBJECTS)

.PHONY: all clean