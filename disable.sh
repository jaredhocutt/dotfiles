#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

case $1 in
  git|vim|zsh|atom|tmux|tilix )
    stow -D -d $DIR -t ~/ $1
    ;;
  * )
    echo "Usage: $0 (git|vim|zsh|atom|tilix)"
esac
