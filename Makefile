PANDOC  ?= pandoc
TAR     ?= tar

PACKAGE := drylib
VERSION := $(shell cat VERSION)

SOURCES := $(wildcard .drypackage */.drymodule */*/.drymodule */*/*/.drymodule */*.dry */*/*.dry */*/*/*.dry)

TARGETS := $(PACKAGE)-$(VERSION).tar.xz

%.html: %.rst
	$(PANDOC) -o $@ -t html5 -s $<

all: build

$(PACKAGE)-$(VERSION).tar.xz: $(SOURCES)
	$(TAR) -cvJf $@ $^

build: $(TARGETS)

check:
	@echo "not implemented"; exit 2 # TODO

dist:
	@echo "not implemented"; exit 2 # TODO

install:
	@echo "not implemented"; exit 2 # TODO

uninstall:
	@echo "not implemented"; exit 2 # TODO

clean:
	@rm -f *~ $(TARGETS)

distclean: clean

mostlyclean: clean

.PHONY: check dist install clean distclean mostlyclean
.SECONDARY:
.SUFFIXES:
