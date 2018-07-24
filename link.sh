#!/usr/bin/env bash
set -u

# 実行場所をきにしないようにする
cd `dirname $0`

DOT_DIRECTORY="${HOME}/dotfiles"
DOT_CONFIG_DIRECTORY=".config"

echo " --link home directory dotfiles"
cd ${DOT_DIRECTORY}
for f in .??*
do
    #無視したいファイルやディレクトリ
    [ "$f" = ".git" ] && continue
    [ "$f" = ".zshrc" ] && continue
    ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done

echo " --link .config directory dotfiles"
cd ${DOT_DIRECTORY}/${DOT_CONFIG_DIRECTORY}
for file in `\find . -maxdepth 8 -type f`; do
    #./の2文字を削除するためにfile:2としている
    mkdir -p ${HOME}/${DOT_CONFIG_DIRECTORY}/$(dirname ${file:2});
    ln -snfv ${DOT_DIRECTORY}/${DOT_CONFIG_DIRECTORY}/${file:2} ${HOME}/${DOT_CONFIG_DIRECTORY}/${file:2}
done

echo " --linked dotfiles complete!"
