# export
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export MSYS=winsymlinks:nativestrict
export DOTPATH=~/dotfiles

# read peco
. ~/.peco/*.sh

# Read company setting zsh
#if [ -e ~/company ];then
#	for f (~/company/utils/*.sh) source "${f}"
#fi

# Read common setting sh TODO 
# for f ($DOTPATH/.*/*.sh) source "${f}"

