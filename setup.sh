#!/usr/bin/env bash

# 実行場所をきにしないようにする
cd `dirname $0`

echo "  Hello $USER\n"

echo "  im dotfiles. oh...How cute this :)"
echo "  To install, please tap 'y' or 'n' key\n"

# .../dotfiles
SCRIPT_DIR=$(cd $(dirname $(readlink -f $0 || echo $0));pwd -P) 

# ----------------------------
# copy dotfiles and create symlink
# ----------------------------
read -p "copy dotfiles and symlink? y/n " yn
if [ $yn = "y" -o $yn = "Y" ]; then
   echo " --copy DOTFILES ${SCRIPT_DIR} => ~/dotfiles"
   rm -rf ~/dotfiles
   \cp -rf ${SCRIPT_DIR} ~/dotfiles
   ./link.sh
fi


# ----------------------------
# Install pacman libs
# ----------------------------
read -p "install pacman libs? y/n " yn
if [ $yn = "y" -o $yn = "Y" ]; then
   ./pacman/install.sh
fi


# ----------------------------
# Install choco libs
# ----------------------------
read -p "install choclatery libs? y/n " yn
if [ $yn = "y" -o $yn = "Y" ]; then
   ./chocolatey/install.sh
fi


# ----------------------------
# golang package
# ----------------------------
read -p "install golang libs? y/n " yn
if [ $yn = "y" -o $yn = "Y" ]; then
    ./go/install.sh
fi


# ----------------------------
# Install python libs
# ----------------------------
read -p "install python libs? y/n " yn
if [ $yn = "y" -o $yn = "Y" ]; then
   ./python/install.sh
fi


# ----------------------------
# Install zplug (zsh plugin manager)
# ----------------------------
#echo "Set up zplug..."
#if [ ! -d ~/.zplug ]; then
#   curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
#else
#   echo " - already installed zplug"
#fi

