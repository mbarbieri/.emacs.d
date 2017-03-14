;; Org-mode configurations

;; write completion time
(setq org-log-done 'time)

;; agenda custom commands
(setq org-agenda-custom-commands
      '(("n" "Agenda and all TODOs"
         ((agenda "" nil)
          (alltodo "" nil))
         nil)
        ("c" . "My Custom Agendas")
        ;; view unscheduled TODOs in agenda
        ("cu" "Unscheduled TODO"
         ((todo ""
                ((org-agenda-overriding-header "\nUnscheduled TODO")
                 (org-agenda-skip-function '(org-agenda-skip-entry-if 'timestamp)))))
         nil
         nil)))

;; keyboard shortcuts
(global-set-key (kbd "C-c a") 'org-agenda)
