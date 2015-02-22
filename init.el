;; my emacs config

(setq inhibit-startup-screen t)

(setq init-home-dir (file-name-directory user-init-file))
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))
(add-to-list 'load-path
	     (expand-file-name "elisp" init-home-dir))


(require 'ensure-packages)

(setq ensure-packages
      '(smex paredit zenburn-theme puppet-mode puppetfile-mode))

(ensure-packages-install-missing)


(require 'ido)
(setq ido-enable-flex-matching t)
(ido-mode 1)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

(setq make-backup-files nil)
(setq inhibit-startup-message t)


(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(line-number-mode t)
(setq-default cursor-type 'bar)
(global-linum-mode)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

(load-theme 'deeper-blue)
(custom-set-variables
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("cbef37d6304f12fb789f5d80c2b75ea01465e41073c30341dc84c6c0d1eb611d" default))))
(custom-set-faces
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 98 :width normal)))))



