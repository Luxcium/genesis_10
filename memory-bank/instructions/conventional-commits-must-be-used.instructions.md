---
description: Conventional commits with gitmoji are mandatory.
applyTo: ".git/COMMIT_EDITMSG"
---

# Conventional Commits

- You format commit messages as `<type>[optional scope]: <gitmoji> <description>`.
- You choose commit types such as build, chore, fix, refactor, docs, feat, style, perf, or test.
- You include exactly one gitmoji matching the change.
- You use `chore` for maintenance outside code directories.
- You use `refactor` only for code restructuring.
- You avoid `docs` unless the change targets user-facing documentation.
- You mark breaking changes with `!` and add a `BREAKING CHANGE:` footer.
