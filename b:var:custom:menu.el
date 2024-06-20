;;; b:var:custom:menu.el --- Menus for facilties that form a layer on top of defcustom  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary:
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/proclamations :outLevel 1
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Proclamations |]]* :: Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:prog:file/particulars :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Particulars |]]* :: Authors, version
** This File: /bisos/git/bxRepos/blee/blee-menus/b:var:custom:menu.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
Module description comes here.
** Relevant Pointers and Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO Needs to be split into two files. One deals with choices the other with menu.
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/orgTopControls :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Controls |]] :: [[elisp:(delete-other-windows)][(1)]] | [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]

" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/workbench :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Workbench |]] :: [[elisp:(setq debug t)][debug-on-err]]  [[elisp:(setq  debug nil)][dont debug-on-err]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;(require b:mtdt:bbdb3)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defgroup :defName "b:var:custom:menu" :defValue "nil"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defgroup   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:menu>> ~nil~ --  -- Menus for facilties that form a layer on top of defcustom  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defgroup b:var:custom:menu nil
;;;#+END:
  " #+begin_org
** DocStr: Menus for facilties that form a layer on top of defcustom
#+end_org "
  :group 'blee
  :prefix "b:var:custom"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Menus for defcustom Choice" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Menus for defcustom Choice_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:menu|describe" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:menu|describe>>  --  -- Return a menuItem vector for ~describe-variable~ of <customVar. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:menu|describe (
;;;#+END:
                                          <customVar
                                          )
   " #+begin_org
** DocStr: Return a menuItem vector for ~describe-variable~ of <customVar. Requires dynamic update.
#+end_org "
   (let* (
          ;;; ($inHere (b:log|entry (b:func$entry)))
          (description (or (documentation-property <customVar 'variable-documentation)
                          "No description available"))
          ($customVarName (symbol-name <customVar))
          ($customVarValue (symbol-value <customVar))
          )
    (nth 0
       `(
         [
          ;; ,(s-lex-format "Describe/Modify  ${$customVarName}:: ${$customVarValue}")
          ,(s-lex-format "Describe/Modify ${$customVarValue}")
	  (describe-variable ',<customVar)
	  :help ,description
	  :active t
	  :visible t
	  ]
         ))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(popup-menu (b:var:custom:menu|describe 'b:var:custom+example))
#+END_SRC

#+RESULTS:

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:menu|choicesList" :advice () :comment "~PRIMARY~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:menu|choicesList>>  -- ~PRIMARY~ -- Generate a radio button menu for a given defcustom defined <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:menu|choicesList (
;;;#+END:
                                          <customVar
                                          &optional
                                          <actuateFunc
                                          )
   " #+begin_org
** DocStr: Generate a radio button menu for a given defcustom defined <customVar.
#+end_org "
   (let* (
          ;;; ($inHere (b:log|entry (b:func$entry)))
          ($thisFuncName (compile-time-function-name))
          ($choices (b:var:custom:choices|getVals <customVar))
          ($choiceLabels (b:var:custom:choices|getLabels <customVar))
          ($choiceDocs (b:var:custom:choices|getDocs <customVar))
          (description (or (documentation-property <customVar 'variable-documentation)
                          "No description available"))
          ($customVarName (symbol-name <customVar))
          ($customVarValue (symbol-value <customVar))

          ($thisChoiceDoc)
          ($thisChoiceLabel)
          ($menuName (s-lex-format "b:var:custom:menu:of:${<customVar}"))
          )
        (mapcar (lambda ($choice)
                     (setq $thisChoiceDoc (car $choiceDocs))
                     (setq $thisChoiceDoc (s-lex-format "${$thisChoiceDoc} -- setting ${<customVar} to ${$choice}"))
                     (setq $thisChoiceLabel (car $choiceLabels))
                     (setq $choiceLabels (cdr $choiceLabels))
                     (setq $choiceDocs (cdr $choiceDocs))
                     ;;(vector (symbol-name $choice)
                     (vector $thisChoiceLabel
                              `(lambda ()
                                 (interactive)
                                 (customize-set-variable ',<customVar ',$choice)
                                 (message "Set %s to %s" ',<customVar ',$choice))
                              :style 'radio
                              :selected `(eq ,<customVar ',$choice)
                              :help $thisChoiceDoc
                              )
                          )
               $choices)
        ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:menu|choicesList 'b:var:custom+example)
#+END_SRC

#+RESULTS:

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(nth 2 (b:var:custom:menu|choicesList 'b:var:custom+example))
#+END_SRC

#+RESULTS:

" orgCmntEnd)


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(popup-menu (b:var:custom:menu|generateChoices 'b:var:custom+example '$actuateExample))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:menu|generateChoices" :advice () :comment "~PRIMARY~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:menu|generateChoices>>  -- ~PRIMARY~ -- Generate a radio button menu for a given defcustom defined <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:menu|generateChoices (
;;;#+END:
                                          <customVar
                                          &optional
                                          <actuateFunc
                                          )
   " #+begin_org
** DocStr: Generate a radio button menu for a given defcustom defined <customVar.
#+end_org "
   (let* (
          ;;; ($inHere (b:log|entry (b:func$entry)))
          ($thisFuncName (compile-time-function-name))
          ($choices (b:var:custom:choices|getVals <customVar))
          ($choiceLabels (b:var:custom:choices|getLabels <customVar))
          ($choiceDocs (b:var:custom:choices|getDocs <customVar))
          (description (or (documentation-property <customVar 'variable-documentation)
                          "No description available"))
          ($customVarName (symbol-name <customVar))
          ($customVarValue (symbol-value <customVar))

          ($thisChoiceDoc)
          ($thisChoiceLabel)
          ($menuName (s-lex-format "b:var:custom:menu:of:${<customVar}"))
          )

     (easy-menu-define
       b:var:custom:menu:of:
       nil
       (s-lex-format "Sub-Menu Defined In ${$thisFuncName}")
       (append
       `(,(s-lex-format "Describe/Modify --- ${$customVarValue}"))
       (list :help "Generic b:var:custom:choice Menu.")
       (list (s-- 3))
       (list (s-- 4))
       (b:var:custom:menu|choicesList <customVar <actuateFunc)
       (list (s-- 5))
       (list (s-- 6))
       ))

     (easy-menu-add-item
      b:var:custom:menu:of:
      nil
      (b:var:custom:menu|describe  <customVar)
      (s-- 3))

     (easy-menu-add-item
      b:var:custom:menu:of:
      nil
      (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

     'b:var:custom:menu:of:
     ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:var:custom:menu|generateChoices 'b:var:custom+example)))
#+END_SRC
" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(popup-menu (b:var:custom:menu|generateChoices 'b:var:custom+example '$actuateExample))
#+END_SRC
" orgCmntEnd)




;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Add defcustom Choice To Existing Menu" :extraInfo "easy-menu-add-item"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Add defcustom Choice To Existing Menu_: |]]  easy-menu-add-item  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices:menu:plugin|install" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices:menu:plugin|install>>  --  -- Adds this as a submenu to menu labeled =<menuLabel= at specified delimited =<menuDelimiter=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices:menu:plugin|install (
;;;#+END:
                                   <menuSymbol
                                   <menuDelimiter
                                   <customVar
                                   &optional
                                   <actuateFunc
                                   )
  " #+begin_org
** DocStr: Adds this as a submenu to menu labeled =<menuLabel= at specified delimited =<menuDelimiter=.
#+end_org "

  (easy-menu-add-item
   <menuSymbol
   nil
   (b:var:custom:menu|generateChoices <customVar <actuateFunc)
   <menuDelimiter
   )
  )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices:menu:plugin|install modes:menu:global (s-- 4) 'b:var:custom+example)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices:menu:add|items" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices:menu:add|items>>  --  -- Adds this as a submenu to menu labeled =<menuLabel= at specified delimited =<menuDelimiter=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices:menu:add|items (
;;;#+END:
                                            <menuSymbol
                                            <menuDelimiter
                                            <customVar
                                            &optional
                                            <actuateFunc
                                            )
  " #+begin_org
** DocStr: Adds this as a submenu to menu labeled =<menuLabel= at specified delimited =<menuDelimiter=.
#+end_org "

  (let* (
         ($inHere (b:func$entry))
         )

    (when (b:recuring+control|enabled?) (b:debug|entry $inHere))

    (easy-menu-add-item
     <menuSymbol
     nil
     (b:var:custom:menu|describe  <customVar)
     <menuDelimiter
     )

    (loop-for-each $i (number-sequence
                       0
                       (1- (b:var:custom:choices|length <customVar))
                       1)
      (easy-menu-add-item
       <menuSymbol
       nil
       (nth $i (b:var:custom:menu|choicesList  <customVar <actuateFunc))
       <menuDelimiter
       ))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices:menu:add|items  modes:menu:global (s-- 4) 'b:var:custom+example)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices:menu:add|items  modes:menu:global (s-- 4) 'b:var:custom+example)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:var:custom:menu)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
