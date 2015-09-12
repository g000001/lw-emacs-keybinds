;;;; readtable.lisp -*- Mode: Lisp;-*- 

(cl:in-package :lw-emacs-keybinds.internal)
(in-readtable :common-lisp)


(defreadtable :lw-emacs-keybinds
  (:merge :standard)
  (:macro-char char fctn opt...)
  (:syntax-from readtable to-char from-char)
  (:case :upcase))


;;; *EOF*
