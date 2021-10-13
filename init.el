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

;; Melpa - repository
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

