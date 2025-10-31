# Contributing

Thanks for helping improve this small links hub — contributions are welcome. This document describes the common workflows for making changes.

Before you start

- Search the repository for existing issues or PRs that address your change.
- If changes are large or structural (adding JS, changing layout), open an issue first to discuss.

Making small content changes (links / text)

1. Edit `index.html` inside the `<div class="button-stack" role="navigation">` area. Preserve the anchor structure and attributes:

   `<a class="button button-<brand>" href="https://..." target="_blank" rel="noopener" role="button">` — keep `target`/`rel` and the `<img class="icon">` child.

2. Preview locally:

   - Windows (PowerShell):

     ```powershell
     .\preview.ps1
     ```

   - macOS / Linux:

     ```bash
     python3 -m http.server 8000
     open http://localhost:8000
     ```

3. Commit with a clear message and open a PR against `main`.

PR checklist

- [ ] I edited only the intended files (usually `index.html` or `css/*`).
- [ ] Links use `target="_blank" rel="noopener"` for external URLs.
- [ ] I previewed changes locally and verified visuals.
- [ ] The PR description explains the change and includes screenshots if visual.

Coding and styling notes

- Styling lives in `css/style.css` and `css/brands.css` — append site-level rules to `css/style.css`.
- Keep brand class names (`button-<brand>`) stable; add new classes to `css/brands.css` when needed.

Security and sensitive issues

- Do not open a public issue for security-sensitive reports. See `.github/SECURITY.md` for the private disclosure process.

Thanks again — small, well-documented changes keep this project easy to maintain.
