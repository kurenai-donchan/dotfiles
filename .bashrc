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
  for f in ~/.peco/*.sh
  do
    source $f
  done
fi


######################################################
# Read private setting sh
######################################################
if [ -d ~/.private ]; then
  for f in ~/private/*.sh
  do
    source $f
  done
fi


######################################################
# Read bashrc for company
######################################################
if [ -f ~/.company/.bashrc ];then
  for f in ~/.company/.bashrc
  do
    source $f
  done
fi

