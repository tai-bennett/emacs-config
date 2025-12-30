#!/usr/bin/env bash

set -e

EMACS_DIR=$HOME/.emacs.d-myconfig

# git clone git@github.com:tai-bennett/emacs-config.git "$EMACS_DIR"
git clone https://github.com/tai-bennett/emacs-config.git "$EMACS_DIR"

emacs --batch \
      -Q \
      -l ~/.emacs.d-myconfig/init.el \
      --eval "(require 'org)" \
      --eval "(org-babel-tangle-file \"${EMACS_DIR}/config.org\")"

echo "Emacs config tangled successfully"

      
