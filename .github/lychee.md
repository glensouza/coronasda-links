Lychee link-checker configuration and maintenance
===============================================

This repository uses lychee (via `lycheeverse/lychee-action`) to validate links in `index.html`.

Where the config lives
----------------------

The CI reads settings from `.lychee.yml` at the repository root. If a link reliably fails the check
(for example a marketing/landing page that returns 403 to automated clients), add it to the `exclude`
list in `.lychee.yml` instead of removing the link from the site.

How to add an excluded URL
--------------------------

1. Edit `.lychee.yml` and add the problematic URL under the `exclude:` key. Example:

   exclude:
     - "https://lp.constantcontactpages.com/sl/Cqimxm7/csdac"

2. Commit and push the change. The `Validate index.html` workflow will pick up the new config on the next
   push or PR and will no longer fail because of the excluded URL.

Best practices
--------------

- Prefer excluding a single exact URL when possible. That avoids unintentionally hiding other broken links.
- If many links from the same host fail for known reasons (geo-blocking, bot-blocking), you may broaden the
  exclude using a host-level pattern (for example `https://lp.constantcontactpages.com/*`).
- Document any excludes in this file with a brief reason so future maintainers understand why they were ignored.

Testing locally
---------------

To test lychee locally you can run the same config with the lychee Docker image (Docker required). Example
PowerShell command (run from repo root):

```powershell
docker run --rm -v ${PWD}:/workdir lycheeverse/lychee index.html --config .lychee.yml
```

Alternatively, trigger the GitHub Action by opening a PR or pushing a branch — the `Validate index.html` job will
run and display lychee output in the checks for the PR.

If a URL continues to fail after adding an exclude, consider temporarily replacing the link target with a
short redirect (self-hosted) or contacting the third-party service to request a fix. Always prefer documenting
the reason for an exclude above removing links from the page silently.
