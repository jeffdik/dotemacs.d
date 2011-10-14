;; set-frame-attribute can work across frames
;; if you just want to change the font of one frame, use set-frame-font
(set-face-attribute 'default nil :font "Consolas-10")
;; (set-face-attribute 'default nil :font "Consolas-20")

(defun default-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Consolas-10"))

(defun presentation-font ()
  (interactive)
  (set-face-attribute 'default nil :font "Consolas-20"))

(load "mswin.el")
