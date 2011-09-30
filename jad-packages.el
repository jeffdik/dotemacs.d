;;; modified from http://technomancy.us/153

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit
                      starter-kit-lisp
                      starter-kit-eshell
                      starter-kit-bindings
                      starter-kit-js
                      starter-kit-ruby
                      clojure-mode clojurescript-mode clojure-test-mode
                      parenface
                      markdown-mode yaml-mode tuareg
                      marmalade oddmuse scpaste
                      color-theme color-theme-zenburn
                      nsis-mode ntcmd
                      protobuf-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
