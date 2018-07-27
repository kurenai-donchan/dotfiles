# history ‚©‚ç‘I‘ð‚µ‚Äcd‚·‚é
#_peco-history-cd() {
#    local dir="$( dirs -v -l | sort -k 2 | uniq -f 1 | sort -n -k 1 | head -n $(( LINES - 3 )) | awk '{print $2}' | peco  )"
#    if [ ! -z "$dir" ] ; then
#        cd "$dir"
#    fi
#}

_peco-dir-history-cd() {
    local dir="$( cat ~/.dir_history | sort  | uniq -c | sort -k 1 -r | awk '{print $2}' | peco --prompt '[Dirctory histtory]' )"
    if [ ! -z "$dir" ] ; then
        cd "$dir"
    fi
}
bind -x '"\C-h": _peco-dir-history-cd'
