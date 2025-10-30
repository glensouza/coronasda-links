# Pull Request

<!--
Small PR template for Corona SDA Links (static HTML/CSS edits).
Keep PRs focused and descriptive. This project deploys from `main` via GitHub Pages.
-->

## Summary

Short description of the change (1-2 sentences).

## Files changed

List the files you edited, e.g.:

- `index.html` — updated/add link buttons
- `css/style.css` — styling tweaks
- `images/icons/foo.svg` — new icon

## CI / Checks

This repository runs an automatic link-check workflow on PRs and pushes to `main`. The workflow name is "Link check index.html" and will run automatically — if the job fails it indicates one or more broken links that should be fixed before merging.

## How to preview/test

Describe how you previewed locally. Example:

1. Run `.\\preview.ps1` or `python -m http.server 8000` from repo root
2. Open the preview in a browser at `http://localhost:8000` and verify the updated link/button appears and opens in a new tab

## Checklist

- [ ] All external links keep `target="_blank" rel="noopener"`
- [ ] Button markup preserved: `<a class="button ..."><img class="icon"> Label</a>`
- [ ] Images/icons added to `images/` or `images/icons/`
- [ ] Changes are small and site layout remains responsive on mobile

Optional notes:

- Any follow-up tasks or known issues.

## Common fixes (if CI/link check fails)

If the link-check workflow reports failures, try these quick checks before requesting help:

- Verify `href` values are valid URLs (include `https://` for external sites). Example wrong vs. correct:

  - Wrong: `www.example.com` or `/www.example.com`
  - Correct: `https://www.example.com`
- Look for accidental whitespace or invisible characters around the `href` value.
- Ensure icon and image paths are correct (e.g., `images/icons/name.svg`).
- Confirm external links keep `target="_blank" rel="noopener"`.
- Preview locally using `.\preview.ps1` or `python -m http.server 8000` and click the links to reproduce the failure.
- If you have `lychee` locally you can run `npx -y lychee-cli index.html` to reproduce the check locally.

If fixes are non-trivial, please add a short note in this PR describing what you tried.
