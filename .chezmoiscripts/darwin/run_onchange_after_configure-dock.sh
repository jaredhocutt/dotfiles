#!/usr/bin/env zsh

set -eufo pipefail

trap 'killall Dock' EXIT

declare -a remove_labels=(
	Safari
	Maps
	FaceTime
	Calendar
	Contacts
	Freeform
	TV
    News
	Keynote
	Numbers
	Pages
	"App Store"
    "Managed Software Center"
    "Red Hat Printer Setup"
    "Red Hat Mac Info"
)

for label in "${remove_labels[@]}"; do
    if dockutil --find ${label} >/dev/null 2>&1; then
        echo "Found ${label} in Dock, removing it..."
        dockutil --no-restart --remove "${label}" || true
    fi
done