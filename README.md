# Bifocal Research Autonomy Framework

Experimental Research Framework (V0.2-alpha)

Bifocal is an agentic research framework inspired by Daniel Kahneman's distinction between fast and slow thinking. It gives an AI agent a "bifocal glass": one lens for quick observation, and one lens for deeper synthesis. The point is not to make the agent only answer inputs with outputs. The point is to help the agent shift between fast reading and careful reasoning while keeping an evidence trail the user can inspect.

| Lens | Inspired By | What The Agent Does | Where It Writes |
| --- | --- | --- | --- |
| Near Lens | Fast thinking | Triage sources, notice signals, find gaps, mark concepts | `quick_notes/`, `radar.md` |
| Far Lens | Slow thinking | Compare evidence, test assumptions, write synthesis | `deep_insights/`, `my_wikipedia/` |

Bifocal uses System 1 and System 2 as practical labels, not as a claim that AI literally thinks like a human. The useful idea is the workflow: do not turn the first coherent answer into the final conclusion.

## What Problem It Solves

Most AI research sessions are too linear:

1. The user asks a question.
2. The agent answers.
3. The reasoning trail disappears.

Bifocal makes the agent maintain a small research ecosystem instead:

1. Read sources.
2. Check source quality.
3. Write quick observations.
4. Build a small concept wiki.
5. Track open questions and contradictions.
6. Synthesize only when the evidence is ready.
7. Leave a run summary so the user knows what happened.

This is useful when the user drops in a messy source set: PDFs, preprints, blog posts, Wikipedia pages, notes, and papers of mixed quality. Bifocal gives the agent a simple way to handle that mess without pretending all sources are equally trustworthy.

## Quick Start

1. Put your sources in `sources/`.
2. Add optional questions to `my_questions.txt`, one per line.
3. Tell your agent to use `.agent/protocol.md`.
4. Ask it to "Run Bifocal."
5. Read `run_summary.md` first.
6. Then inspect `radar.md`, `my_wikipedia/`, and `deep_insights/`.

Suggested agent instruction:

```text
Use .agent/protocol.md as your operating protocol. Run Bifocal: inspect sources, read my_questions.txt as optional steering input, update quick_notes, my_wikipedia, and radar.md as appropriate, and only synthesize when the focus is ready or I ask for Far Lens.
```

## The Files

| File or Folder | What It Is For |
| --- | --- |
| `sources/` | Raw PDFs, notes, transcripts, articles, and saved links |
| `my_questions.txt` | Simple question inbox for the user |
| `quick_notes/` | Short notes from the Near Lens |
| `my_wikipedia/` | Reusable concept pages |
| `radar.md` | Questions, gaps, contradictions, and synthesis candidates |
| `deep_insights/` | Slow, evidence-backed synthesis |
| `run_summary.md` | What changed, what is ready, what is blocked |
| `mistakes.md` | Reasoning drift the agent caught and corrected |
| `.agent/protocol.md` | The operating protocol for the agent |

## How A Run Works

During a Bifocal run, the agent should:

1. Read `my_questions.txt`.
2. Inspect `sources/`.
3. Triage each useful source.
4. Write short source notes in `quick_notes/`.
5. Mark concept candidates.
6. Promote only important concepts to `my_wikipedia/`.
7. Update `radar.md`.
8. Write Far Lens synthesis only when ready.
9. Update `run_summary.md`.

The agent starts in Near Lens by default. It switches to Far Lens when there is enough evidence, when a contradiction needs resolution, or when the user explicitly asks for deeper synthesis.

## Source Triage

Before trusting a source, the agent asks three questions:

1. What kind of source is this: primary research, review, commentary, journalism, or informal?
2. Is there a clear author and institutional context?
3. Does the source support its claims with evidence inside the document, or does it mostly assert?

This is intentionally lightweight. It is enough to stop the agent from treating every source as equally reliable.

## Concept Wiki

`my_wikipedia/` is the agent's durable concept memory.

The agent should not create a page for every term. It should promote a concept only when:

- the concept appears in 2 or more independent sources,
- the concept is central to a user question,
- the concept is needed for a Far Lens synthesis,
- or the user asks for it.

Example concept pages from tested runs:

| Domain | Concepts |
| --- | --- |
| World models | `world-model`, `latent-imagination` |
| Nudging economics | `nudge`, `choice-architecture`, `publication-bias` |
| Bronze Age collapse | `late-bronze-age-collapse`, `palatial-economy`, `sea-peoples` |
| Reversible computing | `reversible-computing`, `landauers-principle`, `stochastic-thermodynamics` |

## Tested Domains

Bifocal has been tested across four example domains.

| Domain | Folder | What It Tested |
| --- | --- | --- |
| World models | `examples/world_models/` | AI research synthesis and unsupported question handling |
| Nudging economics | `examples/nudging_economics/` | Policy evidence, ethics, meta-analysis, and publication-bias conflict |
| Bronze Age collapse | `examples/bronze_age_collapse/` | Archaeology, paleoclimate, and multi-cause historical explanation |
| Reversible computing | `examples/reversible_computing/` | Thermodynamics, hardware research, and theory versus implementation |

## What The Tests Showed

### World Models

Bifocal built a clean definition of world models and synthesized the Dreamer research line. It also refused to answer an LLM-specific world-model question because the source set did not contain a direct LLM world-model paper.

Open gaps:

- Add LLM-specific world-model sources.
- Run a deeper limitations and failure-modes pass.

### Nudging Economics

Bifocal handled a policy evidence set with definition, ethics, meta-analysis, and a publication-bias critique. It surfaced the Mertens versus Maier conflict instead of hiding the disagreement.

Open gaps:

- Add implementation case studies.
- Add later replies, corrections, or meta-analyses.
- Add long-term welfare evidence.

### Bronze Age Collapse

Bifocal treated the Late Bronze Age collapse as a regional transformation rather than a single event. It synthesized climate, trade, migration, warfare, and political fragility as cascading stresses.

Open gaps:

- Add primary texts for Egyptian, Ugaritic, Hittite, and cuneiform evidence.
- Build a region-by-region chronology.
- Add more detailed trade-network evidence.

### Reversible Computing

Bifocal separated logical reversibility, invertible logic, and thermodynamic reversibility. It clarified that Landauer's principle is foundational, but not a full practical energy model for real machines.

Open gaps:

- Add Bennett, Fredkin, Toffoli, and reversible circuit synthesis sources.
- Add adiabatic computing and quantum computing sources.
- Add system-level energy benchmarks.

## Repository Structure

```plaintext
/
|-- .agent/
|   `-- protocol.md
|-- sources/
|-- my_questions.txt
|-- quick_notes/
|-- my_wikipedia/
|-- deep_insights/
|-- examples/
|-- radar.md
|-- run_summary.md
|-- mistakes.md
|-- init.sh
`-- README.md
```

## Initialize A New Project

Run the initializer in the current directory:

```bash
./init.sh
```

Or pass a target directory:

```bash
./init.sh path/to/project
```

The initializer creates the Bifocal folder structure and protocol files. It does not overwrite an existing `my_questions.txt`.

## Design Principles

- Borrow from Kahneman's fast and slow thinking, but keep the implementation practical.
- Keep raw sources, quick notes, concept pages, and conclusions separate.
- Treat questions as steering signals, not the whole workflow.
- Check source quality before trusting claims.
- Promote concepts sparingly.
- Surface missing evidence clearly.
- Synthesize only when the source set supports it.
- Keep the framework small enough that a user can inspect it.
- Use plain, grounded language.
- Do not use em dash characters.

## Current Status

Bifocal is V0.2-alpha. It is ready to ship as an experimental framework for AI-assisted research workflows.

It is not a substitute for expert review. It should not be used unattended for high-stakes medical, legal, financial, or safety-critical research. Its job is to make an agent's research process easier to inspect, correct, and extend.
