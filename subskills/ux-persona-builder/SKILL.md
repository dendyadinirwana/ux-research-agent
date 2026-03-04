---
name: ux-persona-builder
description: Build evidence-backed proto personas and validated personas from research data.
when: Use when user asks for persona creation, persona validation, or audience segmentation.
---

# UX Persona Builder

## Required outputs
- Persona set (primary + secondary)
- Evidence link per persona claim
- Anti-stereotype check
- Confidence score per persona
- Output formatted with `templates/persona-canvas.md`

## Config dependencies
- `config/output-schemas.yaml` → `research_evidence_pack`
- `config/thinking-patterns.yaml` → `mental-model-mapping`, `jobs-framing`

## Rules
- No fictional claims without evidence labels
- Separate observed behavior from assumptions
- Include jobs, pains, gains, triggers, barriers

## Exit criteria
- Persona can be mapped to concrete product decisions
