# 起動時のディレクトリを指定する
cd ~/Downloads

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
[%n@%m]%# "
RPROMPT=""

export LSCOLORS=ExFxCxdxBxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="ls -G"

# git merge で commit message用editor を表示しない
export GIT_MERGE_AUTOEDIT=no

[ -f ~/dotfiles/.zshrc.mine ] && source ~/dotfiles/.zshrc.mine
#[ -f ~/dotfiles/.zshrc.python ] && source ~/dotfiles/.zshrc.python
#[ -f ~/dotfiles/.zshrc.ruby ] && source ~/dotfiles/.zshrc.ruby
#[ -f ~/dotfiles/.zshrc.mysql ] && source ~/dotfiles/.zshrc.mysql
#[ -f ~/dotfiles/.zshrc.composer ] && source ~/dotfiles/.zshrc.composer

# tree コマンドの代用
alias findtree="find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/| /g'"

# ssh bg color
alias ssh='~/dotfiles/ssh-background'

# node
export PATH=$PATH:/Users/m1068/.nodebrew/current/bin

# Erase PDF password.
#
# usage:
#    $ erasepp filename.pdf password
#
# Need "qpdf".
# $ brew install qpdf
#
function erasepp (){
  qpdf --password=$2 --decrypt $1 tmp_unlockpdf.pdf
  if [ -e tmp_unlockpdf.pdf ]; then
    mv $1 $1.old
    mv tmp_unlockpdf.pdf $1
    rm $1.old
  fi
}

# compressed PDF.
#
# usage:
#    $ compresspdf filename.pdf
#
# Need "ghostscript".
# $ brew install ghostscript
#
function compresspdf (){
  gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=tmp_output.pdf $1
  if [ -e tmp_output.pdf ]; then
    mv $1 $1.old
    mv tmp_output.pdf $1
    rm $1.old
  fi
}
