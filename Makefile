MKD = README.md
BIB = cdb.bib
OUT = index.html

$(OUT): $(MKD) $(BIB)
	pandoc -s $(MKD) -o $(OUT) --citeproc --csl=acm.csl --bibliography=$(BIB)

clean:
	rm -f $(OUT)

