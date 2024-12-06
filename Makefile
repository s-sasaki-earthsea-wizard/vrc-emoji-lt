.PHONY: pdf help

.DEFAULT_GOAL := help

pdf:  # Create a PDF of the slides
	decktape --size 1436x674 index.html slides.pdf

help:  # Show this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@egrep "^(.+)\:\s+#\s(.+)" ${MAKEFILE_LIST} | column -t -c 2 -s '#' | sed 's/^/  /'