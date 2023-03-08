sources = inf-primes-topology.pdf
all: $(sources)
	@echo "done"
.PHONY: all

%.tex: %.org
	-emacs -l config.el --batch $< -f org-latex-export-to-pdf

%.pdf: %.tex
	tectonic $<

clean:
	rm -f *.log *.aux *.tex *.tex~ *.pdf *.fdb_latexmk *.fls
.PHONY: clean
