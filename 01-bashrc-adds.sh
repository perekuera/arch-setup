#!/bin/sh

set -eu

pfetch

alias clear="clear && pfetch"

OSH_THEME="agnoster"

# default less options
export LESS=-iXFR
# or only for Git: git config --global --replace-all core.pager "less -iXFR"

#ssh-agent problem?
#export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
