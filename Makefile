all: manuscript.pdf clean

install_tex:
	sudo apt-get install texlive texlive-publishers texlive-science latexmk cm-super
	
manuscript.pdf: cn/*.tex
	cd cn && latexmk -pdf -bibtex manuscript.tex

clean:
	cd cn && latexmk -c && rm -f *.xdv
	
