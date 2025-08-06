---
description: "Mandatory for all commit messages: Conventional commit protocol with gitmoji MUST BE USED."
---

# Conventional Commit Messages

- Use `chore` for maintenance outside coding folders.
- Use `refactor` only for code restructuring within code directories.
- Use `fix` for bug fixes and choose other types for their specific purposes.
- Include a gitmoji in every commit message.
- Avoid the `docs` type unless updating user-facing documentation.
- Select gitmoji based on the change's nature, not its scope.
- Follow the conventional commit format at all times.

## Required Format

> [!IMPORTANT] > **EVERY COMMIT MUST INCLUDE GITMOJI** - NO EXCEPTIONS
>
> Format: `<type>[(<scope>)]: <:gitmoji:> <description>`

```bash
<type>[(<optional scope>)]: <:gitmoji:> <description>

[optional body]

[optional footer]
```

## Commit Types

Chose the best candidate for the given commit:

> [!WARNING]
> Urgent info that needs your immediate attention to avoid problems:
> Emoji depends more on the type of change than the scope, so choose the type first and then the emoji, independently, those examples below are only guidelines.

- `build` - Build system (`:construction_worker:`, `:arrow_up:`, `:arrow_down:`)
- `chore` - Maintenance (`:wrench:`, `:fire:`, `:heavy_plus_sign:`, `:heavy_minus_sign:`)
- `fix` - Bug fixes (`:bug:`, `:ambulance:` for critical)
- `refactor` - Code restructuring (`:recycle:`, `:building_construction:`)
- `docs` - Documentation (`:memo:`)
- `feat` - New features (`:sparkles:`)
- `style` - Code formatting (`:art:`, `:rotating_light:`)
- `perf` - Performance improvements (`:zap:`)
- `test` - Testing (`:white_check_mark:`, `:green_heart:`)

## Essential Gitmoji

| Emoji | Code                 | Usage                  |
| ----- | -------------------- | ---------------------- |
| 🐛    | `:bug:`              | Bug fixes              |
| 🚑    | `:ambulance:`        | Critical hotfix        |
| 📝    | `:memo:`             | Documentation          |
| 🎨    | `:art:`              | Code structure/format  |
| ⚡    | `:zap:`              | Performance            |
| 🔥    | `:fire:`             | Remove code/files      |
| ♻️    | `:recycle:`          | Refactor Anything      |
| ✅    | `:white_check_mark:` | Tests                  |
| 🔧    | `:wrench:`           | Configuration          |
| ⬆️    | `:arrow_up:`         | Upgrade dependencies   |
| ⬇️    | `:arrow_down:`       | Downgrade dependencies |
| 💥    | `:boom:`             | Breaking changes       |
| 🚨    | `:rotating_light:`   | Fix warnings           |
| 💚    | `:green_heart:`      | Fix CI                 |
| 🔒    | `:lock:`             | Security fixes         |
| ✨    | `:sparkles:`         | New features           |

## Examples

```bash
# Features
feat(auth): :sparkles: add OAuth2 authentication support
feat(api)!: :boom: redesign user endpoint structure

# Bug Fixes
fix(payment): :ambulance: resolve payment gateway timeout
fix(ui): :bug: correct responsive layout

# Documentation
docs(readme): :memo: add installation instructions

# Performance
perf(database): :zap: optimize user queries

# Build/Dependencies
build(deps): :arrow_up: upgrade Next.js to v15.1.2

# Testing
test(auth): :white_check_mark: add unit tests
```

> [!IMPORTANT]
> Refactoring commits are about changes into the code folders, for programming language refactorings and not others, it must focus on improving the code structure without changing its behavior.

```bash
# Refactoring
refactor(components): :art: extract validation logic
```

> [!IMPORTANT]
> Chores should not include any functional changes, only maintenance tasks, outside of the coding folders.

```bash
# Chores
chore(ci): :wrench: update GitHub Actions workflow
```

## Breaking Changes

Add `!` before `:` and include `BREAKING CHANGE:` in footer:

```bash
feat(api)!: :boom: remove legacy endpoints

BREAKING CHANGE: Legacy v1 endpoints removed. Use v2 API.

Closes #123
```

## References

- [Conventional Commits](https://www.conventionalcommits.org/)
- [Gitmoji Guide](https://gitmoji.dev/)
- [Complete Gitmoji Selection](../prompts/gitmoji-complete-list.prompt.md)

<!-- [Breaking Changes Guide](../prompts/breaking-changes.prompt.md) -->

## Breaking Changes Guide (Concise)

### Required Format

- Indicate breaking changes in two places:
  1.  Add `!` before the colon in the subject line
  2.  Add a `BREAKING CHANGE:` footer with details
- Use gitmoji to reflect the nature of the change

#### Example

```
feat(api)!: :boom: remove legacy user endpoints

BREAKING CHANGE: All v1 user endpoints have been removed. Use v2 endpoints instead.
```

### Migration & Documentation

- Always provide migration instructions in the commit footer
- Update documentation and release notes
- Major version bump required

### Good Commit Example

```
feat(auth)!: :boom: update authentication method signature

BREAKING CHANGE: authenticate() now requires an options object instead of separate parameters.
Before: authenticate(username, password, remember)
After: authenticate({ username, password, rememberMe })
```

### Summary Checklist

- Document the change and why
- Provide migration path
- Major version bump
- Update docs/release notes

### Best Practice

- Be specific and helpful
- Include migration steps
- Avoid vague messages

<!-- [Commit Examples](../prompts/commit-examples.prompt.md) -->

## Complete Gitmoji List

This prompt file contains the complete list of gitmoji for conventional commits.

### All Available Gitmoji

🎨 `:art:` - Improve structure / format of the code
⚡ `:zap:` - Improve performance
🔥 `:fire:` - Remove code or files
🐛 `:bug:` - Fix a bug
🚑 `:ambulance:` - Critical hotfix
✨ `:sparkles:` - Introduce new features
📝 `:memo:` - Add or update documentation
🚀 `:rocket:` - Deploy stuff
💄 `:lipstick:` - Add or update the UI and style files
🎉 `:tada:` - Begin a project
✅ `:white_check_mark:` - Add, update, or pass tests
🔒 `:lock:` - Fix security issues
🔐 `:closed_lock_with_key:` - Add or update secrets
🔖 `:bookmark:` - Release / Version tags
🚨 `:rotating_light:` - Fix compiler / linter warnings
🚧 `:construction:` - Work in progress
💚 `:green_heart:` - Fix CI Build
⬇️ `:arrow_down:` - Downgrade dependencies
⬆️ `:arrow_up:` - Upgrade dependencies
📌 `:pushpin:` - Pin dependencies to specific versions
👷 `:construction_worker:` - Add or update CI build system
📈 `:chart_with_upwards_trend:` - Add or update analytics or track code
♻️ `:recycle:` - Refactor code
➕ `:heavy_plus_sign:` - Add a dependency
➖ `:heavy_minus_sign:` - Remove a dependency
🔧 `:wrench:` - Add or update configuration files
🔨 `:hammer:` - Add or update development scripts
🌐 `:globe_with_meridians:` - Internationalization and localization
✏️ `:pencil2:` - Fix typos
💩 `:poop:` - Write bad code that needs to be improved
⏪ `:rewind:` - Revert changes
🔀 `:twisted_rightwards_arrows:` - Merge branches
📦 `:package:` - Add or update compiled files or packages
👽 `:alien:` - Update code due to external API changes
🚚 `:truck:` - Move or rename resources (e.g. files, paths, routes)
📄 `:page_facing_up:` - Add or update license
💥 `:boom:` - Introduce breaking changes
🍱 `:bento:` - Add or update assets
♿ `:wheelchair:` - Improve accessibility
💡 `:bulb:` - Add or update comments in source code
🍻 `:beers:` - Write code drunkenly
💬 `:speech_balloon:` - Add or update text and literals
🗃️ `:card_file_box:` - Perform database related changes
🔊 `:loud_sound:` - Add or update logs
🔇 `:mute:` - Remove logs
👥 `:busts_in_silhouette:` - Add or update contributor(s)
🚸 `:children_crossing:` - Improve user experience / usability
🏗️ `:building_construction:` - Make architectural changes
📱 `:iphone:` - Work on responsive design
🤡 `:clown_face:` - Mock things
🥚 `:egg:` - Add or update an easter egg
🙈 `:see_no_evil:` - Add or update a .gitignore file
📸 `:camera_flash:` - Add or update snapshots
⚗️ `:alembic:` - Perform experiments
🔍 `:mag:` - Improve SEO
🏷️ `:label:` - Add or update types
🌱 `:seedling:` - Add or update seed files
🚩 `:triangular_flag_on_post:` - Add, update, or remove feature flags
🥅 `:goal_net:` - Catch errors
💫 `:dizzy:` - Add or update animations and transitions
🗑️ `:wastebasket:` - Deprecate code that needs to be cleaned up
🛂 `:passport_control:` - Work on code related to authorization, roles and permissions
🩹 `:adhesive_bandage:` - Simple fix for a non-critical issue
🧐 `:monocle_face:` - Data exploration / inspection
⚰️ `:coffin:` - Remove dead code
🧪 `:test_tube:` - Add a failing test
👔 `:necktie:` - Add or update business logic
🩺 `:stethoscope:` - Add or update healthcheck
🧱 `:bricks:` - Infrastructure related changes
🧑‍💻 `:technologist:` - Improve developer experience
💸 `:money_with_wings:` - Add sponsorships or money related infrastructure
🧵 `:thread:` - Add or update code related to multithreading or concurrency
🦺 `:safety_vest:` - Add or update code related to validation

#### Selection Guidelines

Choose the most appropriate gitmoji based on:

1. Primary purpose of the commit
2. Most impactful change being made
3. User-facing vs. internal changes
4. Urgency level (critical vs. standard)
