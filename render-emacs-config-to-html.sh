#!/bin/sh

emacs ./topology.org --batch -Q -f org-html-export-to-html --kill

# output will be the directory uploaded to the render repository so we have to put all the resulting files inside that folder
mkdir -p dist
mv *.html dist/
