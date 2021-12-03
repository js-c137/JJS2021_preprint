all: manuscript.pdf clean

install_tex:
	sudo apt-get install texlive texlive-publishers texlive-science latexmk cm-super
	
manuscript.pdf: cn/*.tex
	cd manuscript && latexmk -pdf -bibtex manuscript.tex

clean:
	cd manuscript && latexmk -c && rm -f *.xdv
	
