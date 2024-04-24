#
# .zshrc is sourced in interactive shells.  It
# should contain commands to set up aliases, functions,
# options, key bindings, etc.
#

# Set up aliases
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias ll='ls -l'
alias la='ls -a'

# List only directories and symbolic
# links that point to directories
alias lsd='ls -ld *(-/DN)'

# List only file beginning with "."
alias lsa='ls -ld .*'

alias reload!='exec zsh'

# Pure
# https://github.com/sindresorhus/pure#homebrew
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# zsh-fast-syntax-highlighting
# Feature-rich syntax highlighting for Zsh
# https://github.com/zdharma-continuum/fast-syntax-highlighting#installation
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# zsh-autosuggestions
# Fish-like fast/unobtrusive autosuggestions for zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
