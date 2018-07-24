# include .bash_alias
if [ -f ~/.bash_alias ]; then
. ~/.bash_function
fi

# include .bash_function
if [ -f ~/.bash_function ]; then
. ~/.bash_function
fi

