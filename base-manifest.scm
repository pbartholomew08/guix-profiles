;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(specifications->manifest (list	"gmsh"
                                "texlive-preprint"
                                "texlive-capt-of"
                                "texlive-ulem"
                                "texlive-wrapfig"
                                "texlive-latexmk"
				"texlive-scheme-basic"
				"texlive-collection-latexrecommended" 
				"texlive-collection-fontsrecommended"
				"cmakelang"
			        "cmake"
				"unzip"
				"font-hack"
				"fontconfig"
				"emacs-vterm"
				"emacs-lsp-mode"
				"emacs-dash" ; Required for ECA
				"emacs-org-roam"
				"emacs-org-pomodoro"
				"emacs-org-superstar" ; New replacement for "emacs-org-bullets"
				"emacs-flycheck"
				"emacs-company-auctex"
				"emacs-company"
				"emacs-rainbow-delimiters"
				"emacs-spacemacs-theme"
				"emacs-guix"
				"emacs-evil"
				"emacs-paredit"
				"emacs-magit"
				"emacs"
				"neovim"
				"zstd" ; Required for man pages
				"nss-certs" ; Required for https, e.g. git
				"git"))
