JARDIR = /usr/share/java
RHINO = jsr173_1.0_api.jar

all:
	ant jar

install: all
	install -d $(DESTDIR)$(JARDIR)
	install -t $(DESTDIR)$(JARDIR) lib/*.jar
	if [ -e $(DESTDIR)$(JARDIR)/js.jar ];then rm $(DESTDIR)$(JARDIR)/js.jar;fi
	ln -s $(RHINO) $(DESTDIR)$(JARDIR)/js.jar

clean:
	ant clean

distclean:
	ant deepclean
	@rm -rf lib
