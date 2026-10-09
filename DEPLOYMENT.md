# GitHub Pages deployment

Target: `Austinggg/austinggg.github.io` → `https://austinggg.github.io/`.

The workflow `.github/workflows/pages.yml` builds the site using its pinned al-folio gems and deploys the generated `_site` artifact through GitHub Pages. It does not use GitHub Pages' restricted built-in Jekyll plugin set.

## Repository settings

1. Create a public repository named `austinggg.github.io` under `Austinggg` if it does not already exist.
2. Push this site's source to its `main` branch.
3. Under **Settings → Pages → Build and deployment**, select **GitHub Actions**.
4. Run **Deploy academic homepage** under **Actions**, or push an update to `main`.
5. Wait for both the build and deploy jobs to succeed, then check the public URL.

For this user homepage, `_config.yml` uses `url: https://austinggg.github.io` and an empty `baseurl`. For a repository with a different name, change `baseurl` to that repository name with a leading slash.

No custom domain, analytics, comment service, or newsletter is configured. Publications and the source CV PDF are omitted from the initial version.

## Before adding publications later

Add verified BibTeX to `_bibliography/papers.bib`, add a publications page, and enable selected papers on the homepage if desired. The source resume repeats arXiv `2509.26461` on multiple manuscripts; that identifier belongs to CreAgentive. Verify each manuscript's identifier before adding a link.
