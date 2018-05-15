
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)

(load-theme 'monokai t)
;;(load-theme 'zenburn t)
;;(load-theme 'anti-zenburn t)
(set-default-font "Courier New-14")

;;(set-background-color "black")
;;(set-foreground-color "white")
;;(set-face-foreground 'region "greeen")
;;(set-face-background 'region "blue")
;;--------Install Package--------
(require 'popwin) ;;as this is not autoload, so need require it, company mode is autoload
(popwin-mode t)

;;--------END Install Package--------
;;Zilongshanren tutorial 
(tool-bar-mode -1) ;;turn off the tool bar in frame
(scroll-bar-mode -1) ;;turn off the scroll bar in frame
(setq-default cursor-type 'bar) ;; This variable is buffer-local, so it need to use setq-default
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-hl-line-mode t)

;;(electric-indent-mode -1)

;;disabled the auto-backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;;--------ORG-MODE SETTING--------
(setq org-agenda-files '("~\org"))
(global-set-key (kbd "C-c a") 'org-agenda)

;;Let emacs-lisp has grammer highlight in org-mode
(require 'org)
(setq org-src-fontify-natively t)
;;end
;;--------END SETTING--------
;;enable recent mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;;end
(delete-selection-mode t)
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;Define F2 to open init file directly
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-my-init-file)
;;END

;;This field used to enable package which has been installed
(global-company-mode t)
(global-linum-mode t);; enabled the linum mode
;;END

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (popwin zenburn-theme anti-zenburn-theme monokai-theme ahungry-theme company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
