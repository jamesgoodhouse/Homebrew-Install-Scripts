#!/bin/bash

apps=(
  adium
  adobe-reader
  alfred
  android-file-transfer
  android-studio
  arduino
  boxer
  caffeine
  charles
  disk-inventory-x
  dropbox
  firefox
  flux
  garmin-communicator
  garmin-express
  gas-mask
  gitx
  google-chrome
  google-earth
  inkscape
  iterm2
  karabiner
  keka
  limechat
  logitech-control-center
  logmein-client
  mou
  mysqlworkbench
  opera
  pgadmin3
  plex-home-theater
  rdio
  rdm
  scummvm
  sequel-pro
  skype
  slack
  sonos
  spotify
  sqlite-database-browser
  sublime-text
  transmission
  unrarx
  virtualbox
  vlc
)

function install_apps {
  for app in "${apps[@]}"; do
    brew cask install $app
  done
}

# checks if Homebrew is installed
if hash brew 2>/dev/null; then
  if brew cask > /dev/null 2>&1; then
    install_apps
  else
    echo 'Homebrew cask is not installed. Please run `brew install brew-cask` to install.'
  fi
else
  echo 'Homebrew is not installed.'
fi
