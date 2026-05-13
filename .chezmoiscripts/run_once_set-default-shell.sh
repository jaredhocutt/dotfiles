#!/usr/bin/env bash

set -euo pipefail

# Exit if zsh is already the default shell
[ "$(basename "$SHELL")" = "zsh" ] && exit 0

echo "Changing default shell to zsh..."

ZSH_PATH="$(command -v zsh)"

# Ensure zsh is listed in /etc/shells (required for chsh)
if ! grep -qxF "$ZSH_PATH" /etc/shells; then
    echo "$ZSH_PATH" | sudo tee -a /etc/shells
fi

chsh -s "$ZSH_PATH"
