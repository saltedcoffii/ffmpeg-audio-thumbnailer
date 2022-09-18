#!/usr/bin/env -S make -f

PREFIX  ?= /usr/local
DATADIR  ?= $(PREFIX)/share
DESTDIR ?=
INSTALL ?= install

SRC := src/ffmpeg-audio-thumbnailer.thumbnailer

all:
	@echo "Nothing to do."

install:
	$(INSTALL) -Dm644 -t $(DESTDIR)$(DATADIR)/thumbnailers $(SRC)

uninstall:
	rm -f $(addprefix $(DESTDIR)$(DATADIR)/thumbnailers/, $(SRC))

check:
	@echo "Nothing to do—for now!"

clean:
	@echo "Nothing to do."

.PHONY: all clean install check
