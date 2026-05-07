# Bifocal Research Autonomy Framework

Bifocal Research Autonomy Framework

Example focus: nudging in economics.

Use this folder as a complete Bifocal research workspace for studying nudges, choice architecture, behavioral economics, and policy design. Add papers, notes, reports, case studies, or copied excerpts to `sources/`, then run Bifocal from this folder.

Bifocal is a small research scaffold for AI-integrated IDEs. It helps an agent turn a static folder of sources into an evolving research memory without turning the first coherent summary into a conclusion.

Bifocal has two lenses:

- Near Lens for quick source triage, quick notes, gaps, and contradictions.
- Far Lens for slower synthesis, concept consolidation, and memory updates.

The framework can use System 1 and System 2 as familiar labels, but the product idea is simpler: shift focus without losing the evidence trail.

## What It Provides

- `sources/` for raw inputs.
- `my_questions.txt` for optional plain-language questions from the user.
- `quick_notes/` for short System 1 quick notes.
- `my_wikipedia/` for durable concept pages that accumulate across sources.
- `deep_insights/` for System 2 knowledge blocks.
- `radar.md` for questions, gaps, contradictions, concept clusters, and deep insight candidates.
- `mistakes.md` for one-line records of caught reasoning drift.
- `.agent/protocol.md` for operating instructions and project memory.

The structure is intentionally light. It asks the agent to do a few things consistently rather than many things ceremonially.

## Core Model

System 1 is observation. It is fast, low-latency, and useful for spotting high-signal facts, gaps, contradictions, and possible questions.

System 2 is synthesis. It is slower and evidence-backed. It compares sources, checks assumptions, and writes a standalone insight when the research focus is ready or the user asks for it.

`my_wikipedia/` sits between observation and synthesis. Near Lens marks concept candidates in observation notes. Bifocal promotes only repeated, central, synthesis-needed, or user-requested concepts into durable wiki pages.

Questions are part of the ecosystem, not the whole ecosystem. They steer attention, but Bifocal can still ingest sources, build concepts, notice contradictions, and suggest next actions before the user knows exactly what to ask.

Every important claim should still be broken down from first principles:

1. What is the source?
2. What was observed?
3. What was inferred?
4. What assumption is doing work?
5. What would change the conclusion?

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
|-- mistakes.md
|-- init.sh
`-- README.md
```

Each folder includes a small `README.md` explaining what belongs there.

## How to Use

1. Put sources in `sources/`.
2. Optionally write questions in `my_questions.txt`, one per line.
3. Tell the agent: "Run Bifocal."
4. Read `radar.md` for questions, gaps, contradictions, and deep insight readiness.
5. Read `my_wikipedia/` for reusable concepts the agent is building.
6. Ask for Far Lens or System 2 when you want a standalone synthesis.

Suggested IDE instruction:

```text
Use .agent/protocol.md as your operating protocol. Run Bifocal: inspect sources, read my_questions.txt as optional steering input, update quick_notes, my_wikipedia, and radar.md as appropriate, and only synthesize when the focus is ready or I ask for Far Lens.
```

## Design Principles

- Keep raw inputs, quick notes, and conclusions separate.
- Keep user input simple: optional questions go in `my_questions.txt`.
- Keep reusable concepts in `my_wikipedia/`.
- Prefer short useful notes over elaborate compliance.
- Treat source count as a readiness signal, not proof.
- Check source independence by asking what each source adds that the others do not.
- Keep memory in the protocol so the agent has one canonical instruction file.
- Use humble, grounded language.
- Do not use em dash characters.

## Initialization

Run:

```bash
./init.sh
```

By default, the initializer writes the framework into the current directory. You can also pass a target directory:

```bash
./init.sh path/to/project
```

## Status

Bifocal is suitable for experimentation and iteration, not for unattended high-stakes research.
