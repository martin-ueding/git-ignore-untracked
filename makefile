# Copyright © 2012-2013 Martin Ueding <martin-ueding.de>

all:

install:
	install -d "$(DESTDIR)/usr/bin"
	install git-ignore-untracked -t "$(DESTDIR)/usr/bin"
