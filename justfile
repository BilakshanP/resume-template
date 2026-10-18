build *files='main.tex':
    @just _build-pdf {{ files }}

clean:
    latexmk -c

open file='main':
    open build/{{ file }}.pdf

[private]
_build format *files:
    latexmk {{ format }} {{ files }}

[private]
_build-pdf *files:
    @just _build -pdf {{ files }}
