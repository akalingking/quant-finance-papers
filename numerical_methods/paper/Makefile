TARGET = main
LATEXMK = latexmk
FLAGS = -pdf -shell-escape -use-make -interaction=nonstopmode -f
FIGURES_DIR = ../figures
NOTEBOOKS_DIR = ../notebooks
NOTEBOOKS = $(wildcard $(NOTEBOOKS_DIR)/*.ipynb)
SCRIPTS = $(NOTEBOOKS:.ipynb=.py)


all: figures $(TARGET).pdf


test:
	echo "test"
	$(foreach f, $(NOTEBOOKS), echo "test $(f)";)


notebooks:
	@echo "Running conversion of notebooks..."
	@for f in $(NOTEBOOKS); do \
		echo "Converting $$f to python scripts"; \
		jupyter nbconvert --to python $$f --output-dir=$(NOTEBOOKS_DIR) || exit 1; \
	done


figures: notebooks
	@echo "Running python scripts";
	mkdir -p $(FIGURES_DIR)
	@for f in $(SCRIPTS); do \
		echo "Running figures for $$f"; \
		python $$f || exit 1; \
	done;


$(TARGET).pdf: $(TARGET).tex $(wildcard sections/*.tex) $(wildcard *.bib)
	$(LATEXMK) $(FLAGS) $(TARGET).tex


clean:
	$(LATEXMK) -c
	rm -rf *.nav *.snm *.vrb *.bbl *.run.xml *.pyg $(NOTEBOOKS_DIR)/*.py $(FIGURES_DIR)/*.pdf


cleanall:
	$(LATEXMK) -C
	rm -rf *.nav *.snm *.vrb *.bbl *.run.xml *.pyg $(NOTEBOOKS_DIR)/*.py $(FIGURES_DIR)/*.pdf


watch:
	$(LATEXMK) -pvc $(FLAGS) $(TARGET).tex


.PHONY: all clean cleanall watch notebooks figures test
