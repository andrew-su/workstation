#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Make sure git is installed.
command -v git >/dev/null 2>&1 || { echo >&2 "'git' is required but not installed.  Aborting."; exit 1; }

ln -sf ${DIR}/.gitmessage ~/.gitmessage
git config --global include.path ~/.gitinclude