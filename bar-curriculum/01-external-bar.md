# Part 1 — The External Bar

You cannot beat a standard you cannot name. This file names it. Everything else
in this curriculum is measured against this list.

## What rigorous AI engineering interviews actually test

Sources: public interview loops at Meta/Google/Stripe, senior ML-engineering
interview guides (Alex Shpunt / "Ace the Machine Learning Interview", ByteByteGo
ML design), and 2025–2026 AI-engineering hiring write-ups. These match the four
areas below.

### Area 1 — Software fundamentals

This is where data scientists fail AI engineering interviews.

- Clean code: naming, decomposition, error handling, code review responses.
- Testing: unit/integration tests, test pyramid, mocking, property tests.
- Data structures and algorithms: the practical middle tier (hash maps, heaps,
  graphs, complexity analysis) — not competitive programming.
- API design: REST/gRPC contracts, versioning, backward compatibility, pagination.
- Concurrency and async: where it bites in serving and pipeline code.
- Git and CI/CD: branches, PR hygiene, build pipelines, rollback.

### Area 2 — ML system design

The interview question shape: "Design X under constraint Y."

- Retrieval architecture: chunking, embeddings, hybrid search, reranking,
  freshness/refresh strategies.
- Model selection trade-offs: hosted API vs open weights, latency vs quality
  vs cost budgets.
- Serving: batching, caching, streaming, autoscaling, p50/p95/p99 latency.
- Degrading gracefully: fallbacks, timeouts, circuit breakers, guardrails.
- Data systems: batch vs streaming, feature/storage consistency, backfills.
- Cost engineering: cost per request, token budgets, cache hit rates.

Practice question set (work through over months):

1. Design a customer support assistant for 10M tickets/year under $0.05/query.
2. Design a semantic search service over 50M documents with sub-200ms latency.
3. Design a document-extraction pipeline with an accuracy SLA and human review.
4. Design an internal RAG assistant over 10 years of company wiki + tickets.
5. Design the evaluation and rollout process for a model upgrade in production.

### Area 3 — LLM-specific production practice

- Evaluation: golden sets, LLM-as-judge (and its failure modes), regression
  testing prompts, A/B vs offline eval trade-offs.
- RAG in production: chunking strategy, evaluation of retrieval separately from
  generation, hallucination detection.
- Prompt management: versioning, prompt regression tests, prompt/parameter
  observability.
- Fine-tuning judgment: when it is worth it, LoRA vs full, evaluation before
  and after.
- Guardrails and safety: input/output filtering, injection defense, PII.
- Observability: tracing multi-step chains, token/latency/cost metrics,
  online eval sampling.

### Area 4 — Ownership stories

Interviewers probe for one production system you shipped end to end.

- You built it, it runs, it has users.
- You can say what broke, how you found it, what you changed.
- You have numbers: before/after on time, cost, quality, error rate.

If you cannot tell this story, every other area gets discounted. Building the
story is therefore a curriculum goal, not an afterthought.

## Self-score checklist

Score each row 1–5. 1 = never done, 3 = done once with help, 5 = done in
production without hand-holding. Use `templates/scorecard.md` to track it over
time.

| Area | Row | Score |
|---|---|---|
| Fundamentals | Shipped code with unit tests through PR review | |
| Fundamentals | Designed and documented an API others consumed | |
| Fundamentals | Used CI/CD (build, test gates, deploy) on a real project | |
| System design | Passed a mock system-design interview at senior level | |
| System design | Made an explicit latency/cost trade-off and defended it | |
| LLM practice | Built an eval harness with a golden set | |
| LLM practice | Ran prompt regression tests before a change | |
| LLM practice | Shipped a RAG or agent system with observability | |
| Ownership | One production system you can walk through end to end | |
| Ownership | Have hard numbers (cost/latency/quality) for that system | |

Interpretation:

- Any 1–2 row is a gap. Feed it directly into the daily practices (Part 2).
- All rows at 4+: you are market-ready for AI engineering roles. Act on it
  (see Part 4).
