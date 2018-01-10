ZSH_THEME="robbyrussel"
export ZSH=/home/jprasad9/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
plugins=(git gitfast tmux)

alias c="clear"
alias up="cd .."

export ANACONDA="/home/jprasad9/anaconda2/bin"
export PATH="$ANACONDA:$PATH"

[ -s "/usr/share/autojump/autojump.sh" ] && . "/usr/share/autojump/autojump.sh"
