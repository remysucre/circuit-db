MKD = cdb.md
BIB = cdb.bib
OUT = index.html

$(OUT): $(MKD) $(BIB)
	pandoc -s $(MKD) -o $(OUT) --citeproc --bibliography=$(BIB)

clean:
	rm -f $(OUT)

