# configure

# homebrewでinstallしたgitの補完を効かせる
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -U compinit; compinit
autoload -U colors; colors

setopt COMPLETE_IN_WORD
#setopt auto_cd
setopt list_packed
setopt correct
setopt nolistbeep
setopt nonomatch

export LANG=ja_JP.UTF-8

zstyle ':completion:*' list-colors ''

PROMPT="%{${fg[yellow]}%}[%~]%{${reset_color}%} 
[%m]%# "
RPROMPT=""

export LSCOLORS=ExFxCxdxBxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="ls -G"

[ -f ~/dotfiles/.zshrc.mine ] && source ~/dotfiles/.zshrc.mine
[ -f ~/dotfiles/.zshrc.live2 ] && source ~/dotfiles/.zshrc.live2
[ -f ~/dotfiles/.zshrc.python ] && source ~/dotfiles/.zshrc.python
[ -f ~/dotfiles/.zshrc.ruby ] && source ~/dotfiles/.zshrc.ruby
[ -f ~/dotfiles/.zshrc.mysql ] && source ~/dotfiles/.zshrc.mysql
