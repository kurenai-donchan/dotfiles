# history ‚©‚ç‘I‘ð‚µ‚Äcd‚·‚é
_peco-history-cd() {
    local dir="$( dirs -v -l | sort -k 2 | uniq -f 1 | sort -n -k 1 | head -n $(( LINES - 3 )) | awk '{print $2}' | peco )"
    if [ ! -z "$dir" ] ; then
        cd "$dir"
    fi
}
bind -x '"\C-h": _peco-history-cd'
