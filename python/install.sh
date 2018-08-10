#!/usr/bin/env bash

#
# install pip
# Unofficial Windows Binaries for Python Extension Packages.
#  FYI:https://www.lfd.uci.edu/~gohlke/pythonlibs/
#

echo "-- Start Install python lib using pip --"

# install pip
if ! type pip > /dev/null 2>&1; then
  echo "Please Install pip"
  exit
fi

#### upgrade pip
python -m pip install --upgrade pip

LIBS=(
   requests
   lxml
   cssselect
)

echo "...install pip lib...\n"
for LIB in ${LIBS[@]}
do
    pip install $LIB
done

