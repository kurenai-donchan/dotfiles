#!/usr/bin/env bash

#
# install pip
#

echo "-- Start Install python lib --"

# install pip
if ! type pip > /dev/null 2>&1; then
  echo " -- install pip"
  curl -kL https://bootstrap.pypa.io/get-pip.py | python
fi
  


LIBS=(
   lxml

)

echo "...install pip lib...\n"
for LIB in ${LIBS[@]}
do
    pip install $LIB
done
