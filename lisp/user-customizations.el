
;(require 'org) 
;(define-key global-map "\C-cl" 'org-store-link)
;(define-key global-map "\C-ca" 'org-agenda)
;(setq org-log-done t)

;(setq org-agenda-files (list "~/org/agenda.org"))

;(when (not package-archive-contents)
;  (package-refresh-contents))

;(require-package 'rainbow-delimiters)

;; (menu-bar-mode)
;(org-indent-mode)
;; (ido-mode)



;; (require 'framemove)
;; (framemove-default-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emmet mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'js-mode-hook  'emmet-mode)
(setq emmet-expand-jsx-className? t) ;; expand jxs 'className'

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; elscreen
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq elscreen-prefix-key "\C-t")

(elscreen-start)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; undo tree mode                                                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;turn on everywhere
(global-undo-tree-mode 1)
;; make ctrl-z undo
(global-set-key (kbd "C-z") 'undo)
;; make ctrl-Z redo
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-S-z") 'redo)


(global-set-key (kbd "C-o") 'other-frame)
;(global-set-key (kbd "C-i") 'other-window)
;(global-set-key (kbd "C-9") 'previous-multiframe-window)

;(require 'powerline)
;(require 'airline-themes)
;(load-theme 'airline-badwolf-theme)
;(powerline-vim-theme)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; helm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load "/Users/or/.emacs.d/elpa/helm-20160409.357/helm-config.el")
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
;; ;; ; (global-set-key (kbd "C-c f") 'helm-recentf)
(global-set-key (kbd "C-x r i") 'helm-register)
;(global-set-key (kbd "M-tab") 'helm-lisp-completion-at-point)
(global-set-key (kbd "M-s o") 'helm-occur)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)

(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)

;;(global-set-key (kbd "C-x i") 'helm-semantic-or-imenu)
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)

(setq helm-locate-fuzzy-match t)
(setq helm-apropos-fuzzy-match t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; this Emacs is Powered by `HELM' using
;; emacs program "emacs".
;; This is a minimal `helm' configuration to discover `helm' or debug it.
;; You can retrieve this minimal configuration in "/tmp/helm-cfg.el"
;; Some originals emacs commands have been replaced by own `helm' commands:

;; - `find-file'(C-x C-f)            =>`helm-find-files'
;; - `occur'(M-s o)                  =>`helm-occur'
;; - `list-buffers'(C-x C-b)         =>`helm-buffers-list'
;; - `completion-at-point'(M-tab)    =>`helm-lisp-completion-at-point'[1]
;; - `dabbrev-expand'(M-/)           =>`helm-dabbrev'

;; - `execute-extended-command'(M-x) =>`helm-M-x'


;; Some others native emacs commands are "helmized" by `helm-mode'.
;; [1] Coming with emacs-24.4 `completion-at-point' is "helmized" by `helm-mode'
;; which provide helm completion in many other places like `shell-mode'.
;; You will find embeded help for most helm commands with `C-h m'.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; cider
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq cider-repl-display-help-banner nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;; SLIME ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inferior-lisp-program "/USERS/or/LISP/cmucl/bin/lisp")
(setq slime-contribs '(slime-fancy))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; workgroups
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'workgroups2)
(workgroups-mode 1)
(setq wg-prefix-key (kbd "C-c z"))
;;(setq wg-session-file "~/.emacs.d/.emacs_workgroups")
;; (global-set-key (kbd "<pause>")     'wg-reload-session)
;; (global-set-key (kbd "C-S-<pause>") 'wg-save-session)
;; (global-set-key (kbd "s-z")         'wg-switch-to-workgroup)
;; (global-set-key (kbd "s-/")         'wg-switch-to-previous-workgroup)

(setq wg-emacs-exit-save-behavior           'save)      ; Options: 'save 'ask nil
(setq wg-workgroups-mode-exit-save-behavior 'save)      ; Options: 'save 'ask nil

;; Mode Line changes
;; Display workgroups in Mode Line?
(setq wg-mode-line-display-on t)          ; Default: (not (featurep 'powerline))
(setq wg-flag-modified t)                 ; Display modified flags as well
(setq wg-mode-line-decor-left-brace "["
      wg-mode-line-decor-right-brace "]"  ; how to surround it
            wg-mode-line-decor-divider ":")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
; (load-theme 'cyberpunk t)

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'monokai t)

;(load "~/.emacs.d/themes/color-theme-molokai.el")
                                        ;(color-theme-molokai)
;;-------------- latex ---------------
;; (load "auctex.el" nil t t)
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeX-master nil)
;; (add-hook 'LaTeX-mode-hook 'visual-line-mode)
;; ;(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;;     (setq reftex-plug-into-AUCTeX t)
;; (load "preview.el" nil t t)

;; smooth scrolling
(setq scroll-step            1
      scroll-conservatively  10000)

;This is the custom emacs config for user hellofunk, which adds features not included in the example-config from clojure-emacs.
;info: https://github.com/hellofunk/example-config

;anything you see below that uses require-package is downloaded automatically from Melpa and requires no manual installation of any .el files

;----------------------------------------------------------------------------

;turn off emacs alarms (those annoying beeps)
(setq ring-bell-function 'ignore)

;expand-region functionality is really great for lisp/clojure editing
;from https://github.com/magnars/expand-region.el
(require-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;sets the auto-save directory to be other than project directories, so you aren't inundated with tons of backup files
(setq backup-directory-alist `(("." . "~/.saves")))

;winner mode
;from: http://www.emacswiki.org/emacs/WinnerMode
(when (fboundp 'winner-mode)
  (winner-mode 1))

;(require-package 'refactor-nrepl)

;adds color matching for open and closed parenthesis
;from https://github.com/Fanael/rainbow-delimiters
(require-package 'rainbow-delimiters)
;turns on this for default with clojure files
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

;be kind to your eyes, solarize! hey, that rhymes!
;from https://github.com/bbatsov/solarized-emacs

;;;;;;;;------ SOLARIZED -----------------

(require-package 'solarized-theme)
;; (require 'solarized-light-theme)
;; (provide 'solarized-theme)
;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)

;; Don't change the font for some headings and titles
(setq solarized-use-variable-pitch nil)

;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)

;; Use less bolding
(setq solarized-use-less-bold t)

;; Use more italics
(setq solarized-use-more-italic t)

;; Use less colors for indicators such as git:gutter, flycheck and similar
(setq solarized-emphasize-indicators nil)

;; Don't change size of org-mode headlines (but keep other size-changes)
(setq solarized-scale-org-headlines nil)

;; Avoid all font-size changes
(setq solarized-height-minus-1 1)
(setq solarized-height-plus-1 1)
(setq solarized-height-plus-2 1)
(setq solarized-height-plus-3 1)
(setq solarized-height-plus-4 1)

;;;---------------------------------------------

;(require-package 'monokai-theme)
;(require 'monokai-theme)
;(provide 'monokai-theme)

;use ido-mode, a must-have for quick emacs navigation
;from http://emacswiki.org/emacs/InteractivelyDoThings
;more about it: http://www.masteringemacs.org/article/introduction-to-ido-mode
(require 'ido)
(ido-mode t)

;smex brings the power of ido mode to your M-x mini-buffer, another way to supercharge your emacs navigation
;from https://github.com/nonsequitur/smex
;; (require-package 'smex)
;; (smex-initialize)
;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)

; because M-S-6 is awkward
(global-set-key (kbd "C-c q") 'join-line)

;use I-Buffer
;(global-set-key (kbd "C-x C-b") 'ibuffer)

;shortcut to launch a shell
(global-set-key (kbd "C-x C-m") 'shell)

;useful little tweak. press C-space once to start a mark, then C-space to end a mark. If you do this in succession, it will simply mark a particular point in a file. Then use C-u and repeat C-space to move back through your saved points.
(setq set-mark-command-repeat-pop t)

;turn off the emacs toolbar; we're coders, after all. when do we use a mouse?
(tool-bar-mode -1)

;turn off the scroll bars
;; (scroll-bar-mode -1)

;turn off the cursor blinking -- personally i find it distracting
(blink-cursor-mode 10)

;turn off text wrapping in the middle of a word
(global-visual-line-mode 1)

;set font size on startup
;my eyes are kinda bad so i prefer a larger font size
(set-face-attribute 'default nil :height 140)

;; Font size
(define-key global-map (kbd "C-c C-=") 'text-scale-increase)
(define-key global-map (kbd "C-c C--") 'text-scale-decrease)

;use shift + arrow keys to jump between windows
(windmove-default-keybindings)

;;these are simple keybindings i've always like to quickly make an emacs window taller, shorter, narrower or wider, without using the mouse
(defalias 'hellofunk/windowtaller  (read-kbd-macro "C-u 2 C-x ^"))
(global-set-key (kbd "C-q") 'hellofunk/windowtaller)
(defalias 'hellofunk/windowshorter (read-kbd-macro "C-u - 2 C-x ^"))
(global-set-key (kbd "C-z") 'hellofunk/windowshorter)
(defalias 'hellofunk/windowwider (read-kbd-macro "C-u - 2 C-x }"))
(global-set-key (kbd "C-\\") 'hellofunk/windowwider)
(defalias 'hellofunk/windownarrower (read-kbd-macro "C-u - 2 C-x {"))
(global-set-key (kbd "C-]") 'hellofunk/windownarrower)

;;ORG MODE\
;;org mode is a great emacs feature for organization notes, outlines, and more. plenty of docs online about it
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(defadvice list-buffers-noselect (before list-buffers-noselect-limit-to-those-for-emacsclient activate)
  "When the current buffer is a being viewed by an emacclient, restrict the buffers to those associated with the emacsclient"
  (when (and (null (ad-get-arg 1)) server-buffer-clients)
    (let ((blist (delete-dups (reduce 'append
                                      (mapcar (lambda (proc) (process-get proc 'buffers))
                                              server-buffer-clients)))))
            (ad-set-arg 1 blist))))




;; (require 'erc)
;; ;erc configurations, for using irc. if using this, change the username from to whatever you use
;; (setq erc-nick "olleromo")
;; ;http://www.emacswiki.org/emacs/ErcLogging
;; ;choose any directory on your computer for placing log files
;; ;be mindful that some channels to do not promote irc logging, therefore don't post logs publicly without some knowledge about the manners of a channel
;; (setq erc-log-channels-directory "~/irc-saves/")
;; (setq erc-save-buffer-on-part t
;;       erc-save-queries-on-quit t
;;       erc-log-write-after-send t
;;       erc-log-mode t
;;       erc-autojoin-mode t
;;       erc-log-write-after-insert t
;;       erc-log-file-coding-system 'utf-8)
;; (setq erc-log-insert-log-on-open nil)
;; ;choose your desired channels to automatically join here; anything can be added after the "#freenode.net" element
;; (setq erc-autojoin-channels-alist '(("freenode.net"  "#emacs")))
;; ;hides annoying irc messages unrelated to actual chats
;; (setq erc-hide-list (quote ("JOIN" "PART" "QUIT" "NICK" "AWAY")))
;; (setq erc-modules (quote (autojoin button completion fill irccontrols list log match menu move-to-prompt netsplit networks noncommands readonly ring stamp track)))
;; (defun erc-columns ()
;;   (erc-fill-disable))
;; (add-hook 'erc-mode-hook 'erc-columns )

;adds a custom directory where some .el scripts are placed used in this config file. Note that if you have .el scripts that exist on Melpa, you don't need this directory. But I have an undo-tree script (configured below) not on Melpa, so this is how you do it:
;(add-to-list 'load-path (concat user-emacs-directory "hellofunk-config"))

;undo-tree
;from http://www.emacswiki.org/emacs/UndoTree
;script must exist in the hellofunk-config directory before proceeding (see above paragraph)
;(require 'undo-tree)
;(global-undo-tree-mode)

;see: http://www.emacswiki.org/emacs/EmacsForMacOS#toc26
(when (eq system-type 'darwin) ;; mac specific settings
  ;(setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'control)
  ;(global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
)
(load "~/.emacs.d/orginit.el")
(provide 'user-customizations)

