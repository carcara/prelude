; Theme setup
(setq default-frame-alist '((font . "Droid Sans Mono-11")))
(disable-theme 'zenburn)
(load-theme 'solarized-dark t)

(setq org-log-done nil)
(setq prelude-flyspell nil)

(prelude-require-package 'yasnippet)
(yas-global-mode +1)

(projectile-global-mode)

(setq ediff-split-window-function 'split-window-horizontally)

(add-hook 'java-mode-hook
          (lambda ()
            (setq c-basic-offset 2
                  tab-width 2
                  indent-tabs-mode nil)))

(add-hook 'c-mode-hook
          (lambda ()
            (setq c-default "bsd"
                  c-basic-offset 2
                  tab-width 2
                  indent-tabs-mode t)
            (smart-tabs-mode-enable)
            (smart-tabs-advice c-indent-line c-basic-offset)
            (smart-tabs-advice c-indent-region c-basic-offset)))

(add-hook 'js-mode-hook
          (lambda ()
            (setq c-basic-offset 2
                  tab-width 2
                  indent-tabs-mode t)
            (smart-tabs-mode-enable)
            (smart-tabs-advice c-indent-line c-basic-offset)
            (smart-tabs-advice c-indent-region c-basic-offset)))
