# Bifocal Research Autonomy Framework

Experimental Research Framework (V0.2-alpha)

Bifocal is a small, file-based research framework for AI agents. It helps an agent turn a folder of sources into an evolving research memory without collapsing too early into a confident answer.

The name comes from the core idea: the agent can think in two ways.

- Near Lens: fast source triage, observation, quick notes, gaps, and contradictions.
- Far Lens: slower synthesis, concept consolidation, and evidence-backed knowledge blocks.

Bifocal can use the familiar System 1 and System 2 labels, but the product idea is simpler: shift focus without losing the evidence trail.

## Why Bifocal Exists

Most AI research workflows drift into question-answering. A user asks a question, the agent answers, and the useful intermediate work disappears. Bifocal treats questions as only one part of a larger research ecosystem.

The framework asks the agent to maintain:

- raw sources,
- quick observations,
- a durable concept wiki,
- an attention radar,
- deep insights,
- a run summary,
- and a lightweight mistake log.

This makes the agent more useful when the user does not yet know the right question. It can still read, triage, build concepts, notice contradictions, mark missing evidence, and suggest the next action.

## What It Produces

Bifocal keeps research artifacts separate so the user can inspect how a conclusion formed.

- `sources/`: raw PDFs, notes, copied articles, transcripts, links saved as text, and other source material.
- `my_questions.txt`: a simple plain-text inbox for user questions, one per line.
- `quick_notes/`: Near Lens observations from individual sources.
- `my_wikipedia/`: short reusable concept pages that accumulate across sources.
- `radar.md`: the active attention layer for questions, gaps, contradictions, concept clusters, and deep insight candidates.
- `deep_insights/`: Far Lens synthesis files with backing evidence, assumptions, limits, and next actions.
- `run_summary.md`: end-of-turn state, readiness, blocked items, and next action.
- `mistakes.md`: one-line records of caught reasoning drift.
- `.agent/protocol.md`: the operating protocol and durable project memory.

## Core Workflow

At the start of a run, the agent:

1. Reads `my_questions.txt`.
2. Inspects `sources/`.
3. Triage-checks source quality.
4. Writes useful quick notes.
5. Marks concept candidates.
6. Promotes only important concepts into `my_wikipedia/`.
7. Updates `radar.md`.
8. Runs Far Lens only when a focus is ready or the user asks for it.
9. Updates `run_summary.md` before stopping.

The default mode is Near Lens. Far Lens is triggered when a research focus has enough distinct evidence, a contradiction or concept cluster needs consolidation, or the user explicitly asks for deeper synthesis.

## Source Triage

Bifocal does not assume users provide clean source sets. Before extracting claims from a source, the agent asks:

1. What kind of source is this: primary research, review, commentary, journalism, or informal?
2. Is there a clear author and institutional context?
3. Does the claim in this source depend on evidence inside the document, or does it just assert?

This is deliberately light. It keeps the framework usable while preventing the agent from treating a blog post, Wikipedia page, preprint, peer-reviewed article, and primary text as equal evidence.

## Concept Wiki

`my_wikipedia/` is Bifocal's durable concept memory. It is not meant to become a page for every term.

Near Lens can mark concept candidates inside quick notes. A concept is promoted only when at least one of these is true:

- it appears in 2 or more independent sources,
- it is central to a user question or active radar item,
- it is needed for a Far Lens synthesis,
- or the user explicitly asks for it.

This keeps the concept wiki from becoming noisy. In practice, it gives the agent a stable place to maintain ideas like `world-model`, `publication-bias`, `late-bronze-age-collapse`, or `landauers-principle`.

## Questions Are Not the Whole System

Questions steer attention, but Bifocal can do useful research work even before the user has precise questions.

It can:

- ingest a source set,
- separate strong sources from weak ones,
- identify missing evidence,
- build reusable concepts,
- spot contradictions,
- decide when something is ready for synthesis,
- and surface the next research action.

This is why `radar.md` tracks more than questions. It also tracks gaps, contradictions, concept clusters, and synthesis candidates.

## Tested Domains

Bifocal has been tested across four example domains. Each example is a complete Bifocal workspace under `examples/`.

### World Models

Folder: `examples/world_models/`

Tested on a multi-paper machine learning source set covering world models, Dreamer, and related predictive representation work.

What worked:

- Built a foundational definition of world models.
- Separated supported claims from unsupported LLM-specific claims.
- Produced deep insights on world model definition, predictive representations, and the Dreamer research line.
- Correctly kept an LLM-specific question open because the source set did not contain a direct LLM world-model paper.

What remains open:

- Add LLM-specific world-model sources.
- Run a limitations and failure-modes pass.

### Nudging Economics

Folder: `examples/nudging_economics/`

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

Folder: `examples/bronze_age_collapse/`

Tested on archaeology and paleoclimate sources about the Late Bronze Age collapse.

What worked:

- Treated the collapse as a regional transformation rather than a single event.
- Synthesized cascading stress across climate, trade, migration, warfare, and political fragility.
- Kept Sea Peoples claims under review instead of overclaiming.
- Promoted only central concepts: Late Bronze Age collapse, palatial economy, and Sea Peoples.

What remains open:

- Add a primary text dossier for Egyptian, Ugaritic, Hittite, and cuneiform evidence.
- Build a region-by-region chronology separating destruction, abandonment, continuity, and reoccupation.
- Add more detailed trade-network evidence.

### Reversible Computing

Folder: `examples/reversible_computing/`

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
- and hardware-oriented computing research.

The important behavior was not that Bifocal answered everything. The important behavior was that it refused to answer unsupported questions, surfaced missing evidence, and kept ready-for-synthesis state visible in `radar.md` and `run_summary.md`.

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

## How To Use

1. Put sources in `sources/`.
2. Optionally write questions in `my_questions.txt`, one per line.
3. Point your AI IDE agent, such as Cursor, Windsurf, or Antigravity, to `.agent/protocol.md`.
4. Tell the agent: "Run Bifocal."
5. Review `run_summary.md` for what changed and what is blocked.
6. Review `radar.md` for questions, gaps, contradictions, and synthesis readiness.
7. Review `my_wikipedia/` for reusable concepts.
8. Review `deep_insights/` for Far Lens synthesis.

Suggested agent instruction:

```text
Use .agent/protocol.md as your operating protocol. Run Bifocal: inspect sources, read my_questions.txt as optional steering input, update quick_notes, my_wikipedia, and radar.md as appropriate, and only synthesize when the focus is ready or I ask for Far Lens.
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

- Keep raw inputs, quick notes, concepts, and conclusions separate.
- Make user input simple.
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
