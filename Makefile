all: cv_en.pdf cv_cn.pdf manuscript.pdf clean

install_tex:
	sudo apt-get install texlive texlive-publishers texlive-science latexmk cm-super
	
manuscript.pdf: *.tex
	latexmk -pdf -bibtex manuscript.tex

cv_en.pdf: en/*.tex
	cd en && latexmk -xelatex cv.tex

cv_cn.pdf: cn/*.tex
	cd cn && latexmk -xelatex cv.tex

clean:
	latexmk -c && rm -f *.xdv
	cd en && latexmk -c && rm -f *.xdv
	cd cn && latexmk -c && rm -f *.xdv
