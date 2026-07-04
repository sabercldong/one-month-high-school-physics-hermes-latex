#!/usr/bin/env bash
set -e
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
mkdir -p output/screen
cp main.pdf output/screen/一个月打通高中物理-screen.pdf
