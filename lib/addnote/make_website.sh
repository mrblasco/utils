output_dir=${1:-output}
source_dir=${2:-resources}
biblio=/Users/andrea/Papers/library.bib

# Download main files if missing
test -e $source_dir/style.css || curl -s http://pandoc.org/demo/pandoc.css -o $source_dir/style.css
test -e $source_dir/footer.html || curl -s http://pandoc.org/demo/footer.html -o $source_dir/footer.html
test -e $source_dir/CONTENT.txt || curl -s http://pandoc.org/demo/MANUAL.txt -o $source_dir/CONTENT.txt
test -e $source_dir/info.yaml || > $source_dir/info.yaml


# Compile
cd $output_dir
pandoc -s -S --filter pandoc-citeproc --bibliography doc/refs.bib --toc -c css/style.css -A lib/footer.html doc/info.yaml CONTENT.txt -o index.html
