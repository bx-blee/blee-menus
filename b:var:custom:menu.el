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


;;;#+BEGIN:  b:elisp:defs/defgroup :defName "b:var:custom" :defValue "nil"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defgroup   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom>> ~nil~ --  -- Facilties that form a layer on top of defcustom  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defgroup b:var:custom nil
;;;#+END:
  " #+begin_org
** DocStr: Facilties that form a layer on top of defcustom
#+end_org "
  :group 'blee
  :prefix "b:var:custom"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

;;;#+BEGIN:  b:elisp:defs/defcustom :defName "b:var:custom+example" :defValue "'b:mtdt:compose+framework::orgMsg" :comment "/Example For Testing/"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defcustom  [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom+example>> ~'b:mtdt:compose+framework::orgMsg~ -- /Example For Testing/ -- Composition framework as customizable choices.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defcustom b:var:custom+example 'b:mtdt:compose+framework::orgMsg
;;;#+END:
    " #+begin_org
** DocStr: Composition framework as customizable choices.
#+end_org "
	:group 'b:b:mtdt:mailings
	:type '(choice
	        (const :tag "Basic" b:mtdt:compose+framework::basic "Basic Plain Text Mail Composition" )
		(const :tag "OrgMsg" b:mtdt:compose+framework::orgMsg "OrgMsg Mail Composition")
		(const :tag "LaTeX" b:mtdt:compose+framework::latex "External LaTeX Mail Composition")
		(const :tag "HTML" b:mtdt:compose+framework::html "External HTML Mail Composition")
		(const :tag "ofSelMailing" b:mtdt:compose+framework::ofSelMailing "Based on Selected Mailing Framework")
                ))

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "defcustom Choice" :extraInfo "information extraction"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _defcustom Choice_: |]]  information extraction  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|getChoice" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|getChoice>>  --  -- Given a <choiceVal of a given <customVar, get the choice (as a list) or nil.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|getChoice (
;;;#+END:
                                       <customVar
                                       <choiceVal
                                       )
   " #+begin_org
** DocStr: Given a <choiceVal of a given <customVar, get the choice (as a list) or nil.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($custom-type (get <customVar 'custom-type))
          ($result nil)
          )
     (when (and $custom-type (eq (car $custom-type) 'choice))
       (loop-for-each $choice (cdr $custom-type)
         (when (eq (b:var:custom:choice|nthElement $choice 3) <choiceVal)
           (setq $result $choice)
           (loop-break))))
     $result))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|getChoice 'b:var:custom+example 'b:mtdt:compose+framework::orgMsg)
#+END_SRC

#+RESULTS:
| const | :tag | OrgMsg | b:mtdt:compose+framework::orgMsg | OrgMsg Mail Composition |

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choice|nthElement" :advice () :comment ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choice|nthElement>>  --  -- Given a <choice of a defcustom, return the <nth element.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choice|nthElement (
;;;#+END:
                                     <choice
                                     <nth
                                     )
   " #+begin_org
** DocStr: Given a <choice of a defcustom, return the <nth element.
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
(b:var:custom:choice|nthElement (car (cdr (get 'b:var:custom+example 'custom-type))) 3)
#+END_SRC

#+RESULTS:
: b:mtdt:compose+framework::basic

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choice|nthElement (b:var:custom:choices|getChoice 'b:var:custom+example 'b:mtdt:compose+framework::orgMsg) 2)
#+END_SRC

#+RESULTS:
: OrgMsg

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|getLabels" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|getLabels>>  --  -- Get list of *labels* of choices for a given <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|getLabels (
;;;#+END:
                                     <customVar
                                     )
   " #+begin_org
** DocStr: Get list of *labels* of choices for a given <customVar.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($custom-type (get <customVar 'custom-type))
          )
     (when (and $custom-type (eq (car $custom-type) 'choice))
      (mapcar (lambda ($choice)
                (b:var:custom:choice|nthElement $choice 2))
              (cdr $custom-type)))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|getLabels 'b:var:custom+example)
#+END_SRC

#+RESULTS:
| Basic | OrgMsg | LaTeX | HTML | ofSelMailing |

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|getVals" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|getVals>>  --  -- Get list of *values* of choices for a given <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|getVals (
;;;#+END:
                                     <customVar
                                     )
   " #+begin_org
** DocStr: Get list of *values* of choices for a given <customVar.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($custom-type (get <customVar 'custom-type))
          )
     (when (and $custom-type (eq (car $custom-type) 'choice))
      (mapcar (lambda ($choice)
                (b:var:custom:choice|nthElement $choice 3))
              (cdr $custom-type)))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|getVals 'b:var:custom+example)
#+END_SRC

#+RESULTS:
| b:mtdt:compose+framework::basic | b:mtdt:compose+framework::orgMsg | b:mtdt:compose+framework::latex | b:mtdt:compose+framework::html | b:mtdt:compose+framework::ofSelMailing |

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|getDocs" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|getDocs>>  --  -- Get list of *documentation* of choices for a given <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|getDocs (
;;;#+END:
                                     <customVar
                                     )
   " #+begin_org
** DocStr: Get list of *documentation* of choices for a given <customVar.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($custom-type (get <customVar 'custom-type))
          )
     (when (and $custom-type (eq (car $custom-type) 'choice))
      (mapcar (lambda ($choice)
                (b:var:custom:choice|nthElement $choice 4))
              (cdr $custom-type)))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|getDocs 'b:var:custom+example)
#+END_SRC

#+RESULTS:
| Basic Plain Text Mail Composition | OrgMsg Mail Composition | External LaTeX Mail Composition | External HTML Mail Composition | Based on Selected Mailing Framework |

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|length" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|length>>  --  -- Get list of *documentation* of choices for a given <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|length (
;;;#+END:
                                     <customVar
                                     )
   " #+begin_org
** DocStr: Get of choices list. (length (b:var:custom:choices|getLabels <customVar))
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (length (b:var:custom:choices|getLabels <customVar))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|length 'b:var:custom+example)
#+END_SRC

#+RESULTS:
| Basic Plain Text Mail Composition | OrgMsg Mail Composition | External LaTeX Mail Composition | External HTML Mail Composition | Based on Selected Mailing Framework |

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|validate" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|validate>>  --  -- Validate that <choiceVal is one of valid values of choices of  <customVar.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|validate (
;;;#+END:
                                       <customVar
                                       <choiceVal
                                       )
   " #+begin_org
** DocStr: Validate that <choiceVal is one of valid values of choices of  <customVar.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (-contains? (b:var:custom:choices|getVals <customVar) <choiceVal)))



(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|validate 'b:var:custom+example 'b:mtdt:compose+framework::orgMsg)
#+END_SRC

#+RESULTS:
| b:mtdt:compose+framework::orgMsg | b:mtdt:compose+framework::latex | b:mtdt:compose+framework::html | b:mtdt:compose+framework::ofSelMailing |

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|validate 'b:var:custom+example t)
#+END_SRC

#+RESULTS:

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|set" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|set>>  --  -- (setq <customVar <choiceVal) after validation through [[b:var:custom:choices|validate]].  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|set (
;;;#+END:
                                       <customVar
                                       <choiceVal
                                       )
   " #+begin_org
** DocStr: (setq <customVar <choiceVal) after validation through [[b:var:custom:choices|validate]].
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (if (b:var:custom:choices|validate <customVar <choiceVal)
         (progn
           ;; (setq <customVar <choiceVal)
           (customize-set-variable <customVar <choiceVal)
           )
       (error (s-lex-format "invalid assignment of ${<choiceVal} to ${<customVar} -- ${$inHere}")))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|set 'b:var:custom+example 'b:mtdt:compose+framework::orgMsg)
#+END_SRC

#+RESULTS:
| b:mtdt:compose+framework::orgMsg | b:mtdt:compose+framework::latex | b:mtdt:compose+framework::html | b:mtdt:compose+framework::ofSelMailing |

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|set 'b:var:custom+example t)
#+END_SRC

#+RESULTS:

" orgCmntEnd)




;;;#+BEGIN:  b:elisp:defs/defun :defName "b:var:custom:choices|getChoiceLabel" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:var:custom:choices|getChoiceLabel>>  --  -- Given a <choiceVal for a given <customVar return =choiceLabel=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:var:custom:choices|getChoiceLabel (
;;;#+END:
                                       <customVar
                                       <choiceVal
                                       )
   " #+begin_org
** DocStr: Given a <choiceVal for a given <customVar return =choiceLabel=.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (b:var:custom:choice|nthElement
      (b:var:custom:choices|getChoice <customVar <choiceVal)
      2)))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|getChoiceLabel 'b:var:custom+example 'b:mtdt:compose+framework::orgMsg)
#+END_SRC

#+RESULTS:
: OrgMsg

" orgCmntEnd)



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
          ($inHere (b:log|entry (b:func$entry)))
          (description (or (documentation-property <customVar 'variable-documentation)
                          "No description available"))
          ($customVarName (symbol-name <customVar))
          ($customVarValue (symbol-value <customVar))
          )
    (nth 0
       `(
         [
          ,(s-lex-format "Describe/Customize  ${$customVarName}:: ${$customVarValue}")
	  (describe-variable ,<customVar)
	  :help ,description
	  :active t
	  :visible t
	  ]
         ))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(popup-menu (b:var:custom:menu|describe 'b:var:custom+example)))
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
          ($inHere (b:log|entry (b:func$entry)))
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
| [Basic (lambda nil (interactive) (customize-set-variable 'b:var:custom+example 'b:mtdt:compose+framework::basic) (when nil (funcall 'nil 'b:var:custom+example)) (message Set %s to %s 'b:var:custom+example 'b:mtdt:compose+framework::basic)) :style radio :selected nil :help Basic Plain Text Mail Composition -- setting b:var:custom+example to b:mtdt:compose+framework::basic] | [OrgMsg (lambda nil (interactive) (customize-set-variable 'b:var:custom+example 'b:mtdt:compose+framework::orgMsg) (when nil (funcall 'nil 'b:var:custom+example)) (message Set %s to %s 'b:var:custom+example 'b:mtdt:compose+framework::orgMsg)) :style radio :selected nil :help OrgMsg Mail Composition -- setting b:var:custom+example to b:mtdt:compose+framework::orgMsg] | [LaTeX (lambda nil (interactive) (customize-set-variable 'b:var:custom+example 'b:mtdt:compose+framework::latex) (when nil (funcall 'nil 'b:var:custom+example)) (message Set %s to %s 'b:var:custom+example 'b:mtdt:compose+framework::latex)) :style radio :selected nil :help External LaTeX Mail Composition -- setting b:var:custom+example to b:mtdt:compose+framework::latex] | [HTML (lambda nil (interactive) (customize-set-variable 'b:var:custom+example 'b:mtdt:compose+framework::html) (when nil (funcall 'nil 'b:var:custom+example)) (message Set %s to %s 'b:var:custom+example 'b:mtdt:compose+framework::html)) :style radio :selected nil :help External HTML Mail Composition -- setting b:var:custom+example to b:mtdt:compose+framework::html] | [ofSelMailing (lambda nil (interactive) (customize-set-variable 'b:var:custom+example 'b:mtdt:compose+framework::ofSelMailing) (when nil (funcall 'nil 'b:var:custom+example)) (message Set %s to %s 'b:var:custom+example 'b:mtdt:compose+framework::ofSelMailing)) :style radio :selected nil :help Based on Selected Mailing Framework -- setting b:var:custom+example to b:mtdt:compose+framework::ofSelMailing] |

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(nth 2 (b:var:custom:menu|choicesList 'b:var:custom+example))
#+END_SRC

#+RESULTS:
: ["HTML" (lambda nil (interactive) (customize-set-variable 'b:var:custom+example 'b:mtdt:compose+framework::html) (when nil (funcall 'nil 'b:var:custom+example)) (message "Set %s to %s" 'b:var:custom+example 'b:mtdt:compose+framework::html)) :style radio :selected (eq b:var:custom+example 'b:mtdt:compose+framework::html) :help "External HTML Mail Composition -- setting b:var:custom+example to b:mtdt:compose+framework::html"]

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
          ($inHere (b:log|entry (b:func$entry)))
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
       (s-lex-format "Help Menu Defined In ${$thisFuncName}")
       (append
       `(,(s-lex-format "Describe/Customize ---  ${$customVarName}:: ${$customVarValue}"))
       (list :help "Selected Gnus Mailing can be set in a variety of ways.")
       (list (s-- 3))
       (list (s-- 4))
       (b:var:custom:menu|choicesList <customVar <actuateFunc)
       (list (s-- 5))
       (list (s-- 6))
       ))

     ;;
     ;; This is here because we need back quoting of ',<customVar
     ;;
     (easy-menu-add-item
      b:var:custom:menu:of:
      nil
      (nth 0
           `(
             [
              ,(s-lex-format "Describe/Customize  ${$customVarName}:: ${$customVarValue}")
	      (describe-variable ',<customVar)
	      :help ,description
	      :active t
	      :visible t
	      ]
             ))
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
          ($inHere (b:log|entry (b:func$entry)))
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

  ;; (easy-menu-add-item
  ;;  <menuSymbol
  ;;  nil
  ;;  (b:var:custom:menu|generateChoices <customVar <actuateFunc)
  ;;  <menuDelimiter
  ;;  )

  ;;
  ;; This is here because we need back quoting of ',<customVar
  ;;
  (easy-menu-add-item
   <menuSymbol
   nil
   (nth 0
        `(
          [
           ,(s-lex-format "ZZZ Describe/Customize  ${$customVarName}:: ${$customVarValue}")
	   (describe-variable ',<customVar)
	   :help ,description
	   :active t
	   :visible t
	   ]
          ))
   <menuDelimiter
   )


  (easy-menu-add-item
     <menuSymbol
     nil
    (append
       (b:var:custom:menu|choicesList <customVar <actuateFunc)
       )
     <menuDelimiter
     )
  ;; (easy-menu-add-item
  ;;    <menuSymbol
  ;;    nil
  ;;    (nth 1 (b:var:custom:menu|choicesList  <customVar <actuateFunc))
  ;;    <menuDelimiter
  ;;    )
    ))


  ;; (loop-for-each $i (number-sequence 0
  ;;                                    (- (b:var:custom:choices|length <customVar) 1)
  ;;                                    1)
  ;;   (easy-menu-add-item
  ;;    <menuSymbol
  ;;    nil
  ;;    (nth $i (b:var:custom:menu|choicesList  <customVar <actuateFunc))
  ;;    <menuDelimiter
  ;;    ))))

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
