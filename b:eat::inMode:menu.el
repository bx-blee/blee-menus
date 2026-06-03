;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)
(require 'b:menu::panelAndHelp)

;;; The inMode menu is bound to eat-mode-map so it automatically
;;; appears on the menu bar when eat-mode is active and disappears
;;; when the buffer is not an eat buffer.

;;
;; (b:eat:inMode:menu|define)
;; (popup-menu (symbol-value (b:eat:inMode:menu|define)))
;;
(defun b:eat:inMode:menu|define (&rest <namedArgs)
  "Defines and returns b:eat:inMode:menu, bound to eat-mode-map.
The menu appears automatically on the menu bar whenever eat-mode is active."
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:eat:inMode:menu
      eat-mode-map
      (format "Eat In-Mode Menu")
      `(
	,(format "Eat")
	:help "eat in-mode menu — commands for use inside an eat buffer"
	:visible t
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	))

    ;;; (s-- 3) — Input Mode
    (dolist (item '(b:eat:inMode:menuItem:semi-char-mode|define
                    b:eat:inMode:menuItem:char-mode|define
                    b:eat:inMode:menuItem:emacs-mode|define
                    b:eat:inMode:menuItem:line-mode|define))
      (easy-menu-add-item
       b:eat:inMode:menu nil
       (funcall item)
       (s-- 3)))

    ;;; (s-- 4) — Prompt Navigation
    (dolist (item '(b:eat:inMode:menuItem:next-shell-prompt|define
                    b:eat:inMode:menuItem:previous-shell-prompt|define
                    b:eat:inMode:menuItem:narrow-to-shell-prompt|define))
      (easy-menu-add-item
       b:eat:inMode:menu nil
       (funcall item)
       (s-- 4)))

    ;;; (s-- 5) — Send Keys
    (dolist (item '(b:eat:inMode:menuItem:send-interrupt|define
                    b:eat:inMode:menuItem:quoted-input|define
                    b:eat:inMode:menuItem:reset|define))
      (easy-menu-add-item
       b:eat:inMode:menu nil
       (funcall item)
       (s-- 5)))

    ;;; (s-- 6) — Buffer / Window
    (dolist (item '(b:eat:inMode:menuItem:rename-buffer|define
                    b:eat:inMode:menuItem:kill-process|define))
      (easy-menu-add-item
       b:eat:inMode:menu nil
       (funcall item)
       (s-- 6)))

    ;;; (s-- 7) — Configuration submenu
    (easy-menu-add-item
     b:eat:inMode:menu nil
     (b:eat:inMode:menuItem:config-submenu|define)
     (s-- 7))

    ;;; (s-- 8) — Help Sub-Menu (bxblee.blee-libs@b:menu)
    (easy-menu-add-item
     b:eat:inMode:menu nil
     (b:menu:panelAndHelp|define
      :panelName "/bisos/panels/blee-core/eat/_nodeBase_"
      :funcName $thisFuncName
      :pkgRepoUrl "https://codeberg.org/akib/emacs-eat"
      )
     (s-- 8))

    'b:eat:inMode:menu
    ))

(defun b:eat:inMode:menu|install ()
  "Install the eat inMode menu. Call from eat-mode-hook."
  (b:eat:inMode:menu|define))

(add-hook 'eat-mode-hook #'b:eat:inMode:menu|install)

;;; Input Mode

(defun b:eat:inMode:menuItem:semi-char-mode|define ()
  (car `(
         [,(format "Switch to Semi-Char Mode  -- eat-semi-char-mode")
          (eat-semi-char-mode)
          :help "Switch to semi-char mode: most keys sent to terminal, Emacs bindings reserved (C-\\, C-c, C-x, etc.)"
          ]
         )))

(defun b:eat:inMode:menuItem:char-mode|define ()
  (car `(
         [,(format "Switch to Char Mode  -- eat-char-mode")
          (eat-char-mode)
          :help "Switch to char mode: all supported keys sent to terminal (use C-M-m to exit)"
          ]
         )))

(defun b:eat:inMode:menuItem:emacs-mode|define ()
  (car `(
         [,(format "Switch to Emacs Mode (Read-Only)  -- eat-emacs-mode")
          (eat-emacs-mode)
          :help "Switch to normal Emacs keybindings; terminal output is read-only"
          ]
         )))

(defun b:eat:inMode:menuItem:line-mode|define ()
  (car `(
         [,(format "Switch to Line Mode  -- eat-line-mode")
          (eat-line-mode)
          :help "Switch to line editing mode with input history support"
          ]
         )))

;;; Prompt Navigation

(defun b:eat:inMode:menuItem:next-shell-prompt|define ()
  (car `(
         [,(format "Jump to Next Prompt  -- eat-next-shell-prompt")
          (eat-next-shell-prompt 1)
          :help "Move point to the next shell prompt"
          ]
         )))

(defun b:eat:inMode:menuItem:previous-shell-prompt|define ()
  (car `(
         [,(format "Jump to Previous Prompt  -- eat-previous-shell-prompt")
          (eat-previous-shell-prompt 1)
          :help "Move point to the previous shell prompt"
          ]
         )))

(defun b:eat:inMode:menuItem:narrow-to-shell-prompt|define ()
  (car `(
         [,(format "Narrow to Shell Prompt  -- eat-narrow-to-shell-prompt")
          (eat-narrow-to-shell-prompt)
          :help "Narrow the buffer to the current shell prompt region"
          ]
         )))

;;; Send Keys

(defun b:eat:inMode:menuItem:send-interrupt|define ()
  (car `(
         [,(format "Send Interrupt (C-c)  -- eat-line-send-interrupt")
          (eat-line-send-interrupt)
          :help "Send keyboard interrupt (C-c) to the terminal process"
          ]
         )))

(defun b:eat:inMode:menuItem:quoted-input|define ()
  (car `(
         [,(format "Send Next Key Literally  -- eat-quoted-input")
          (eat-quoted-input)
          :help "Send the next key pressed literally to the terminal (like C-q)"
          ]
         )))

(defun b:eat:inMode:menuItem:reset|define ()
  (car `(
         [,(format "Reset Terminal  -- eat-reset")
          (eat-reset)
          :help "Reset the terminal to its initial state"
          ]
         )))

;;; Buffer / Window

(defun b:eat:inMode:menuItem:rename-buffer|define ()
  (car `(
         [,(format "Rename Eat Buffer  -- rename-buffer")
          (rename-buffer (read-string "New buffer name: " (buffer-name)) t)
          :help "Rename the current eat buffer"
          ]
         )))

(defun b:eat:inMode:menuItem:kill-process|define ()
  (car `(
         [,(format "Kill Eat Process  -- eat-kill-process")
          (eat-kill-process)
          :help "Kill the terminal process running in this eat buffer"
          ]
         )))

;;; Configuration submenu

(defun b:eat:inMode:menuItem:config-submenu|define ()
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

(provide 'b:eat::inMode:menu)
