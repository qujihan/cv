file_name := "渠继涵个人简历.pdf"

.PHONY: all c w fonts clean

all: c

c:
	typst compile main.typ ${file_name} --root .

w:
	typst watch main.typ ${file_name} --root .

fonts:
	@bash scripts/download_fonts.sh

clean:
	rm -rf ${file_name}