#!/bin/bash

set -euo pipefail

echo "::group:: ===$(basename "$0")==="

# Создаём каталог для плагинов Zsh
sudo mkdir -p /usr/local/share/zsh/plugins

# Клонируем репозиторий zsh-autosuggestions
if [[ ! -d /usr/local/share/zsh/plugins/zsh-autosuggestions ]]; then
    sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git /usr/local/share/zsh/plugins/zsh-autosuggestions
    echo "zsh-autosuggestions has been cloned to /usr/local/share/zsh/plugins/zsh-autosuggestions"
else
    echo "zsh-autosuggestions already exists, updating..."
    sudo git -C /usr/local/share/zsh/plugins/zsh-autosuggestions pull
fi

echo "End kernel_setup.sh"