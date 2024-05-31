;;; b:email.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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
** This File: /bisos/git/bxRepos/blee/mtdt-mailing/b:email.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
Module description comes here.
** Relevant Pointers and Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO improvement comes here.
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


;;;#+BEGIN:  b:elisp:defs/defgroup :defName "b:var:custom" :defValue "nil"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defgroup   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom>> ~nil~ --  -- Blee Mailings Library. Used by b:b:mtdt:distr.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defgroup b:var:custom nil
;;;#+END:
" #+begin_org
** DocStr: Menus for
#+end_org "
  :group 'blee
  :prefix "b:var:custom"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

;;;#+BEGIN:  b:elisp:defs/defcustom :defName "b:var:custom+example" :defValue "'b:mtdt:compose+framework::orgMsg" :comment "/Example For Testing/"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defcustom  [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom+example>> ~'b:mtdt:compose+framework::orgMsg~ -- /Example For Testing/ -- Selected and effective compose framework as customizable choices.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defcustom b:var:custom+example 'b:mtdt:compose+framework::orgMsg
;;;#+END:
    " #+begin_org
** DocStr: Selected and effective compose framework as customizable choices.
#+end_org "
	:group 'b:b:mtdt:mailings
	:type '(choice
	        (const :tag "Basic" b:mtdt:compose+framework::basic "Basic Plain Text Mail Composition" )
		(const :tag "OrgMsg" b:mtdt:compose+framework::orgMsg "OrgMsg Mail Composition")
		(const :tag "LaTeX" b:mtdt:compose+framework::latex "External LaTeX Mail Composition")
		(const :tag "HTML" b:mtdt:compose+framework::html "External HTML Mail Composition")
		(const :tag "ofSelMailing" b:mtdt:compose+framework::ofSelMailing "Based on Selected Mailing Framework")
                ))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choice~element" :advice () :comment "~LOCAL~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choice~element>>  -- ~LOCAL~ -- Get the list of choices for a given <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choice~element (
;;;#+END:
                                     <choice
                                     <nth
                                     )
   " #+begin_org
** DocStr: Get the list of choices for a given <customVar.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (if (and (listp <choice) (eq (car <choice) 'const))
         (nth <nth <choice)
       <choice)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choice~element (car (cdr (get 'b:var:custom+example 'custom-type))) 3)
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|getVals" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|getVals>>  --  -- Insert =addrStr= at point. Comma separate it if needed. Used for entry of addresses in mail headers.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|getVals (
;;;#+END:
                                     <customVar
                                     )
   " #+begin_org
** DocStr: Get the list of choices for a given <customVar.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($custom-type (get <customVar 'custom-type))
          )
     (when (and $custom-type (eq (car $custom-type) 'choice))
      (mapcar (lambda ($choice)
                (b:var:custom:choice~element $choice 3))
              (cdr $custom-type)))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|getVals 'b:var:custom+example)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|getLabels" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|getLabels>>  --  -- Get the list of choices for a given <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|getLabels (
;;;#+END:
                                     <customVar
                                     )
   " #+begin_org
** DocStr: Get the list of choices for a given <customVar.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($custom-type (get <customVar 'custom-type))
          )
     (when (and $custom-type (eq (car $custom-type) 'choice))
      (mapcar (lambda ($choice)
                (b:var:custom:choice~element $choice 2))
              (cdr $custom-type)))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|getLabels 'b:var:custom+example)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|getDocs" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|getDocs>>  --  -- Get the list of choices for a given <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|getDocs (
;;;#+END:
                                     <customVar
                                     )
   " #+begin_org
** DocStr: Get the list of choices for a given <customVar.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($custom-type (get <customVar 'custom-type))
          )
     (when (and $custom-type (eq (car $custom-type) 'choice))
      (mapcar (lambda ($choice)
                (b:var:custom:choice~element $choice 4))
              (cdr $custom-type)))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|getDocs 'b:var:custom+example)
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:menu|describe" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:menu|describe>>  --  -- Generate a radio button menu for a given CUSTOM-VARIABLE using its doc string.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:menu|describe (
;;;#+END:
                                          <customVar
                                          )
   " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          (description (or (documentation-property <customVar 'variable-documentation)
                          "No description available"))
          ($customVarName (symbol-name <customVar))
          )
    (nth 0
       `(
         [
          ,(s-lex-format "Describe/Customize  ${$customVarName}:: ${<customVar}")
	  ,(describe-variable <customVar)
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
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:menu|generateChoices" :advice () :comment "~PRIMARY~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:menu|generateChoices>>  -- ~PRIMARY~ -- Generate a radio button menu for a given CUSTOM-VARIABLE using its doc string.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:menu|generateChoices (
;;;#+END:
                                          <customVar
                                          )
   " #+begin_org
** DocStr: Generate a radio button menu for a given CUSTOM-VARIABLE using its doc string.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($choices (b:var:custom:choices|getVals <customVar))
          ($choiceLabels (b:var:custom:choices|getLabels <customVar))
          ($choiceDocs (b:var:custom:choices|getDocs <customVar))
          (description (or (documentation-property <customVar 'variable-documentation)
                          "No description available"))
          ($customVarName (symbol-name <customVar))

          ($thisChoiceDoc)
          ($thisChoiceLabel)

          )
    (easy-menu-create-menu
     (s-lex-format "Describe/Customize ---  ${$customVarName}:: ${<customVar}")
     (cons (b:var:custom:menu|describe <customVar) ;; (vector description nil :active t :visible t)
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
                   $choices)))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(popup-menu (b:var:custom:menu|generateChoices 'b:var:custom+example))
#+END_SRC
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
