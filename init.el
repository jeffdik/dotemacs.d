(add-to-list 'load-path (file-name-directory load-file-name))

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'color-theme-zenburn)
(color-theme-zenburn)

(server-start)

(setq jad-user-dir (concat user-emacs-directory "jad"))
(add-to-list 'load-path jad-user-dir)

(when (file-exists-p jad-user-dir)
  (mapc 'load (directory-files jad-user-dir nil "^[^#].*el$")))

(load "custom.el")
