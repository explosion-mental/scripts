# `dmenu` is not a hard dependency, but you need it unless
# you plan to set CM_LAUNCHER to another value like `rofi`
# Why make this complicated, just put them on your ~/.local/bin dir!
REQUIRED_BINS := xclip clipnotify
#PREFIX ?= /usr
#PREFIX = $HOME/.local/
PREFIX = /usr/local
install:
	install --target "${PREFIX}/bin" -D -m755 clipmenu clipmenud clipdel clipctl
	$(foreach bin,$(REQUIRED_BINS),\
    $(if $(shell command -v $(bin) 2> /dev/null),$(info Found `$(bin)`),$(error Missing Dep. Please install `$(bin)`)))
uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/clipmenu	\
		${DESTDIR}${PREFIX}/bin/clipmenud \
		${DESTDIR}${PREFIX}/bin/clipdel	\
		${DESTDIR}${PREFIX}/bin/clipctl
.PHONY: install uninstall
