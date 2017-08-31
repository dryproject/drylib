TAR = tar

PACKAGE := drylib
VERSION := $(shell cat VERSION)

SOURCES := $(wildcard */.drypackage */*/.drypackage */*/*/.drypackage */*.dry */*/*.dry */*/*/*.dry)

OUTPUTS := $(PACKAGE)-$(VERSION).tar.xz

all: build

$(PACKAGE)-$(VERSION).tar.xz: $(SOURCES)
	$(TAR) -cvJf $@ $^

build: $(OUTPUTS)

check:
	@echo "not implemented" # TODO

dist:
	@echo "not implemented" # TODO

install:
	@echo "not implemented" # TODO

clean:
	@rm -f *~ $(OUTPUTS)

distclean: clean

mostlyclean: clean

.PHONY: check dist install clean distclean mostlyclean
