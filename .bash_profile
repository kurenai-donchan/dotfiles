######################################################
# export
######################################################
export GOPATH=$HOME/.go
export MINGQW64_BIN_PATH="/c/git-sdk-64/mingw64/bin/"
export PATH=$PATH:$GOPATH/bin:$MINGQW64_BIN_PATH
export DOTPATH=~/dotfiles

# symlink有効(for windows)
export MSYS=winsymlinks:nativestrict

# 重複履歴を無視
export HISTCONTROL=ignorespace:ignoredups:erasedups
export HISTIGNORE=cd:ls:pwd:exit
export HISTSIZE=10000


######################################################
# docker-machine env
######################################################
if type docker-machine 2>/dev/null 1>/dev/null 
then
    eval $(docker-machine env)
fi


######################################################
# include .bashrc
######################################################
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

