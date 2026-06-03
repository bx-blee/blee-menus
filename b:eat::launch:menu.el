;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)
(require 'b:menu::panelAndHelp)

;; (b:eat:launch:menu:plugin|install modes:menu:global (s-- 6))
(defun b:eat:launch:menu:plugin|install (<menuLabel <menuDelimiter)
  "Adds this as a submenu to menu labeled <menuLabel at specified delimiter <menuDelimiter.
Intended for global menu bars — items here launch eat from any buffer."

  (easy-menu-add-item
   <menuLabel
   nil
   (b:eat:launch:menu|define :active t)
   <menuDelimiter
   )

  (add-hook 'menu-bar-update-hook 'b:eat:launch:menu|update-hook)
  )

(defun b:eat:launch:menu|update-hook ()
  "Added to menu-bar-update-hook. Runs on every menu bar invocation."
  )

;;
;; (b:eat:launch:menu|define :active nil)
;; (popup-menu (symbol-value (b:eat:launch:menu|define)))
;;
(defun b:eat:launch:menu|define (&rest <namedArgs)
  "Returns b:eat:launch:menu.
:active can be specified as <namedArgs."
  (let (
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:eat:launch:menu
      nil
      (format "Eat Launch Menu")
      `(
	,(format "Eat :: Launch Menu")
	:help "eat launch menu — open a terminal from any buffer"
	:active ,<active
	:visible t
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	))

    ;;; (s-- 3) — Open Terminal
    (dolist (item '(b:eat:launch:menuItem:eat|define
                    b:eat:launch:menuItem:eat-other-window|define
                    b:eat:launch:menuItem:eat-project|define
                    b:eat:launch:menuItem:eat-project-other-window|define))
      (easy-menu-add-item
       b:eat:launch:menu nil
       (funcall item)
       (s-- 3)))

    ;;; (s-- 4) — Configuration submenu
    (easy-menu-add-item
     b:eat:launch:menu nil
     (b:eat:launch:menuItem:config-submenu|define)
     (s-- 4))

    ;;; (s-- 5) — Help Sub-Menu (bxblee.blee-libs@b:menu)
    (easy-menu-add-item
     b:eat:launch:menu nil
     (b:menu:panelAndHelp|define
      :panelName "/bisos/panels/blee-core/eat/_nodeBase_"
      :funcName $thisFuncName
      :pkgRepoUrl "https://codeberg.org/akib/emacs-eat"
      )
     (s-- 5))

    'b:eat:launch:menu
    ))

;;; Open Terminal

(defun b:eat:launch:menuItem:eat|define ()
  (car `(
         [,(format "Open Terminal in Current Window  -- eat")
          (eat)
          :help "Open an eat terminal in the current window"
          ]
         )))

(defun b:eat:launch:menuItem:eat-other-window|define ()
  (car `(
         [,(format "Open Terminal in Other Window  -- eat-other-window")
          (eat-other-window)
          :help "Open an eat terminal in another window"
          ]
         )))

(defun b:eat:launch:menuItem:eat-project|define ()
  (car `(
         [,(format "Open Terminal in Project Root  -- eat-project")
          (eat-project)
          :help "Open an eat terminal in the current project root directory"
          ]
         )))

(defun b:eat:launch:menuItem:eat-project-other-window|define ()
  (car `(
         [,(format "Open Terminal in Project Root (Other Window)  -- eat-project-other-window")
          (eat-project-other-window)
          :help "Open an eat terminal in the project root in another window"
          ]
         )))

;;; Configuration submenu

(defun b:eat:launch:menuItem:config-submenu|define ()
  `(,(format "Configuration")
    :help "eat configuration variables"
    [,(format "Change Shell Executable  -- Set eat-shell")
     (customize-variable 'eat-shell)
     :help "Set the shell executable used by eat (eat-shell)"
     ]
    [,(format "Set Scrollback Limit  -- Set eat-term-scrollback-size")
     (customize-variable 'eat-term-scrollback-size)
     :help "Set scrollback buffer size in characters (eat-term-scrollback-size)"
     ]
    [,(format "Auto-Close on Exit  -- Set eat-kill-buffer-on-exit")
     (customize-variable 'eat-kill-buffer-on-exit)
     :help "Toggle auto-close buffer when shell process terminates (eat-kill-buffer-on-exit)"
     ]
    [,(format "Enable Mouse Support  -- Set eat-enable-mouse")
     (customize-variable 'eat-enable-mouse)
     :help "Enable mouse support in eat terminals (eat-enable-mouse)"
     ]
    [,(format "Enable Directory Tracking  -- Set eat-enable-directory-tracking")
     (customize-variable 'eat-enable-directory-tracking)
     :help "Track directory changes for default-directory integration (eat-enable-directory-tracking)"
     ]
    [,(format "All Eat Options  -- Customize eat group")
     (customize-group 'eat)
     :help "Open the full eat customization group"
     ]
    ))

(provide 'b:eat::launch:menu)
