# Bifocal Research Autonomy Framework

Experimental Research Framework (V0.2-alpha)

Bifocal is a small research scaffold for AI-integrated IDEs. It helps an agent turn a static folder of sources into an evolving research memory with two lenses: a near lens for quick observation and a far lens for slower synthesis.

Bifocal can use the familiar System 1 and System 2 labels, but the product idea is simpler: shift focus without losing the evidence trail.

## Purpose

The framework gives an AI agent a simple research loop:

1. Observe incoming material quickly.
2. Extract high-signal notes and gaps.
3. Maintain a wiki of reusable concepts.
4. Track questions, gaps, contradictions, and deep insight candidates in a shared radar.
5. Switch to slower synthesis only when the evidence base is ready.
6. Produce standalone knowledge blocks with backing evidence.

This structure is intended for research work where traceability matters. It keeps raw material, quick_notes, and verified deep insights in separate places so the user can inspect how conclusions formed.

Questions are part of the ecosystem, not the whole ecosystem. They steer attention, but Bifocal can still ingest sources, build concepts, notice contradictions, and suggest next actions before the user knows exactly what to ask.

## Core Model

System 1 is the observation layer. It is fast, low-latency, and pattern-oriented. Its job is to identify high-signal information, contradictions, missing context, and candidate questions.

System 2 is the synthesis layer. It is slower, evidence-backed, and deliberate. Its job is to build verified knowledge blocks from multiple independent quick notes.

`my_wikipedia/` sits between observation and synthesis. Near Lens marks concept candidates in observation notes. Bifocal promotes only repeated, central, synthesis-needed, or user-requested concepts into durable wiki pages.

Both layers must work from first principles. The agent should deconstruct every claim into its source, mechanism, assumption, and implication before treating it as useful knowledge.

Before System 1 extracts claims, it performs a lightweight source triage: source type, author or institutional context, and whether the source supports its claims with internal evidence or merely asserts them.

## Repository Structure

```plaintext
/
|-- .agent/
|   |-- protocol.md
|-- sources/
|-- my_questions.txt
|-- quick_notes/
|-- my_wikipedia/
|-- deep_insights/
|-- radar.md
|-- mistakes.md
|-- init.sh
`-- README.md
```

Each folder includes a small `README.md` explaining what belongs there.

## How to Use

1. Put sources in `sources/`.
2. Optionally write questions in `my_questions.txt`, one per line.
3. Point your AI IDE agent, such as Cursor, Windsurf, or Antigravity, to `.agent/protocol.md`.
4. Tell the agent: "Run Bifocal."
5. Review `radar.md` for questions, gaps, contradictions, and deep insight readiness.
6. Review `my_wikipedia/` for reusable concepts the agent is building.
7. Ask for Far Lens or System 2 when you want a standalone synthesis.

Suggested agent instruction:

```text
Use .agent/protocol.md as your operating protocol. Run Bifocal: inspect sources, read my_questions.txt as optional steering input, update quick_notes, my_wikipedia, and radar.md as appropriate, and only synthesize when the focus is ready or I ask for Far Lens.
```

## Operating Rules

- Raw source material belongs in `sources/`.
- Optional user questions belong in `my_questions.txt`.
- System 1 summaries belong in `quick_notes/`.
- Durable concept pages belong in `my_wikipedia/`.
- Questions, gaps, contradictions, and deep insight candidates belong in `radar.md`.
- System 2 deep deep insight files belong in `deep_insights/`.
- Every deep insight file must include a Backing Evidence section.
- Every System 2 claim must be checked against Protocol Memory in `.agent/protocol.md`.
- Contradictions against Protocol Memory require a clear Memory Check.

## Initialization

Run the initializer in the current directory:

```bash
./init.sh
```

You can also pass a target directory:

```bash
./init.sh path/to/project
```

The initializer refreshes framework files, but it does not overwrite an existing `my_questions.txt`.

## Status

This is V0.2-alpha. The structure is intentionally small and inspectable. It is ready for experimentation, but it should be adapted carefully before use in high-stakes research.
