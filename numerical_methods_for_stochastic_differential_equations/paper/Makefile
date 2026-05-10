# Variables
FILENAME = main
LATEXMK = latexmk
#OUTDIR = ../../dist
FLAGS = -pdf -interaction=nonstopmode

# Targets
all: $(FILENAME).pdf

# Generic rule to build PDF from .tex using latexmk
$(FILENAME).pdf: $(FILENAME).tex
	$(LATEXMK) $(FLAGS) $(FILENAME).tex

# Clean up intermediate files
clean:
	$(LATEXMK) -C

# Recompile automatically when files change
watch:
	$(LATEXMK) -pvc $(FLAGS) $(FILENAME).tex

.PHONY: all clean watch
