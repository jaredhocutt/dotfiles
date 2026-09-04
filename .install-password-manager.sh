#!/usr/bin/env bash

set -euo pipefail

if ! type bw >/dev/null 2>&1; then
    echo "Installing Bitwarden CLI..."

    case "$(uname -s)" in
    Darwin)
        /opt/homebrew/bin/brew install bitwarden-cli
        ;;
    Linux)
        if ! command -v unzip >/dev/null 2>&1; then
            if command -v apt >/dev/null 2>&1; then
                sudo apt install -y unzip
            elif command -v dnf >/dev/null 2>&1; then
                sudo dnf install -y unzip
            fi
        fi

        TMPDIR="$(mktemp -d)"

        curl -fsSL "https://bitwarden.com/download/?app=cli&platform=linux" -o "${TMPDIR}/bw.zip"
        unzip -qo "${TMPDIR}/bw.zip" -d "${TMPDIR}"

        sudo install -m 0755 "${TMPDIR}/bw" "/usr/local/bin/bw"
        ;;
    *)
        echo "Unsupported OS"
        exit 1
        ;;
    esac

    echo "Bitwarden CLI installed successfully"
fi

if ! bw login --check >/dev/null 2>&1; then
    echo "Logging in to Bitwarden CLI..."
    bw login
fi
