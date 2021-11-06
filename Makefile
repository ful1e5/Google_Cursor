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

# generates binaries
BIN_DIR = ../bin
THEMES = Blue Black White
prepare: bitmaps themes
	@rm -rf bin && mkdir bin
	@cd bitmaps && zip -r $(BIN_DIR)/bitmaps.zip * && cd ..
	@cd themes
	@$(foreach theme,$(THEMES), tar -czvf $(BIN_DIR)/GoogleDot-$(theme).tar.gz GoogleDot-$(theme);)
	@$(foreach theme,$(THEMES), zip -r $(BIN_DIR)/GoogleDot-$(theme)-Windows.zip GoogleDot-$(theme)-Windows;)
	@cd ..
