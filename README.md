# Research Autonomy Framework

Experimental Research Framework (V0.1-alpha)

This repository is a modular research structure for AI-integrated IDEs. It helps an agent turn a static directory into an active research environment by separating fast observation from deliberate synthesis.

The framework adapts the dual-process model popularized in Daniel Kahneman's *Thinking, Fast and Slow*. In this repository, the model is used as an operational protocol, not as a claim that software agents think like humans.

## Purpose

The framework gives an AI agent a simple research loop:

1. Observe incoming material quickly.
2. Extract high-signal notes and gaps.
3. Track recurring questions in a shared radar.
4. Switch to slower synthesis only when the evidence base is ready.
5. Produce standalone knowledge blocks with backing evidence.

This structure is intended for research work where traceability matters. It keeps raw material, observations, and verified synthesis in separate places so the user can inspect how conclusions formed.

## Core Model

System 1 is the observation layer. It is fast, low-latency, and pattern-oriented. Its job is to identify high-signal information, contradictions, missing context, and candidate questions.

System 2 is the synthesis layer. It is slower, evidence-backed, and deliberate. Its job is to build verified knowledge blocks from multiple independent observations.

Both layers must work from first principles. The agent should deconstruct every claim into its source, mechanism, assumption, and implication before treating it as useful knowledge.

Before System 1 extracts claims, it performs a lightweight source triage: source type, author or institutional context, and whether the source supports its claims with internal evidence or merely asserts them.

## Repository Structure

```plaintext
/
|-- .agent/
|   |-- protocol.md
|   `-- project_memory.md
|-- source_material/
|-- processed_wiki/
|-- synthesis/
|-- research_radar.md
|-- init.sh
`-- README.md
```

## How to Use

1. Place raw notes, PDFs, transcripts, exports, or copied source text in `source_material/`.
2. Point your AI IDE agent, such as Cursor or Antigravity, to `.agent/protocol.md`.
3. Ask the agent to follow the protocol before reading or modifying research files.
4. Let the agent run System 1 passes into `processed_wiki/`.
5. Review `research_radar.md` as the active index of questions and synthesis readiness.
6. Trigger System 2 manually, or allow it when the protocol criteria are met.

Suggested agent instruction:

```text
Use .agent/protocol.md as your operating protocol for this repository. Start in System 1 unless I explicitly ask for System 2. Keep research_radar.md current.
```

## Operating Rules

- Raw source material belongs in `source_material/`.
- System 1 summaries belong in `processed_wiki/`.
- System 2 synthesis files belong in `synthesis/`.
- Every synthesis file must include a Backing Evidence section.
- Every System 2 claim must be checked against `.agent/project_memory.md`.
- Contradictions against project memory require a Falsification Review.

## Initialization

Run the initializer from any directory:

```bash
./init.sh
```

If you run it outside a directory named `research-autonomy-framework`, it creates that directory. If you run it inside the repository, it refreshes the framework files in place.

## Status

This is V0.1-alpha. The structure is intentionally small and inspectable. It is ready for experimentation, but it should be adapted carefully before use in high-stakes research.
