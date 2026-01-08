# Copyright 2026 edcsnt. All rights reserved.
.POSIX:

PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

clean:
	@echo kros does not need building or cleaning
install:
	mkdir -p -- "$(DESTDIR)$(PREFIX)/bin" "$(DESTDIR)$(MANPREFIX)/man1"
	cp kros "$(DESTDIR)$(PREFIX)/bin"
	gzip -c kros.1 >"$(DESTDIR)$(MANPREFIX)/man1/kros.1.gz" \
		|| cp kros.1 "$(DESTDIR)$(MANPREFIX)/man1"
	-chmod 0755 "$(DESTDIR)$(PREFIX)/bin/kros"
	-chmod 0644 "$(DESTDIR)$(MANPREFIX)/man1/kros.1.gz" \
		|| chmod 0644 "$(DESTDIR)$(MANPREFIX)/man1/kros.1"
uninstall:
	rm -f -- "$(DESTDIR)$(PREFIX)/bin/kros" \
		"$(DESTDIR)$(MANPREFIX)/man1/kros.1.gz" \
		"$(DESTDIR)$(MANPREFIX)/man1/kros.1"
