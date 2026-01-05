# Copyright 2026 edcsnt. All rights reserved.
.POSIX:

PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

clean:
	@echo kros does not need building or cleaning
install:
	mkdir -p $(PREFIX)/bin $(MANPREFIX)/man1
	cp kros $(PREFIX)/bin
	gzip -c kros.1 >$(MANPREFIX)/man1/kros.1.gz \
		|| cp kros.1 $(MANPREFIX)/man1
uninstall:
	rm -f $(PREFIX)/bin/kros $(MANPREFIX)/man1/kros.1 \
		$(MANPREFIX)/man1/kros.1.gz
