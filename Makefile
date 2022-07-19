build:	presentation.md style.css
	pandoc presentation.md -o presentation.html -t revealjs -s --css style.css --slide-level=1
