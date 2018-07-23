# Change directory to the repo where fetched by peco
function _peco-ghql() {
  local selected_dir=$(ghq list --full-path | peco --prompt '[repo]' --query "$LBUFFER")
  if [ -n "$selected_file" ]; then
    if [ -t 1 ]; then
      echo ${selected_file}
      cd ${selected_file}
      clear
    fi
  fi
}
bind -x '"\C-]": _peco-ghql'
