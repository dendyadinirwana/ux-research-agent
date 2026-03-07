# ux-research-agent

> Modular UX research skill for OpenClaw, optimized for evidence-based synthesis and human-readable delivery.

[![Status](https://img.shields.io/badge/status-active-success)](https://github.com/dendyadinirwana/ux-research-agent)

## TL;DR
- Phase-gated UX research workflow (Empathize → Define → Ideate → Prototype → Test)
- Built as an OpenClaw skill with Claude-compatible packaging
- Includes method registry, style archetypes, and quality guardrails for repeatable outputs

---

## Why this exists
Most teams have many UX templates but inconsistent execution quality. `ux-research-agent` enforces discipline with phase gates, method registries, and decision-log structure while preserving flexible, humanized outputs for stakeholders.

---

## Features
- **Phase gates** in `config/phase-gates.yaml` to enforce stage completion quality
- **Method registry** in `config/method-registry.yaml` to map research goals to methods
- **Style archetypes** in `styles/` to control delivery voice while staying evidence-based
- **Quality benchmarks** in `config/quality-benchmarks.yaml` for confidence labels, assumptions, and next actions
- **Claude + OpenClaw bridge** in `ports/claude/` for portable packaging and reuse

---

## Repository layout

```txt
.
├── SKILL.md
├── README.md
├── CHANGELOG.md
├── LICENSE
├── Makefile
├── config/
├── docs/
├── ports/
├── references/
├── scripts/
├── styles/
├── subskills/
├── templates/
└── dist/
```

---

## Getting started
1. Install [OpenClaw CLI](https://docs.openclaw.ai) and ensure `openclaw` is in your PATH.
2. Clone this repository:
   ```bash
   git clone https://github.com/dendyadinirwana/ux-research-agent.git
   ```
3. Place the folder into your OpenClaw workspace skills directory.
4. Trigger the skill through normal prompt routing or your configured command system.
5. Optional: build Claude-compatible package:
   ```bash
   make claude-package
   ```

---

## OpenClaw + Claude workflow
- OpenClaw uses `SKILL.md` and `subskills/` entry points for routing.
- Claude packaging docs and assets live in `ports/claude/`.
- Generated distributable artifacts are written to `dist/`.

---

## Example usage pattern
1. Trigger UX research intent.
2. Run discovery and evidence intake.
3. Produce structured outputs (insights, decisions, risks, next actions).
4. Export/report in stakeholder-ready narrative style.

---

## Contributing
1. Open an issue/PR for changes.
2. Keep naming neutral and anonymized.
3. Update `CHANGELOG.md` for notable changes.
4. Validate packaging/scripts before merge.

---

## License
MIT
