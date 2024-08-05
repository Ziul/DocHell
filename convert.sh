#!/bin/sh
# pandoc-citeproc

pandoc --read=markdown --write=latex --output=report.tex --template ./ieee.latex main.md --listings --biblatex --csl abnt.csl -V lang=pt
pandoc --read=markdown --write=epub --output=report.epub main.md
latexmk -xelatex *.tex