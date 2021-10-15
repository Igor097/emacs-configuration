;; Remove message welcome to Emacs
(setq inhibit-startup-message t)

;; Remove menu toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remove scroll bar
(scroll-bar-mode -1)

;; Add number line
(global-linum-mode t)

;; Set font size
(set-face-attribute 'default nil :height 115)

;; Packages
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'default-frame-alist
             '(font . "Monaco-12"))

;; Melpa - repository
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config 
  (progn
    (which-key-setup-side-window-right-bottom)
    (which-key-mode)))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package neotree
  :ensure t)

;; Setup theme default
;; (load-theme 'misterioso)

(use-package dakrone-theme
  :ensure t
  :config (load-theme 'dakrone t))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t))

;; Shortcuts
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "M-<down>") 'enlarge-window)
(global-set-key (kbd "M-<up>") 'shirink-window)
(global-set-key (kbd "M-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<right>") 'shirink-window-horizontally)

