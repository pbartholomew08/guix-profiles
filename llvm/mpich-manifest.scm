;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

;; This manifest was developed with assistance from ELM/Claude Sonnet 4.6 to
;; explain how to write the transform

(use-modules (guix transformations)
	     (gnu packages mpi))

(define transform
  (options->transformation
    '((with-c-toolchain . "mpich=clang-toolchain"))))

(packages->manifest
  (list (transform (specification->package "mpich"))))
