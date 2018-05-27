
documents:
	@docker run --rm \
		-v $(CURDIR)/src:/documents \
		-v $(CURDIR)/docs:/docs \
		asciidoctor/docker-asciidoctor \
			asciidoctor-revealjs /documents/index.adoc -o /docs/index.html

.PHONY: documents
