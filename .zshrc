ZSH_THEME="robbyrussell"
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
plugins=(git gitfast tmux)

alias c="clear"
alias up="cd .."

export ANACONDA="~/anaconda/bin"
export PATH="$ANACONDA:$PATH"

[ -s "/usr/share/autojump/autojump.sh" ] && . "/usr/share/autojump/autojump.sh"
