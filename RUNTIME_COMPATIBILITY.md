# Runtime Compatibility Matrix

## Scope
Core skill: `ux-research-agent` (phase gates, method registry, quality benchmarks, style archetypes)
Target runtimes: Claude, Antigravity Agent Mode, Codex

---

## 1) Capability Matrix (High-Level)

| Capability | Claude | Antigravity Agent Mode | Codex |
|---|---|---|---|
| Deep qualitative synthesis | **Strong** | Medium | Medium |
| Multi-step orchestration | Medium | **Strong** | Strong |
| Deterministic file ops/config generation | Medium | Strong | **Strong** |
| Narrative stakeholder output | **Strong** | Medium | Medium |
| Strict schema adherence | Medium | Strong | **Strong** |
| Fast repo maintenance changes | Medium | Medium | **Strong** |

---

## 2) Recommended Role per Runtime

- **Claude:** Lead for empathy, synthesis, problem framing, narrative briefing.
- **Antigravity:** Lead for process control (phase transitions, gate checks, run-state continuity).
- **Codex:** Lead for implementation artifacts (configs, templates, docs, lint/fix loops, repository automation).

---

## 3) Porting Targets by Runtime

### Claude Port
**Optimize for:**
- Evidence-first synthesis language
- Clear assumption/fact labeling
- Rich narrative output for stakeholders

**Guardrails:**
- Max verbosity per section
- Mandatory confidence tagging (HIGH/MEDIUM/LOW)
- Require explicit source-evidence mapping

### Antigravity Port
**Optimize for:**
- Gate-driven progression by phase
- Stateful continuation (resume from last phase)
- Task orchestration and quality checks

**Guardrails:**
- Block phase advancement if required outputs missing
- Trigger warnings for low sample size
- Enforce next-action owner/timeline in each step

### Codex Port
**Optimize for:**
- Deterministic templates and config generation
- File-based outputs and diffs
- Repeatable command-style execution

**Guardrails:**
- Strict output schema (JSON/YAML table blocks)
- Explicit fallback behavior for missing data
- Mandatory changelog updates on structural changes

---

## 4) Feature Support Matrix

| Core Feature | Claude | Antigravity | Codex | Notes |
|---|---|---|---|---|
| `phase-gates.yaml` enforcement | Partial | **Full** | Full | Claude can follow, Antigravity best at strict gating |
| `method-registry.yaml` routing | Full | **Full** | Full | Equivalent across all runtimes |
| `quality-benchmarks.yaml` blockers/warnings | Full | **Full** | Full | Codex best for deterministic checks |
| Style archetype blending | **Full** | Full | Partial | Codex can apply rules but less nuanced narrative blending |
| Running doc updates | Full | **Full** | Full | Antigravity strongest for checkpoint discipline |
| Decision log + trade-offs | **Full** | Full | Full | Claude strongest for reasoning quality |

---

## 5) Deployment Strategy

1. Keep `core/` logic runtime-neutral (current files in `config/`, `styles/`, `subskills/`).
2. Add runtime adapters under `ports/`:
   - `ports/claude/`
   - `ports/antigravity/`
   - `ports/codex/`
3. Each adapter defines:
   - Prompt/instruction conventions
   - Output schema expectations
   - Fallback/retry behavior
4. Regression check: run same scenario pack across three ports and compare:
   - Phase compliance
   - Output completeness
   - Confidence and evidence quality

---

## 6) Practical Recommendation

Use a **hybrid operating model**:
- Discovery & synthesis heavy tasks → Claude
- Process execution & gate control → Antigravity
- Artifact/build/maintenance tasks → Codex

This combination gives high quality insight + operational consistency + implementation speed.
