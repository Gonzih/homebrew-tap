# Publish Kittens 0.3.0 in the shared tap

Status: complete

Orientation 2026-10-13: `origin/main` is `5ecdf63bb165b1d1dbb8983ef7a6f21b2d3bfb5e`; clean isolated worktree `/Users/feral/mydev/homebrew-tap-kittens-030`, branch `release/kittens-0.3.0`. Existing formula downloads crates.io Kittens 0.2.1 with verified SHA256. Operator requested cutting and publishing the next Kittens release and previously authorized GitHub writes and automatic merge. Scope is the formula release update; Tachyon remains unchanged.

Dependency: Kittens 0.3.0 and its pinned patched parser are published and independently verified. Creator supplies actual archive SHA256 before execution. Executor changes only `Formula/kittens.rb`: public archive URL 0.3.0 and measured SHA256, keeping Rust build and version test intact. No runtime changes, bottles, repository visibility changes or new automation.

Acceptance: `ruby -c Formula/kittens.rb`, Homebrew style/info/strict audit/fetch against the candidate formula, `git diff --check`, exact unchanged `Casks/tachyon.rb` bytes. Inspect downloaded archive hash and version. Creator reviews actual diff, opens PR, merges through normal repository controls, updates installed tap and verifies authoritative metadata/fetch. Public Cargo installation proof is retained in Kittens release task; no claim of a Cellar install without executing it.

Published prerequisite verified: Kittens 0.3.0 archive downloaded from `https://static.crates.io/crates/kittens/kittens-0.3.0.crate`; SHA256 `d67f0e7c5c79064685dfc7de32943998141b7afb245ffcef419dbd66c0fc27cd` matches crates.io API and locally verified package. Clean source commit `0c6e49cce5323fc7991e7e547b912e556a9c0a2f`. Its exact patched parser dependency is public and checksum-verified too.

Next: native low-effort Executor updates only formula URL and checksum; Creator verifies and opens/merges PR.

Executor `/root/release_030_tap_executor` changed only the two formula lines. Creator inspected actual diff; Tachyon and README are unchanged. Ruby syntax, Homebrew style and diff check exit 0. First absolute-path info/audit/fetch attempts exit 1 because Homebrew requires a tap. Moved the same isolated Git worktree into `/opt/homebrew/Library/Taps/gonzih/homebrew-tap-kittens-030`; named candidate info, strict audit and fetch all exit 0. Metadata identifies 0.3.0 and the independently verified public checksum above. Failed and successful logs remain private in the Kittens release task.

Kittens Creator also installed the published registry package with `cargo install kittens --version 0.3.0 --locked --debug` into a private prefix; version/help and all 12 actual CLI smoke tests passed. No claim of a new Homebrew Cellar install. Ready for exact diff review and normal PR merge under operator publication authorization.

Delivery 2026-10-13: [PR2](https://github.com/Gonzih/homebrew-tap/pull/2) remote patch exactly matched reviewed local diff, with no hosted checks configured. Normal exact-head squash merge produced `8ed320b3169b1d87c0aec5f96e06789d397920a4`. Installed authoritative tap fast-forwarded to that commit; `brew info --json=v2`, strict audit and fetch for `gonzih/tap/kittens` all succeed and identify 0.3.0/public archive/exact checksum. Tachyon and README bytes remain unchanged. Candidate worktree moved back to `/Users/feral/mydev/homebrew-tap-kittens-030` after checks, leaving only the authoritative installed tap. [Kittens release](https://github.com/Gonzih/kittens/releases/tag/kittens-v0.3.0) and [public crate](https://crates.io/crates/kittens/0.3.0) are published.
