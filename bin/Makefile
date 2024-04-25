SHELLFILES=$(shell find . -type f ! -name Makefile ! -name .stow-local-ignore ! -name trim-trailing-whitespace)
PYTHONFILES=$(shell ./find-python-sb-files)

.PHONY: all
all:

.PHONY: clean
clean:

.PHONY: test
test:
	@echo "🧪 Running tests"
	shellcheck $(SHELLFILES)
	checkmake Makefile
	@echo "🎉 All tests passed"

fmt:
	@echo "🧹 Formatting files"
	@echo $(PYTHONFILES)
	@for file in $(PYTHONFILES); do \
		echo "Formatting $$file"; \
		black $$file; \
		isort $$file; \
		ruff $$file; \
		mypy $$file; \
	done
