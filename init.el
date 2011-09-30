(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'color-theme-zenburn)
(color-theme-zenburn)

(server-start)
