
documents:
	@docker run --rm \
		-v $(CURDIR)/src:/documents \
		-v $(CURDIR)/dist:/dist \
		asciidoctor/docker-asciidoctor \
			asciidoctor-revealjs /documents/index.adoc -o /dist/index.html

.PHONY: documents
