#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

case $1 in
  git|vim|zsh|atom )
    stow -v -d $DIR -t ~/ $1
    ;;
  * )
    echo "Usage: $0 (git|vim|zsh|atom)"
esac
