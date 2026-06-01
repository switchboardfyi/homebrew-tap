# Agent Notes

This repo is the public Homebrew tap for the `switchboard-fyi` CLI. The npm
package is the source artifact; this formula should point at the npm registry
tarball for the exact released version.

## Updating The Formula

Use the CLI repo's release tooling instead of editing the checksum by hand:

```bash
cd ../cli
npm run release:homebrew -- --tap ../homebrew-tap
```

That command updates this formula, commits it, pushes `main`, and verifies the
remote tap formula points at the npm registry tarball.

Verify after pushing:

```bash
brew update
brew reinstall switchboardfyi/tap/switchboard-fyi
brew test switchboardfyi/tap/switchboard-fyi
```

Do not use a locally packed npm tarball for the formula checksum. Homebrew must
use the SHA256 of the tarball served by the npm registry.
