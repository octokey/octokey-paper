.SUFFIXES = .tex .bib .aux .bbl .dvi .ps .pdf

all:	octokey.pdf pass15.pdf

octokey.pdf:	octokey.bbl
	pdflatex octokey
	pdflatex octokey

octokey.bbl:	references.bib octokey.aux
	bibtex octokey

octokey.aux:	*.tex
	pdflatex octokey

pass15.pdf:	pass15.bbl
	pdflatex pass15
	pdflatex pass15

pass15.bbl:	references.bib pass15.aux
	bibtex pass15

pass15.aux:	*.tex
	pdflatex pass15

clean:
	rm -f *.{log,aux,out,bbl,blg,dvi,ps,pdf}
