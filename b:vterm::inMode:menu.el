;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)
(require 'b:menu::panelAndHelp)

(add-hook 'vterm-mode-hook #'b:vterm:inMode:menu|install)

(defun b:vterm:inMode:menu|install ()
  "Install the vterm inMode menu. Call from vterm-mode-hook."
  (b:vterm:inMode:menu|define))

;;; The inMode menu is bound to vterm-mode-map so it automatically
;;; appears on the menu bar when vterm-mode is active and disappears
;;; when the buffer is not a vterm buffer.

;;
;; (b:vterm:inMode:menu|define)
;; (popup-menu (symbol-value (b:vterm:inMode:menu|define)))
;;
(defun b:vterm:inMode:menu|define (&rest <namedArgs)
  "Defines and returns b:vterm:inMode:menu, bound to vterm-mode-map.
The menu appears automatically on the menu bar whenever vterm-mode is active."
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:vterm:inMode:menu
      vterm-mode-map
      (format "VTerm In-Mode Menu")
      `(
	,(format "VTerm")
	:help "vterm in-mode menu — commands for use inside a vterm buffer"
	:visible t
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	))

    ;;; (s-- 3) — Copy Mode
    (dolist (item '(b:vterm:inMode:menuItem:copy-mode|define
                    b:vterm:inMode:menuItem:copy-mode-done|define))
      (easy-menu-add-item
       b:vterm:inMode:menu nil
       (funcall item)
       (s-- 3)))

    ;;; (s-- 4) — Scrollback / Prompt Navigation
    (dolist (item '(b:vterm:inMode:menuItem:clear-scrollback|define
                    b:vterm:inMode:menuItem:next-prompt|define
                    b:vterm:inMode:menuItem:previous-prompt|define
                    b:vterm:inMode:menuItem:beginning-of-line|define))
      (easy-menu-add-item
       b:vterm:inMode:menu nil
       (funcall item)
       (s-- 4)))

    ;;; (s-- 5) — Send Keys
    (dolist (item '(b:vterm:inMode:menuItem:send-interrupt|define
                    b:vterm:inMode:menuItem:send-next-key|define))
      (easy-menu-add-item
       b:vterm:inMode:menu nil
       (funcall item)
       (s-- 5)))

    ;;; (s-- 6) — Buffer / Window
    (dolist (item '(b:vterm:inMode:menuItem:rename-buffer|define
                    b:vterm:inMode:menuItem:kill-buffer|define))
      (easy-menu-add-item
       b:vterm:inMode:menu nil
       (funcall item)
       (s-- 6)))

    ;;; (s-- 7) — Configuration submenu
    (easy-menu-add-item
     b:vterm:inMode:menu nil
     (b:vterm:inMode:menuItem:config-submenu|define)
     (s-- 7))

    ;;; (s-- 8) — Help Sub-Menu (bxblee.blee-libs@b:menu)
    (easy-menu-add-item
     b:vterm:inMode:menu nil
     (b:menu:panelAndHelp|define
      :panelName "/bisos/panels/blee-core/vterm/_nodeBase_"
      :funcName $thisFuncName
      :pkgRepoUrl "https://github.com/akermu/emacs-libvterm"
      )
     (s-- 8))

    'b:vterm:inMode:menu
    ))

;;; Copy Mode

(defun b:vterm:inMode:menuItem:copy-mode|define ()
  (car `(
         [,(format "Toggle Copy Mode  -- vterm-copy-mode  [C-c C-t]")
          (vterm-copy-mode (if (bound-and-true-p vterm-copy-mode) -1 1))
          :help "Toggle vterm copy mode (read-only) for searching and copying text (C-c C-t)"
          ]
         )))

(defun b:vterm:inMode:menuItem:copy-mode-done|define ()
  (car `(
         [,(format "Copy Selection & Exit Copy Mode  -- vterm-copy-mode  [Enter]")
          (vterm-copy-mode-done nil nil)
          :active (bound-and-true-p vterm-copy-mode)
          :help "In copy mode: copy selected text and exit copy mode (Enter)"
          ]
         )))

;;; Scrollback / Prompt Navigation

(defun b:vterm:inMode:menuItem:clear-scrollback|define ()
  (car `(
         [,(format "Clear Scrollback  -- vterm-clear-scrollback  [C-c C-l]")
          (vterm-clear-scrollback)
          :help "Remove non-visible scrollback buffer data (C-c C-l)"
          ]
         )))

(defun b:vterm:inMode:menuItem:next-prompt|define ()
  (car `(
         [,(format "Jump to Next Prompt  -- vterm-next-prompt  [C-c C-n]")
          (vterm-next-prompt 1)
          :help "Move point to end of next shell prompt (C-c C-n)"
          ]
         )))

(defun b:vterm:inMode:menuItem:previous-prompt|define ()
  (car `(
         [,(format "Jump to Previous Prompt  -- vterm-previous-prompt  [C-c C-p]")
          (vterm-previous-prompt 1)
          :help "Move point to end of previous shell prompt (C-c C-p)"
          ]
         )))

(defun b:vterm:inMode:menuItem:beginning-of-line|define ()
  (car `(
         [,(format "Go to Beginning of Line  -- vterm-beginning-of-line  [C-a]")
          (vterm-beginning-of-line)
          :help "Move to first character after prompt, or line start if already there (C-a in copy mode)"
          ]
         )))

;;; Send Keys

(defun b:vterm:inMode:menuItem:send-interrupt|define ()
  (car `(
         [,(format "Send Interrupt (C-c)  -- vterm-send-C-c  [C-c C-c]")
          (vterm-send-C-c)
          :help "Send keyboard interrupt (C-c) to the terminal process (C-c C-c)"
          ]
         )))

(defun b:vterm:inMode:menuItem:send-next-key|define ()
  (car `(
         [,(format "Send Next Key to Terminal  -- vterm-send-next-key")
          (vterm-send-next-key)
          :help "Send the next key pressed directly to the terminal (useful for Emacs keys like C-g)"
          ]
         )))

;;; Buffer / Window

(defun b:vterm:inMode:menuItem:rename-buffer|define ()
  (car `(
         [,(format "Rename vterm Buffer  -- rename-buffer")
          (rename-buffer (read-string "New buffer name: " (buffer-name)) t)
          :help "Rename the current vterm buffer"
          ]
         )))

(defun b:vterm:inMode:menuItem:kill-buffer|define ()
  (car `(
         [,(format "Kill vterm Buffer  -- kill-buffer")
          (kill-buffer (current-buffer))
          :help "Kill the current vterm buffer and its process"
          ]
         )))

;;; Configuration submenu

(defun b:vterm:inMode:menuItem:config-submenu|define ()
  `(,(format "Configuration")
    :help "vterm configuration variables"
    [,(format "Change Shell Executable  -- Set vterm-shell")
     (customize-variable 'vterm-shell)
     :help "Set the shell executable used by vterm (vterm-shell)"
     ]
    [,(format "Set Scrollback Limit  -- Set vterm-max-scrollback")
     (customize-variable 'vterm-max-scrollback)
     :help "Set scrollback line limit, default 1000, max 100000 (vterm-max-scrollback)"
     ]
    [,(format "Auto-Close on Exit  -- Set vterm-kill-buffer-on-exit")
     (customize-variable 'vterm-kill-buffer-on-exit)
     :help "Toggle auto-close buffer when shell process terminates (vterm-kill-buffer-on-exit)"
     ]
    [,(format "Exclude Prompt on Copy  -- Set vterm-copy-exclude-prompt")
     (customize-variable 'vterm-copy-exclude-prompt)
     :help "Exclude the shell prompt when copying lines in copy mode (vterm-copy-exclude-prompt)"
     ]
    [,(format "Set Environment Variables  -- Set vterm-environment")
     (customize-variable 'vterm-environment)
     :help "Additional environment variables passed to the shell (vterm-environment)"
     ]
    [,(format "All vterm Options  -- Customize vterm group")
     (customize-group 'vterm)
     :help "Open the full vterm customization group"
     ]
    ))

(provide 'b:vterm::inMode:menu)
