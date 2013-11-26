JARDIR = /usr/share/java
RHINO = build/rhino1_7R4

all:
	ant jar

install: all
	install -d $(DESTDIR)$(JARDIR)
	install -t $(DESTDIR)$(JARDIR) $(RHINO)/js.jar

clean:
	ant clean

distclean:
	ant deepclean
	@rm -rf lib
