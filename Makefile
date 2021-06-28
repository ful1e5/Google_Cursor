all: clean render build

clean:
	@rm -rf bitmaps themes
	
render: bitmapper svg
	@cd bitmapper && $(MAKE)

build: bitmaps
	@cd builder && make build

.PHONY: all


unix: clean render bitmaps
	@cd builder && make build_unix

windows: clean render bitmaps
	@cd builder && make build_windows


# Installation
.ONESHELL:
SHELL:=/bin/bash

src = ./themes/GoogleDot-*
local := ~/.icons
local_dest := $(local)/GoogleDot-*

root := /usr/share/icons
root_dest := $(root)/GoogleDot-*

install: themes
	@if [[ $EUID -ne 0 ]]; then
		@echo "> Installing 'GoogleDot' cursors inside $(local)/..."
		@mkdir -p $(local)
		@cp -r $(src) $(local)/ && echo "> Installed!"
	@else
		@echo "> Installing 'GoogleDot' cursors inside $(root)/..."
		@mkdir -p $(root)
		@sudo cp -r $(src) $(root)/ && echo "> Installed!"
	@fi

uninstall:
	@if [[ $EUID -ne 0 ]]; then
		@echo "> Removing 'GoogleDot' cursors from '$(local)'..."
		@rm -rf $(local_dest)
	@else
		@echo "> Removing 'GoogleDot' cursors from '$(root)'..."
		@sudo rm -rf $(root_dest)
	@fi

reinstall: uninstall install
