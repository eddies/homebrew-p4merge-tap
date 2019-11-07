# homebrew-p4merge-tap
[Homebrew](https://brew.sh/) tap for [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge)

P4Merge is included as part of Helix Visual Client (P4V). That is, the P4V.dmg includes HelixMFA.app, p4v.app, p4admin.app, p4merge.app, and p4vc. This Cask is otherwise identical to the Cask for [p4v](https://github.com/Homebrew/homebrew-cask/blob/master/Casks/p4v.rb) but only includes P4Merge.

As 2019-11-07, the current release of P4V (version 19.2-1856742) contains:

* HelixMFA.app: 28.4 MB
* p4admin.app: 232.6 MB
* p4merge.app: 217.8 MB
* p4v.app: 260.6 MB
* p4vc: 16.4 MB

## Installation

```sh
brew tap eddies/p4merge-tap
brew cask install p4merge
```
