# Bifocal Research Autonomy Framework

Experimental Research Framework (V0.2-alpha)

Bifocal is a small, file-based research framework for AI agents. It turns a folder of sources into an inspectable research memory, with one mode for fast observation and another for slower synthesis.

The name comes from the core idea: the agent can use two lenses.

| Lens | Purpose | Output |
| --- | --- | --- |
| Near Lens | Source triage, quick observation, gaps, contradictions | `quick_notes/`, `radar.md` |
| Far Lens | Evidence-backed synthesis and concept consolidation | `deep_insights/`, `my_wikipedia/` |

Bifocal can use the familiar System 1 and System 2 labels, but the product idea is simpler: shift focus without losing the evidence trail.

## Quick Start

1. Put PDFs, notes, articles, transcripts, or links saved as text into `sources/`.
2. Optionally add plain-language questions to `my_questions.txt`, one per line.
3. Point your AI IDE agent to `.agent/protocol.md`.
4. Tell the agent: "Run Bifocal."
5. Read `run_summary.md` first.
6. Then inspect `radar.md`, `my_wikipedia/`, and `deep_insights/`.

Suggested agent instruction:

```text
Use .agent/protocol.md as your operating protocol. Run Bifocal: inspect sources, read my_questions.txt as optional steering input, update quick_notes, my_wikipedia, and radar.md as appropriate, and only synthesize when the focus is ready or I ask for Far Lens.
```

## Why Bifocal Exists

Most AI research workflows collapse into question-answering:

1. The user asks a question.
2. The agent answers.
3. The useful intermediate work disappears.

Bifocal treats questions as part of a larger research ecosystem. The agent can still do useful work before the user knows the perfect question:

- triage source quality,
- extract high-signal observations,
- build reusable concepts,
- notice contradictions,
- mark missing evidence,
- decide when a focus is ready for synthesis,
- and surface the next action.

The goal is not to make the agent sound more confident. The goal is to make the research process easier to inspect, correct, and extend.

## What Bifocal Maintains

| Artifact | Role |
| --- | --- |
| `sources/` | Raw source material |
| `my_questions.txt` | Simple user question inbox |
| `quick_notes/` | Near Lens observations from individual sources |
| `my_wikipedia/` | Durable concept pages |
| `radar.md` | Questions, gaps, contradictions, concept clusters, and synthesis candidates |
| `deep_insights/` | Far Lens synthesis files |
| `run_summary.md` | End-of-turn status, blocked items, and next action |
| `mistakes.md` | Caught reasoning drift |
| `.agent/protocol.md` | Operating protocol and project memory |

This separation matters. Raw inputs, quick notes, reusable concepts, and final syntheses should not blur into one document.

## Core Workflow

At the start of a run, the agent:

1. Reads `my_questions.txt`.
2. Inspects `sources/`.
3. Performs source triage.
4. Writes useful quick notes.
5. Marks concept candidates.
6. Promotes only important concepts into `my_wikipedia/`.
7. Updates `radar.md`.
8. Runs Far Lens only when a focus is ready or the user asks for it.
9. Updates `run_summary.md` before stopping.

The default mode is Near Lens. Far Lens is triggered when:

- a research focus has enough distinct evidence,
- a contradiction or concept cluster needs consolidation,
- or the user explicitly asks for deeper synthesis.

## Source Triage

Bifocal does not assume users provide clean source sets. Before extracting claims from a source, the agent asks:

1. What kind of source is this: primary research, review, commentary, journalism, or informal?
2. Is there a clear author and institutional context?
3. Does the claim in this source depend on evidence inside the document, or does it just assert?

This is deliberately light. It prevents the agent from treating a blog post, Wikipedia page, preprint, peer-reviewed article, and primary text as equal evidence.

## Concept Wiki

`my_wikipedia/` is Bifocal's durable concept memory. It is not a page for every term.

Near Lens can mark concept candidates inside quick notes. A concept is promoted only when at least one condition is true:

- it appears in 2 or more independent sources,
- it is central to a user question or active radar item,
- it is needed for a Far Lens synthesis,
- or the user explicitly asks for it.

This keeps the wiki small enough to stay useful.

Example concept pages from tested runs:

| Domain | Concepts |
| --- | --- |
| World models | `world-model`, `latent-imagination` |
| Nudging economics | `nudge`, `choice-architecture`, `publication-bias` |
| Bronze Age collapse | `late-bronze-age-collapse`, `palatial-economy`, `sea-peoples` |
| Reversible computing | `reversible-computing`, `landauers-principle`, `stochastic-thermodynamics` |

## Tested Domains

Bifocal has been tested across four example domains. Each example is a complete Bifocal workspace under `examples/`.

| Domain | Folder | What It Tested |
| --- | --- | --- |
| World models | `examples/world_models/` | AI research synthesis, concept formation, unsupported question handling |
| Nudging economics | `examples/nudging_economics/` | Policy evidence, ethics, meta-analysis, publication-bias conflict |
| Bronze Age collapse | `examples/bronze_age_collapse/` | Archaeology, paleoclimate, multi-cause historical explanation |
| Reversible computing | `examples/reversible_computing/` | Thermodynamics, hardware research, theory versus implementation |

## Test Results

### World Models

Tested on a multi-paper machine learning source set covering world models, Dreamer, and predictive representations.

What worked:

- Built a foundational definition of world models.
- Separated supported claims from unsupported LLM-specific claims.
- Produced deep insights on world model definition, predictive representations, and the Dreamer research line.
- Correctly kept an LLM-specific question open because the source set did not contain a direct LLM world-model paper.

What remains open:

- Add LLM-specific world-model sources.
- Run a limitations and failure-modes pass.

### Nudging Economics

Tested on behavioral economics and policy sources covering definitions, ethics, meta-analysis, and a publication-bias critique.

What worked:

- Built concept pages for nudges, choice architecture, and publication bias.
- Synthesized definitions, taxonomy, ethics, failure modes, and effectiveness.
- Surfaced the Mertens versus Maier evidence conflict instead of hiding it.
- Marked broad welfare-improvement claims as underdetermined.

What remains open:

- Add implementation case studies.
- Add later replies, corrections, or meta-analyses on the publication-bias dispute.
- Add long-term welfare evidence.

### Bronze Age Collapse

Tested on archaeology and paleoclimate sources about the Late Bronze Age collapse.

What worked:

- Treated the collapse as a regional transformation rather than a single event.
- Synthesized cascading stress across climate, trade, migration, warfare, and political fragility.
- Kept Sea Peoples claims under review instead of overclaiming.
- Promoted only central concepts.

What remains open:

- Add a primary text dossier for Egyptian, Ugaritic, Hittite, and cuneiform evidence.
- Build a region-by-region chronology separating destruction, abandonment, continuity, and reoccupation.
- Add more detailed trade-network evidence.

### Reversible Computing

Tested on sources about stochastic thermodynamics, CMOS invertible logic, and quasi-static analog neural networks.

What worked:

- Separated logical reversibility, invertible logic, and thermodynamic reversibility.
- Clarified that Landauer's principle is foundational but not a practical total cost model for real machines.
- Synthesized barriers around finite time, clocking, modularity, control, training cost, speed, precision, and system-level energy.
- Correctly left the adiabatic and quantum comparison open because the folder lacked dedicated sources.

What remains open:

- Add Bennett, Fredkin, Toffoli, and reversible circuit synthesis sources.
- Add dedicated adiabatic computing and quantum computing sources.
- Add system-level energy measurements or benchmarks.

## What These Tests Show

Across the tested domains, Bifocal handled:

- peer-reviewed papers,
- arXiv preprints,
- theory papers,
- empirical papers,
- archaeology and climate synthesis,
- ethics and policy debate,
- AI research,
- hardware-oriented computing research.

The important behavior was not that Bifocal answered everything. The important behavior was that it refused to answer unsupported questions, surfaced missing evidence, and kept readiness visible in `radar.md` and `run_summary.md`.

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

Each folder includes a small `README.md` explaining what belongs there.

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

- Keep raw inputs, quick notes, concepts, and conclusions separate.
- Keep user input simple.
- Treat questions as steering signals, not the whole workflow.
- Promote concepts sparingly.
- Prefer short useful notes over elaborate compliance.
- Treat source count as a readiness signal, not proof.
- Check what each source adds that the others do not.
- Surface missing evidence clearly.
- Use humble, grounded language.
- Do not use em dash characters.

## Current Status

Bifocal is V0.2-alpha. The framework is small, inspectable, and ready to ship for experimentation with AI-assisted research workflows.

It is not a substitute for expert review, and it should not be used unattended for high-stakes medical, legal, financial, or safety-critical research. Its job is to make an agent's research process easier to inspect, correct, and extend.
