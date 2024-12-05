MAN8 = pawn.8

all: ${MAN8}

%: %.pod
	pod2man -r "pawn ${VERSION}" -c "" \
		-n $(basename $@) -s $(subst .,,$(suffix $@)) $< > $@

install: all
	mkdir -p ${DESTDIR}${MANPREFIX}/man8
	cp -f ${MAN8} ${DESTDIR}${MANPREFIX}/man8/

uninstall:
	cd ${DESTDIR}${MANPREFIX}/man8 && rm -f ${MAN8}

clean:
	rm -f ${MAN8}

.PHONY: all install uninstall clean
