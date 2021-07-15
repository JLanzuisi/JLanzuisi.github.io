index: head.html body.html text.html nav.html
	cat head.html nav.html body.html > index.html

body.html: text.html footer.html
	sed -e "2r text.html" clean-body > body.html
	sed -i -e '/<-FOOTER->/ {' -e 'r footer.html' -e 'd' -e '}' body.html

text.html: text.md
	pandoc text.md -o text.html

footer.html: footer.md
	pandoc footer.md -o footer.html

es-index: es-head.html es-body.html es-text.html es-nav.html
	cat es-head.html es-nav.html es-body.html > es-index.html

es-body.html: es-text.html es-text.md es-footer.html es-footer.md
	sed -e "2r es-text.html" clean-body > es-body.html
	sed -i -e '/<-FOOTER->/ {' -e 'r es-footer.html' -e 'd' -e '}' es-body.html

es-text.html: es-text.md
	pandoc es-text.md -o es-text.html

es-footer.html:
	pandoc es-footer.md -o es-footer.html

both: index es-index

.PHONY: clean

clean:
	rm text.html footer.html body.html es-text.html es-footer.html es-body.html