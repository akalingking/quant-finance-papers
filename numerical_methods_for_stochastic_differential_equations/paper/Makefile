# Variables
FILENAME = main
LATEXMK = latexmk
#OUTDIR = ../../dist
#FLAGS = -pdf -interaction=nonstopmode
FLAGS = -pdf -shell-escape -use-make -interaction=nonstopmode -f
#FLAGS = -pdf -bibtex -pdflatex="pdflatex -interaction=nonstopmode -shell-escape" -use-make


# Targets
all: $(FILENAME).pdf


# Generic rule to build PDF from .tex using latexmk
$(FILENAME).pdf: $(FILENAME).tex $(wildcard sections/*.tex) $(wildcard *.bib)
	$(LATEXMK) $(FLAGS) $(FILENAME).tex


# Clean up intermediate files
clean:
	$(LATEXMK) -c
	rm -rf *.nav *.snm *.vrb *.bbl *.run.xml *.pyg


cleanall:
	$(LATEXMK) -C


# Recompile automatically when files change
watch:
	$(LATEXMK) -pvc $(FLAGS) $(FILENAME).tex

.PHONY: all clean distclean watch
