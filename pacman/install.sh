#!/usr/bin/env bash

#
# install pacman lib
#

echo "-- Start pacman libs --"

# install pip
if type pip > /dev/null 2>&1; then
  echo "Please Install pip"
  exit
fi


PACMAN_LIBS=(
        vim
        zsh
        mingw-w64-x86_64-go
        tar
        unzip
        diffutils
)

echo "...install dotfiles...\n"
for LIB in ${PACMAN_LIBS[@]}
do
    Pacman -S --noconfirm $LIB
done
