# homebrew-tap

Homebrew tap for [Ieum](https://github.com/stoneidev/ieum), live captions and English ↔ Korean translation for meetings, fully on-device.

```sh
brew install --cask stoneidev/tap/ieum
```

Or add the tap first:

```sh
brew tap stoneidev/tap
brew install --cask ieum
```

Ieum updates itself after the first install (it asks before updating), so `brew upgrade` is optional.
Saved transcripts in `~/Documents/Ieum Transcripts` are never removed by `brew uninstall --zap`.

Requires an Apple silicon Mac with macOS 14 or later. License of the cask files: Apache-2.0, same as Ieum.
