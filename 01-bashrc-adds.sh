#!/bin/sh

set -eu

# default less options
export LESS=-iXFR

# or only for git
#git config --global --replace-all core.pager "less -iXFR"

#ssh-agent problem?
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
