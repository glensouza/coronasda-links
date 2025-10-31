# Corona SDA Church - Links Hub

A simple, mobile-friendly links hub for Corona Seventh-day Adventist Church, based on [LittleLink](https://github.com/sethcottle/littlelink).

## 🙏 About Corona SDA Church

Corona Seventh-day Adventist Church serves the Corona, California community. Visit [coronasdachurch.com](https://coronasdachurch.com/) to learn more.

## 🔗 Live Site

Visit: [https://links.coronasda.church](https://links.coronasda.church)

[![Validate index.html](https://github.com/glensouza/coronasda-links/actions/workflows/validate-index.yml/badge.svg)](https://github.com/glensouza/coronasda-links/actions/workflows/validate-index.yml)

[![pages-build-deployment](https://github.com/glensouza/coronasda-links/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/glensouza/coronasda-links/actions/workflows/pages/pages-build-deployment)

## 📱 Features

- Clean, responsive design that works on all devices
- Quick access to all church resources and social media
- Light/Dark theme support

## 🏗️ Structure

- `index.html` - Main page with all church links
- `css/` - Stylesheets (from LittleLink)
- `images/` - Church logo and icons
- `fonts/` - Custom fonts

## ✏️ Customization

To update the links or content:

1. Edit `index.html`
1. Update button links and text as needed

## 🖥️ Local preview

Quick ways to preview the site locally:

- Windows (PowerShell):

```powershell
# from repo root
.\preview.ps1
```

- macOS / Linux (bash/zsh):

```bash
# using Python 3
python3 -m http.server 8000 & open http://localhost:8000

# or using npx serve
npx serve -l 8000
```

Open `http://localhost:8000` in your browser after starting the server.

## ✅ Link checks (CI)

This repository uses the lychee link checker in CI to validate links in `index.html`. See `.github/lychee.md` for details on the configuration, how to add excludes, and how to run lychee locally.

## 🚀 Deployment

Commit and push changes - GitHub Pages will automatically update as this site is configured for GitHub Pages.

## 📝 License

MIT license based on [LittleLink](https://github.com/sethcottle/littlelink) by Seth Cottle.
