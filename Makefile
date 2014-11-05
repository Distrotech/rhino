JARDIR = /usr/share/java
RHINO = build/rhino1_8R1pre

all:
	ant jar

install: all
	install -d $(DESTDIR)$(JARDIR)
	install -m 644 -t $(DESTDIR)$(JARDIR) $(RHINO)/js.jar

clean:
	ant clean

distclean:
	ant deepclean
	@rm -rf lib
