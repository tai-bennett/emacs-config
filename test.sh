#!/usr/bin/env bash

TEST_HOME=$(mktemp -d)
HOME=$TEST_HOME ./install.sh

./install.sh

emacs -nw -Q -l ~/.emacs.d-myconfig/init.el
