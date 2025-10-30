## Purpose

This file tells AI coding agents how to be immediately productive in this repository: a small, static, LittleLink-based links hub for Corona SDA Church. Work here is mostly HTML/CSS edits (no build system).

## Big picture

- Single-page static site. The entire site content is authored in `index.html` (see the comment "All buttons/links go here").
- Styles live in `css/` (`reset.css`, `style.css`, `brands.css`). Icons and images are under `images/` and `images/icons/`.
- This repo is based on LittleLink (see `README.md`); structural decisions favor simple anchor buttons (`a.button`) rather than dynamic JS-driven routing.

## Where to make changes (most common tasks)

- Update links and button text: edit `index.html` inside the `<div class="button-stack" role="navigation">` section. Each link is an anchor with classes like `button button-youtube` or `button button-default`.
  - Example anchor pattern to preserve:
    - `<a class="button button-youtube" href="https://..." target="_blank" rel="noopener" role="button">` — keep `target`/`rel` attributes and the `img.icon` child for accessibility and styling.
- Change logo/avatar: update `images/avatar.png` and/or `images/avatar@2x.png` (index references both via `srcset`).
- Add or replace icons: put SVGs in `images/icons/` and reference them with `<img class="icon" src="images/icons/your.svg">`.

## Styling and conventions

- Prefer the existing CSS classes: `button-*` are used to color each link (e.g., `button-youtube`, `button-facebook`). Do not rename classes site-wide — modify CSS if you need new variants.
- `css/reset.css` is applied first, then `css/style.css` and `css/brands.css`. If you add rules, append them to `css/style.css` to keep customizations centralized.

## Developer workflows (how humans preview and deploy)

- No build step — deploys via GitHub Pages automatically when you push to `main` (this repo's `README.md` mentions GitHub Pages). Keep commits small and descriptive.
- Local preview options (PowerShell examples):

```powershell
# quick preview with Python (bundled or installed)
python -m http.server 8000

# or, if Node is available, use 'serve' (install globally or use npx)
npx serve -l 8000
```

Open http://localhost:8000 in your browser to check changes.

## Integration points & important files

- `index.html` — authoritative content. Search for the comment: "All buttons/links go here" to find editable link blocks.
- `css/style.css`, `css/brands.css` — visual rules and brand colors.
- `images/` and `images/icons/` — static assets used by the buttons and avatar.
- `README.md` — live-site URL and project origin (LittleLink). Useful for commit messages and PR descriptions.

## Rules for AI edits (concrete, followable)

1. Keep changes limited to the smallest scope (edit `index.html` for link updates; `css/style.css` for style tweaks; add assets under `images/`).
2. Preserve semantic structure: maintain the `div.button-stack` container and `a.button` anchors; don't replace anchors with custom JS or forms.
3. Keep `target="_blank" rel="noopener"` for external links.
4. When changing the avatar, include a 2x image (`avatar@2x.png`) in the same folder if increasing resolution.
5. If you add CSS rules, append them to `css/style.css` and keep selectors specific to avoid regressions.

## Minimal examples agents may produce

- Small link update (modify only href/text): update the existing anchor — do not add inline styles.
- Add new icon: upload `images/icons/foo.svg` and add a corresponding `<a class="button button-default" href="https://..."> <img class="icon" src="images/icons/foo.svg"> Label</a>` inside `div.button-stack`.

## When to ask for human review

- Any structural change (adding JS, changing markup layout, altering CSS class names).
- Changes to site-wide metadata (title, canonical URL in `<head>`), or switching hosting branch.

## Notes

- This repo has no tests or CI beyond GitHub Pages. Keep changes small and verify in a browser locally before pushing.

If anything above is unclear or you want the agent to take a different style (for example, add a small test harness or introduce a build step), tell me where to expand and I'll iterate.
