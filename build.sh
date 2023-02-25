#!/bin/sh

for VARIABLE in $(ls *.org)
do
emacs -l ./build.el ${VARIABLE} --batch -Q -f org-html-export-to-html --kill
done

# output will be the directory uploaded to the render repository so we have to put all the resulting files inside that folder
mkdir -p dist
mv *.html dist/
