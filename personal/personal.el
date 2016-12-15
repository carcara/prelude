;; Theme setup
(setq default-frame-alist '((font . "Source Code Pro-11")))
(scroll-bar-mode -1)

(setq org-log-done nil
      prelude-flyspell nil
      prelude-clean-whitespace-on-save nil
      ediff-split-window-function 'split-window-horizontally
      split-height-threshold nil
      split-width-threshold 0)

;; Yasnippet
(prelude-require-package 'yasnippet)
(yas-global-mode +1)

(projectile-global-mode)

(add-hook 'after-init-hook 'global-company-mode)

;; Enable smart tabs mode
(smart-tabs-insinuate 'c)
(add-hook 'c-mode-hook
          (lambda ()
            (setq c-default "linux"
                  indent-tabs-mode t
                  tab-width 8
                  c-basic-offset 4)))

;; Eclim setup
(require eclim)
(require eclimd)
(global-eclim-mode)
(setq
 eclim-eclipse-dirs '("/opt/eclipse")
 eclim-executable "/opt/eclipse/eclim")


;; (autoload 'cobol-mode "cobol-mode"
;;   "A major mode for editing ANSI Cobol/Scobol files." t nil)

;; (autoload 'plantuml-mode "plantuml-mode"
;;   "A major mode for editing plantuml files." t nil)

;; (autoload 'octave-mode "octave-mode" nil t)
;; (setq auto-mode-alist
;;       (cons '("\\.m$" . octave-mode) auto-mode-alist))

;; Emacs Speaks Statistics
;; (setq load-path (cons "/usr/share/emacs/site-lisp/ess" load-path))
;; (require 'ess-site)
