;; my emacs config

(setq inhibit-startup-screen t)

(setq init-home-dir (file-name-directory user-init-file))
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))
(add-to-list 'load-path
	     (expand-file-name "elisp" init-home-dir))


(require 'ensure-packages)

(setq ensure-packages
      '(smex paredit))

(ensure-packages-install-missing)

;(load-theme 'bubbleberry)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(line-number-mode t)
(setq-default cursor-type 'bar)
(global-linum-mode)

(defalias 'yes-or-no-p 'y-or-n-p)


(cond
 ((eq 1050 screen-height) (set-face-attribute 'default nil :height 100))
 (true (set-face-attribute 'default nil :height 130)))

(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

(load-theme 'deeper-blue)
