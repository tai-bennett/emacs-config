#!/usr/bin/env bash

TEST_HOME=$(mktemp -d)
export HOME=$TEST_HOME

./install.sh

emacs -nw -Q -l ~/.emacs.d-myconfig/init.el
