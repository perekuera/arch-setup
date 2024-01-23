#!/bin/sh

set -eu

# default less options
export LESS=-iXFR

# or only for git
#git config --global --replace-all core.pager "less -iXFR"
