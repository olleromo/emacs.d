(TeX-add-style-hook
 "circ"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper" "twocolumn")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "german") ("fontenc" "T1") ("inputenc" "latin1") ("preview" "showlabels" "sections" "floats" "textmath" "displaymath")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "babel"
    "fontenc"
    "inputenc"
    "preview")
   (TeX-add-symbols
    "tdim"
    "fives"
    "ones"
    "x"
    "y"
    "d"
    "dx"
    "dy"
    "q"
    "r")
   (LaTeX-add-labels
    "lgi"
    "lgii"
    "linalg"
    "linc"
    "linpict"
    "ggg"
    "hhh"
    "alg"
    "prog"
    "zeich"
    "phyp"
    "halg"
    "hzeich")
   (LaTeX-add-environments
    "fframe")
   (LaTeX-add-saveboxes
    "raster"))
 :latex)

