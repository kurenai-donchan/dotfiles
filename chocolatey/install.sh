#!/usr/bin/env bash

########################################
#
# chocolatery package install
#
########################################
cd `dirname $0`

# unset tmp and temp for chocolatery install
unset tmp temp

choco install -y ./package.config

