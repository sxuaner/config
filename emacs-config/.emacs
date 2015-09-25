;;; package --- Summary
;;; Commentary:
;;; code:
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (add-to-list 'package-archives
	       '("marmalade" . "http://marmalade-repo.org/packages/") t)
  (package-initialize))

;;  Getting rid of the starter message
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "b06aaf5cefc4043ba018ca497a9414141341cb5a2152db84a9a80020d35644d1" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable helm
(require 'helm-config)
(helm-mode 1)
;; Enable auto-complete
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "/home/sx/.emacs.d/elpa/auto-complete-20150618.1949/dict")

;; html mode
(add-hook 'html-mode-hook 'ac-html-enable)

;; kill ring
(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)


;; Enable linum-mode
(global-linum-mode 1)


;; Enable zenburn theme
(load-theme 'zenburn t)


;; Disable toolbar
(tool-bar-mode -1)


;; Disable menubar
(menu-bar-mode -1)

;;
;;(shell-script-mode t)
;;(put 'downcase-region 'disabled nil)
;;(put 'upcase-region 'disabled nil)


;; flycheck
;;(add-hook 'after-init-hook #'global-flycheck-mode)

(provide '.emacs)
;;; .emacs ends here
