#!/usr/bin/env bash

#
# install pip
# Unofficial Windows Binaries for Python Extension Packages.
#  FYI:https://www.lfd.uci.edu/~gohlke/pythonlibs/
#

echo "-- Start Install python lib --"

# install pip
if type easy_install > /dev/null 2>&1; then
  easy_install pip
else
  echo "None easy_install"
  exit
fi


pushd /tmp

# curl -O "https://download.lfd.uci.edu/pythonlibs/l8ulg3xw/lxml-4.2.3-cp36-cp36m-win32.whl" 

LIBS=(
   wheel
   lxml-4.2.3-cp36-cp36m-win32.whlaaa

)

echo "...install pip lib...\n"
for LIB in ${LIBS[@]}
do
    pip install $LIB
done

# 戻る
popd

