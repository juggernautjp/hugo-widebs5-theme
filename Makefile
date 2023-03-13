SHELL=/usr/bin/bash
HUGO_BIN=hugo
NPM_BIN=npm

.PHONY: update verify vendor

update:
	$(HUGO_BIN) mod get -u github.com/juggernautjp/hugo-widebs5-dependencies@main
#	$(HUGO_BIN) mod get github.com/gohugoio/hugo-mod-jslibs-dist/popperjs/v2@main
#	$(HUGO_BIN) mod get github.com/twbs/bootstrap@main
# $(NPM_BIN) update

verify:
	$(NPM_BIN) outdated
	$(HUGO_BIN) mod verify
	$(HUGO_BIN) mod graph

vendor:
	rm -rf _vendor
	$(HUGO_BIN) mod vendor

clean:
	rm -rf ./public
