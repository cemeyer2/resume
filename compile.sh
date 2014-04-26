#!/bin/bash
rm *.blg *.aux *.bbl *.bcf *.log *.out *.xml *busy* &> /dev/null
xelatex cv_10 && biber cv_10 && xelatex cv_10 && xelatex cv_10 && biber cv_10 && xelatex cv_10
rm *.blg *.aux *.bbl *.bcf *.log *.out *.xml *busy* &> /dev/null
cp cv_10.pdf resume.pdf
cp resume.pdf cem_resume.pdf
