
all: documents verify

documents:
	@docker run --rm \
		-v $(CURDIR)/src:/documents \
		-v $(CURDIR)/dist:/dist \
		asciidoctor/docker-asciidoctor \
			asciidoctor-revealjs /documents/index.adoc -o /dist/index.html

verify: verify-links verify-w3c

verify-links:
	@docker run --rm \
		-v $(CURDIR)/dist:/dist \
		18fgsa/html-proofer \
			--check-html \
			--http-status-ignore "999" \
			--url-ignore "/localhost:/,/127.0.0.1:/" \
        /dist/index.html

verify-w3c:
	@docker run --rm -v $(CURDIR)/dist:/app stratdat/html5validator

.PHONY: all documents verify verify-links verify-w3c
