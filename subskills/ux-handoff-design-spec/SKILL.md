---
name: ux-handoff-design-spec
description: Convert research outcomes into implementation-ready design handoff packs.
when: Use when user asks to bridge research into product/design execution.
---

# UX Handoff Design Spec

## Required outputs
- Insight-to-design mapping
- Priority recommendations
- Component/flow implications
- Owner + timeline + validation plan
- Output formatted with `templates/design-handoff.md`

## Config dependencies
- `config/output-schemas.yaml` → `design_handoff_pack`
- `config/routing-policies.yaml` → recommendation evidence checks

## Rules
- Every recommendation must cite evidence
- Every recommendation must include trade-off notes

## Exit criteria
- Delivery team can execute next sprint with minimal ambiguity
