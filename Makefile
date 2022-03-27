PUBLISH_CLI_PATH := ./.build/release/publish-cli

.PHONY: setup
setup:
	$(MAKE) build-cli-tool

.PHONY: build-cli-tool
build-cli-tool:
	swift build -c release --product publish-cli

.PHONY: help
help:
	${PUBLISH_CLI_PATH} help

.PHONY: run
run:
	${PUBLISH_CLI_PATH} run

.PHONY: generate
generate:
	${PUBLISH_CLI_PATH} generate

