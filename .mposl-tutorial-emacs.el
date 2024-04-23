;; ======================================================================
;; General
;; ======================================================================

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; ======================================================================
;; Yasnippet
;; ======================================================================
;; TODO: Confirm if I want to have auto-installation?
;; (unless (package-installed-p 'yasnippet)
;;     (package-install 'yasnippet))

;; Setup path for local custom snippets
(require 'yasnippet)
(setq yas-snippet-dirs '("./.emacs.d/snippets-local"))
(yas-global-mode 1)

;; ======================================================================
;; ORG-MODE
;; ======================================================================

;; http://orgmode.org/guide/Activation.html#Activation
(global-set-key (kbd "C-c a") 'org-agenda)

;; Setup for publishing ORG files
(setq org-publish-project-alist
    '(("project"
       :base-directory "./"
       :base-extension "org"
       :publishing-directory "./public"
       :recursive t
       :publishing-function org-html-publish-to-html)))
