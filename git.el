(use-package magit
  :bind
  ("C-c g s" . magit-status))
(use-package git-gutter+
  :init
  (global-git-gutter+-mode)
  :bind
  ("C-x r" . git-gutter+-revert-hunks)
  ("C-x d" . git-gutter+-show-hunk-inline-at-point))
