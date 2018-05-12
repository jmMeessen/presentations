
documents:
	@docker run --rm -v $(CURDIR):/documents asciidoctor/docker-asciidoctor \
		asciidoctor-revealjs /documents/index.adoc -o /documents/dist/index.html

.PHONY: documents
