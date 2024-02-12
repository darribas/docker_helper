.PHONY: build, pdf, html

build: pdf, html

preview:
	quarto preview index.qmd --host 0.0.0.0 --port 4000

html:
	quarto render index.qmd --to html

# NOTE: this may require `quarto install tinytex`
pdf:
	quarto render index.qmd --to pdf

server:
	python3 -m http.server 4000
