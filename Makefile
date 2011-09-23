main.pdf: main.tex makroja.tex lahteet.bib luku_abstraktit.tex luku_alkusanat.tex luku_sisalto.tex luku_liitteet.tex luku_lyhenteet.tex babelbst.tex finnbst.tex swedbst.tex englbst.tex aaltosci_t.sty aaltosci_t.bst
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm -f main.aux main.log main.bbl main.blg main.dvi main.toc tikkand-latex.zip

tikkand-latex.zip: main.pdf
	rm -f tikkand-latex.zip && zip tikkand-latex.zip 00README.txt Makefile main.tex makroja.tex lahteet.bib luku_abstraktit.tex luku_alkusanat.tex luku_sisalto.tex luku_liitteet.tex luku_lyhenteet.tex babelbst.tex finnbst.tex swedbst.tex englbst.tex aaltosci_t.sty aaltosci_t.bst indica_model.eps indica_model.pdf main.pdf
