#!/bin/bash

apps=(
  adium
  alfred
  android-file-transfer
  android-studio
  arduino
  charles
  disk-inventory-x
  dropbox
  firefox
  flux
  gitx
  google-chrome
  inkscape
  iterm2
  karabiner
  keka
  limechat
  logmein-client
  mou
  opera
  pgadmin3
  plex-home-theater
  scummvm
  sequel-pro
  skype
  slack
  sonos
  sublime-text
  transmission
  unrarx
  virtualbox
  vlc
  xmind
)

function install_apps {
  for app in "${apps[@]}"
  do
    brew cask install $app
  done
}

if hash brew 2>/dev/null; then
  install_apps
else
  echo 'Homebrew is not installed.'
fi
