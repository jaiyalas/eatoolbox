;; ----------------------
;; === load agda mode ===
;; ----------------------

(load-file (let ((coding-system-for-read 'utf-8))
  (shell-command-to-string "agda-mode locate")))

;; -----------------------------------------------
;; = Setup include-dirs for agda lib.
;; -----------------------------------------------

(custom-set-variables
  '(agda2-include-dirs (quote (
    "." 
    "/Users/jaiyalas/agdaLib/lib-0.7/src"
    "/Users/jaiyalas/agdaLib/LightweightFreeTheorems"
    "/Users/jaiyalas/agdaLib/AoPA"
    ))))

;; -----------------------------------------------
;; = In some unknown case, the emacs is unable to 
;; = execute agda. To prevent such situation from
;; = happening, I manually extend the exec-path.
;; -----------------------------------------------

(setq exec-path (cons "/Users/jaiyalas/.cabal/bin" exec-path))

;; ------------------------------------------
;; = Thanks for Josh Ko, I added additional 
;; = keybinding for agda as follows.
;; ------------------------------------------

(eval-after-load "quail/latin-ltx" 
  '(mapc (lambda (pair) (quail-defrule (car pair) (cadr pair) "TeX"))
  '(
    ; If you find it awkward to write comments using the TeX input
    ; method the following bindings may make life more bearable
    ; for you:
    ("--" ["--"]) ("---" ["---"])
    ("\\/" ["\\/"]) 
    ("/\\-" ["/\\-"]) 
    ("~" ["~"])
    ("^t"  ["ᵗ"]) 
  )))

(eval-after-load "agda2-mode" 
  '(agda-input-add-translations 
  '(; Add more keybindings here.
    ("Tl"     . "𝒯")
    ("El"     . "ℰ")
    ("Cl"     . "𝒞")
    ("from"   . "←") 
    ("Times"  . "⨉")
    ("endpf"  . "∎") 
    ("cons"   . "∷") 
    ("comp"   . "∘")
    ("langle" . "⟨") ("rangle"  . "⟩")
    ("lcata"  . "⦇") ("rcata"   . "⦈")
    ("[["     . "⟦") ("]]"      . "⟧")
  )))

;; -------------------------------------------------
;; = Since I use twilight as my color theme,
;; = the agda-highlight-face should be re-design
;; -------------------------------------------------

(custom-set-faces
  ;; ----------------------------------
  ;; = (A) Reset the color of COMMENTS
  ;; ----------------------------------
  '(font-lock-comment-face ((t (:foreground "LightPink2"))))
  ;; ------------------------------------------------------
  ;; = (B) Reset the lighlight-face which is used for GOAL
  ;; ------------------------------------------------------
  '(highlight 
    ((((class color) (min-colors 88) (background dark))
     :background "light sky blue" :foreground "black")))
  ;; ------------------------------------------
  ;; = (C) Reset the color for agda-highlight
  ;; ------------------------------------------
  '(agda2-highlight-datatype-face       ((t (:foreground "beige"))))
  '(agda2-highlight-function-face       ((t (:foreground "beige"))))
  '(agda2-highlight-primitive-face      ((t (:foreground "beige"))))
  '(agda2-highlight-primitive-type-face ((t (:foreground "beige"))))
  '(agda2-highlight-record-face         ((t (:foreground "beige"))))
  '(agda2-highlight-postulate-face      ((t (:foreground "beige"))))
  '(agda2-highlight-module-face         ((t (:foreground "violet"))))
  '(agda2-highlight-number-face         ((t (:foreground "violet"))))
  '(agda2-highlight-keyword-face        ((t (:foreground "orange1"))))
  '(agda2-highlight-inductive-constructor-face 
    ((t (:foreground "lime green"))))
  '(agda2-highlight-symbol-face 
    ((((background light))
     (:foreground "gray25"))
    (((background dark))
     (:foreground "salmon1"))))
)

;; +++++ all available agda-faces +++++
; agda2-highlight-keyword-face
; agda2-highlight-string-face
; agda2-highlight-number-face
; agda2-highlight-symbol-face
; agda2-highlight-primitive-type-face
; agda2-highlight-bound-variable-face
; agda2-highlight-inductive-constructor-face
; agda2-highlight-coinductive-constructor-face
; agda2-highlight-datatype-face
; agda2-highlight-field-face
; agda2-highlight-function-face
; agda2-highlight-module-face
; agda2-highlight-postulate-face
; agda2-highlight-primitive-face
; agda2-highlight-record-face
; agda2-highlight-dotted-face
; agda2-highlight-operator-face
; agda2-highlight-error-face
; agda2-highlight-unsolved-meta-face
; agda2-highlight-unsolved-constraint-face
; agda2-highlight-termination-problem-face
; agda2-highlight-incomplete-pattern-face
; agda2-highlight-typechecks-face
;; +++++ color references +++++
; http://raebear.net/comp/emacscolors.html

