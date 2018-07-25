# Change directory to the repo where fetched by peco
function _peco-ghq-list() {
  local selected_dir=$(ghq list --full-path | peco --prompt '[repo]' --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    if [ -t 1 ]; then
      echo ${selected_dir}
      cd ${selected_dir}
      clear
    fi
  fi
}
bind -x '"\C-]": _peco-ghq-list'
