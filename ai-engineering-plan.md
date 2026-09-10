# AI Engineering Skills Map — Growth Plan

_Created: 2026-09-06 · Source-verified against Andrew Ng / DeepLearning.AI primary letters_

---

## 1. The Skills Map (primary source)

Published by Andrew Ng in The Batch (Aug 14, 2026), built from analysis of 10,000+ job postings, structured interviews with AI experts/hiring managers/recruiters, and surveys.

**Four pillars** (Ng's framing: these are skills *every developer* will need — his analogy is cloud skills — not just for the "AI Engineer" title):

1. **Building and deploying AI applications**
2. **Software engineering fundamentals**
3. **Using coding agents**
4. **Shaping the build**

Underlying all four: a **continuous-learning mindset** — the field changes faster than any static curriculum.

> ⚠️ Sourcing note: secondary blogs (e.g. traversaal.ai) claim a "six expanded skills" second tier. That tier is **not in Ng's primary letters** and should be treated as unverified/likely fabricated. The real structure is 4 pillars × 5–6 sub-skills each, as detailed below.

---

## 2. Sub-skill trees (from Ng's pillar deep-dive letters)

### Pillar 1 — Building and deploying AI applications (letter: Aug 21, 2026)

Key premise: AI app outputs are **unpredictable**, so building AI systems is inherently iterative — build → examine → decide next step, repeatedly.

| Sub-skill | What it covers |
|---|---|
| LLM foundations | Tokenization, generation mechanics, multimodal models, context-window tradeoffs, cache hits, knowledge cutoff, reasoning effort, sampling params, tool calling, fine-tuning, self-hosting |
| Grounding models with data | Prompt vs. retrieve-on-demand decisions; vector index vs. knowledge graph vs. semantic layer over structured data; doc→LLM-ready input pipelines; keeping data clean and fresh |
| Building agentic systems | Workflows (predefined LLM call sequences) vs. agent harnesses (LLM decides next step); architecture choices (what to chain/parallelize, code vs. LLM); tool selection incl. MCP/CLI/sandbox execution; memory architecture; long-session context; multi-agent orchestration; guardrails, adversarial inputs, exfiltration risk, governance; voice/computer-use/generative-UI edge cases |
| Evaluation-driven development | **The trait Ng says most distinguishes great AI builders**: disciplined evals/error-analysis loops. Traces + EDA + product insight to decide what to measure; deterministic vs. LLM-as-judge vs. human-in-the-loop evals; evaluating and evolving the evals themselves |
| Operating in production | Observability for real usage; performance tracking; drift detection; model-failure and security-incident (prompt injection) response; regression testing and CI/CD with more statistical rigor than traditional software |
| ML foundations | Classical ML for the non-LLM parts of the stack |

### Pillar 2 — Software engineering fundamentals (letter: Aug 28, 2026)

Key premise: even when a coding agent writes all the code, you must understand the fundamentals to know what tradeoffs exist — otherwise the agent makes poor ones and you can't steer it.

| Sub-skill | What it covers |
|---|---|
| Building full-stack applications | Front + back end: UI components, caching, page rendering, API choice/design, auth, state & session management, async processing, persistence, testing, security, accessibility |
| Managing data | Access patterns → storage type (relational/document/KV/graph), transactions, concurrency, cleanliness/consistency/freshness, privacy/governance/compliance, data lifecycle, evolving data architecture — and that data architecture is the AI's own context ("if data architecture is chosen poorly, the AI doesn't know what it doesn't know") |
| Designing system architectures | Application platform, front/back boundary, system decomposition, state placement, monolith vs. microservices, stack selection (sometimes via experiments); architecture as a **moving target by project phase** (prototype ≠ first production ≠ scaled) |
| Making systems secure and reliable | Test strategy (unit/integration mix, coverage); design around failures, graceful degradation, blast-radius minimization; "shift left" security; AI-assisted vulnerability scanning, dependency/supply-chain checks, cloud-config attack-surface review |
| Scaling and operating in production | Deploying to production, operating software at scale (letter continues beyond captured text) |

### Pillar 3 — Using coding agents (letter: Sep 4, 2026 — most recent)

Key premise: this skill is evolving **faster than the other three**; requires continuous experimentation. High-level workflow: **Planning → Execution → Deploy & Monitor** (all iterative; you now focus on what to build, architecture, spec, and verification rather than code).

| Sub-skill | What it covers |
|---|---|
| Directing the workflow | Brainstorm/research → spec (requirements, technical design, architecture) → execution plan → plan review (assumptions, security, overengineering). Calibrate human vs. agent effort per step; when to loop back; decompose into verifiable steps; greenfield loose prompt vs. brownfield heavy spec |
| Enabling agent autonomy | Autonomy level selection (interactive vs. delegated vs. loop-until-success); careful context management across build phases (capture changing learnings/assumptions for downstream); parallel agents + orchestration (human or higher-level agent); managing human attention across concurrent sessions; safe agent operation (permissions, action gating, leak/data-loss risk) |
| Reviewing the work | Behavioral + functional verification matched to task; user-flow testing (agent-provided screenshots as evidence); eval sets + LLM-as-judge for qualitative checks; deciding how much testing to automate so the agent can self-verify; evaluating the tests themselves; agentic code review + AI security/architecture audits; judicious human review when AI review is insufficient |
| Customizing the agent and its environment | (Covered in letter; tooling/extension configuration) |
| Coding agent foundations | Mental model of how agents work and where they fail |

### Pillar 4 — Shaping the build (detailed letter: not yet published as of Sep 6, 2026)

From the original letter: product sense, business context, customer goals; deciding **what goes in the spec**; knowing when to rush an MVP vs. slow down and build carefully; taking ownership/agency in identifying problems and opportunities; driving projects forward responsibly.

---

## 3. Gap analysis vs. current profile

**Profile:** DS → AI Eng → FDE career track. Strong Python/SQL/PyTorch/pandas. Stated weak areas: serving, MLOps, APIs, deployment. Running Tensorient (local inference, AI services). Daily operator of multi-agent coding workflows (Hermes: subagents, cron, skills, eval harnesses).

| Pillar | Assessment |
|---|---|
| 1. Building/deploying AI apps | **Build: strong. Deploy: weak** — serving/MLOps/APIs is the stated gap. Evals: already ahead of most (eval-harness design + specialty-mapper truth set with 883-name bijection). Grounding: has the problem, not the decision framework (vector vs. graph vs. semantic layer). Agentic systems: practices it, not formalized. Production ops: not done yet |
| 2. SE fundamentals | Strong coding; gaps in API design, AI-system architecture tradeoffs, shift-left security. Data management: strong (SQL) but the "data architecture as AI context" framing is new |
| 3. Using coding agents | Practically elite (daily Hermes/multi-agent use) but largely **tacit** — the skill is formalizing context management, autonomy calibration, and verifier design into an articulable, reusable SOP |
| 4. Shaping the build | Founder/FDE mode = done daily for Tensorient; gap is the disciplined MVP loop and product metrics, not concept |

**Plan logic:** not "learn AI" — close the deployment gap, formalize agent practice, systematize the founder loop.

---

## 4. Curriculum — 10 weeks, ~4–5 h/week

Format: ~1 h course/video per week + ~3 h build time on a real Tensorient project.

### Phase 1 — Deployment (weeks 1–4) → Pillars 1+2 production sub-skills

| Wk | Focus | Deliverable |
|---|---|---|
| 1 | FastAPI + Docker + auth + rate limiting | specialty-mapper containerized as a real HTTP service (retire the :8645 demo) |
| 2 | Efficient inference (SGLang course, fresh on DeepLearning.AI — text + image) | Benchmark vs. llama.cpp/5090 stack; write up when-each-wins |
| 3 | Observability: LangSmith/Langfuse trace-level tracing; drift + prompt-injection incident response | Mapper instrumented; error-analysis loop over real traces |
| 4 | Statistical CI/CD regression testing over existing eval truth set | **Capstone:** one service deployed end-to-end (API → container → traces → evals in CI) |

### Phase 2 — Architecture + grounding (weeks 5–6)

| Wk | Focus | Deliverable |
|---|---|---|
| 5 | Grounding decision: taxonomy as knowledge graph vs. vector index vs. semantic layer over structured data | Redesign mapper data layer; pick + document the tradeoff reasoning for the 883-name dataset |
| 6 | Architecture + shift-left security | Architecture doc for a second Tensorient service: stack choice, monolith vs. decomposition, failure design, AI-assisted vulnerability/supply-chain scanning |

### Phase 3 — Formalize the agent practice (weeks 7–8) → Pillar 3

| Wk | Focus | Deliverable |
|---|---|---|
| 7 | Spec-Driven Development with Coding Agents (course) | Written SOP: context management, autonomy calibration, verifier design — extracted from daily Hermes practice |
| 8 | Agentic-systems hardening (Pillar 1 sub-skill) | MCP/sandbox choices, guardrails, exfiltration test against your own agents |

### Phase 4 — Shaping the build (weeks 9–10) → Pillar 4

| Wk | Focus | Deliverable |
|---|---|---|
| 9 | Product scoping + MVP | 3 candidate products → score vs. customer goals → 5-day throwaway MVP → 3 real users |
| 10 | Retro + synthesis | Keep/kill write-up; self-score against full map; publish a "what I built" post + the Phase 3 SOP as a reusable asset |

### Skip/review-only (strong already)
LLM foundations, ML foundations, core data management (SQL base), ~80% of Pillar 3 practice — 1–2 h review each at most.

---

## 5. Open questions (calibrate before locking)

1. **Goal weighting** — (a) make Tensorient's offering production-grade, (b) market positioning ("AI engineer" title/FDE credibility), or (c) both? → shifts Phase 1 vs. Phase 4 weight.
2. **Cadence** — 10 weeks at ~4–5 h/week, or compress to ~6?
3. **Tracking** — convert to todo list + weekly cron nudge (like the Saturday CFB watch list)?

---

## 6. Sources

- The AI Engineering Skills Map — The Batch, Aug 14, 2026: deeplearning.ai/the-batch/the-ai-engineering-skills-map
- Pillar 1 deep-dive: charonhub.deeplearning.ai/he-ai-engineering-skills-map-in-detail-building-and-deploying-ai-applications/
- Pillar 2 deep-dive: charonhub.deeplearning.ai/the-ai-engineering-skills-map-in-detail-software-engineering-fundamentals/
- Pillar 3 deep-dive: charonhub.deeplearning.ai/the-ai-engineering-skills-map-in-detail-using-coding-agents/
- Pillar 4: no detailed letter yet as of Sep 6, 2026 — content above is from the original Aug 14 letter
- Course catalog: andrewng.org/courses
