;;;; lw-emacs-keybinds.lisp -*- Mode: Lisp;-*- 

(cl:in-package :lw-emacs-keybinds)

(progn
  (bind-key "Negative Argument" "Control--" :global :emacs)
  (bind-key "Argument Digit" "Control-0" :global :emacs)
  (bind-key "Argument Digit" "Control-1" :global :emacs)
  (bind-key "Argument Digit" "Control-2" :global :emacs)
  (bind-key "Argument Digit" "Control-3" :global :emacs)
  (bind-key "Argument Digit" "Control-4" :global :emacs)
  (bind-key "Argument Digit" "Control-5" :global :emacs)
  (bind-key "Argument Digit" "Control-6" :global :emacs)
  (bind-key "Argument Digit" "Control-7" :global :emacs)
  (bind-key "Argument Digit" "Control-8" :global :emacs)
  (bind-key "Argument Digit" "Control-9" :global :emacs))


(bind-key "New Line" "Control-m" :global :emacs)

(bind-key "Undo" "Control-/" :global :emacs)

(bind-key "Split Window Vertically" #("Control-x"#\2) :global :emacs)
(bind-key "Split Window Horizontally" #("Control-x"#\3) :global :emacs)

(bind-key "Mark Form" "Control-Meta-Space" :global :emacs)

(bind-key "Query Replace Regexp" "Control-Meta-%" :global :emacs)

(defun define-key (map keybind cmd)
  (editor::set-table-entry map keybind cmd))

;;;;;;;;;;;;;;;;;;;;;;
;;; *ctrl-x-5-map* ;;;
;;;;;;;;;;;;;;;;;;;;;;

(defvar *ctrl-x-5-map* (editor::make-key-table))

(progn
  (define-key (editor::get-table-entry (editor::get-right-table :global :emacs)
                                       (editor::crunch-key "Control-x"))
              (editor::crunch-key "5")
              *ctrl-x-5-map*)

  ;;; c-X 5 0           Delete Window  
  (define-key *ctrl-x-5-map* 
              (editor::crunch-key "0")
              (editor::find-command "Delete Window"))

  ;;; c-X 5 2           New Window
  (define-key *ctrl-x-5-map* 
              (editor::crunch-key "2")
              (editor::find-command "New Window")))

;;; c-X 7           Unsplit Window


;;;;;;;;;;;;;;;;;;;
;;; *goto-map*  ;;;
;;;;;;;;;;;;;;;;;;;

(defvar *goto-map* (editor::make-key-table))


(define-key (editor::get-right-table :global :emacs)  
            (editor::crunch-key "Meta-g")
            *goto-map*)

(define-key *goto-map*  
            (editor::crunch-key "c")
            (editor::find-command "Goto Point"))

(define-key *goto-map*  
            (editor::crunch-key "g")
            (editor::find-command "Goto Line"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;    LispWorks original bindings
;;;
;;;  c-X 4 B         Select Buffer Other Window
;;;  c-X #           Code Coverage Goto Next
;;;  c-X %           Search Examples
;;;  c-X &           Search Files Matching Patterns
;;;  c-X (           Define Keyboard Macro
;;;  c-X )           End Keyboard Macro
;;;  c-X *           Search Files
;;;  c-X +           Add Global Word Abbrev
;;;  c-X ,           Edit Recognized Source
;;;  c-X -           Inverse Add Global Word Abbrev
;;;  c-X .           Set Fill Prefix
;;;  c-X /           Point to Register
;;;  c-X 0           Delete Window
;;;  c-X 1           Delete Other Windows
;;;  c-X 2           New Window
;;;  c-X 5           Split Window Horizontally
;;;  c-X 6           Split Window Vertically
;;;  c-X 7           Unsplit Window
;;;  c-X ;           Set Comment Column
;;;  c-X =           What Cursor Position
;;;  c-X B           Select Buffer
;;;  c-X Backspace   Backward Kill Sentence
;;;  c-X C           Go Back
;;;  c-X D           List Directory
;;;  c-X E           Last Keyboard Macro
;;;  c-X F           Set Fill Column
;;;  c-X G           Insert Register
;;;  c-X H           Mark Whole Buffer
;;;  c-X I           Insert File
;;;  c-X J           Jump to Register
;;;  c-X K           Kill Buffer
;;;  c-X L           Count Lines Page
;;;  c-X M           Select Go Back
;;;  c-X O           Next Ordinary Window
;;;  c-X P           Go Forward
;;;  c-X Q           Keyboard Macro Query
;;;  c-X Rubout      Forward Kill Sentence
;;;  c-X S           Save All Files
;;;  c-X Tab         Indent Rigidly
;;;  c-X U           Undo
;;;  c-X X           Copy to Register
;;;  c-X [           Previous Page
;;;  c-X ]           Next Page
;;;  c-X `           Next Search Match
;;;  c-X c-A         Add Mode Word Abbrev
;;;  c-X c-B         List Buffers
;;;  c-X c-C         Save All Files And Exit
;;;  c-X c-E         Evaluate Last Form
;;;  c-X c-F         Wfind File
;;;  c-X c-H         Inverse Add Mode Word Abbrev
;;;  c-X c-I         Indent Rigidly
;;;  c-X c-L         Lowercase Region
;;;  c-X c-O         Delete Blank Lines
;;;  c-X c-P         Mark Page
;;;  c-X c-Q         Toggle Buffer Read-Only
;;;  c-X c-S         Save File
;;;  c-X c-T         Transpose Lines
;;;  c-X c-U         Uppercase Region
;;;  c-X c-V         Find Alternate File
;;;  c-X c-W         Write File
;;;  c-X c-X         Exchange Point and Mark
;;;  c-X ~           Check Buffer Modified
;;;  Backspace       Delete Previous Character
;;;  Newline         Indent New Line
;;;  Return          New Line
;;;  Rubout          Delete Next Character
;;;  Tab             Indent
;;;  begin           Beginning of Line
;;;  c-#             Invoke Tool
;;;  c-;             Activate Interface
;;;  c-@             Set Mark
;;;  c-A             Beginning of Line
;;;  c-B             Backward Character
;;;  c-D             Delete Next Character
;;;  c-E             End of Line
;;;  c-F             Forward Character
;;;  c-H             Help
;;;  c-I             Indent
;;;  c-J             Indent New Line
;;;  c-K             Kill Line
;;;  c-L             Refresh Screen
;;;  c-N             Next Line
;;;  c-O             Open Line
;;;  c-P             Previous Line
;;;  c-Q             Quoted Insert
;;;  c-R             Reverse Incremental Search
;;;  c-S             Incremental Search
;;;  c-Space         Set Mark
;;;  c-T             Transpose Characters
;;;  c-U             Set Prefix Argument
;;;  c-V             Scroll Window Down
;;;  c-W             Kill Region
;;;  c-Y             Un-Kill
;;;  c-]             Abort Recursive Edit
;;;  c-_             Undo
;;;  c-`             Function Arglist Displayer
;;;  c-insert        Save Region
;;;  c-left          Backward Word
;;;  c-m-.           Rotate Active Finders
;;;  c-m-;           Kill Comment
;;;  c-m-@           Mark Form
;;;  c-m-A           Beginning of Defun
;;;  c-m-B           Backward Form
;;;  c-m-Backspace   Backward Kill Form
;;;  c-m-D           Down List
;;;  c-m-E           End of Defun
;;;  c-m-F           Forward Form
;;;  c-m-H           Mark Defun
;;;  c-m-I           Complete Symbol
;;;  c-m-K           Forward Kill Form
;;;  c-m-L           Select Previous Buffer
;;;  c-m-M           Back to Indentation
;;;  c-m-N           Forward List
;;;  c-m-P           Backward List
;;;  c-m-Q           Indent Form
;;;  c-m-R           ISearch Backward Regexp
;;;  c-m-Rubout      Forward Kill Form
;;;  c-m-S           ISearch Forward Regexp
;;;  c-m-Space       Pop Mark
;;;  c-m-T           Transpose Forms
;;;  c-m-U           Backward Up List
;;;  c-m-W           Append Next Kill
;;;  c-m-X           Evaluate Defun
;;;  c-m-Z           Exit Recursive Edit
;;;  c-m-\           Indent Region
;;;  c-m-sh-A        Show Documentation
;;;  c-m-sh-L        Circulate Buffers
;;;  c-next          End of Window
;;;  c-prior         Beginning of Window
;;;  c-right         Forward Word
;;;  c-sh-A          Function Argument List
;;;  c-sh-B          Compile Buffer
;;;  c-sh-C          Compile Defun
;;;  c-sh-D          Function Documentation
;;;  c-sh-E          Evaluate Region
;;;  c-sh-K          Kill Backward Up List
;;;  c-sh-M          Macroexpand Form
;;;  c-sh-R          Compile Region
;;;  down            Next Line
;;;  end             End of Buffer
;;;  help            Help
;;;  home            Beginning of Buffer
;;;  insert          Overwrite Mode
;;;  insert          Un-Kill
;;;  kp-enter        New Line
;;;  left            Backward Character
;;;  m-!             Shell Command
;;;  m-"             Insert Double Quotes For Selection
;;;  m-#             Insert Multi Line Comment For Selection
;;;  m-%             Query Replace
;;;  m-'             Word Abbrev Prefix Point
;;;  m-(             Insert Parentheses For Selection
;;;  m-)             Move Over )
;;;  m-,             Continue Tags Search
;;;  m--             Negative Argument
;;;  m-.             Find Source
;;;  m-/             Dynamic Completion
;;;  m-0             Argument Digit
;;;  m-1             Argument Digit
;;;  m-2             Argument Digit
;;;  m-3             Argument Digit
;;;  m-4             Argument Digit
;;;  m-5             Argument Digit
;;;  m-6             Argument Digit
;;;  m-7             Argument Digit
;;;  m-8             Argument Digit
;;;  m-9             Argument Digit
;;;  m-;             Indent for Comment
;;;  m-<             Beginning of Buffer
;;;  m-=             Function Arglist
;;;  m->             End of Buffer
;;;  m-?             Find Tag
;;;  m-@             Mark Word
;;;  m-A             Backward Sentence
;;;  m-B             Backward Word
;;;  m-Backspace     Kill Previous Word
;;;  m-C             Capitalize Word
;;;  m-D             Kill Next Word
;;;  m-E             Forward Sentence
;;;  m-Escape        Evaluate Expression
;;;  m-F             Forward Word
;;;  m-H             Mark Paragraph
;;;  m-I             Abbreviated Complete Symbol
;;;  m-J             Indent New Comment Line
;;;  m-K             Forward Kill Sentence
;;;  m-L             Lowercase Word
;;;  m-M             Back to Indentation
;;;  m-N             Down Comment Line
;;;  m-Newline       Indent New Comment Line
;;;  m-P             Up Comment Line
;;;  m-Q             Fill Paragraph
;;;  m-R             Move To Window Line
;;;  m-Rubout        Kill Next Word
;;;  m-Space         Just One Space
;;;  m-T             Transpose Words
;;;  m-Tab           Expand File Name
;;;  m-U             Uppercase Word
;;;  m-V             Scroll Window Up
;;;  m-W             Save Region
;;;  m-X             Extended Command
;;;  m-Y             Rotate Kill Ring
;;;  m-Z             Zap To Char
;;;  m-[             Backward Paragraph
;;;  m-\             Delete Horizontal Space
;;;  m-]             Forward Paragraph
;;;  m-^             Delete Indentation
;;;  m-sh-M          Walk Form
;;;  m-|             Shell Command On Region
;;;  m-~             Buffer Not Modified
;;;  next            Scroll Window Down
;;;  next            Scroll Window Down Preserving Highlight
;;;  prior           Scroll Window Up
;;;  prior           Scroll Window Up Preserving Highlight
;;;  right           Forward Character
;;;  up              Previous Line

;;;  *EOF*


