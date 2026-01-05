# Copyright 2026 edcsnt. All rights reserved.
.POSIX:

PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

clean:
	@echo kros does not need building or cleaning
install:
	mkdir -p $(PREFIX)/bin $(MANPREFIX)/man1
	cp kros $(PREFIX)/bin/kros
	gzip -c kros.1 >$(MANPREFIX)/man1/kros.1.gz \
		|| cp kros.1 $(MANPREFIX)/man1/kros.1
uninstall:
	rm -f $(PREFIX)/bin/kros $(PREFIX)/sbin/kros $(MANPREFIX)/man1/kros.1 \
		$(MANPREFIX)/man1/kros.1.gz
