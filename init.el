
(add-to-list 'load-path "~/.emacs.d" t)
(require 'go-mode-load)

(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
;; auto-complete
(require 'go-autocomplete)
(require 'auto-complete-config)

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized-light t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(background-color "#fdf6e3")
 '(background-mode light)
 '(cursor-color "#657b83")
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes (quote ("71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" default)))
 '(foreground-color "#657b83"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(load "~/.emacs.d/haskell-mode/haskell-site-file")
   (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
 ;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
   (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
   ;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
