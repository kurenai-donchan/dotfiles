# history から選択してcdする
_peco-dir-history-cd() {
    local dir="$( cat ~/.dir_history | sort  | uniq -c | sort -k 1 -r | awk '{print $2}' | peco --prompt '[Dirctory histtory]' )"
    if [ ! -z "$dir" ] ; then
        cd "$dir"
    fi
}
bind -x '"\C-h": _peco-dir-history-cd'
