# Changelog

All notable changes to this repository are documented here.

## [3.1.0] - 2026-03-04
### Added
- `config/voice-tone-profiles.yaml` for humanized language adaptation.

### Changed
- Root `SKILL.md` now includes voice/tone profile selection and mirrored communication guidance.
- README documents voice/tone profiles and guardrailed mirroring behavior.

## [3.0.1] - 2026-03-04
### Added
- `ports/claude/README.md` for Claude-specific import workflow.
- `scripts/build_claude_package.sh` to generate a Claude-uploadable zip with a single `SKILL.md`.
- `Makefile` target: `make claude-package`.

### Changed
- Root README now documents runtime port packaging for Claude.

## [3.0.0] - 2026-03-04
### Added
- New subskills:
  - `ux-persona-builder`
  - `ux-creative-exploration`
  - `ux-handoff-design-spec`
- New config modules:
  - `config/thinking-patterns.yaml`
  - `config/output-schemas.yaml`
  - `config/routing-policies.yaml`
- New templates:
  - `templates/persona-canvas.md`
  - `templates/concept-territory.md`
  - `templates/design-handoff.md`

### Changed
- Expanded orchestration scope from deep-research core to full UX research agent modules.

## [2.2.2] - 2026-03-04
### Changed
- Converted repository documentation and reference library to English-only.
- Normalized mixed-language sections in root skill and subskills.

## [2.2.1] - 2026-03-04
### Fixed
- Aligned SKILL frontmatter name with repository directory:
  - `name: ux-research-agent`

### Added
- GitHub-style repository README with:
  - Feature overview
  - Modular architecture
  - Phase gates and quality checks
  - Style archetype usage
  - Quick start examples

## [2.2.0] - 2026-03-04
### Added
- `config/phase-gates.yaml`
- `config/method-registry.yaml`
- `config/quality-benchmarks.yaml`
- `styles/_default.yaml`
- `styles/archetypes/*` (anonymized style presets)

### Changed
- SKILL structure docs updated for modular routing and style archetypes
- `_meta.json` version bumped to `2.2.0`

## [2.1.0] - 2026-03-04
### Added
- Output Contract (mandatory artifacts)
- Execution Guardrails
- EVAL.md audit report

### Changed
- Stage flow label corrected to 8-stage model
- SKILL and meta version alignment

## [2.0.0]
### Added
- Initial deep UX research orchestration skill
