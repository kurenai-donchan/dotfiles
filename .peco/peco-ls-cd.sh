# ���{��̃f�B���N�g���Ƃ��œ��͂����邢�Ƃ��Ƀ��X�g����Z���N�g����
function _peco-ls-cd {
    local dir="$( ls | peco )"
    if [ ! -z "$dir" ] ; then
        cd "$dir"
    fi
}
alias cdp=_peco-ls-cd
