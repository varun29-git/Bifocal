# Bifocal Research Autonomy Framework

Experimental Research Framework (V0.1-alpha)

Bifocal is a small research scaffold for AI-integrated IDEs. It separates quick observation from slower synthesis so an agent can work with sources without turning the first coherent summary into a conclusion.

The framework borrows the System 1 and System 2 labels from Daniel Kahneman's *Thinking, Fast and Slow*. In this repository, those labels are practical research modes. They are not claims that agents think like humans.

## What It Provides

- `source_material/` for raw inputs.
- `processed_wiki/` for short System 1 observations.
- `synthesis/` for System 2 knowledge blocks.
- `research_radar.md` for active questions and synthesis status.
- `failure_log.md` for one-line records of caught reasoning drift.
- `.agent/protocol.md` for operating instructions and project memory.

The structure is intentionally light. It asks the agent to do a few things consistently rather than many things ceremonially.

## Core Model

System 1 is observation. It is fast, low-latency, and useful for spotting high-signal facts, gaps, contradictions, and possible questions.

System 2 is synthesis. It is slower and evidence-backed. It compares sources, checks assumptions, and writes a standalone answer only when the question is ready or the user asks for it.

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
|-- source_material/
|-- processed_wiki/
|-- synthesis/
|-- research_radar.md
|-- failure_log.md
|-- init.sh
`-- README.md
```

## How to Use

1. Put raw notes, PDFs, transcripts, exports, or copied source text in `source_material/`.
2. Point Cursor, Windsurf, or another AI IDE agent to `.agent/protocol.md`.
3. Ask the agent to start in System 1.
4. Review `research_radar.md` to see open questions and which ones are ready for synthesis.
5. Ask for System 2 when you want a standalone synthesis, or let the agent suggest it when enough independent support exists.
6. Review `failure_log.md` periodically to see whether the protocol is catching substitution, anchoring, or WYSIATI risk in practice.

Suggested IDE instruction:

```text
Use .agent/protocol.md as your operating protocol and project memory. Start in System 1. Keep research_radar.md current. Only synthesize when the trigger is met or I ask for System 2.
```

## Design Principles

- Keep raw inputs, observations, and conclusions separate.
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

This is V0.1-alpha. It is suitable for experimentation and iteration, not for unattended high-stakes research.
