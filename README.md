# Yuyang Cheng — Academic Homepage

An English academic website built from [al-folio](https://github.com/alshedivat/al-folio). The initial version includes About, Research, Experience, and CV. Publications are intentionally omitted.

## Edit content

| Content                | File                   |
| ---------------------- | ---------------------- |
| Biography and homepage | `_pages/about.md`      |
| Research interests     | `_pages/research.md`   |
| Research experience    | `_data/experience.yml` |
| Online CV              | `_data/cv.yml`         |
| Email and GitHub links | `_data/socials.yml`    |
| Site metadata and URL  | `_config.yml`          |

Research appointments appear in both `experience.yml` and `cv.yml`; update both when a position changes. The dates currently follow `../overleaf-resume/main.tex`, including the remote internship marked as ongoing. The homepage profile image is supplied by the site owner. No Google Scholar ID is configured, and the original CV PDF is not published because it contains publications.

## Preview locally

In this workspace, run `./preview.ps1` to serve the downloaded GitHub Actions build at `http://127.0.0.1:4000/`. This preview is a snapshot; source edits need a rebuild.

To rebuild locally, use Ruby 3.3 or later (Ruby+Devkit on Windows) and Node.js:

```sh
bundle install
npm ci
bundle exec jekyll serve --host 127.0.0.1 --port 4000
```

Open `http://127.0.0.1:4000/`. The portable Ruby runtime in this workspace has no native-extension toolchain, so the full Jekyll build was validated on GitHub Actions. To use `./preview.ps1 -Rebuild`, first provide Ruby+Devkit and a complete bundle.

## GitHub Pages

The intended repository is `Austinggg/austinggg.github.io`, with public URL `https://austinggg.github.io/`. The URL is a deployment target, not confirmation that deployment has succeeded. See [DEPLOYMENT.md](DEPLOYMENT.md). The site is configured for a root-domain user homepage; a project repository requires a matching `baseurl`.

## Attribution

Based on the al-folio starter and its versioned runtime gems. The upstream MIT license is retained in `LICENSE`. No local gem template or style overrides are used.
