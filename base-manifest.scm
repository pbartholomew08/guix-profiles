;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(specifications->manifest (list	"font-hack"
				"fontconfig"
				"emacs-evil"
				"emacs-paredit"
				"emacs-org-roam"
				"emacs-org-pomodoro"
				"emacs-org-superstar" ; New replacement for "emacs-org-bullets"
				"emacs-company-auctex"
				"emacs-flycheck"
				"emacs-company"
				"emacs-rainbow-delimiters"
				"emacs-spacemacs-theme"
				"emacs-guix"
				"emacs"
				"zstd" ; Required for man pages
				"git"))
