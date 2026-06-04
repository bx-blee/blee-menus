;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)
(require 'b:menu::panelAndHelp)

;;; The inMode menu is bound to ghostel-mode-map so it automatically
;;; appears on the menu bar when ghostel-mode is active and disappears
;;; when the buffer is not a ghostel buffer.

;; (b:ghostel:inMode:menu:plugin|install modes:menu:global (s-- 6))
(defun b:ghostel:inMode:menu:plugin|install (<menuLabel <menuDelimiter)
  "Adds this as a submenu to menu labeled <menuLabel at specified delimiter <menuDelimiter.
Intended for mode-specific menu bars — items here are available inside ghostel buffers."

  (easy-menu-add-item
   <menuLabel
   nil
   (b:ghostel:inMode:menu|define)
   <menuDelimiter
   )

  (add-hook 'menu-bar-update-hook 'b:ghostel:inMode:menu|update-hook)
  )

(defun b:ghostel:inMode:menu|update-hook ()
  "Added to menu-bar-update-hook. Runs on every menu bar invocation."
  )


;;
;; (b:ghostel:inMode:menu|define)
;; (popup-menu (symbol-value (b:ghostel:inMode:menu|define)))
;;
(defun b:ghostel:inMode:menu|define (&rest <namedArgs)
  "Defines and returns b:ghostel:inMode:menu, bound to ghostel-mode-map.
The menu appears automatically on the menu bar whenever ghostel-mode is active."
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:ghostel:inMode:menu
      ghostel-mode-map
      (format "Ghostel In-Mode Menu")
      `(
	,(format "Ghostel")
	:help "ghostel in-mode menu — commands for use inside a ghostel buffer"
	:visible t
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	))

    ;;; (s-- 3) — Input Mode
    (dolist (item '(b:ghostel:inMode:menuItem:show-current-mode|define
                    b:ghostel:inMode:menuItem:semi-char-mode|define
                    b:ghostel:inMode:menuItem:char-mode|define
                    b:ghostel:inMode:menuItem:emacs-mode|define
                    b:ghostel:inMode:menuItem:line-mode|define
                    b:ghostel:inMode:menuItem:copy-mode|define))
      (easy-menu-add-item
       b:ghostel:inMode:menu nil
       (funcall item)
       (s-- 3)))
    ;;; (s-- 4) — Prompt / Hyperlink Navigation
    (dolist (item '(b:ghostel:inMode:menuItem:next-prompt|define
                    b:ghostel:inMode:menuItem:previous-prompt|define
                    b:ghostel:inMode:menuItem:next-hyperlink|define
                    b:ghostel:inMode:menuItem:previous-hyperlink|define
                    b:ghostel:inMode:menuItem:open-link-at-point|define))
      (easy-menu-add-item
       b:ghostel:inMode:menu nil
       (funcall item)
       (s-- 4)))

    ;;; (s-- 5) — Send Keys / Control
    (dolist (item '(b:ghostel:inMode:menuItem:send-C-c|define
                    b:ghostel:inMode:menuItem:send-C-d|define
                    b:ghostel:inMode:menuItem:send-C-z|define
                    b:ghostel:inMode:menuItem:send-C-backslash|define
                    b:ghostel:inMode:menuItem:send-next-key|define))
      (easy-menu-add-item
       b:ghostel:inMode:menu nil
       (funcall item)
       (s-- 5)))

    ;;; (s-- 6) — Buffer Navigation / Management
    (dolist (item '(b:ghostel:inMode:menuItem:next|define
                    b:ghostel:inMode:menuItem:previous|define
                    b:ghostel:inMode:menuItem:list-buffers|define
                    b:ghostel:inMode:menuItem:project-next|define
                    b:ghostel:inMode:menuItem:project-previous|define))
      (easy-menu-add-item
       b:ghostel:inMode:menu nil
       (funcall item)
       (s-- 6)))

    ;;; (s-- 7) — Clipboard / Scrollback
    (dolist (item '(b:ghostel:inMode:menuItem:paste|define
                    b:ghostel:inMode:menuItem:copy-all|define
                    b:ghostel:inMode:menuItem:clear-scrollback|define
                    b:ghostel:inMode:menuItem:clear|define))
      (easy-menu-add-item
       b:ghostel:inMode:menu nil
       (funcall item)
       (s-- 7)))

    ;;; (s-- 8) — Configuration submenu
    (easy-menu-add-item
     b:ghostel:inMode:menu nil
     (b:ghostel:inMode:menuItem:config-submenu|define)
     (s-- 8))

    ;;; (s-- 9) — Help Sub-Menu (bxblee.blee-libs@b:menu)
    (easy-menu-add-item
     b:ghostel:inMode:menu nil
     (b:menu:panelAndHelp|define
      :panelName "/bisos/panels/blee-core/ghostel/_nodeBase_"
      :funcName $thisFuncName
      :pkgRepoUrl "https://github.com/dakra/ghostel"
      )
     (s-- 9))

    'b:ghostel:inMode:menu
    ))


;;; Input Mode

(defun b:ghostel:inMode:menuItem:show-current-mode|define ()
  (car `(
         [,(format "Show Current Input Mode")
          (message "Current ghostel input mode: %s"
                   (cond
                    ((eq ghostel--input-mode 'semi-char) "semi-char-mode")
                    ((eq ghostel--input-mode 'char)      "char-mode")
                    ((eq ghostel--input-mode 'line)      "line-mode")
                    ((eq ghostel--input-mode 'emacs)     "emacs-mode")
                    ((eq ghostel--input-mode 'copy)      "copy-mode")
                    (t (format "unexpected: %s" ghostel--input-mode))))
          :help "Display the current ghostel input mode in the minibuffer"
          ]
         )))

(defun b:ghostel:inMode:menuItem:semi-char-mode|define ()
  (car `(
         [,(format "Switch to Semi-Char Mode  -- ghostel-semi-char-mode")
          (ghostel-semi-char-mode)
          :help "Switch to semi-char mode: most keys sent to terminal, Emacs bindings reserved (C-c, C-x, etc.)"
          ]
         )))

(defun b:ghostel:inMode:menuItem:char-mode|define ()
  (car `(
         [,(format "Switch to Char Mode  -- ghostel-char-mode")
          (ghostel-char-mode)
          :help "Switch to char mode: all supported keys sent to terminal"
          ]
         )))

(defun b:ghostel:inMode:menuItem:emacs-mode|define ()
  (car `(
         [,(format "Switch to Emacs Mode  -- ghostel-emacs-mode")
          (ghostel-emacs-mode)
          :help "Switch to normal Emacs keybindings; terminal output is read-only"
          ]
         )))

(defun b:ghostel:inMode:menuItem:line-mode|define ()
  (car `(
         [,(format "Switch to Line Mode  -- ghostel-line-mode")
          (ghostel-line-mode)
          :help "Switch to line editing mode: edit input locally, send to shell on RET"
          ]
         )))

(defun b:ghostel:inMode:menuItem:copy-mode|define ()
  (car `(
         [,(format "Enter Copy Mode  -- ghostel-copy-mode")
          (ghostel-copy-mode)
          :help "Enter copy mode: freeze terminal output, use Emacs navigation to select and copy text"
          ]
         )))

;;; Prompt / Hyperlink Navigation

(defun b:ghostel:inMode:menuItem:next-prompt|define ()
  (car `(
         [,(format "Jump to Next Prompt  -- ghostel-next-prompt")
          (ghostel-next-prompt 1)
          :help "Move point to the next shell prompt (OSC 133)"
          ]
         )))

(defun b:ghostel:inMode:menuItem:previous-prompt|define ()
  (car `(
         [,(format "Jump to Previous Prompt  -- ghostel-previous-prompt")
          (ghostel-previous-prompt 1)
          :help "Move point to the previous shell prompt (OSC 133)"
          ]
         )))

(defun b:ghostel:inMode:menuItem:next-hyperlink|define ()
  (car `(
         [,(format "Next Hyperlink  -- ghostel-next-hyperlink")
          (ghostel-next-hyperlink 1)
          :help "Move to the next hyperlink (OSC 8, auto-detected URL, or file reference)"
          ]
         )))

(defun b:ghostel:inMode:menuItem:previous-hyperlink|define ()
  (car `(
         [,(format "Previous Hyperlink  -- ghostel-previous-hyperlink")
          (ghostel-previous-hyperlink 1)
          :help "Move to the previous hyperlink"
          ]
         )))

(defun b:ghostel:inMode:menuItem:open-link-at-point|define ()
  (car `(
         [,(format "Open Link at Point  -- ghostel-open-link-at-point")
          (ghostel-open-link-at-point)
          :help "Open the URL or file link at point"
          ]
         )))

;;; Send Keys / Control

(defun b:ghostel:inMode:menuItem:send-C-c|define ()
  (car `(
         [,(format "Send Interrupt (C-c)  -- ghostel-send-C-c")
          (ghostel-send-C-c)
          :help "Send keyboard interrupt (C-c) to the terminal process"
          ]
         )))

(defun b:ghostel:inMode:menuItem:send-C-d|define ()
  (car `(
         [,(format "Send EOF (C-d)  -- ghostel-send-C-d")
          (ghostel-send-C-d)
          :help "Send end-of-file (C-d) to the terminal process"
          ]
         )))

(defun b:ghostel:inMode:menuItem:send-C-z|define ()
  (car `(
         [,(format "Send Suspend (C-z)  -- ghostel-send-C-z")
          (ghostel-send-C-z)
          :help "Send suspend signal (C-z) to the terminal process"
          ]
         )))

(defun b:ghostel:inMode:menuItem:send-C-backslash|define ()
  (car `(
         [,(format "Send Quit (C-\\\\)  -- ghostel-send-C-backslash")
          (ghostel-send-C-backslash)
          :help "Send quit signal (C-\\) to the terminal process"
          ]
         )))

(defun b:ghostel:inMode:menuItem:send-next-key|define ()
  (car `(
         [,(format "Send Next Key Literally  -- ghostel-send-next-key")
          (ghostel-send-next-key)
          :help "Send the next key pressed literally to the terminal"
          ]
         )))

;;; Buffer Navigation / Management

(defun b:ghostel:inMode:menuItem:next|define ()
  (car `(
         [,(format "Next Ghostel Buffer  -- ghostel-next")
          (ghostel-next)
          :help "Switch to the next ghostel buffer (sorted by name, wraps around)"
          ]
         )))

(defun b:ghostel:inMode:menuItem:previous|define ()
  (car `(
         [,(format "Previous Ghostel Buffer  -- ghostel-previous")
          (ghostel-previous)
          :help "Switch to the previous ghostel buffer (sorted by name, wraps around)"
          ]
         )))

(defun b:ghostel:inMode:menuItem:list-buffers|define ()
  (car `(
         [,(format "List All Ghostel Buffers  -- ghostel-list-buffers")
          (ghostel-list-buffers)
          :help "Pick a ghostel buffer to switch to via completing-read"
          ]
         )))

(defun b:ghostel:inMode:menuItem:project-next|define ()
  (car `(
         [,(format "Next Project Terminal  -- ghostel-project-next")
          (ghostel-project-next)
          :help "Switch to the next ghostel buffer in the current project"
          ]
         )))

(defun b:ghostel:inMode:menuItem:project-previous|define ()
  (car `(
         [,(format "Previous Project Terminal  -- ghostel-project-previous")
          (ghostel-project-previous)
          :help "Switch to the previous ghostel buffer in the current project"
          ]
         )))

;;; Clipboard / Scrollback

(defun b:ghostel:inMode:menuItem:paste|define ()
  (car `(
         [,(format "Paste from Kill Ring  -- ghostel-paste")
          (ghostel-paste)
          :help "Paste the most recent kill-ring entry into the terminal"
          ]
         )))

(defun b:ghostel:inMode:menuItem:copy-all|define ()
  (car `(
         [,(format "Copy All (Scrollback)  -- ghostel-copy-all")
          (ghostel-copy-all)
          :help "Copy the entire terminal scrollback buffer to the kill ring"
          ]
         )))

(defun b:ghostel:inMode:menuItem:clear-scrollback|define ()
  (car `(
         [,(format "Clear Scrollback  -- ghostel-clear-scrollback")
          (ghostel-clear-scrollback)
          :help "Clear the terminal scrollback buffer"
          ]
         )))

(defun b:ghostel:inMode:menuItem:clear|define ()
  (car `(
         [,(format "Clear Screen  -- ghostel-clear")
          (ghostel-clear)
          :help "Clear the terminal screen (like the 'clear' shell command)"
          ]
         )))

;;; Configuration submenu

(defun b:ghostel:inMode:menuItem:config-submenu|define ()
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

(provide 'b:ghostel::inMode:menu)
