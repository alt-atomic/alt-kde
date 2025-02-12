#!/bin/bash
set -euo pipefail

echo "::group:: ===$(basename "$0")==="

# Базовые утилиты и инструменты
BASIC_PACKAGES=(
  htop
  fastfetch
  nvtop
  notify-send
  zsh
  zsh-completions
  starship
  bash-completion
  inxi
  openssh-server
  iucode_tool
  systemd-ssh-agent
  ptyxis
)

# Генератор ZRAM
ZRAM_PACKAGES=(
  zram-generator
)

# KDE — основные компоненты
KDE_MAIN_PACKAGES=(
  plasma-desktop
  kde
  kde-runtime
  kde-small@META
  lightdm
  lightdm-kde-greeter
)

# KDE — приложения и утилиты
KDE_DESKTOP_APPS=(
  dolphin
  konsole
  plasma-discover
)

# Прочие приложения
MISC_APPS=(
  virt-manager
  firefox
  power-profiles-daemon
)

# Xorg-драйверы для различных GPU и устройств
DRIVERS=(
  xorg-drv-libinput
  xorg-drv-qxl
  xorg-drv-spiceqxl
  xorg-drv-intel
  xorg-drv-amdgpu
  xorg-drv-vmware
  xorg-drv-nouveau
)

# Wayland/Qt/Vulkan утилиты
WAYLAND_QT=(
  qt5-wayland
  qt6-wayland
  wayland-utils
  vulkan-tools
)

# Аудиоподсистема (PipeWire)
AUDIO_PACKAGES=(
  pipewire
  wireplumber
)

# Сеть и печать (Avahi, CUPS, fwupd, etc.)
NETWORK_PRINT_PACKAGES=(
  avahi-daemon
  cups-browsed
  fwupd
  libnss-mdns
  wsdd
)

apt-get install -y \
  "${BASIC_PACKAGES[@]}" \
  "${ZRAM_PACKAGES[@]}" \
  "${KDE_MAIN_PACKAGES[@]}" \
  "${KDE_DESKTOP_APPS[@]}" \
  "${MISC_APPS[@]}" \
  "${DRIVERS[@]}" \
  "${WAYLAND_QT[@]}" \
  "${AUDIO_PACKAGES[@]}" \
  "${NETWORK_PRINT_PACKAGES[@]}"

echo "::endgroup::"