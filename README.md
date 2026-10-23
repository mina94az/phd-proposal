# PhD proposal

The proposal is written in LaTeX. Its entry point is `main.tex`; chapter files are under `sections/`, the bibliography is in `references.bib`, and source figures are under `figures/`.

## Updating and downloading the compiled proposal

1. Edit the LaTeX, bibliography, or figure source files normally.
2. Commit and push the source changes to the default `main` branch.
3. GitHub Actions runs **Build proposal PDF** automatically. A build can also be started from **Actions → Build proposal PDF → Run workflow**.
4. To download the result, open the latest successful workflow run and select **proposal-pdf** in its **Artifacts** section. The downloaded archive contains `main.pdf` and is retained for 30 days.

Anyone downloading an artifact must be signed in to GitHub and have read access to the repository. If the repository is made private, add the supervisor as a collaborator with read access; the workflow does not change repository visibility and does not use GitHub Pages.

If Actions are disabled, a repository administrator can open **Settings → Actions → General**, allow the actions used by this workflow (`actions/*` and `xu-cheng/latex-action`), and save the setting.

For a local build with LaTeX, Biber, and `latexmk` installed, run:

```bash
latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode main.tex
```

`latexmk` runs Biber automatically. The generated root-level `main.pdf` and LaTeX intermediate files are ignored by Git; PDF figures inside `figures/` remain tracked because they are required source assets.
