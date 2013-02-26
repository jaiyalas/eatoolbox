;; ---------------------------
;; === color theme loading ===
;; ---------------------------

(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/themes/color-theme-twilight.el")
(eval-after-load "color-theme" '(color-theme-twilight))

;; ---------------------------
;; === switch for line number mode ===
;; ---------------------------

;; (if (eq window-system 'X) 
;;   ((require 'linum)
;;    (add-hook 'find-file-hook (lambda () (linum-mode 1)))
;;    (global-linum-mode 1))
;; )

;; ---------------------------
;; === fix input method to TeX ===
;; ---------------------------

(set-input-method 'TeX)

;; ---------------------------
;; === agda mode ===
;; ---------------------------
(load-file (let ((coding-system-for-read 'utf-8))
                "~/.emacs.d/agda-mode/agda2.el"))
(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))
(eval-after-load "quail/latin-ltx" '(mapc (lambda (pair) (quail-defrule (car pair) (cadr pair) "TeX"))
	'(("\\comp" "∘")
	  ("\\[[" "⟦") ("\\]]" "⟧")
	  ; If you find it awkward to write comments using the TeX input
	  ; method the following bindings may make life more bearable
	  ; for you:
          ("--" ["--"]) ("---" ["---"])
          ; Add more keybindings here.
	  ("\\/" ["\\/"]) ("/\\-" ["/\\-"]) ("\\from" ["←"]) ("\\Times" ["⨉"])
	  ("^t"  ["ᵗ"]) ("\\endpf" ["∎"]) ("\\cons" ["∷"]) ("~" ["~"])
	  ("\\langle" ["⟨"]) ("\\rangle" ["⟩"])
	  ("\\lcata" ["⦇"]) ("\\rcata" ["⦈"])
          )))

