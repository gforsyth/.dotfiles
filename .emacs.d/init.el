(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;(add-to-list 'load-path "~/.emacs.d/evil")

(require 'init-elpa)
(require 'init-evil)
(require 'init-ipython)
(require 'init-babel)
(require 'init-helm)
(require 'init-org)
(require 'init-magit)
(require 'init-latex)
(require 'init-autopair)
(require 'init-yasnippet)
(require 'init-powerline)
(require 'init-autocomp)
(require 'init-line)
(require 'init-deft)
(require 'init-markdown)


;; Turn off scroll bar and toolbar
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; disable tabs
(setq tab-width 4
      indent-tabs-mode nil)

;; automagically reload buffers when they're changed on disk
(global-auto-revert-mode t)

;; when you have energy, check to see if this matters
(setenv "PYTHONPATH" "/home/gil/anaconda/bin/python")

(load-theme 'misterioso)

;; set default directory to dropbox
(setq default-directory "/home/gil/Dropbox/notes/")

;; i don't like typing out 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(org-agenda-files
   (quote
    ("~/Dropbox/notes/todo.org" "~/Dropbox/notes/insectflight.org" "~/Dropbox/notes/checkout.org" "~/Dropbox/notes/numericalmooc.org" "~/Dropbox/notes/events.org" "~/Dropbox/notes/personal.org" "~/Dropbox/notes/CFDPython.org" "~/Dropbox/notes/labnotebook.org")))
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . "evince %s")
     ("\\.pdf::\\([0-9]+\\)\\'" . "evince \"%s\" -p %1"))))
 '(org-refile-targets
   (quote
    ((nil :maxlevel . 5)
     (org-agenda-files :maxlevel . 5))))
 '(org-refile-use-outline-path (quote file))
 '(org-startup-indented t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )