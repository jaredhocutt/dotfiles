#!/usr/bin/env bash

# Exit this script if the Bitwarden CLI is already installed
type bw >/dev/null 2>&1 && exit

echo "Installing Bitwarden CLI..."

case "$(uname -s)" in
Darwin)
    /opt/homebrew/bin/brew install bitwarden-cli
    ;;
Linux)
    echo "Skipping installation of Bitwarden CLI on Linux"
    echo "It is not currently used in the dotfiles repo for Linux"
    exit 0
    ;;
*)
    echo "Unsupported OS"
    exit 1
    ;;
esac

echo "Bitwarden CLI installed successfully"

echo "Logging in to Bitwarden CLI..."

# Perform the initial login to Bitwarden
bw login