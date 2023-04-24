BUILD_DIR=build
X_OPTS=
LXC=lualatex --output-directory=$(BUILD_DIR)


.PHONY: default
default: all;

build_dir:
	mkdir -p $(BUILD_DIR)

define compile_full_tex
	$(LXC) $(1).tex
	biber --output-directory build $(1) 
	$(LXC) $(1).tex
	$(LXC) $(1).tex
	cp $(BUILD_DIR)/$(1).pdf .
endef

define compile_tex
	$(LXC) $(1).tex
	$(LXC) $(1).tex
	cp $(BUILD_DIR)/$(1).pdf .
endef

ppc: build_dir
	$(call compile_full_tex,ppc-bcc)

transicao: build_dir
	$(call compile_tex,regras-transicao)

ol: build_dir
	$(call compile_tex,ol)


clean:
	rm *.aux *.log *.nav *.out *.snm *.toc *.vrb
