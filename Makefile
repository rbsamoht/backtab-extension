.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: package
package: ## Package the extension
	zip -r -FS ../backtab-extension.zip * --exclude '*.git*' --exclude 'Makefile' --exclude 'README.adoc'
