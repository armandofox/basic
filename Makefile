LATEX = pdflatex
BIBTEX = bibtex

DOC = basic

all: $(DOC).pdf

force: all
	rm $(DOC).pdf
.DELETE_ON_ERROR: $(DOC).pdf
.PHONY: force all

$(DOC).pdf: $(wildcard *.tex) $(wildcard */*.tex) $(wildcard figs/*) $(DOC).bib
	$(LATEX) $(DOC)
	$(BIBTEX) $(DOC)
	$(LATEX) $(DOC)
	$(LATEX) $(DOC)

