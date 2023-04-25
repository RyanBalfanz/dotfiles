.PHONY: all
all: check

.PHONY: install
install:
	brew bundle --verbose

.PHONY: clean
clean:
	brew bundle cleanup

.PHONY: test
test:

.PHONY: check
check:
	brew bundle check --verbose

.PHONY: Brewfile
Brewfile: dump

dump:
	brew bundle dump --verbose --force --describe

lint:
	checkmake Makefile
