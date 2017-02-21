(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

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
(use-package magit)
(use-package git-gutter+
  :init
  (global-git-gutter+-mode))
(use-package smartparens
  :init
  (require 'smartparens-config))
(use-package clojure-mode
  :init
  (add-hook 'clojure-mode-hook #'eldoc-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
  (add-hook 'clojure-mode-hook #'smartparens-strict-mode))
(use-package clojure-mode-extra-font-locking)
(use-package cider)
(use-package rainbow-delimiters)
(use-package projectile
  :init (projectile-mode))
(use-package helm-cider
  :init (helm-cider-mode 1))
(use-package helm-projectile)
(use-package aggressive-indent)



;; Appearence

;; hide menu/tool/scroll bars
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

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
 '(org-agenda-files (quote ("~/Dropbox/org/todo.org")))
 '(package-selected-packages
   (quote
    (helm-cider helm-projectile cider clojure-mode-extra-font-locking clojure-mode paredit magit use-package helm-fuzzy-find dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
