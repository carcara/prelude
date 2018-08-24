;; Theme setup
(setq default-frame-alist '((font . "Source Code Pro-11")))
(scroll-bar-mode -1)

(setq org-log-done nil
      prelude-flyspell nil
      prelude-clean-whitespace-on-save nil
      ediff-split-window-function 'split-window-horizontally
      read-quoted-char-radix 16)

;; (setq split-height-threshold 80
;;       split-width-threshold 160)

;; Yasnippet
(prelude-require-package 'yasnippet)
(yas-global-mode +1)

(projectile-global-mode)

(add-hook 'after-init-hook 'global-company-mode)

;; Enable smart tabs mode
(prelude-require-package 'smart-tabs-mode)
(smart-tabs-insinuate 'c 'java)
(add-hook 'c-mode-hook
          (lambda ()
            (setq c-default "linux"
                  indent-tabs-mode t
                  tab-width 4
                  c-basic-offset 4)))

;; XML
(add-hook 'nxml-mode-hook
          (lambda ()
            (setq nxml-child-indent 2)
            (setq nxml-attribute-indent 2)))

;; Java
(add-hook 'java-mode-hook
          (lambda ()
            (setq indent-tabs-mode t
                  c-basic-offset 4
                  tab-width 4)))
