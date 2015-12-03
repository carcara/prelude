;; Theme setup
(setq default-frame-alist '((font . "Source Code Pro-11")))
(scroll-bar-mode -1)

(setq org-log-done nil)
(setq prelude-flyspell nil)

(prelude-require-package 'yasnippet)
(yas-global-mode +1)

(projectile-global-mode)

(add-hook 'after-init-hook 'global-company-mode)

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


;; Ediff to split buffers side by side by default
(setq ediff-split-window-function 'split-window-horizontally)

;; Enable smart tabs mode
(smart-tabs-insinuate 'c)
(add-hook 'c-mode-hook
          (lambda ()
            (setq c-default "bsd"
                  indent-tabs-mode t)))
