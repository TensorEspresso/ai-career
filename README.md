# AI Engineer Career Path

A single folder for the career-planning work behind an AI-engineer / forward-deployed-engineer (FDE) track: a skill tree built from primary sources, the long-form curricula it sits on top of, and a role-specific build plan. The skill tree is the centerpiece; the markdown docs are the source material and the deeper plans.

## Start here

- [AI Engineer Skill Tree](skill-tree.html) — interactive. Built from Andrew Ng's 2026 AI Engineering Skills Map + his "three loops" framework. Node status is color-coded to a specific profile (green = already have, red = gap, gold = differentiator), with a critical path and a validation section. Open in a browser; click branch headers to collapse/expand.
- [AI Engineering → FDE Curriculum](swe-fde-curriculum.md) — the long-form path: 6 phases, a current-vs-target skill matrix, and the reasoning for FDE over generic SWE.
- [AI Engineering Skills Map — Growth Plan](ai-engineering-plan.md) — the Ng Skills Map transcribed from primary sources with a 10-week curriculum mapped onto it.
- [AI Workflow Engineer — Skill Build Plan](portfolio-plan.md) — a role-specific 12-week plan (RAG → multi-agent → evals → production → fine-tuning) tied to specific target employers and a GitHub-visibility checklist.
- [Bar Curriculum](bar-curriculum/README.md) — how to hold yourself to external standards inside a low-bar job: the interview-level bar checklist, daily quality practices, external-proof assets, calibration cadence, and a 90-day starter plan.

## How the pieces fit

```
skill-tree.html            <- THE CENTERPIECE. One screen: Ng's 4-branch map,
                              your gap status, critical path, validation.
swe-fde-curriculum.md      <- the full path the tree is a summary of (phases,
                              skill matrix, FDE-vs-SWE reasoning).
ai-engineering-plan.md     <- the Ng Skills Map + a 10-week curriculum built on it.
portfolio-plan.md          <- the job-targeted build plan (phases + deliverables).
```

Read the skill tree first. If you want the full reasoning, the FDE curriculum; if you want a week-by-week plan, the growth plan; if you want role-specific deliverables, the build plan.

## Provenance

- The skill tree transcribes Ng's AI Engineering Skills Map (The Batch issue-366, Aug 14 2026) and all four deep-dives — issue-367 building & deploying (Aug 21), issue-368 software fundamentals (Aug 28), issue-369 coding agents (Sep 4), issue-370 shaping the build (Sep 11). Sub-skill names are Ng's own lists, re-verified against the primary letters on 2026-11-13. The three-loops cross-reference is issue-359 (Jun 26 2026). Course links point to the live DeepLearning.AI short-course catalog (47 courses, checked 2026-09-10).
- Node status (green/red) is a mapping of a specific engineer's profile onto the map, not from Ng.
- The markdown docs predate the tree and carry their own source lists.

## License

MIT — see [LICENSE](LICENSE).
