# AI Engineering → Forward-Deployed Engineer Curriculum

**Author:** Andy (Data Scientist → AI Eng → FDE transition)
**Date:** July 2026
**Source research:** roadmap.sh, FDE Academy, PostHog, GeeksforGeeks, Paraform

---

## Starting Point

**Strong:** Python, SQL, pandas, sklearn, PyTorch — data manipulation, algorithmic thinking, math intuition
**Weak:** Model serving, MLOps, testing, APIs, deployment, system design, customer-facing engineering

**Decision:** AI Engineering → FDE path over generic SWE. Leverages existing ML skills, shorter time-to-hire, higher compensation ceiling, less saturated market (800% FDE growth in 2025 per a16z).

---

## Phase 1: Foundations (3 weeks) — *concepts over drill*

### Python Depth *(expanded)*
- **Concurrency model:** threads vs processes vs async — when to use each, GIL implications for ML workloads
- **Memory management:** reference counting, garbage collection, generators vs iterators, context managers under the hood
- **Type system:** `typing` module deeply (`Protocol`, `TypeVar`, `TypedDict`, `Generic`), structural vs nominal typing
- **Metaprogramming basics:** decorators, descriptors, `__new__` vs `__init__`, metaclasses (read them, rarely write them)
- Performance profiling (cProfile, memory_profiler)
- Package design: pyproject.toml, publishing to PyPI
- **Resource:** "Fluent Python" (Ramalho) — chapters on data models, concurrency, metaprogramming

### Computer Science Fundamentals *(replaces DSA drill)*
- **How computers work:** memory hierarchy (registers → L1/L2/L3 → RAM → disk), CPU caches, why cache misses matter for inference latency
- **Operating systems:** processes vs threads, virtual memory, file descriptors, signals — what happens when you `fork()` or start an async task
- **Networking:** TCP/UDP, HTTP/1.1 vs HTTP/2 vs HTTP/3, TLS handshake, DNS resolution — what happens when you make an API call
- **Data structures as concepts:** not "implement a BST," but "when does a hash map degrade? When do you need a B-tree vs BST? Why does PostgreSQL use B-trees?"
- **Resource:** "Computer Systems: A Programmer's Perspective" (selected chapters) or CS50 for breadth

### Algorithms as Thinking Tools *(replaces NeetCode)*
- **Complexity analysis:** Big-O/Omega/Theta, amortized analysis — understand *why* pandas is fast/slow, not just that it is
- **Key algorithm families:** divide & conquer, dynamic programming, greedy — recognize patterns in real code, not just LeetCode
- **Graph algorithms:** BFS/DFS, shortest path, topological sort — relevant for dependency resolution (package managers, CI pipelines)
- **Sorting/searching:** understand the tradeoffs (Timsort vs quicksort, when binary search applies beyond arrays)
- **Resource:** "Grokking Algorithms" for intuition, then 20-30 LeetCode problems *after* concepts are internalized

### Git & Code Quality *(deeper)*
- How Git actually works: objects (blobs, trees, commits), refs, packing — not just commands
- Rebase vs merge at the graph level
- Code review principles: what to look for beyond style (correctness, security, maintainability)
- Pre-commit hooks (ruff, black, mypy), conventional commits
- **Project:** Refactor one of your existing DS notebooks into a proper Python package with tests

---

## Phase 2: Model Serving & MLOps (4 weeks) — *core differentiator*

### Model Serving
- **vLLM** for LLM serving (already running Qwen3.6 on RTX 5090 — formalize this)
- TorchServe for PyTorch models
- Triton Inference Server for GPU optimization
- Batch inference vs real-time serving tradeoffs
- Quantization strategies (GGUF, AWQ, GPTQ) for deployment
- **Project:** Deploy Qwen3.6 via vLLM with FastAPI endpoint

### MLOps Stack
- MLflow or Weights & Biases for experiment tracking
- Model registry: versioning, staging, promotion workflows
- Feature stores (Feast) — if doing traditional ML
- Data versioning (DVC)
- **Project:** Full training → tracking → registry → serving pipeline

### Evals & Monitoring *(NEW)*
- Prompt evaluation frameworks (promptfoo, LangSmith)
- Model drift detection (Evidently AI, Arize Phoenix)
- Data quality monitoring
- Guardrails (NeMo Guardrails, LlamaGuard)
- **Project:** Build eval suite for a chat application

---

## Phase 3: ML Infrastructure (4 weeks) — *replaces generic backend*

### APIs for ML *(replaces generic API phase)*
- FastAPI with streaming responses (SSE for token streaming)
- gRPC for internal service communication
- Async patterns for concurrent inference
- Rate limiting, request queuing for GPU-bound workloads
- **Project:** Streaming chat API with queue-based load management

### Vector Databases & RAG *(NEW)*
- pgvector (PostgreSQL extension — leverages SQL knowledge)
- Embedding pipelines: chunking strategies, embedding models
- RAG architecture: retrieval, reranking, generation
- Evaluation of RAG quality (RAGAS framework)
- **Project:** Build a RAG system over your HS2 healthcare data

### Message Queues & Async Processing
- Redis Streams or Celery for async inference jobs
- Kafka if processing large-scale data pipelines
- **Project:** Queue-based batch inference pipeline

---

## Phase 4: Cloud & Deployment (3 weeks) — *condensed from SWE track*

### Docker + Light Kubernetes *(reduced scope)*
- Docker multi-stage builds for ML models (large image optimization)
- Deploy to a single K8s pod or Cloud Run — not full cluster management
- **Project:** Containerize your serving stack

### Cloud (AWS) *(ML-focused)*
- SageMaker basics (even if you don't use it, know what it is)
- EKS or ECS for container deployment
- S3 for model artifacts, Lambda for lightweight inference
- Terraform for infrastructure as code
- **Project:** Deploy to AWS with Terraform

### CI/CD *(same)*
- GitHub Actions: test on PR, deploy on merge
- Model testing in CI (run evals before promotion)

---

## Phase 5: Production Readiness (2 weeks) — *condensed*

### Security *(healthcare-focused)*
- HIPAA compliance basics (leverage existing domain knowledge)
- PHI handling, encryption at rest/in transit
- API auth (JWT, OAuth2)
- Secrets management (AWS Secrets Manager)

### Observability *(ML-specific)*
- Structured logging with `structlog`
- Prometheus metrics for inference latency, throughput, GPU utilization
- Distributed tracing with OpenTelemetry
- Error tracking: Sentry
- **Project:** Add full observability to your serving stack

---

## Phase 6: FDE Skills (ongoing) — *the premium layer*

### Customer-Facing Skills
- Technical writing: architecture docs, runbooks, API documentation
- Discovery interviews: extracting requirements from customer conversations
- Translating business problems into AI solutions
- Project management: Jira/Linear, sprint planning basics

### Enterprise Integration
- Webhooks, SSO/SAML, connecting to customer systems
- Data migration patterns between systems
- CRM integration basics (Salesforce API)

### Domain Expertise *(your differentiator)*
- Healthcare workflows, HL7/FHIR (leverage HS2 project)
- This is what gets you hired over generic AI engineers

---

## Skill Matrix: Current vs Target

| Skill | Your Level | Target | Priority |
|---|---|---|---|
| Python | ★★★★★ | Deepen (async, typing, profiling) | High |
| SQL | ★★★★☆ | Maintain + pgvector | — |
| PyTorch/sklearn | ★★★★★ | Add serving layer | — |
| **Model Serving (vLLM)** | ★★★☆☆ | ★★★★★ | **Critical** |
| **MLOps (MLflow/W&B)** | ★★☆☆☆ | ★★★★☆ | **High** |
| **RAG/Vector DBs** | ★☆☆☆☆ | ★★★★☆ | **High** |
| **Evals/Guardrails** | ★☆☆☆☆ | ★★★☆☆ | **High** |
| FastAPI | ★★☆☆☆ | ★★★★☆ | High |
| Docker | ★★☆☆☆ | ★★★★☆ | High |
| Kubernetes | ☆☆☆☆☆ | ★★☆☆☆ (consumer only) | Low |
| Terraform/IaC | ☆☆☆☆☆ | ★★★☆☆ | High |
| CI/CD | ★☆☆☆☆ | ★★★★☆ | High |
| Cloud (AWS) | ★★☆☆☆ | ★★★★☆ | High |
| Security/HIPAA | ★★☆☆☆ | ★★★★☆ | High |
| TypeScript | ☆☆☆☆☆ | ★★☆☆☆ (optional) | Low |
| Customer Communication | ★★★☆☆ | ★★★★★ | **High** (FDE) |

---

## Project Portfolio (build sequentially)

1. **ML Serving Stack** — vLLM + FastAPI streaming + Docker + tests + evals
2. **RAG System** — pgvector + embedding pipeline + RAGAS evaluation + HS2 healthcare data
3. **Full MLOps Pipeline** — MLflow tracking → registry → CI/CD deploy to AWS with Terraform
4. **Contribution** — Open source PR to an ML library you use (vLLM, LangChain, etc.)

---

## Weekly Time Budget

| Activity | Hours/week |
|---|---|
| DSA practice | 3-4 |
| Building projects | 10-12 |
| Reading/docs | 3-4 |
| Code review (read OSS) | 2 |
| **Total** | **~20 hrs/week** |

**Timeline:** ~4 months to job-ready at 20 hrs/week

---

## Why This Path Over Generic SWE?

| Factor | AI Eng → FDE | Generic SWE |
|---|---|---|
| Starting position | 60% there (PyTorch, data pipelines) | ~0% (competing with CS grads) |
| Time to job-ready | 3-4 months | 5-6 months |
| Compensation ceiling | High | Moderate |
| Market saturation | Exploding demand, less supply | Saturated at entry level |
| Your differentiator | Healthcare domain + ML skills | Nothing yet |

**The market need:** Companies don't need more people who can fine-tune LLMs. They need people who can take a model and make it run reliably inside a hospital's existing IT stack. That's you.

---

## Key Insights from Research

### FDE Role Reality (from PostHog, Palantir, OpenAI job postings)
- **70% software engineering + 30% consulting**
- 20-50% travel typical (or virtual embedding)
- Day-to-day: meetings with customers → design/build solutions → deploy → communicate learnings back to product team

### What Employers Actually Want
- Strong communication, low ego, collaborative approach
- Contribute accelerators/frameworks that scale impact across accounts
- Executive presence, ability to represent company in customer situations
- 5+ years engineering/technical deployment experience with customer-facing work

### Biggest Mindset Shift
**Correctness > performance.** In DS, a model that's 95% accurate is fine. In SWE, edge cases matter. Testing discipline is the #1 skill you need to develop.

---

## Resources

- **DSA:** NeetCode top 75 (free), LeetCode
- **System Design:** "Designing Data-Intensive Applications" (Kleppmann) — the bible
- **Backend Roadmap:** https://roadmap.sh/backend
- **FDE Role:** https://posthog.com/blog/forward-deployed-engineer
- **FDE Skills:** https://fde.academy/blog/forward-deployed-engineer-skills
- **AWS Learning:** AWS Training & Certification (free tier)
- **vLLM Docs:** https://docs.vllm.ai
- **RAGAS:** https://docs.ragas.io
