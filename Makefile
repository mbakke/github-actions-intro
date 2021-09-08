%.html: %.org Makefile manifest.scm
	emacs \
	--no-init-file \
	--batch \
	--eval="(require 'org)" \
	--eval="(require 'ox-reveal)" \
	--find-file="${<F}" \
	--funcall="org-reveal-export-to-html"

html: slides.html

browse: slides.html
	xdg-open $<
