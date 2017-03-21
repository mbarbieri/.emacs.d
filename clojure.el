(use-package smartparens-config
    :ensure smartparens
    :config
    (progn
      (show-smartparens-global-mode t)))
(use-package clojure-mode
  :init
  (add-hook 'clojure-mode-hook #'eldoc-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
  (add-hook 'clojure-mode-hook #'smartparens-strict-mode))
(use-package clojure-mode-extra-font-locking)
(use-package cider)
(use-package rainbow-delimiters)
