# configure

autoload -U compinit; compinit
autoload -U colors; colors

setopt COMPLETE_IN_WORD
#setopt auto_cd
setopt list_packed
setopt correct
setopt nolistbeep

export LANG=ja_JP.UTF-8

zstyle ':completion:*' list-colors ''

export PATH=$PATH:/usr/local/mysql/bin

PROMPT="%{${fg[yellow]}%}[%~]%{${reset_color}%} 
[%m]%# "
RPROMPT=""

export LSCOLORS=ExFxCxdxBxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="ls -G"


[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
