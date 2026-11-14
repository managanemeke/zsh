# https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

ZSH_THEME="random"

path+=~/.cargo/bin
path+=~/.local/bin
path+=~/go/bin

plugins=(
  git
  z
  zsh-proxy
)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

import_local_zshrc() {
  local target="$HOME/.zshrc.local"
  if [ -r "${target}" ]; then
    source "${target}"
  fi
}
import_local_zshrc

