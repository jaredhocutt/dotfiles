export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="jared"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(common-aliases git git-extras pip aws copyfile encode64 jsontools)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='vim'
export PROJECT_HOME="${HOME}/projects"
export GOPATH="${HOME}/go"
export GPG_TTY=$(tty)

export HISTSIZE=50000000
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

for file in ~/.{aliases,functions,secrets}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done
unset file

if [[ -n "$PS1" ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_CONNECTION" ]]; then
	tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi

export PATH=${HOME}/.local/bin:${PATH}:${GOPATH}/bin

# Podman setup for WSL2
# https://dev.to/bowmanjd/using-podman-on-windows-subsystem-for-linux-wsl-58ji
if [[ -z "$XDG_RUNTIME_DIR" ]]; then
  export XDG_RUNTIME_DIR=/run/user/$UID
  if [[ ! -d "$XDG_RUNTIME_DIR" ]]; then
    export XDG_RUNTIME_DIR=/tmp/$USER-runtime
    if [[ ! -d "$XDG_RUNTIME_DIR" ]]; then
      mkdir -m 0700 "$XDG_RUNTIME_DIR"
    fi
  fi
fi

# Fix for openshift-install on Apple silicon
# https://veducate.co.uk/openshift-install-apple-macbook-m1/
export GODEBUG=asyncpreemptoff=1

# Fix for Ansible on MacOS
# https://github.com/ansible/ansible/issues/76322#issuecomment-974147955
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

