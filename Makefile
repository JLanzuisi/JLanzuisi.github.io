index: head.html body.html text.html
	cat head.html body.html > index.html

body.html: text.html
	sed -e "2r text.html" clean-body > body.html

text.html: text.md
	pandoc text.md -o text.html

.PHONY: clean

clean:
	rm text.html