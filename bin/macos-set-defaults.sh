#!/usr/bin/env bash
# Set preferred macOS defaults.
# https://real-world-systems.com/docs/defaults.1.html
# https://macos-defaults.com

set -e
set -x
set -o pipefail

# System Settings > Keyboard > Key Repeat
# Off: 15
# Slow: 120
# Fast: 2
defaults read NSGlobalDomain KeyRepeat
defaults write NSGlobalDomain KeyRepeat -int 2

# System Settings > Keyboard > Delay Until Repeat
# Long: 120
# Short: 15
defaults read NSGlobalDomain InitialKeyRepeat
defaults write NSGlobalDomain KeyRepeat -int 15
