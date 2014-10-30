.SUFFIXES = .tex .bib .aux .bbl .dvi .ps .pdf

all:	octokey.pdf talk-proposal.pdf

octokey.pdf:	octokey.bbl
	pdflatex octokey
	pdflatex octokey

octokey.bbl:	references.bib octokey.aux
	bibtex octokey

octokey.aux:	*.tex
	pdflatex octokey

talk-proposal.pdf:	talk-proposal.bbl
	pdflatex talk-proposal
	pdflatex talk-proposal

talk-proposal.bbl:	references.bib talk-proposal.aux
	bibtex talk-proposal

talk-proposal.aux:	*.tex
	pdflatex talk-proposal

clean:
	rm -f *.{log,aux,out,bbl,blg,dvi,ps,pdf}
