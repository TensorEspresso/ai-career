# Part 2 — Daily Quality Bar

Import market standards into daily work. Your company does not require these.
Do them anyway, because they are exactly what rigorous interviews probe. Low-bar
surroundings then raise your visibility without lowering your ceiling.

## The non-negotiables (do these on every project)

1. **Tests for every model or prompt change.** Build an eval set even for small
   projects. A golden set of 20–50 examples beats no golden set.
2. **Design docs before building.** One page: problem, options considered,
   trade-offs, failure modes, how you will measure success. This is exactly what
   senior interviews probe.
3. **Instrument what you ship.** Logging, latency, cost per request, error
   rates. For LLM systems: token counts and trace IDs per request.
4. **Code review discipline.** Treat every PR like a reviewer at a rigorous
   company will read it. Small PRs, description that explains *why*, tests in
   the same PR.

## The weekly input (1 hour)

Read one production AI engineering write-up per week. Rotate sources:

- Google: "Rules of ML" and "Hidden Technical Debt in ML Systems" (papers).
- Engineering blogs with mature ML: DoorDash, LinkedIn, Shopify, Notion,
  Intercom — all publish LLM pipeline postmortems and architecture posts.
- Newsletter depth: Latent Space podcast/blog, Chip Huyen's blog (huyenchip.com).

Active step: after each read, copy one pattern into a current project, or write
three sentences on why it does not apply. Reading without transferring is
entertainment.

## The monthly check (15 minutes)

1. Open `templates/scorecard.md`.
2. Ask: did any non-negotiable get skipped this month? Which one and why?
3. Skipped twice? The practice is too heavy for your workload. Shrink its scope
   (e.g. eval set of 10 examples instead of 50), never drop it.

## Anti-patterns specific to low-bar environments

- **"We can move fast because nothing breaks yet."** Nothing breaks because
  nobody is measuring. Add one metric; the truth appears.
- **Notebook-to-production without a seam.** Keep the modeling code separable
  from the serving code. Even a thin API boundary makes the system interviewable.
- **Invisible debt feels like speed.** Log trade-offs you consciously accept
  ("no retries this quarter, risk accepted") in the design doc. That document
  becomes senior-level evidence later.

## Tie to study content

When a non-negotiable exposes a knowledge gap, go to the matching phase in
`swe-fde-curriculum.md` (phase 1–3 cover Python depth, APIs, serving) or
`portfolio-plan.md` (evals week, production week). Part 2 is the discipline;
those files are the lessons.
