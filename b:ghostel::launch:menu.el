;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)
(require 'b:menu::panelAndHelp)

;; (b:ghostel:launch:menu:plugin|install modes:menu:global (s-- 6))
(defun b:ghostel:launch:menu:plugin|install (<menuLabel <menuDelimiter)
  "Adds this as a submenu to menu labeled <menuLabel at specified delimiter <menuDelimiter.
Intended for global menu bars — items here launch ghostel from any buffer."

  (easy-menu-add-item
   <menuLabel
   nil
   (b:ghostel:launch:menu|define :active t)
   <menuDelimiter
   )

  (add-hook 'menu-bar-update-hook 'b:ghostel:launch:menu|update-hook)
  )

(defun b:ghostel:launch:menu|update-hook ()
  "Added to menu-bar-update-hook. Runs on every menu bar invocation."
  )

;;
;; (b:ghostel:launch:menu|define :active nil)
;; (popup-menu (symbol-value (b:ghostel:launch:menu|define)))
;;
(defun b:ghostel:launch:menu|define (&rest <namedArgs)
  "Returns b:ghostel:launch:menu.
:active can be specified as <namedArgs."
  (let (
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:ghostel:launch:menu
      nil
      (format "Ghostel Launch Menu")
      `(
	,(format "Ghostel :: Launch Menu")
	:help "ghostel launch menu — open a terminal from any buffer"
	:active ,<active
	:visible t
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	))

    ;;; (s-- 3) — Open Terminal
    (dolist (item '(b:ghostel:launch:menuItem:ghostel|define
                    b:ghostel:launch:menuItem:ghostel-other-window|define
                    b:ghostel:launch:menuItem:ghostel-project|define
                    b:ghostel:launch:menuItem:ghostel-other|define
                    b:ghostel:launch:menuItem:ghostel-list-buffers|define))
      (easy-menu-add-item
       b:ghostel:launch:menu nil
       (funcall item)
       (s-- 3)))

    ;;; (s-- 4) — Configuration submenu
    (easy-menu-add-item
     b:ghostel:launch:menu nil
     (b:ghostel:launch:menuItem:config-submenu|define)
     (s-- 4))

    ;;; (s-- 5) — Help Sub-Menu (bxblee.blee-libs@b:menu)
    (easy-menu-add-item
     b:ghostel:launch:menu nil
     (b:menu:panelAndHelp|define
      :panelName "/bisos/panels/blee-core/ghostel/_nodeBase_"
      :funcName $thisFuncName
      :pkgRepoUrl "https://github.com/dakra/ghostel"
      )
     (s-- 5))

    'b:ghostel:launch:menu
    ))

;;; Open Terminal

(defun b:ghostel:launch:menuItem:ghostel|define ()
  (car `(
         [,(format "Open Terminal in Current Window  -- ghostel")
          (ghostel)
          :help "Open a ghostel terminal in the current window (switch to existing or create new)"
          ]
         )))

(defun b:ghostel:launch:menuItem:ghostel-other-window|define ()
  (car `(
         [,(format "Open Terminal in Other Window  -- ghostel (other-window)")
          (let ((display-buffer-overriding-action
                 '(display-buffer-use-some-window (inhibit-same-window . t))))
            (ghostel))
          :help "Open a ghostel terminal in another window"
          ]
         )))

(defun b:ghostel:launch:menuItem:ghostel-project|define ()
  (car `(
         [,(format "Open Terminal at Project Root  -- ghostel-project")
          (ghostel-project)
          :help "Open a ghostel terminal in the current project root directory"
          ]
         )))

(defun b:ghostel:launch:menuItem:ghostel-other|define ()
  (car `(
         [,(format "Switch to Next Terminal or Create  -- ghostel-other")
          (ghostel-other)
          :help "Switch to the next ghostel terminal buffer, or create one"
          ]
         )))

(defun b:ghostel:launch:menuItem:ghostel-list-buffers|define ()
  (car `(
         [,(format "List All Terminals  -- ghostel-list-buffers")
          (ghostel-list-buffers)
          :help "Pick a ghostel buffer to switch to via completing-read"
          ]
         )))

;;; Configuration submenu

(defun b:ghostel:launch:menuItem:config-submenu|define ()
  `(,(format "Configuration")
    :help "ghostel configuration variables"
    [,(format "Change Shell Executable  -- Set ghostel-shell")
     (customize-variable 'ghostel-shell)
     :help "Set the shell executable used by ghostel (ghostel-shell)"
     ]
    [,(format "Auto-Close on Exit  -- Set ghostel-kill-buffer-on-exit")
     (customize-variable 'ghostel-kill-buffer-on-exit)
     :help "Toggle auto-close buffer when shell process terminates (ghostel-kill-buffer-on-exit)"
     ]
    [,(format "Set Scrollback Size  -- Set ghostel-max-scrollback")
     (customize-variable 'ghostel-max-scrollback)
     :help "Set maximum scrollback buffer size in bytes (ghostel-max-scrollback)"
     ]
    [,(format "Enable URL Detection  -- Set ghostel-enable-url-detection")
     (customize-variable 'ghostel-enable-url-detection)
     :help "Enable automatic URL detection and highlighting (ghostel-enable-url-detection)"
     ]
    [,(format "Shell Integration  -- Set ghostel-shell-integration")
     (customize-variable 'ghostel-shell-integration)
     :help "Enable shell integration for prompt tracking and OSC sequences (ghostel-shell-integration)"
     ]
    [,(format "All Ghostel Options  -- Customize ghostel group")
     (customize-group 'ghostel)
     :help "Open the full ghostel customization group"
     ]
    ))

(provide 'b:ghostel::launch:menu)
