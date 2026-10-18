# LaTeX Template

A reusable LaTeX project template with `latexmk` and `just`.

## Use this template

```bash
gh repo create my-new-doc --template BilakshanP/latex-template --public --clone
```

## Setup

### macOS

```bash
brew install --cask mactex
brew install just
```

Add TeX to your PATH (`~/.zshrc`):

```bash
export PATH="/Library/TeX/texbin:$PATH"
```

### Linux (Debian/Ubuntu)

```bash
sudo apt install texlive-full latexmk
cargo install just  # or: sudo apt install just
```

## Usage

```bash
just build          # compile main.tex → build/main.pdf
just open           # open the PDF
just clean          # remove build artifacts
```

To build a different file:

```bash
just build other.tex
just open other
```

## CI/CD

A GitHub Actions workflow is included at `.github/workflows/build.yml`. On every push to `main`, it:

1. Builds `main.tex` using `xu-cheng/latex-action`
2. Uploads the compiled PDF as a workflow artifact
3. Publishes the PDF to a rolling `latest` GitHub Release

The latest PDF is always available at:

```
https://github.com/<owner>/<repo>/releases/latest/download/main.pdf
```

## Structure

```
.
├── main.tex             # Entry point
├── sections/            # \input{} sections
├── references/          # .bib files
├── figures/             # Images and diagrams
├── .github/workflows/   # CI/CD (auto-build + release)
├── latexmkrc           # Build output → build/
├── justfile            # Task runner
└── .gitignore
```
