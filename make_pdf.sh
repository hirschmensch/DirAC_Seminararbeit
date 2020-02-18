# script to generate the pdf document from latex
# There were a lot of cryptic latex errors, doing this in a Makefile

opt="-interaction=batchmode"

latex $opt seminararbeit.tex > /dev/null 2>&1 # generate .aux file
bibtex seminararbeit.aux # generate .bbl file
latex $opt seminararbeit.tex > /dev/null 2>&1 # include the .bbl file, but however old errors will occur

echo
echo
echo "pdf:"
echo
pdflatex seminararbeit.tex # generate pdf
