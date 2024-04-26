# Stow options
# https://www.gnu.org/software/stow/manual/
STOW_VERBOSITY=2
STOW_OPTIONS=--target=$(HOME) --dotfiles --verbose=$(STOW_VERBOSITY)
# List of packages to stow
STOW_PACKAGES=bin config editorconfig git homebrew llm tmux vscode zsh
# Find all packages that have a Makefile in their directory
TESTABLE_PACKAGES=$(shell find . -name Makefile -type f -mindepth 2 -exec dirname {} +)
FORMATABLE_PACKAGES=bin/bin

# Default target
.PHONY: all
all:

.PHONY: clean
clean:
	find . -name .DS_Store -delete

.PHONY: test
test: lint
	checkmake Makefile
	@echo "Testing packages: $(TESTABLE_PACKAGES)"
	@for package in $(TESTABLE_PACKAGES); do echo "Testing $$package"; make -C $$package test; done

.PHONY: fmt
fmt: lint
	@echo "Formatting packages: $(FORMATABLE_PACKAGES)"
	@for package in $(FORMATABLE_PACKAGES); do echo "Formatting $$package"; make -C $$package fmt; done

.PHONY: lint
lint:
	@echo "Linting packages: $(FORMATABLE_PACKAGES)"
	@for package in $(FORMATABLE_PACKAGES); do echo "Linting $$package"; make -C $$package lint; done

# Stow the package names that follow this option
.PHONY: stow
stow: restow

.PHONY: simulate
simulate:
	stow --simulate $(STOW_OPTIONS) $(STOW_PACKAGES)

# Restow (like stow -D followed by stow -S)
restow:
	stow --restow $(STOW_OPTIONS) $(STOW_PACKAGES)

unstow:
	stow --delete $(STOW_OPTIONS) $(STOW_PACKAGES)

# Show the tree important files in the current directory
tree:
	tree -a -I .git .
