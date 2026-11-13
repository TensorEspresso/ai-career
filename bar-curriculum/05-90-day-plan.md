# Part 5 — The 90-Day Plan

The first quarter, concrete. Assume 5–8 hours/week outside day job. Each step
names the file it comes from.

## Weeks 1–2: Baseline

1. Fill in `templates/scorecard.md` — score all 10 rows in `01-external-bar.md`.
2. Pick your two weakest rows. These set the study focus for the quarter.
3. Create `gap-log.md` in this folder (empty, with the format header).
4. Read Google "Rules of ML" end to end.

## Weeks 2–6: First work project upgrade (Part 2)

1. Pick one real project at work that touches models, prompts, or AI features.
2. Build an eval harness for it: golden set (start with 20 examples), a runner
   script, a pass/fail report.
3. Add regression discipline: no prompt/model change without an eval run.
4. Write the one-page design doc for it, even retroactively. This is your first
   senior-level artifact.
5. Measure one number end to end: cost per request, latency, or error rate.

## Weeks 4–10: Personal project (Part 3 asset)

Parallel track. Follow the build in `portfolio-plan.md` (RAG → multi-agent →
evals → production):

1. Weeks 4–6: RAG service with tests.
2. Weeks 6–8: CI (GitHub Actions) with test + eval gates.
3. Weeks 8–10: deploy (Fly.io/Railway), add logging and cost tracking.
4. README written like a design doc.

## Weeks 6–8: First writing piece (Part 3)

1. Draft a short post: the eval harness problem from your work project (methods
   only, no company details) or the personal project's architecture choice.
2. Publish it. Imperfect and public beats perfect and private.

## Week 12: Calibration (Part 4)

1. Book one real interview (or a mock if that is the honest option) at a company
   with a known bar.
2. Within one week: write the gap list into `gap-log.md`.
3. Re-score `templates/scorecard.md`. Compare against the week-1 baseline.

## Week 13: Review and loop

1. Read your own numbers: baseline vs week 13.
2. Set the next quarter's two focus rows.
3. Decide the manager conversation (per `portfolio-plan.md`'s internal-plan
   section) — do not let internal talk happen before you have shipped something.

## Weekly rhythm under all of it

- 3×/week: project work (work harness or personal project).
- 1×/week: one production write-up read (list in `02-daily-quality-bar.md`).
- 1×/month: 15-minute scorecard review.
