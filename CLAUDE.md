# homebrew-tap: project brief

The Homebrew tap of Love Suite (`brew install --cask love-suite/tap/<cask>`): one cask per app,
in `Casks/`. Written by hand once; afterwards each app's `.github/workflows/release.yml` rewrites its
cask's `version` and `sha256` lines through the GitHub API when it publishes a release, so keep those two
lines as they are (two spaces, a string). Casks: `explorer`, `desktop`, `bar`, `viewer`, `clipboard`,
`awake`, `settings` (Suite Settings), `guard` (Suite Guard). Explorer depends on Suite Settings;
Bar, Desktop, Clipboard and Awake on Suite Guard. The user writes in French and expects answers in French; everything here stays in
English. No "…" anywhere.
