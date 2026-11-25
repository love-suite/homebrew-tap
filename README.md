# homebrew-tap

The Homebrew tap of [Love Suite](https://github.com/love-suite/suite): one cask per app.

```sh
brew install --cask love-suite/tap/explorer
brew install --cask love-suite/tap/desktop
brew install --cask love-suite/tap/bar
brew install --cask love-suite/tap/viewer
brew install --cask love-suite/tap/clipboard
brew install --cask love-suite/tap/awake
brew install --cask love-suite/tap/settings
```

Explorer brings Suite Settings (`settings`) with it; Desktop, Bar, Clipboard and Awake bring Suite Guard
(`guard`). Each app's release workflow updates its cask's version and checksum (it needs the
`HOMEBREW_TAP_TOKEN` secret, set with the suite repository's `scripts/set-secret.sh`). Until the first
release (27.1) the checksums are placeholders.
