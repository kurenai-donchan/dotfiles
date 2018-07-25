######################################################
# export
######################################################
export GOPATH=$HOME/.go
export MINGQW64_BIN_PATH="/c/git-sdk-64/mingw64/bin/"
export PATH=$PATH:$GOPATH/bin:$MINGQW64_BIN_PATH
export DOTPATH=~/dotfiles

export MSYS=winsymlinks:nativestrict


######################################################
# include .bashrc
######################################################
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

