# https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

ZSH_THEME="random"

path+=~/go/bin
path+=~/.local/bin

plugins=(
  git
  z
  zsh-proxy
)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

