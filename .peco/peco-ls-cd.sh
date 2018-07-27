# 日本語のディレクトリとかで入力がだるいときにリストからセレクトする
function _peco-ls-cd {
    local dir="$( ls | peco )"
    if [ ! -z "$dir" ] ; then
        cd "$dir"
    fi
}
alias cdp=_peco-ls-cd
