#!/bin/bash
#generate pdf
julia logo_generator.jl
pdflatex QuantumWalks_logo.tex

#generate png and ico
convert -density 600 -background white -alpha remove -resize 500x500 -extent 500x500 -gravity center QuantumWalks_logo.pdf QuantumWalks_logo.png
convert -density 600 -background white -alpha remove -resize 256x256 QuantumWalks_logo.pdf QuantumWalks_logo.ico

#clean 
rubber -df --clean QuantumWalks_logo
rm julia-generated.tex
