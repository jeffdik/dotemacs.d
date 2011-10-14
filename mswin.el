;; occasional pause (or stutter) on win32 emacs 23.0.95
(setq w32-get-true-file-attributes nil)
(setq auto-save-default nil)
(setq make-backup-files nil)

(defun visit-hosts ()
  (interactive)
  (find-file (concat (getenv "WINDIR") "/system32/drivers/etc/hosts")))

;; because git on windows is slow
;; http://stackoverflow.com/questions/5748814/how-does-one-disable-vc-git-in-emacs
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;; fix for clojure-mode 1.11.1
(setq clojure-swank-command "lein.bat jack-in %s")
