# Makefile

#SHELL=/bin/bash -O globstar

# Latex auxiliary files (note: aux is not present due to cross-reference)
CLEANEXT=*.fls *.idx *.ind *.ilg *.lof *.lot *.toc *.out *.log *.bcf *.blg *.bbl *-blx.bib *.run.xml *.thm *.synctex.gz *.fdb_latexmk

PDFIMG = $(patsubst %.svg,%.pdf, $(wildcard images/*/*.svg))
PDFDOC = amhe_manuel.pdf amhe_ateliers.pdf

# convert svg to pdf
%.pdf: %.svg
	@inkscape -D -A $@ $<
	@sed -i "\/Group <</,+5d" $@

%.pdf: %.tex $(PDFIMG)
	latexmk -pdf $<
	rm -f $(CLEANEXT)


.PHONY: clean cleandoc cleanall images build

build: cleandoc $(PDFDOC)

clean:
	#latexmk -c
	rm -f $(CLEANEXT) *.aux

cleandoc:
	rm -f $(PDFDOC)

cleanall: clean cleandoc
	rm -f $(PDFIMG)

images: $(PDFIMG)

#@for file in **/*.svg ; do \
#	inkscape -D -A "$${file%.*}.pdf" "$$file" ;
#done

