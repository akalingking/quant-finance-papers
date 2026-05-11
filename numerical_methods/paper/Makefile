TARGET = main
LATEXMK = latexmk
FLAGS = -pdf -shell-escape -use-make -interaction=nonstopmode -f
#FLAGS = -pdf -bibtex -pdflatex="pdflatex -interaction=nonstopmode -shell-escape" -use-make


all: $(TARGET).pdf


$(TARGET).pdf: $(TARGET).tex $(wildcard sections/*.tex) $(wildcard *.bib)
	$(LATEXMK) $(FLAGS) $(TARGET).tex


clean:
	$(LATEXMK) -c
	rm -rf *.nav *.snm *.vrb *.bbl *.run.xml *.pyg


cleanall:
	$(LATEXMK) -C


watch:
	$(LATEXMK) -pvc $(FLAGS) $(TARGET).tex

.PHONY: all clean cleanall watch

