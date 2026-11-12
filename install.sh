#!/data/data/com.termux/files/usr/bin/bash
zsh_custom="$HOME/.oh-my-zsh/custom"

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

curl -fL \
  -o ~/.zshrc \
  https://raw.githubusercontent.com/managanemeke/zsh/main/.zshrc

install_zsh_proxy() {
  local zsh_proxy_path="${zsh_custom}/plugins/zsh-proxy"
  rm -rf "${zsh_proxy_path}"
  git clone \
    "https://github.com/xooooooooox/zsh-proxy" \
    "${zsh_proxy_path}"
}
install_custom_plugins() {
  install_zsh_proxy
}
install_custom_plugins
