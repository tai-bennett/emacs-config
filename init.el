

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/") t)

;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;;(add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

(frames-only-mode 1)
(global-set-key (kbd "C-x n n") 'make-frame)

;; Note that changing windows fast is C-w C-w 'evil-window-next
(use-package key-chord
:ensure t)
(use-package evil
    :ensure t
    :init
    (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
    (setq evil-want-keybinding nil)
    :config
    (evil-mode 1))
    (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode 1))
(require 'key-chord)
    (setq key-chord-two-keys-delay 0.2)
    (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
    (key-chord-mode 1)

(use-package evil-collection
    :after evil
    :ensure t
    :custom (evil-collection-setup-minibuffer t)
    :config
    (evil-collection-init))
(global-set-key (kbd "<f1>")  'evil-window-prev)
(global-set-key (kbd "<f2>")  'evil-window-next)
