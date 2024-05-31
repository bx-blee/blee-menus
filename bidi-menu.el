;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;; Author: Mohsen BANAN --- 2023 --- Part Of Blee

(require 'easymenu)
(require 's)
(require 'bcf-general)

(defvar b:bidi:marker:visibility nil
  "Tracked in b:bidi:markers/hide and b:bidi:markers/show for use in radio menus.")

;; (b:bidi:menu:plugin|install modes:menu:global (s-- 3))
(defun b:bidi:menu:plugin|install (<menuLabel <menuDelimiter)
  "Adds this as a submenu to menu labeled <menuLabel at specified delimited <menuDelimiter."

  (easy-menu-add-item
   <menuLabel
   nil
   (b:bidi:menu:select|define :active t)
   <menuDelimiter
   )
  )


;;
;; [[elisp:(popup-menu (symbol-value (browsers:menu:help|define)))][This Menu]]
;; (popup-menu (symbol-value (b:bidi:menu:select|define)))
;;
(defun b:bidi:menu:select|define (&rest <namedArgs)
  "Provide for control of BIDI related parameters, Return b:bidi:menu:select menu.
:active and :visible can be specified as <namedArgs.
"
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:bidi:menu:select
      nil
      "Global Menu For BIDI (bidirectional) related facilities."
      `("Global BIDI Menu"
	:help "Show And Set BIDI Related Arguments"
	:visible ,<visible
	:active ,<active
	,(s-- 3)
	,(s-- 4)
	 [
	  "Enable BIDI --- BiDirectional --- Default"
	  (bidi-display-reordering-on)
	  :help "bidi-display-reordering-on"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  bidi-display-reordering t)
	  ]
	 [
	  "Disable BIDI --- One Way"
	  (bidi-display-reordering-off)
	  :help "bidi-display-reordering-off"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  bidi-display-reordering nil)
	  ]
	 ,(s-- 5)
         [
	  "Set Auto Detect BIDI Paragraph Directionality --- Default"
	  (bidi-paragraph-direction-auto-detect)
	  :help "(setq bidi-paragraph-direction nil)"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  bidi-paragraph-direction nil)
	  ]
         [
	  "Set Left-To-Right Paragraph Directionality"
	  (bidi-paragraph-direction-left-to-right)
	  :help "(setq bidi-paragraph-direction 'left-to-right)"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  bidi-paragraph-direction 'left-to-right)
	  ]
         [
	  "Set Right-To-Left Paragraph Directionality"
	  (bidi-paragraph-direction-right-to-left)
	  :help "(setq bidi-paragraph-direction 'right-to-left)"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  bidi-paragraph-direction 'right-to-left)
	  ]
	 ,(s-- 6)
	 [
	  "Hide Bidi Markers --- Markers Visibility  --- Default"
	  (b:bidi:markers/hide)
	  :help "(b:bidi:markers/hide)"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  b:bidi:marker:visibility nil)
	  ]
	 [
	  "Show Bidi Markers --- Markers Visibility"
	  (b:bidi:markers/show)
	  :help "(b:bidi:markers/show)"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  b:bidi:marker:visibility t)
	  ]
	 ,(s-- 7)
	 ,(s-- 8)
	 ))

    (easy-menu-add-item
     b:bidi:menu:select
     nil
     (b:bidi:menu:inserts|define)
     (s-- 3))

    (easy-menu-add-item
     b:bidi:menu:select
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/git/auth/bxRepos/blee-binders/bisos-core/sync/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 8))
    'b:bidi:menu:select
    ))


;; (bidi-display-reordering-on)
(defun bidi-display-reordering-on ()
  (interactive)
  (setq bidi-display-reordering t)
  (recenter)
  )

;; (bidi-display-reordering-off)
(defun bidi-display-reordering-off ()
  (interactive)
  (setq bidi-display-reordering nil)
  (recenter)
  )

;; (bidi-display-reordering-show)
(defun bidi-display-reordering-show ()
  (interactive)
  (describe-variable 'bidi-display-reordering)
  )


;; (bidi-paragraph-direction-right-to-left)
(defun bidi-paragraph-direction-right-to-left ()
  (interactive)
  (setq bidi-paragraph-direction 'right-to-left)
  (recenter)
  )

;; (bidi-paragraph-direction-left-to-right)
(defun bidi-paragraph-direction-left-to-right ()
  (interactive)
  (setq bidi-paragraph-direction 'left-to-right)
  (recenter)
  )


;; (bidi-paragraph-direction-auto-detect)
(defun bidi-paragraph-direction-auto-detect ()
  (interactive)
  (setq bidi-paragraph-direction nil)
  (recenter)
  )

;; (bidi-paragraph-direction-current)
(defun bidi-paragraph-direction-current ()
  (interactive)
  (describe-variable 'bidi-paragraph-direction)
  ;;(current-bidi-paragraph-direction)
  )

(defun b:bidi:markers/hide ()
  "Bidi Visibility  -- Hide Bidi Markers."
  (interactive)

  (setq b:bidi:marker:visibility nil)

  (unless standard-display-table
    (setq standard-display-table (make-display-table))
    )

  (when (aref standard-display-table #x202a)
    (aset standard-display-table #x202a nil))

  (when (aref standard-display-table #x202b)
    (aset standard-display-table #x202b nil))

  (when (aref standard-display-table #x202c)
    (aset standard-display-table #x202c nil))

  (when (aref standard-display-table #x200e)
    (aset standard-display-table #x200e nil))

  (when (aref standard-display-table #x200f)
    (aset standard-display-table #x200f nil))

  (when (aref standard-display-table #x200c)
    (aset standard-display-table #x200c nil))

  (redraw-display)
  )

(defun b:bidi:markers/show ()
  "Bidi Visibility  -- Show Bidi Markers."
  (interactive)

  (setq b:bidi:marker:visibility t)

  (unless standard-display-table
    (setq standard-display-table (make-display-table))
    )

  (unless (aref standard-display-table #x202a)
    (aset standard-display-table #x202a (vector (make-glyph-code #x22c9 'escape-glyph))))

  (unless (aref standard-display-table #x202b)
    (aset standard-display-table #x202b (vector (make-glyph-code #x22ca 'escape-glyph))))

  (unless (aref standard-display-table #x202c)
    (aset standard-display-table #x202c (vector (make-glyph-code #x22c8 'escape-glyph))))

  (unless (aref standard-display-table #x200e)
    (aset standard-display-table #x200e (vector (make-glyph-code #x222b 'escape-glyph))))

  (unless (aref standard-display-table #x200f)
    (aset standard-display-table #x200f (vector (make-glyph-code #x222c 'escape-glyph))))

  (unless (aref standard-display-table #x200c)
    (aset standard-display-table #x200c (vector (make-glyph-code #x222c 'escape-glyph))))

  (redraw-display)
  )

;;
;; (popup-menu (symbol-value (b:bidi:menu:inserts|define)))
;;
(defun b:bidi:menu:inserts|define (&rest <namedArgs)
  "Provide for insertion of BIDI control characters.
 Return b:bidi:menu:inserts menu.
:active and :visible can be specified as <namedArgs.
"
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:bidi:menu:inserts
      nil
      "Menu For BIDI (bidirectional) Marker Insertions Facilities."
      `("Menu For BIDI Control Marker Insertions"
	:help "Insert Bidi Control Marker Characters"
	:visible ,<visible
	:active ,<active
	,(s-- 3)
	[
	 "Insert RLM: RIGHT-TO-LEFT MARK (200F)"
	 (insert-char #x200F)
         :help "strongly typed RTL character (No HTML Equivalent)"
	 :active t
	 :visible t
	 ]
	[
	 "Insert LRM: LEFT-TO-RIGHT MARK (200E)"
	 (insert-char #x200E)
	 :help "strongly typed LTR character (No HTML Equivalent)"
	 :active t
	 :visible t
	 ]
	,(s-- 4)
        [
	 "Insert LRI: LEFT-TO-RIGHT ISOLATE (2066)"
	 (insert-char #x2066)
         :help "sets base direction to LTR and isolates the embedded content from the surrounding text (HTML: dir = \"ltr\")"
	 :active t
	 :visible t
	 ]
        [
	 "Insert RLI: RIGHT-TO-LEFT ISOLATE (2067)"
	 (insert-char #x2067)
         :help "sets base direction to RTL and isolates the embedded content from the surrounding text (HTML: dir = \"rtl\")"
	 :active t
	 :visible t
	 ]
        [
	 "Insert FSI: FIRST-STRONG ISOLATE (2068)"
	 (insert-char #x2068)
         :help "isolates the content and sets the direction according to the first strongly typed directional character (HTML: dir = \"auto\")"
	 :active t
	 :visible t
	 ]
	,(s-- 5)
        [
	 "Insert PDI: POP DIRECTIONAL ISOLATE of above (2069)"
	 (insert-char #x2069)
         :help "used for RLI, LRI or FSI (HTML: end tag)"
	 :active t
	 :visible t
         ]
	,(s-- 6)
        [
	 "Insert LRE: LEFT-TO-RIGHT EMBEDDING (202A)"
	 (insert-char #x202A)
         :help "sets base direction to LTR but allows embedded text to interact with surrounding content, so risk of spillover effects (HTML: dir = \"ltr\")"
	 :active t
	 :visible t
	 ]
        [
	 "Insert RLE: RIGHT-TO-LEFT EMBEDDING (202B)"
	 (insert-char #x202B)
         :help "sets base direction to RTL but allows embedded text to interact with surrounding content, so risk of spillover effects (HTML: dir = \"rtl\")"
	 :active t
	 :visible t
	 ]
	,(s-- 7)
        [
	 "Insert PDF: POP DIRECTIONAL FORMATTING of above (202C)"
	 (insert-char #x202C)
         :help "used for RLE or LRE (HTML: end tag)"
	 :active t
	 :visible t
         ]
	,(s-- 8)
        [
	 "Insert LRO: LEFT-TO-RIGHT OVERRIDE (202D)"
	 (insert-char #x202D)
         :help "overrides the bidirectional algorithm to display characters in memory order, progressing from left to right (HTML: <bdo dir = \"ltr\">)"
	 :active t
	 :visible t
	 ]
        [
	 "Insert RLO: RIGHT-TO-LEFT OVERRIDE (202E)"
	 (insert-char #x202E)
         :help "overrides the bidirectional algorithm to display characters in memory order, progressing from right to left (HTML: <bdo dir = \"rtl\">)"
	 :active t
	 :visible t
	 ]
	,(s-- 9)
        [
	 "Insert PDF: POP DIRECTIONAL FORMATTING of above (202C)"
	 (insert-char #x202C)
         :help "used for RLO or LRO (HTML: </bdo>)"
	 :active t
	 :visible t
         ]
	,(s-- 10)
	))

    (easy-menu-add-item
     b:bidi:menu:inserts
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/git/auth/bxRepos/blee-binders/blee-core/emacs/bidi/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 10))

    'b:bidi:menu:inserts
    ))



(provide 'bidi-menu)
