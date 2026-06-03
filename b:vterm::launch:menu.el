;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)
(require 'b:menu::panelAndHelp)

;; (b:vterm:launch:menu:plugin|install modes:menu:global (s-- 6))
(defun b:vterm:launch:menu:plugin|install (<menuLabel <menuDelimiter)
  "Adds this as a submenu to menu labeled <menuLabel at specified delimiter <menuDelimiter.
Intended for global menu bars — items here launch vterm from any buffer."

  (easy-menu-add-item
   <menuLabel
   nil
   (b:vterm:launch:menu|define :active t)
   <menuDelimiter
   )

  (add-hook 'menu-bar-update-hook 'b:vterm:launch:menu|update-hook)
  )

(defun b:vterm:launch:menu|update-hook ()
  "Added to menu-bar-update-hook. Runs on every menu bar invocation."
  )

;;
;; (b:vterm:launch:menu|define :active nil)
;; (popup-menu (symbol-value (b:vterm:launch:menu|define)))
;;
(defun b:vterm:launch:menu|define (&rest <namedArgs)
  "Returns b:vterm:launch:menu.
:active can be specified as <namedArgs."
  (let (
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:vterm:launch:menu
      nil
      (format "VTerm Launch Menu")
      `(
	,(format "VTerm :: Launch Menu")
	:help "vterm launch menu — open a terminal from any buffer"
	:active ,<active
	:visible t
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	))

    ;;; (s-- 3) — Open Terminal
    (dolist (item '(b:vterm:launch:menuItem:vterm|define
                    b:vterm:launch:menuItem:vterm-other-window|define))
      (easy-menu-add-item
       b:vterm:launch:menu nil
       (funcall item)
       (s-- 3)))

    ;;; (s-- 4) — Configuration submenu
    (easy-menu-add-item
     b:vterm:launch:menu nil
     (b:vterm:launch:menuItem:config-submenu|define)
     (s-- 4))

    ;;; (s-- 5) — Help Sub-Menu (bxblee.blee-libs@b:menu)
    (easy-menu-add-item
     b:vterm:launch:menu nil
     (b:menu:panelAndHelp|define
      :panelName "/bisos/panels/blee-core/vterm/_nodeBase_"
      :funcName $thisFuncName
      :pkgRepoUrl "https://github.com/akermu/emacs-libvterm"
      )
     (s-- 5))

    'b:vterm:launch:menu
    ))

;;; Open Terminal

(defun b:vterm:launch:menuItem:vterm|define ()
  (car `(
         [,(format "vterm  -- Open Terminal in Current Window")
          (vterm)
          :help "Open a vterm terminal in the current window"
          ]
         )))

(defun b:vterm:launch:menuItem:vterm-other-window|define ()
  (car `(
         [,(format "vterm-other-window  -- Open Terminal in Other Window")
          (vterm-other-window)
          :help "Open a vterm terminal in another window"
          ]
         )))

;;; Configuration submenu

(defun b:vterm:launch:menuItem:config-submenu|define ()
  `(,(format "Configuration")
    :help "vterm configuration variables"
    [,(format "Set vterm-shell  -- Change Shell Executable")
     (customize-variable 'vterm-shell)
     :help "Set the shell executable used by vterm (vterm-shell)"
     ]
    [,(format "Set vterm-max-scrollback  -- Set Scrollback Limit")
     (customize-variable 'vterm-max-scrollback)
     :help "Set scrollback line limit, default 1000, max 100000 (vterm-max-scrollback)"
     ]
    [,(format "Set vterm-kill-buffer-on-exit  -- Auto-Close on Exit")
     (customize-variable 'vterm-kill-buffer-on-exit)
     :help "Toggle auto-close buffer when shell process terminates (vterm-kill-buffer-on-exit)"
     ]
    [,(format "Set vterm-copy-exclude-prompt  -- Exclude Prompt on Copy")
     (customize-variable 'vterm-copy-exclude-prompt)
     :help "Exclude the shell prompt when copying lines in copy mode (vterm-copy-exclude-prompt)"
     ]
    [,(format "Set vterm-environment  -- Set Environment Variables")
     (customize-variable 'vterm-environment)
     :help "Additional environment variables passed to the shell (vterm-environment)"
     ]
    [,(format "Customize vterm group  -- All vterm Options")
     (customize-group 'vterm)
     :help "Open the full vterm customization group"
     ]
    ))

(provide 'b:vterm::launch:menu)
