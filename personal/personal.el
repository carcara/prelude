;;; personal.el --- personal setup

;;; Code:

;;; Theme setup
(disable-theme 'zenburn)
(load-theme 'solarized-dark t)

(projectile-global-mode)

(add-hook 'java-mode-hook
          (lambda ()
            (setq c-basic-offset 2
                  tab-width 2
                  indent-tabs-mode nil)))

(load "ninja-mode")
(load "cmake-mode")

;;; personal.el ends here
