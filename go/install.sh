#!/bin/bash

echo "Insall go packages"
set -e

PKGS=(
   # General usage
   github.com/motemen/ghq
   github.com/peco/peco/cmd/peco
)

for pkg in ${PKGS[@]}; do
	go get -u -v $pkg
done
