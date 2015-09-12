;;;; lw-emacs-keybinds.asd -*- Mode: Lisp;-*- 

(cl:in-package :asdf)


(defsystem :lw-emacs-keybinds
  :serial t
  :depends-on ()
  :components ((:file "package")
               (:file "lw-emacs-keybinds")))

;;; *EOF*
