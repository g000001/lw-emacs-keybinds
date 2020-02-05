;;;; lw-emacs-keybinds.asd -*- Mode: Lisp;-*- 

(cl:in-package :asdf)


(defsystem :lw-emacs-keybinds
  :version "20200206"
  :description "GNU Emacs keybinds for LispWorks Editor"
  :long-description "GNU Emacs keybinds for LispWorks Editor"
  :author "CHIBA Masaomi"
  :maintainer "CHIBA Masaomi"
  :license "Unlicense"
  :serial t
  :depends-on ()
  :components ((:file "package")
               (:file "lw-emacs-keybinds")))

;;; *EOF*
