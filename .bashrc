######################################################
# Read .bash_function
######################################################
if [ -f ~/.bash_function ]; then
  source ~/.bash_function
fi


######################################################
# Read .bash_alias
######################################################
if [ -f ~/.bash_alias ]; then
  source ~/.bash_alias
fi


######################################################
# Read peco funcitons
######################################################
if [ -d ~/.peco ]; then
  source ~/.peco/*.sh
fi


# Read company setting zsh
#if [ -e ~/company ];then
#	for f (~/company/utils/*.sh) source "${f}"
#fi

# Read common setting sh TODO 
# for f ($DOTPATH/.*/*.sh) source "${f}"

