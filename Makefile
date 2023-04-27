STOW_VERBOSITY=2
STOW_OPTIONS=--target=$(HOME) --dotfiles --verbose=$(STOW_VERBOSITY)
STOW_PACKAGES=editorconfig homebrew tmux

.PHONY: all clean test
all: stow

clean:
	find . -name .DS_Store -delete

test:
	stow --simulate $(STOW_OPTIONS) $(STOW_PACKAGES)

.PHONY: stow
stow: restow

restow:
	stow --restow $(STOW_OPTIONS) $(STOW_PACKAGES)

unstow:
	stow --delete $(STOW_OPTIONS) $(STOW_PACKAGES)

lint:
	checkmake Makefile

tree:
	tree -a -I .git .
