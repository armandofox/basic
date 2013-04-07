LATEX = pdflatex
BIBTEX = bibtex

DOC = basic

all: $(DOC).pdf

$(DOC).pdf: $(wildcard *.tex) $(wildcard */*.tex) $(wildcard figs/*) $(DOC).bib
	$(LATEX) $(DOC)
	$(BIBTEX) $(DOC)
	$(LATEX) $(DOC)
	$(LATEX) $(DOC)

