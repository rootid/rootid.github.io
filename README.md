# code-speaks.com

Source for [code-speaks.com](https://code-speaks.com), a personal site built with
[Hugo](https://gohugo.io) and the [Ritzy](https://github.com/ddritzenhoff/ritzy)
theme. It is deployed to GitHub Pages by GitHub Actions.

## Getting started

```sh
git clone --recurse-submodules git@github.com:rootid/rootid.github.io.git
cd rootid.github.io
```

If you already cloned without submodules, the theme folder is empty. Fetch it with:

```sh
git submodule update --init --recursive
```

## Local development (Podman)

You need [Podman](https://podman.io). On macOS, start the VM once per boot with
`podman machine start`.

| Command | What it does |
|---------|--------------|
| `make run` | Builds the image, then starts the Hugo dev server in the background at http://localhost:1313. The repo is mounted into the container, so edits reload live. |
| `make logs` | Follows the server log. Press Ctrl-C to stop following; the server keeps running. |
| `make stop` | Stops and removes the dev container. |
| `make build` | Builds the `rootid-blog` image only. `make run` already does this. |
| `make clean` | Stops the container and removes the `rootid-blog` image. |
| `make clean-all` | Also removes the base `hugomods/hugo` image and prunes dangling images. |
| `make search` | Production-like build plus the Pagefind search index, served at http://localhost:1414. `make run` has no search index. Needs Node (`npx`). |

The dev server uses `--buildFuture`, so posts dated later today still show up
(see [Gotchas](#gotchas)).

Alternatively, without a container, use Hugo Extended **0.147.7**:

```sh
brew install hugo
hugo server --buildFuture   # dev server on :1313
hugo --minify               # production build into public/ (git-ignored)
```

## Repository layout

```
hugo.toml                 Site config: URL, title, theme, description, analytics
layouts/                  Local overrides of the Ritzy theme (these take precedence)
  _default/baseof.html    Page shell: <head>, meta/OpenGraph tags, all CSS, nav bar, footer links
  _default/list.html      Section pages (/projects/, /misc/)
  _default/single.html    Post/project/misc page: date, #tags, title, body
  _default/terms.html     /tags/: search box and all tags with counts
  _default/taxonomy.html  /tags/<tag>/: everything with that tag
  index.html              Home page: the "Writing" list of posts
  partials/archive-list.html  Dated article list shared by the two list layouts
  partials/math.html      MathJax, only for pages with `math = true`
content/                  Markdown generated from the Org silo. See below.
static/                   Copied as-is: CNAME, favicon/
themes/ritzy/             Theme (git submodule). Don't edit; override in layouts/.
archetypes/default.md     Template used by `hugo new`
Containerfile, Makefile   Podman dev environment
.github/workflows/hugo.yaml  Build and deploy to GitHub Pages
```

### Common edits

- **Nav bar or footer links:** `layouts/_default/baseof.html` (the `<nav>` and
  `<footer>` near the bottom).
- **Styles:** the `<style>` blocks in `layouts/_default/baseof.html`. There is no
  separate stylesheet.
- **Site description (search results, link previews):** `[params] description`
  in `hugo.toml`. Posts use their own `description` front matter, or else a
  summary of the post.
- **Google Analytics ID:** `[services.googleAnalytics]` in `hugo.toml`.
- **Custom domain:** `static/CNAME`.

## Content

`content/` is **generated**, not hand-written. Posts and pages are written as
Org files in a Denote silo (`~/Dropbox/plain_docs/publish/web/`). That silo's
`publish.el` exports them here with `ox-hugo`.

- Edit the Org source, not the `.md` file. A hand edit is overwritten on the
  next export.
- The export never deletes files. When an Org file is renamed or deleted, remove
  its old `.md` file here with `git rm`. The export prints the command for each
  leftover file.

| Section | Folder | Listed at |
|---------|--------|-----------|
| Posts ("Writing") | `content/posts/` | `/` |
| About page | `content/aboutme.md` | `/aboutme/` |
| Projects | `content/projects/` | `/projects/` |
| Misc | `content/misc/` | `/misc/` |

## Tags and search

- **Tags** come from Denote keywords: `#+filetags` in the Org file becomes
  `tags = [...]` in front matter. They show as `#tag | #tag` next to the date
  on every post, project and misc page. Each links to `/tags/<tag>/`, which
  lists matching pages from all sections.
- **Search** is [Pagefind](https://pagefind.app), a static index built in CI
  after `hugo`, with no server. The search box is at the top of `/tags/`
  ("Search" in the nav), with filters for tag and section.
  - Only page bodies (`data-pagefind-body` in `single.html`) are indexed. The
    date/tag line and "Back to home" are excluded.
  - Tag and section filters come from `data-pagefind-filter` attributes in
    `single.html`.
  - `hugo server` and `make run` have no index, so the page says search isn't
    available. Use `make search` to try it locally.

## Deployment

The workflow in `.github/workflows/hugo.yaml` builds the site with Hugo
Extended 0.147.7 using `--minify`. It runs on pull requests (build only) and on
pushes to `main`, which also deploy to GitHub Pages. You can also
start it manually from the Actions tab.

- A merge to `main` is a deploy. Put changes up as a PR:

  ```sh
  git switch -c <branch>
  # …edit, then check locally with `make run`…
  git push -u origin <branch>
  gh pr create --base main --fill
  ```

- PRs are built by CI, which catches a broken build, but only a push to
  `main` deploys.
- Follow a deploy with `gh run watch`.
- Actions are pinned to full commit SHAs, with the release tag in a comment. To
  bump one, resolve the new tag's SHA (`gh api repos/actions/checkout/commits/v4.4.0 --jq .sha`)
  and update both the SHA and the comment.

## Gotchas

- **Keep the Hugo versions in sync.** `HUGO_VERSION` in
  `.github/workflows/hugo.yaml` and the image tag in `Containerfile`
  (`hugomods/hugo:exts-0.147.7`) must match. Otherwise a local preview can
  differ from production. Bump them together. Also update `HUGO_SHA256` in the
  workflow to the `hugo_extended_<ver>_linux-amd64.deb` line from that release's
  `hugo_<ver>_checksums.txt`. CI refuses a download that doesn't match.
- **Keep the Pagefind versions in sync.** `PAGEFIND_VERSION` appears in the
  workflow and the `Makefile`. When bumping, update `PAGEFIND_SHA256` from the
  release's `pagefind_extended-v<ver>-x86_64-unknown-linux-musl.tar.gz.sha256`.
- **Math is opt-in.** MathJax loads only on pages with `math = true` in front
  matter (in Org: `#+hugo_custom_front_matter: :math true`). The version is
  pinned with an SRI hash in `layouts/partials/math.html`; the file explains how
  to recompute the hash when bumping.
- **Future-dated posts publish immediately.** `buildFuture = true` in `hugo.toml`
  works around timezone mismatches between the post dates (America/New_York) and
  the UTC CI runner. You can't schedule a post by giving it a future date.
- **Theme updates:** run `git submodule update --remote themes/ritzy`, then check
  that the overrides in `layouts/` still fit the new theme templates.
- `public/` and `.hugo_build.lock` are build output and are git-ignored.
