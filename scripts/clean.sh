#!/usr/bin/env bash
latexmk -C || true
rm -f *.aux *.log *.out *.toc *.xdv *.fls *.fdb_latexmk *.synctex.gz
