(use-package json-mode)
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
  (flycheck-color-mode-line-mode))
(use-package flycheck-color-mode-line
  :config
  (with-eval-after-load "flycheck"
    (setq flycheck-highlighting-mode 'symbols)
    (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)))
(use-package flycheck-pos-tip
  :init
  (with-eval-after-load 'flycheck
    (flycheck-pos-tip-mode)))
