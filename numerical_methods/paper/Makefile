LATEXMK = latexmk
FLAGS = -pdf -shell-escape -use-make -interaction=nonstopmode -f
TARGET = main
BUILD_DIR = ../build
FIGURES_DIR = ../figures
NOTEBOOKS_DIR = ../notebooks
NOTEBOOKS = $(wildcard $(NOTEBOOKS_DIR)/*.ipynb)
SCRIPTS = $(NOTEBOOKS:.ipynb=.py)


all: figures $(TARGET).pdf


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
	done


$(TARGET).pdf: $(TARGET).tex $(wildcard sections/*.tex) $(wildcard *.bib)
	mkdir -p ${BUILD_DIR}
	$(LATEXMK) $(FLAGS) $(TARGET).tex --outdir=$(BUILD_DIR)


clean:
	$(LATEXMK) -c
	rm -rf *.nav *.snm *.vrb *.bbl *.run.xml *.pyg $(NOTEBOOKS_DIR)/*.py $(FIGURES_DIR)/*.pdf $(BUILD_DIR)


cleanall:
	$(LATEXMK) -C
	rm -rf *.nav *.snm *.vrb *.bbl *.run.xml *.pyg $(NOTEBOOKS_DIR)/*.py $(FIGURES_DIR)/*.pdf $(BUILD_DIR)


watch:
	$(LATEXMK) -pvc $(FLAGS) $(TARGET).tex


.PHONY: all clean cleanall watch notebooks figures
