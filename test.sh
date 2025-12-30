#!/usr/bin/env bash

TEST_HOME=$(mktemp -d)
export HOME=$TEST_HOME

./install.sh

emacs -nw --init-directory "$HOME/.emacs.d-myconfig"
