# AI Workflow Engineer — Skill Build Plan

**Target roles:** Senior Agentic AI Engineer, AI Solutions Engineer
**Target employers:** Healthcare payers and healthcare consulting firms
**Timeline:** 8-12 weeks, 10-15 hrs/week

---

## Phase 1: RAG (Weeks 1-3)

**Why:** Every job posting asks for RAG. You have zero visible experience here.
<!-- employer-specific notes redacted for public release; see private copy for the original job-posting mapping -->

### Skills to learn
- Embedding models (OpenAI ada-002, nomic-embed-text)
- Vector databases (ChromaDB, Pinecone)
- Chunking strategies (fixed, semantic, document-aware)
- Retrieval techniques (dense search, hybrid search, metadata filtering)
- Re-ranking (Cohere, cross-encoders)
- Grounded generation with citations

### Learning resources
- **LangChain RAG docs:** https://python.langchain.com/docs/
- **LlamaIndex tutorials:** https://docs.llamaindex.ai/
- **Chip Huyen's blog:** https://huyenchip.com/ (production ML/RAG)

### Concrete deliverable
Build a RAG system that ingests your Medicaid state policy data and answers questions like:
- "What are the network adequacy requirements for cardiology in Wayne County, MI?"
- "Which NUCC codes map to internal medicine?"

**Must include:**
- At least 2 chunking strategies with comparison
- Metadata filtering (by state, by specialty)
- Citation output (source document + page/section)
- Evaluation: measure faithfulness and answer relevance on 20 held-out questions

### Reference implementations to study
- https://github.com/langchain-ai/langchain/tree/master/docs/docs/docs (RAG examples)
- https://github.com/run-llama/llama_index (tutorials)

---

## Phase 2: Multi-Agent Workflows (Weeks 4-5)

**Why:** Job postings explicitly ask for "multi-agent workflows for autonomous task execution." You have a single-agent LangGraph system; need to level up.

### Skills to learn
- Multi-agent patterns (handoff, supervisor, parallel)
- Agent memory and state management
- Tool orchestration across agents
- Error recovery and retry patterns

### Learning resources
- **LangGraph multi-agent docs:** https://langchain-ai.github.io/langgraph/
- **AutoGen examples:** https://github.com/microsoft/autogen
- **CrewAI tutorials:** https://docs.crewai.com/

### Concrete deliverable
Extend your `network_manager_agent` into a 2-agent system:
- **Research Agent:** Runs pandas analysis, computes coverage scores, identifies gaps
- **Decision Agent:** Evaluates research output, makes network optimization decisions, explains reasoning
- Handoff protocol: Research Agent produces structured findings → Decision Agent consumes and acts

**Must include:**
- Agent-to-agent communication via structured messages
- Supervisor or router node that decides which agent acts
- Observable agent traces (who did what, when)

---

## Phase 3: Evaluation & Observability (Weeks 6-7)

**Why:** Every posting mentions "evaluation frameworks," "monitoring," "observability." This is what separates hobbyists from production engineers.

### Skills to learn
- RAG evaluation metrics (faithfulness, answer relevance, context precision)
- Agent evaluation (task success rate, tool call accuracy, hallucination rate)
- Prompt evaluation and regression testing
- Observability tools (LangSmith, Arize Phoenix, Weights & Biases)

### Learning resources
- **RAGAS library:** https://docs.ragas.io/
- **LangSmith docs:** https://docs.smith.langchain.com/
- **Prometheus Guide to LLM Evaluation:** https://www.prometheus.io/docs/

### Concrete deliverable
Build an evaluation suite for your RAG + agent systems:
- 50 held-out questions with ground truth answers
- Automated scoring: faithfulness, answer relevance, context precision
- Agent evaluation: task success rate on network optimization scenarios
- Regression tests: flag when prompt changes degrade performance

**Must include:**
- Automated eval pipeline (run on every code change)
- Dashboard or report showing metrics over time
- At least one detected and fixed failure mode

---

## Phase 4: Production Deployment (Weeks 8-9)

**Why:** "Deploy GenAI systems into production using cloud-native architectures" is a recurring requirement. You need to show you can ship, not just prototype.

### Skills to learn
- Docker containerization
- API serving (FastAPI)
- Cloud deployment (AWS Lambda, EC2, or Azure)
- CI/CD for ML (GitHub Actions)
- Environment management (.env, secrets)

### Learning resources
- **FastAPI docs:** https://fastapi.tiangolo.com/
- **AWS docs:** https://docs.aws.amazon.com/
- **Hugging Face Spaces:** free deployment for demos

### Concrete deliverable
Take one project (healthcare-rag or network_manager_agent) and:
- Wrap in FastAPI with POST /query endpoint
- Docker containerize
- Deploy to a free tier (Hugging Face Spaces, Railway, or AWS free tier)
- Set up GitHub Actions for automated testing on push

**Must include:**
- Live URL you can share in interviews
- API documentation (OpenAPI/Swagger)
- Health check endpoint
- Rate limiting or cost controls

---

## Phase 5: Fine-tuning basics (Weeks 10-11)

**Why:** Postings ask for "Fine-tune and adapt foundation models (instruction tuning, LoRA, adapters)." You don't need to be an expert, but you need to have done it.

### Skills to learn
- Instruction tuning vs. LoRA vs. full fine-tuning
- Dataset preparation (instruction format, system prompts)
- Training with QLoRA (4-bit quantization for single GPU)
- Evaluation of fine-tuned models vs. base

### Learning resources
- **Hugging Face course:** https://huggingface.co/learn/nlp-course (Ch 9: Fine-tuning)
- **Unsloth tutorials:** https://github.com/unslothai/unsloth (fast LoRA)
- **Axolotl config:** https://github.com/OpenAccess-AI-Collective/axolotl

### Concrete deliverable
Fine-tune a small model (Llama-3.1-8B or similar) on healthcare domain data:
- Prepare 500-1000 instruction examples from your Medicaid/provider data
- Train with QLoRA on your RTX 5090 (WSL)
- Evaluate: compare fine-tuned vs. base model on domain questions
- Document: when to fine-tune vs. when RAG is sufficient

**Must include:**
- Training script that runs on your setup
- Before/after comparison on held-out questions
- Honest assessment of whether fine-tuning helped (it might not have — that's valuable)

---

## Phase 6: GitHub profile & visibility (Ongoing)

**Why:** Your GitHub is invisible. 0 stars, 0 followers, no bio, no pinned repos.

### Checklist

#### Immediate (this week)
- [ ] Bio: "AI Workflow Engineer. Healthcare domain specialist. Building agentic systems for provider networks and Medicaid operations."
- [ ] Profile photo (professional, not cute)
- [ ] Pin 3 repos (healthcare-rag, network_manager_agent, medicaid-state-specialty-ref)

#### Per-repo
- [ ] README leads with OUTCOMES, not architecture
  - Bad: "Two-phase local search with BallTree"
  - Good: "Optimized Michigan provider network to 95% member access with 479 entities (down from 13,800 candidates)"
- [ ] Each repo has: tests, Dockerfile, CI workflow
- [ ] Clean commit history (squash messy commits)

#### Push local work public
- [ ] `medicaid-state-specialty-ref` — your unique differentiator
- [ ] `ai-specialty-mapper` — LLM mapping to NUCC taxonomy
- [ ] Redact any sensitive data before pushing

---

## Daily/Weekly routine

**Daily (30 min):**
- Read one article or watch one tutorial on current phase topic
- Update learning notes

**Weekly (2-3 sessions, 2-4 hrs each):**
- Build something concrete for current phase
- Push to GitHub weekly — even incomplete work
- Write one short post (LinkedIn or GitHub Gist) about what you learned

**Milestones:**
- Week 3: RAG system working on real Medicaid data
- Week 5: Multi-agent system with handoff
- Week 7: Eval suite running automatically
- Week 9: Something deployed and shareable
- Week 11: Fine-tuned model with honest comparison
- Week 12: GitHub profile complete, ready to apply

---

## What to study from each job posting

The phases above were reverse-engineered from real healthcare AI postings. The pattern is consistent across them; map any new posting you're targeting onto the same phases.

- Agentic workflows → Phase 2
- RAG → Phase 1
- Evaluation → Phase 3
- Production deployment → Phase 4
- Fine-tuning → Phase 5
- Healthcare domain → your existing work
- Agent building → Phase 2
- Testing frameworks → Phase 3
- Governance/responsible AI → Phase 3 (add compliance checks)
- Azure/Microsoft stack → Phase 4 (learn Azure equivalents)
- End-to-end ML + LLM systems → all phases
- RAG + embeddings → Phase 1
- AWS, Elasticsearch → Phase 4
- Responsible AI → Phase 3

---

## Reference: what "done" looks like

A hiring manager opens your GitHub and sees:
1. Clear bio: healthcare AI workflow engineer
2. Pinned repo: RAG system with real healthcare data, live demo link
3. Second repo: Multi-agent system with evaluation metrics
4. Third repo: Medicaid specialty data (your unique domain knowledge)
5. Each repo has: tests passing, CI green, Docker support
6. Recent activity: commits in the last 2 weeks

That's the bar. You can hit it in 12 weeks.
