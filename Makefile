build:	presentation.md style.css
	pandoc presentation.md -o presentation.html -t revealjs -s --css style.css --slide-level=2 -V theme:sky
backupbuild:	presentation.md
	pandoc presentation.md -o presentation.pdf -t beamer --slide-level=2 -V aspectratio:169
