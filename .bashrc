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
# Path controll èdï°PATHÇÇ≥ÇØÇÈ
######################################################
_path=""
for _p in $(echo $PATH | tr ':' ' '); do
  case ":${_path}:" in
    *:"${_p}":* )
      ;;
    * )
      if [ "$_path" ]; then
        _path="$_path:$_p"
      else
        _path=$_p
      fi
      ;;
  esac
done
PATH=$_path

unset _p
unset _path
