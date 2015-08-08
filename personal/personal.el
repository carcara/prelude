;; Theme setup
(setq default-frame-alist '((font . "Source Code Pro-11")))
(disable-theme 'zenburn)
(load-theme 'ample t)
(scroll-bar-mode -1)

(setq org-log-done nil)
(setq prelude-flyspell nil)

(prelude-require-package 'yasnippet)
(yas-global-mode +1)

(projectile-global-mode)


(autoload 'cobol-mode "cobol-mode"
  "A major mode for editing ANSI Cobol/Scobol files." t nil)

(autoload 'plantuml-mode "plantuml-mode"
  "A major mode for editing plantuml files." t nil)

;; Emacs Speaks Statistics
(setq load-path (cons "/usr/share/emacs/site-lisp/ess" load-path))
(require 'ess-site)


(setq ediff-split-window-function 'split-window-horizontally)

(add-hook 'c-mode-hook
          (lambda ()
            (setq c-default "bsd"
                  c-basic-offset 2
                  indent-tabs-mode t)
            (smart-tabs-mode-enable)
            (smart-tabs-advice c-indent-line c-basic-offset)
            (smart-tabs-advice c-indent-region c-basic-offset)))
