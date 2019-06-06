# homebrew-p4merge-tap
[Homebrew](https://brew.sh/) tap for [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge)

P4Merge is included as part of Helix Visual Client (P4V). That is, the P4V.dmg includes HelixMFA.app, p4v.app, p4admin.app, p4merge.app, and p4vc. This Cask is otherwise identical to the Cask for [p4v](https://github.com/Homebrew/homebrew-cask/blob/master/Casks/p4v.rb) but only includes P4Merge.

As 2019-06-06, the current release of P4V (version 19.1-1797168) contains:

* HelixMFA.app: 28.1 MB
* p4admin.app: 220.5 MB
* p4merge.app: 208.6 MB
* p4v.app: 247.6 MB
* p4vc: 10.7MB

## Installation

```sh
brew tap eddies/p4merge-tap
brew cask install p4merge
```
