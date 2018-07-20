########################################
# PATH
########################################
export DOTPATH=~/dotfiles
export SHELL=`which zsh`
# export GOPATH=$HOME/.go

########################################
# prompt
########################################
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
\$ "

########################################
# zsh の補完設定
########################################
autoload -U compinit
compinit

# 補完時に大小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select=1

########################################
# zplug読み込み
########################################
source ~/.zplug/init.zsh


