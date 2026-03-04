# ux-research-agent

Modular UX research skill system for OpenClaw.

> Design Thinking flow + method registry + phase gates + anonymized style archetypes.

## ✨ Features

- **Modular subskills** by UX method and research task
- **Phase gates** to enforce research rigor (Empathize → Define → Ideate → Prototype → Test)
- **Quality benchmarks** (confidence labels, evidence checks, blockers/warnings)
- **Anonymized style archetypes** (no person naming)
- **Decision-ready outputs** (problem statement, decision log, next actions)

## 🗂 Repository Structure

```text
.
├── SKILL.md
├── _meta.json
├── CHANGELOG.md
├── config/
│   ├── phase-gates.yaml
│   ├── method-registry.yaml
│   └── quality-benchmarks.yaml
├── styles/
│   ├── _default.yaml
│   └── archetypes/
│       ├── clarity-pragmatic.yaml
│       ├── empathy-deep-listening.yaml
│       ├── discovery-continuous.yaml
│       ├── systems-thinking.yaml
│       ├── heuristic-evidence.yaml
│       └── lean-experiment.yaml
├── references/
├── templates/
└── subskills/
```

## 🚀 Quick Start

### 1) Select entry point

- `A` Just starting (no data)
- `B` Have observations
- `C` Know the problem, seek solutions
- `D` Have a solution, need validation

### 2) (Optional) Select style archetype

- `clarity-pragmatic`
- `empathy-deep-listening`
- `discovery-continuous`
- `systems-thinking`
- `heuristic-evidence`
- `lean-experiment`

Default blend: `clarity-pragmatic` + `empathy-deep-listening`.

### 3) Follow phase gates

Use `config/phase-gates.yaml` to ensure each phase has required outputs.

## 🧪 Method Menu (Summary)

See full mapping in `config/method-registry.yaml`.

- **Empathize:** user interview, contextual inquiry, diary study
- **Define:** affinity mapping, JTBD framing, journey mapping
- **Ideate:** HMW, crazy 8s, SCAMPER
- **Prototype:** paper prototype, clickable mid-fi, Wizard of Oz
- **Test:** moderated usability, first-click, A/B testing

## ✅ Quality Guardrails

See `config/quality-benchmarks.yaml`.

Mandatory checks:
- assumptions are labeled
- confidence level is explicit
- decision log exists
- next actions are provided

## 📌 Versioning

- Current skill version: `3.0.0`
- Changelog: [`docs/CHANGELOG.md`](./docs/CHANGELOG.md)

## v3 Additions

- New subskills:
  - `ux-persona-builder`
  - `ux-creative-exploration`
  - `ux-handoff-design-spec`
- New configs:
  - `config/thinking-patterns.yaml`
  - `config/output-schemas.yaml`
  - `config/routing-policies.yaml`
- New templates:
  - `templates/persona-canvas.md`
  - `templates/concept-territory.md`
  - `templates/design-handoff.md`

## 🔌 Runtime Ports

- `ports/claude/` contains Claude-compatible packaging docs.
- Build with:

```bash
make claude-package
```

- Output zip:
  - `dist/ux-research-agent-claude.zip`

## 🤝 Contributing

1. Propose changes via issue/PR
2. Keep naming neutral (no person-name presets)
3. Update `CHANGELOG.md` for any functional change
4. Validate skill structure before merge

## 📄 License

Project-private unless explicitly published otherwise.
