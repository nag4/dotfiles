# configure

autoload -U compinit; compinit
autoload -U colors; colors

setopt COMPLETE_IN_WORD
setopt auto_cd
setopt list_packed
setopt correct
setopt nolistbeep

zstyle ':completion:*' list-colors ''

PROMPT="%{${fg[yellow]}%}[%~]%{${reset_color}%} 
[%m]%# "
RPROMPT=""

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
