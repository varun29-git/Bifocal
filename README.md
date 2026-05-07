# Bifocal Research Autonomy Framework

Experimental Research Framework (V0.2-alpha)

Bifocal is a small research scaffold for AI-integrated IDEs. It helps an agent turn a static folder of sources into an evolving research memory with two lenses: a near lens for quick observation and a far lens for slower synthesis.

Bifocal can use the familiar System 1 and System 2 labels, but the product idea is simpler: shift focus without losing the evidence trail.

## Purpose

The framework gives an AI agent a simple research loop:

1. Observe incoming material quickly.
2. Extract high-signal notes and gaps.
3. Maintain a wiki of reusable concepts.
4. Track questions, gaps, contradictions, and synthesis candidates in a shared radar.
5. Switch to slower synthesis only when the evidence base is ready.
6. Produce standalone knowledge blocks with backing evidence.

This structure is intended for research work where traceability matters. It keeps raw material, observations, and verified synthesis in separate places so the user can inspect how conclusions formed.

Questions are part of the ecosystem, not the whole ecosystem. They steer attention, but Bifocal can still ingest sources, build concepts, notice contradictions, and suggest next actions before the user knows exactly what to ask.

## Core Model

System 1 is the observation layer. It is fast, low-latency, and pattern-oriented. Its job is to identify high-signal information, contradictions, missing context, and candidate questions.

System 2 is the synthesis layer. It is slower, evidence-backed, and deliberate. Its job is to build verified knowledge blocks from multiple independent observations.

The concept wiki sits between them. System 1 can create or update a concept page when a source clarifies a reusable idea. System 2 can refine those pages after synthesis.

Both layers must work from first principles. The agent should deconstruct every claim into its source, mechanism, assumption, and implication before treating it as useful knowledge.

Before System 1 extracts claims, it performs a lightweight source triage: source type, author or institutional context, and whether the source supports its claims with internal evidence or merely asserts them.

## Repository Structure

```plaintext
/
|-- .agent/
|   |-- protocol.md
|-- source_material/
|-- user_questions.txt
|-- processed_wiki/
|-- concept_wiki/
|-- synthesis/
|-- research_radar.md
|-- failure_log.md
|-- init.sh
`-- README.md
```

## How to Use

1. Put sources in `source_material/`.
2. Optionally write questions in `user_questions.txt`, one per line.
3. Point your AI IDE agent, such as Cursor, Windsurf, or Antigravity, to `.agent/protocol.md`.
4. Tell the agent: "Run Bifocal."
5. Review `research_radar.md` for questions, gaps, contradictions, and synthesis readiness.
6. Review `concept_wiki/` for reusable concepts the agent is building.
7. Ask for Far Lens or System 2 when you want a standalone synthesis.

Suggested agent instruction:

```text
Use .agent/protocol.md as your operating protocol. Run Bifocal: inspect source_material, read user_questions.txt as optional steering input, update processed_wiki, concept_wiki, and research_radar as appropriate, and only synthesize when the focus is ready or I ask for Far Lens.
```

## Operating Rules

- Raw source material belongs in `source_material/`.
- Optional user questions belong in `user_questions.txt`.
- System 1 summaries belong in `processed_wiki/`.
- Durable concept pages belong in `concept_wiki/`.
- Questions, gaps, contradictions, and synthesis candidates belong in `research_radar.md`.
- System 2 synthesis files belong in `synthesis/`.
- Every synthesis file must include a Backing Evidence section.
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

The initializer refreshes framework files, but it does not overwrite an existing `user_questions.txt`.

## Status

This is V0.2-alpha. The structure is intentionally small and inspectable. It is ready for experimentation, but it should be adapted carefully before use in high-stakes research.
