#!/usr/bin/make
GEN_DIR := compiled

all: $(GEN_DIR)/DeleteFolder $(GEN_DIR)/ScriptCommunicator $(GEN_DIR)/ScriptEditor
	echo Binary files must be here

install:
	install -m 0755 -d $(DESTDIR)/usr/bin
	cp $(GEN_DIR)/DeleteFolder $(GEN_DIR)/ScriptCommunicator $(GEN_DIR)/ScriptEditor $(DESTDIR)/usr/bin
	install -m 0755 -d $(DESTDIR)/usr/share/doc/scriptcommunicator
	cp $(GEN_DIR)/Manual_ScriptCommunicator.pdf $(DESTDIR)/usr/share/doc/scriptcommunicator/
	install -m 0755 -d $(DESTDIR)/usr/share/scriptcommunicator
	cp -r $(GEN_DIR)/apiFiles $(GEN_DIR)/exampleScripts $(GEN_DIR)/templates $(DESTDIR)/usr/share/scriptcommunicator/
	rm -r $(DESTDIR)/usr/share/scriptcommunicator/exampleScripts/WorkerScripts/LoadLibrary
