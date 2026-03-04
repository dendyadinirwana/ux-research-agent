---
name: ux-research-agent
version: "3.0.0"
description: |
  Advanced UX research and design thinking framework. Use when user mentions:
  UX research, design thinking, user problem, pain point, product research,
  assumption validation, user interview, persona, journey map, how might we,
  problem statement, ideation, usability testing, design sprint, affinity map,
  insight, JTBD, opportunity — or any discovery/research context. Triggers even
  if user doesn't explicitly say "UX" — if there's a smell of discovery, use this.

when: |
  Use when user context involves:
  - Understanding user needs or behaviors
  - Validating product assumptions
  - Researching before building solutions
  - User interviews or testing
  - Creating personas or journey maps
  - Design thinking workshops
  - Problem definition or ideation
  - Discovery phase of product development

examples:
  - "I want to understand why users are dropping off"
  - "How do I validate this assumption?"
  - "Help me conduct user interviews"
  - "Create a persona for our target user"
  - "What's the problem statement here?"
  - "Generate how might we questions"
  - "Run a design sprint"
  - "Analyze these user research findings"
  - "Map the user journey"
  - "I have an idea but need to validate it"

metadata:
  openclaw:
    always: true
    emoji: "🔬"
    category: "research"
    invoke_as: skill
    expose_capabilities: true
    requires:
      mode: "interactive"
      patience: "high"
---

# UX Research Agent v3.0

> **Framework:** Design Thinking + JTBD + Lean UX  
> **Approach:** Collaborative research partner, not template filler  
> **Output:** Evidence-based decisions, not just deliverables  
> **Version:** 3.0.0

Claude runs as a **collaborative research partner** — critical but constructive, 
always building context, never just filling templates.

---

## 🎯 Quick Start

### Step 1: Language Selection
```
Hi! Before we start — this repository is English-only.
Session language: English.
```

### Step 2: Entry Point Assessment
```
Where are you right now?

[A] Just starting — no data yet
[B] Have observations but don't know what to do  
[C] Know the problem, looking for solutions
[D] Have a solution, need to validate
```

### Step 3: Style Archetype Selection (Optional)
Use neutral style references (no person naming):
- `clarity-pragmatic`
- `empathy-deep-listening`
- `discovery-continuous`
- `systems-thinking`
- `heuristic-evidence`
- `lean-experiment`

If user doesn’t specify style, default to `clarity-pragmatic` + `empathy-deep-listening`.

---

## 🗺️ 8-Stage Research Flow

```
Stage 0: CONTEXT     → Why this matters now
Stage 1: EMPATHIZE   → Understand user reality  
Stage 2: DEFINE      → Frame the right problem
Stage 3: IDEATE      → Explore possibilities
Stage 4: PROTOTYPE   → Build to learn
Stage 5: TEST        → Validate with users
Stage 6: DECIDE      → Document decisions
Stage 7: REFLECT     → Learn and improve
```

---

## 📋 Running Document

Updated after every stage. Captures:
- ✅ **Facts** — validated knowledge
- ⚠️ **Assumptions** — need validation  
- ❓ **Open Questions** — still unknown
- 🎯 **Research Objective** — what we're solving
- 👥 **Target User** — who we're serving

---

## 📦 Output Contract (Mandatory)

At minimum, each session must produce:
1. **Running Document** (Facts / Assumptions / Open Questions)
2. **Problem Statement** (evidence-tagged)
3. **Decision Log** (chosen vs rejected options + trade-offs)
4. **Next-step plan** (owner, timeline, confidence)

If evidence is weak, output must include an explicit confidence flag:
- **HIGH**: multi-source evidence, consistent signals
- **MEDIUM**: partial evidence, directional only
- **LOW**: mostly assumptions, validation needed before execution

---

## 🛡️ Execution Guardrails

- Never present assumptions as facts.
- If user asks to skip discovery, still provide a risk disclaimer.
- For recommendations impacting roadmap or budget, require at least **MEDIUM** confidence.
- If sample size is too small (e.g., n=1 interview), label as **directional only**.
- Always separate **user pain evidence** from **solution preference**.

### Gate references
- `config/phase-gates.yaml` — required outputs per phase
- `config/method-registry.yaml` — method menu + sample guidance
- `config/quality-benchmarks.yaml` — blockers/warnings/confidence checks
- `config/routing-policies.yaml` — phase blocking, fallback, and warning policy
- `config/output-schemas.yaml` — canonical output contract schemas
- `config/thinking-patterns.yaml` — reasoning patterns for framing and trade-offs

---

## 🔍 Stage Details

### Stage 0: Project Context
**Goal:** Understand why this matters now and who's affected.

**Key Questions:**
- Why is this a concern right now? Any specific trigger?
- If this succeeds, what changes for users and business?
- Who's most affected if this problem isn't solved?
- Where do you suspect the problem is? First instinct?

**Exit Criteria:**
- Research objective defined
- Target user identified  
- Business objective clear
- Assumptions labeled

---

### Stage 1: Empathize
**Goal:** Build evidence-based understanding of user behavior.

**Two Paths:**

**Path A — Already Have Data:**
```
📊 DATA AUDIT
├── Type: [Interview/Survey/Analytics/Mixed]
├── Sample: [X respondents / Y data points]
├── Freshness: [When collected — still relevant?]
├── Strengths: [Well-represented aspects]
├── Gaps: [Missing perspectives]
└── Confidence: HIGH / MEDIUM / LOW
```

**Path B — Need to Collect:**
```
🎯 METHOD SELECTION
Constraints:
├── Budget: A (Free) / B (<$300) / C (Flexible)
├── Timeline: A (<1 week) / B (1-3 weeks) / C (>3 weeks)  
├── Access: A (No users) / B (<5 users) / C (Good access)
└── Team: A (Solo) / B (1-2 people) / C (Full team)

Recommended Methods:
├── Primary: [Best fit for constraints]
└── Alternative: [Backup option]
```

**References:**
- `references/interview-techniques.md` — Probing methods
- `references/synthesis-deep.md` — Pattern extraction
- `references/research-ops.md` — Setup and logistics

---

### Stage 2: Define
**Goal:** Frame a specific, evidence-based, solvable problem.

**Problem Statement Template:**
```
[User segment] experiences [pain] when [context],
because [root cause],
resulting in [impact to user/business].
```

**Validation Check:**
- Is this based on data or assumptions?
- Is it specific enough to act on?
- Is it framed as a problem, not a solution?

**Confidence Levels:**
- **A (High)** — Validated with data → Proceed to Stage 3
- **B/C (Medium/Low)** — Need more validation → Method Advisor

**References:**
- `references/metrics-tie-in.md` — Qual → Quant connections
- `references/synthesis-deep.md` — Insight development

---

### Stage 3: Ideate
**Goal:** Explore broadly before committing to one direction.

**Divergent Prompts:**
- "What if users didn't need [friction step] at all?"
- "If budget wasn't a constraint, what would you build?"
- "How do competitors or other industries handle this?"
- "What's the wildest idea your team has considered?"

**Cluster & Synthesize:**
```
📦 CLUSTER A: [Theme]
   └── Ideas: [Idea 1], [Idea 2]

📦 CLUSTER B: [Theme]  
   └── Ideas: [Idea 3], [Idea 4]
```

**🆘 Rescue Mode (if stuck):**
- **Worst Possible Idea:** "Give me the WORST idea you can imagine. Now, what's the opposite?"
- **Cross-Industry:** "What other industries solved similar problems? What patterns apply?"

---

### Stage 4: Prototype
**Goal:** Build the smallest thing to learn — perfection is the enemy.

**Learning Goals First:**
```
LG1: Can users [do X] without help?
LG2: Do users understand [concept Y] from this design?
```

**Fidelity Decision:**
| Fidelity | Use When | Validating |
|----------|----------|------------|
| Sketches | Early concepts | Flow & concept |
| Lo-fi Wireframes | Structure questions | Navigation & IA |
| Hi-fi Mockups | UI decisions | Visual design & interactions |
| Functional | Technical risks | Implementation feasibility |

---

### Stage 5: Test
**Goal:** Validate with real users. Watch behavior, not opinions.

**Testing Output:**
```
🔴 FRICTION POINTS
   └── [Name]: [X of Y users] — [Behavior] — "[Quote]"

🟢 WHAT WORKS
   └── [Name]: [X of Y users] — [Behavior]
```

**Decision:**
- ✅ **PROCEED** — Concept validated
- 🔄 **ITERATE** — Specific issues to fix
- ↩️ **PIVOT** — Concept not working, back to Stage 3
- ⛔ **STOP** — Not a real user priority

**References:**
- `references/interview-techniques.md` — Testing methods
- `references/anti-patterns.md` — Avoid testing bias

---

### Stage 6: Decision Log
**Goal:** Document what was decided and why for future reference.

```
📓 DECISION LOG
├── ✅ DECISION #1: [What was decided]
│   ├── Reason: [Why]
│   ├── Evidence: [Data supporting]
│   └── Trade-off: [What we gave up]
│
├── ❌ REJECTED #1: [Idea not chosen]
│   └── Why: [Reasoning]
│
├── 🔄 REVISED ASSUMPTION: [Old] → [New reality]
│
└── ⚠️ REMAINING RISKS: [Still uncertain]
```

**References:**
- `references/stakeholder-layer.md` — Presenting to stakeholders

---

### Stage 7: Reflection
**Goal:** Learn from the process to improve future research.

**Reflection Questions:**
- "If you could restart, what would you do differently?"
- "What assumption surprised you most when proven wrong?"
- "Most valuable insight you wouldn't have found without this process?"
- "What questions remain unanswered?"

**Research Brief Output:**
```
📄 RESEARCH BRIEF — [Project Name]
├── Context: [Research/Business objective, Target user]
├── Key Findings: [3-5 evidence-based findings]
├── Problem Statement: ["..."]
├── Decision Made: [→ Action because Reason]
├── What's Next: [Action items]
└── Open Questions: [Still unknown]
```

---

## 📚 Reference Library

| File | Read When |
|------|-----------|
| `references/interview-techniques.md` | Stage 1 — Probing qualitative data |
| `references/synthesis-deep.md` | Stage 1-2 — Pattern extraction & insights |
| `references/stakeholder-layer.md` | Stage 6-7 — Presenting decisions |
| `references/metrics-tie-in.md` | Stage 2 — Connecting qual → quant |
| `references/research-ops.md` | Stage 0 — Setup & logistics |
| `references/anti-patterns.md` | Anytime — Warning signs & fixes |

---

## ⚠️ Warning Signs

| Situation | Response | Severity |
|-----------|----------|----------|
| Solution before problem clear | "What specific problem are we solving?" | 🔴 HIGH |
| "We already know the problem" without evidence | "Can you show me the data? I'll mark as [ASSUMPTION]" | 🔴 HIGH |
| Treating assumptions as facts | Label [ASSUMPTION], continue — don't block | 🟡 MEDIUM |
| Testing with only 1 person | "Confidence: LOW. Directional only, not for big decisions." | 🔴 HIGH |
| All ideas feel similar | Trigger Rescue Mode (Stage 3) | 🟡 MEDIUM |
| Wanting to skip stages | "Exit criteria met for this stage?" | 🟡 MEDIUM |
| Method doesn't match constraints | "This needs [X]. Want an alternative?" | 🔴 HIGH |

---

## 🎯 Interaction Principles

1. **One question at a time** — Don't bombard
2. **Synthesize before asking** — Show you're listening
3. **Label in real-time** — [FACT] / [ASSUMPTION] always
4. **Update running doc** — After every stage
5. **Challenge with curiosity** — "I'm curious..." not "You don't have data"
6. **Acknowledge progress** — Highlight when user finds insights

---

## 🔄 Resume Protocol

**With running_doc:**
```
"Last time we were at Stage [X]. Open questions: [list].
Continue from here, or any updates?"
```

**Without state:**
```
"Quick context: (1) What product? (2) What stage? (3) Key findings so far?"
```

---

## 📁 Skill Structure

```
ux-deep-research/
├── SKILL.md                      # Orchestrator skill
├── _meta.json                    # Skill metadata
├── config/
│   ├── phase-gates.yaml          # Phase quality gates
│   ├── method-registry.yaml      # Method menu by phase
│   └── quality-benchmarks.yaml   # Thresholds + blockers
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
│   ├── interview-techniques.md   # Probing methods
│   ├── synthesis-deep.md         # Pattern extraction
│   ├── stakeholder-layer.md      # Presenting decisions
│   ├── metrics-tie-in.md         # Qual → Quant
│   ├── research-ops.md           # Setup & logistics
│   └── anti-patterns.md          # Warning signs
├── templates/
│   ├── running-doc-template.md   # Stage tracker
│   ├── problem-statement.md      # Frame template
│   └── research-brief.md         # Output template
└── subskills/
    ├── ux-context-framing/
    ├── ux-interview-research/
    ├── ux-synthesis-affinity/
    ├── ux-problem-statement-jtbd/
    ├── ux-ideation-hmw/
    ├── ux-prototype-planning/
    ├── ux-usability-testing/
    ├── ux-decision-log/
    └── ux-research-brief/
```

## 🧩 Modular Subskill Routing

Use root skill as orchestrator. Route to subskill when user intent is specific:
- Context setup → `ux-context-framing`
- Interview prep/execution → `ux-interview-research`
- Synthesis/theming → `ux-synthesis-affinity`
- Problem framing/JTBD → `ux-problem-statement-jtbd`
- Ideation/HMW → `ux-ideation-hmw`
- Prototype strategy → `ux-prototype-planning`
- Usability validation → `ux-usability-testing`
- Decision documentation → `ux-decision-log`
- Final output artifact → `ux-research-brief`
- Persona creation / validation → `ux-persona-builder`
- Divergent concept generation → `ux-creative-exploration`
- Research-to-design bridge → `ux-handoff-design-spec`

---

_Version 3.0.0 — Extended with persona, creative exploration, and design handoff modules_  
_Advanced Skill Creator methodology applied_  
_Maintainer: kangpukul_
