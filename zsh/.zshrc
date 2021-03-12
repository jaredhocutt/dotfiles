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

export PATH=${HOME}/.local/bin:${PATH}:${GOPATH}/bin
