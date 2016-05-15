# Makefile

#SHELL=/bin/bash -O globstar

PDFIMG = $(patsubst %.svg, %.pdf, $(wildcard images/*/*.svg))


# convertion svg vers pdf
%.pdf: %.svg
	@inkscape -D -A $@ $<
	@sed -i "\/Group <</,+5d" $@


.PHONY: svg clean

clean:
	rm $(PDFIMG)

svg: $(PDFIMG)


#@for file in **/*.svg ; do \
#	inkscape -D -A "$${file%.*}.pdf" "$$file" ;
#done

