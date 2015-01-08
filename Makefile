.SUFFIXES = .tex .bib .aux .bbl .dvi .ps .pdf

all:	octokey.pdf

octokey.pdf:	octokey.bbl
	pdflatex octokey
	pdflatex octokey

octokey.bbl:	references.bib octokey.aux
	bibtex octokey

octokey.aux:	*.tex
	pdflatex octokey

clean:
	rm -f *.{log,aux,out,bbl,blg,dvi,ps,pdf}
