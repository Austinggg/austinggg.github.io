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

Research appointments appear in both `experience.yml` and `cv.yml`; update both when a position changes. The dates currently follow `../overleaf-resume/main.tex`, including the remote internship marked as ongoing. No portrait or Google Scholar ID has been invented, and the original CV PDF is not published because it contains publications.

## Preview locally

With Ruby 3.3 or later and Node.js installed:

```sh
bundle install
npm ci
bundle exec jekyll serve --host 127.0.0.1 --port 4000
```

Open `http://127.0.0.1:4000/`. In this workspace, `./preview.ps1` also supports the portable Ruby runtime in `../tmp/ruby-runtime`.

## GitHub Pages

The intended repository is `Austinggg/austinggg.github.io`, with public URL `https://austinggg.github.io/`. The URL is a deployment target, not confirmation that deployment has succeeded. See [DEPLOYMENT.md](DEPLOYMENT.md). The site is configured for a root-domain user homepage; a project repository requires a matching `baseurl`.

## Attribution

Based on the al-folio starter and its versioned runtime gems. The upstream MIT license is retained in `LICENSE`. No local gem template or style overrides are used.
