FMT = fmt.yml
MKD = README.md
BIB = cdb.bib
OUT = index.html

$(OUT): $(FMT) $(MKD) $(BIB)
	pandoc -s $(FMT) $(MKD) -o $(OUT) --citeproc --csl=acm.csl --bibliography=$(BIB)

clean:
	rm -f $(OUT)

