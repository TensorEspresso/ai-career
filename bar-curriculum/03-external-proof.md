# Part 3 — External Proof

Internal visibility does not transfer between companies. External proof does.
Three assets, built slowly.

## Asset 1 — Private portfolio (ongoing)

Keep a private repo (private GitHub is fine) with one folder per project:

- Architecture diagram (even a hand-drawn one photographed).
- What shipped, who used it, what broke.
- Eval results and before/after numbers: time, cost, quality, error rate.
- The design doc you wrote up front.

Redact everything company-confidential: names, data, internal tools. Methods
and lessons transfer; specifics do not. Update within one week of any
significant work event — memory fades and redaction is easier fresh.

## Asset 2 — Technical writing (2–3 posts, spread over the year)

Write short posts about problems you solved. Rules:

1. No company secrets — methods, trade-offs, lessons only.
2. One problem per post. Structure: context → options → choice → result.
3. Publish where hiring people read: LinkedIn, a personal blog, or dev.to.
   Consistency matters less than one post that shows real thinking.

Writing forces you to organize your thinking. Interview answers improve
directly from this exercise.

## Asset 3 — Personal project with modern tooling (always current)

One project that proves the engineering your day job may not showcase.
Requirements:

- A RAG or agent system (see `portfolio-plan.md` for the 12-week build).
- Tests + an eval harness in CI (GitHub Actions).
- Deployed somewhere real (Fly.io, Railway, a VPS) with uptime you can show.
- A README that reads like a design doc: constraints, trade-offs, numbers.

Rule: this project must be *more* rigorous than anything at work. It is your
counter-evidence against the low-bar environment.

## The ownership story (the capstone)

From the three assets, write one 1-page story you can deliver in an interview
in 5 minutes:

1. The business problem and why it mattered (dollars if possible).
2. Your design and the trade-offs you chose.
3. What broke in production and how you fixed it.
4. Numbers: before/after.

Update it every quarter. When you cannot update it with new material, that is
a signal (see Part 4).
