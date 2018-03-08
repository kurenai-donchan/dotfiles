#alias ls='ls --show-control-chars'


alias du="docker-compose up -d"
alias dl="docker logs -f --tail 30"


alias hy="start hayaemon"
alias ls="ls --show-control-chars -F --color --ignore={NTUSER.*,ntuser.*}"
alias wp="echo '{$PATH}' | tr ':' '\n'"
alias gl="_ghql"

alias tree="cmd //c tree"
alias bp="vi ~/.bash_profile"


# ghq list with peco
function _ghql() {
  local selected_file=$(ghq list --full-path | peco --query "$LBUFFER")
  if [ -n "$selected_file" ]; then
    if [ -t 1 ]; then
      echo ${selected_file}
      cd ${selected_file}
    fi
  fi
}
bind -x '"\C-g": _ghql'

# search histroy with peco
_search_historyby_peco() {
	local l=$(HISTTIMEFORMAT= history | tac | sed -e 's/^\s*[0-9]\+\s\+//' | peco --query "$READLINE_LINE")
	READLINE_LINE="$l"
	READLINE_POINT=${#l}
}
bind -x '"\C-r": _search_historyby_peco'
bind    '"\C-xr": reverse-search-history'

_find_file_by_peco() {
	local search_exec
	if git rev-parse 2> /dev/null; then 
		search_exec="git ls-files"
	else
		search_exec="find . -type f"
	fi
	selected_files=$( ${search_exec} | peco --prompt "[find file]")
	result=""
	for file in $selected_files; do
		result+=`echo $file | tr '\n' ' '`
	done
	READLINE_LINE="$READLINE_LINE${result}"
	READLINE_POINT=${#READLINE_LINE}
}
bind -x '"\C-f": _find_file_by_peco'


peco-rakuten-hub(){
        IFS=$'\n'
	local selected_dirs=$(ghq list | grep "git.rakuten-it.com" | peco --prompt '[repo]')
	for selected_dir in $(echo $selected_dirs | tr ";" " ")
	do
		if [ -n "$selected_dir" ]
		then
			pushd $(ghq root)/${selected_dir} > /dev/null
			local url=$(git config --get remote.origin.url)
			popd > /dev/null
			echo "start ${url}"
			start ${url}
		fi
	done
}



eval "$(docker-machine env default)"
