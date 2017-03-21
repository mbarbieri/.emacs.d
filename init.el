(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

;; USE PACKAGE
(setq package-enable-at-startup nil)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t)

;; PACKAGES
(use-package helm
  :bind ("M-x" . helm-M-x))
(use-package projectile
  :init (projectile-mode))
(use-package helm-cider
  :init (helm-cider-mode 1))
(use-package helm-projectile)
(use-package aggressive-indent)
(use-package epresent)
(use-package handlebars-mode
  :init (require 'handlebars-mode))
(use-package json-mode)
(use-package neotree
  :ensure projectile
  :init (setq projectile-switch-project-action 'neotree-projectile-action)
  :bind
  ("<f8>" . neotree-toggle))
(load-file "~/.emacs.d/git.el")
(load-file "~/.emacs.d/clojure.el")
(load-file "~/.emacs.d/flycheck.el")

;; EMACS CONFIGURAIONS
;; backup files
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;; PACKAGE CONFIGURATIONS
(load-file "~/.emacs.d/org-mode.el")

;; Appearence

;; hide menu/tool/scroll bars
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq org-src-fontify-natively t)

;; hide splash scree
(setq inhibit-startup-message t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("c924950f6b5b92a064c5ad7063bb34fd3facead47cd0d761a31e7e76252996f7" default)))
 '(indent-tabs-mode nil)
 '(org-agenda-files (quote ("~/Dropbox/org/todo.org")))
 '(package-selected-packages
   (quote
    (neotree circe flycheck-color-mode-line flycheck json-mode handlebars-mode epresent helm-cider helm-projectile cider clojure-mode-extra-font-locking clojure-mode paredit magit use-package helm-fuzzy-find dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
