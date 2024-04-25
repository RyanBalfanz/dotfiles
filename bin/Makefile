SHELLFILES=$(shell find . -type f ! -name Makefile ! -name .stow-local-ignore)

.PHONY: all
all:

.PHONY: clean
clean:

.PHONY: test
test:
	shellcheck $(SHELLFILES)
	checkmake Makefile
	@echo "🎉 All tests passed"
