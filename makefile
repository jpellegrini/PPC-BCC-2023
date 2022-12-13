BUILD_DIR=build
X_OPTS=
LXC=lualatex --output-directory=$(BUILD_DIR)


.PHONY: default
default: all;

build_dir:
	mkdir -p $(BUILD_DIR)

define compile_tex
	$(LXC) $(1).tex
	cp $(BUILD_DIR)/$(1).pdf .
endef

ppc: build_dir
	$(call compile_tex,ppc-bcc)




clean:
	rm *.aux *.log *.nav *.out *.snm *.toc *.vrb
