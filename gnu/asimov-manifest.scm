;; What follows is a "manifest" equivalent to the command line you gave.
;; You can store it in a file that you may then pass to any 'guix' command
;; that accepts a '--manifest' (or '-m') option.

(use-modules (guix transformations))

(define transform1
  (options->transformation
   '((without-tests . "scalapack")
     (without-tests . "pt-scotch32")
     (without-tests . "pt-scotch")
     (without-tests . "hdf5-parallel-openmpi")
     (with-input . "openmpi=openmpi@5.0.10"))))

(packages->manifest
 (list (specification->package "gcc-toolchain")
       (specification->package "gfortran-toolchain")
       (specification->package "openmpi")
       (transform1 (specification->package "petsc-openmpi"))))
