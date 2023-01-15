SHELL=/usr/bin/bash
HUGO_BIN=hugo

.PHONY: lint

lint:
	stylelint \"**/*.{css,scss}\" --cache --cache-location .cache/.stylelintcache --rd

