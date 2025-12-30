#!/usr/bin/env bash

set -e

EMACS_DIR = $HOME/.emacs.d-myconfig

# git clone git@github.com:tai-bennett/emacs-config.git "$EMACS-DIR"
git clone https://github.com/tai-bennett/emacs-config.git "$EMACS-DIR"

emacs --batch \
      --init-directory "$EMACS-DIR" \
      --eval "(require 'org)" \
      --eval "(org-babel-tangle-file \"${EMACS-DIR}/config.org\")"

echo "Emacs config tangled successfully"

      
