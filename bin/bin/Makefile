SHELLFILES=$(shell find . -type f ! -name Makefile ! -name .stow-local-ignore ! -name trim-trailing-whitespace ! -name generate-integers)
PYTHONFILES=$(shell ./find-python-sb-files)

.PHONY: all
all:

.PHONY: clean
clean:
	rm -rf __pycache__ .mypy_cache .ruff_cache

.PHONY: test
test: clean
	@echo "🧪 Running tests"
	shellcheck $(SHELLFILES)
	checkmake Makefile
	@echo "🎉 All tests passed"

.PHONY: fmt
fmt:
	@echo "🧹 Formatting files"
	@echo $(PYTHONFILES)
	@for file in $(PYTHONFILES); do echo "Formatting $$file"; black $$file; isort $$file; done
	# @for file in $(PYTHONFILES); do echo "Formatting $$file"; ruff format $$file done

.PHONY: lint
lint:
	# @echo "🔍 Linting files"
	# @echo $(PYTHONFILES)
	# @for file in $(PYTHONFILES); do echo "Linting $$file"; ruff check $$file; mypy $$file; done
