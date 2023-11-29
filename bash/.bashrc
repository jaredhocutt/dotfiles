# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias cdpvol='cd /var/lib/containers/storage/volumes'
alias fcmd='firewall-cmd'

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
