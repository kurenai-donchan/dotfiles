# Change directory to the repo where fetched by peco
function _peco-ghq-list() {
  local selected_dir=$(ghq list --full-path | peco --prompt '[All repo]' --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    if [ -t 1 ]; then
      cd "${selected_dir}"
    fi
  fi
}
bind -x '"\C-]": _peco-ghq-list'
