all: manuscript.pdf clean

install_tex:
	sudo apt-get install texlive texlive-publishers texlive-science latexmk cm-super
	
manuscript.pdf: *.tex
	latexmk -pdf -bibtex manuscript.tex

clean:
	latexmk -c && rm -f *.xdv
	
