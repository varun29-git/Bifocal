#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-.}"

mkdir -p "$TARGET/.agent" "$TARGET/source_material" "$TARGET/processed_wiki" "$TARGET/concept_wiki" "$TARGET/synthesis"
rm -f "$TARGET/.agent/project_memory.md"

cat > "$TARGET/README.md" <<'EOF_README'
# Bifocal Research Autonomy Framework

Experimental Research Framework (V0.2-alpha)

Bifocal is a small research scaffold for AI-integrated IDEs. It helps an agent turn a static folder of sources into an evolving research memory without turning the first coherent summary into a conclusion.

Bifocal has two lenses:

- Near Lens for quick source triage, observations, gaps, and contradictions.
- Far Lens for slower synthesis, concept consolidation, and memory updates.

The framework can use System 1 and System 2 as familiar labels, but the product idea is simpler: shift focus without losing the evidence trail.

## What It Provides

- `source_material/` for raw inputs.
- `user_questions.txt` for optional plain-language questions from the user.
- `processed_wiki/` for short System 1 observations.
- `concept_wiki/` for durable concept pages that accumulate across sources.
- `synthesis/` for System 2 knowledge blocks.
- `research_radar.md` for questions, gaps, contradictions, concept clusters, and synthesis candidates.
- `failure_log.md` for one-line records of caught reasoning drift.
- `.agent/protocol.md` for operating instructions and project memory.

The structure is intentionally light. It asks the agent to do a few things consistently rather than many things ceremonially.

## Core Model

System 1 is observation. It is fast, low-latency, and useful for spotting high-signal facts, gaps, contradictions, and possible questions.

System 2 is synthesis. It is slower and evidence-backed. It compares sources, checks assumptions, and writes a standalone synthesis when the research focus is ready or the user asks for it.

The concept wiki sits between them. System 1 can create or update a concept page when a source clarifies a reusable idea. System 2 can refine those pages after synthesis.

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
3. Tell the agent: "Run Bifocal."
4. Read `research_radar.md` for questions, gaps, contradictions, and synthesis readiness.
5. Read `concept_wiki/` for reusable concepts the agent is building.
6. Ask for Far Lens or System 2 when you want a standalone synthesis.

Suggested IDE instruction:

```text
Use .agent/protocol.md as your operating protocol. Run Bifocal: inspect source_material, read user_questions.txt as optional steering input, update processed_wiki, concept_wiki, and research_radar as appropriate, and only synthesize when the focus is ready or I ask for Far Lens.
```

## Design Principles

- Keep raw inputs, observations, and conclusions separate.
- Keep user input simple: optional questions go in `user_questions.txt`.
- Keep reusable concepts in `concept_wiki/`.
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

This is V0.2-alpha. It is suitable for experimentation and iteration, not for unattended high-stakes research.
EOF_README

cat > "$TARGET/.agent/protocol.md" <<'EOF_PROTOCOL'
# Agent Research Protocol

This file is both the operating protocol and the project memory.

Use Bifocal as a two-lens research mode:

- Near Lens, also called System 1, is for source triage, observations, gaps, and contradictions.
- Far Lens, also called System 2, is for synthesis, concept consolidation, and memory updates.

The System 1 and System 2 labels are practical shorthand, not claims about agent cognition.

## Non-Negotiables

- Use humble, grounded language.
- Do not use em dash characters.
- Start from first principles.
- Separate observation from inference.
- Read `user_questions.txt` before choosing what to work on.
- Maintain `concept_wiki/` as the durable wiki of reusable concepts.
- Keep bookkeeping light enough to follow across turns.

## Knowledge Ecosystem

Bifocal is not a question-answering workflow. It is a small research ecosystem.

Maintain these layers:

1. `source_material/` holds raw inputs.
2. `processed_wiki/` holds short observations from individual sources.
3. `concept_wiki/` holds reusable concepts that accumulate across sources.
4. `research_radar.md` holds attention items: user questions, emergent questions, gaps, contradictions, and synthesis candidates.
5. `synthesis/` holds Far Lens outputs.
6. Protocol Memory holds durable axioms only after synthesis.

Questions are steering signals. They help direct attention, but they are not the only reason to read, organize, synthesize, or update memory.

## Start Here

At the start of each research turn:

1. Read `user_questions.txt`, ignoring blank lines and lines that start with `#`.
2. Add any new user questions to `research_radar.md` as attention items.
3. Inspect `source_material/` for new or changed sources.
4. Use Near Lens unless the user explicitly asks for Far Lens or a source cluster is ready for synthesis.

## Protocol Memory

Keep durable project axioms here. Do not prefill this section with protocol restatements. Add an axiom only when real research produces a baseline worth preserving.

Template:

```markdown
### Axiom: {Short Name}

Statement:

Status: Stable | Under Review

Source:

Last Reviewed:

Reason:
```

## Default Mode: System 1

System 1 is the default mode.

Before extracting claims from each source, triage it:

1. What kind of source is this: primary research, review, commentary, journalism, or informal?
2. Is there a clear author and institutional context?
3. Does the claim in this source depend on evidence inside the document, or does it just assert?

Use the triage to decide how much trust and attention the source deserves.

Use it for quick observation:

1. Read or skim incoming source material.
2. Write a short note in `processed_wiki/` only when the material contains a useful signal.
3. Add or update a concept page in `concept_wiki/` when the material clarifies a reusable idea.
4. Add or update `research_radar.md` when the signal creates a question, gap, contradiction, or synthesis candidate.

System 1 notes should be brief.

Suggested structure:

```markdown
# Observation: {Topic}

Source:
Date:

## Signal

## Open Question

## Caveat
```

Do not force every source into the template if a one-line radar update is enough.

## Attention Radar

Use `research_radar.md` as the active attention layer, not as the whole research system.

Use `user_questions.txt` as the user's simple question inbox. Ignore blank lines and lines that start with `#`. Do not make the user edit radar syntax directly. When a question in `user_questions.txt` is not already represented in the radar, add it under User Questions.

For each useful source, add one short evidence tag under the most relevant attention item:

```markdown
- Source: {file or source name}
  Date: {YYYY-MM-DD}
  Adds: {one sentence explaining what this source adds that the others do not}
```

If no attention item matches, add one only when the source creates a real question, gap, contradiction, concept cluster, or synthesis candidate.

If a turn only updates observations or concept pages, the radar does not need a forced update. Do not invent questions just to satisfy bookkeeping.

## Exploration Mode

If the user provides sources but no active question, still run Near Lens:

1. Triage new sources.
2. Write useful observations.
3. Create or update concept pages.
4. Add only the most important emergent questions, gaps, or contradictions to `research_radar.md`.
5. End with one next action.

## Concept Wiki

Use `concept_wiki/` for stable, reusable concepts that appear across sources or help explain the research area.

Create one markdown file per concept using a short lowercase filename:

```text
concept_wiki/{concept-name}.md
```

Use this structure:

```markdown
# {Concept Name}

Status: Draft | Stable | Under Review

## Working Definition

## Why It Matters

## Source Notes

- Source:
  Adds:

## Open Questions
```

Keep concept pages short. They are living wiki pages, not final syntheses.

## Transition Trigger

Switch to Far Lens, also called System 2, when either condition is true:

1. A research focus has 3 or more evidence tags with distinct Adds lines.
2. A concept, contradiction, or claim cluster needs consolidation.
3. The user explicitly asks for Far Lens or System 2.

Distinct Adds lines are a readiness signal, not proof. Confirm source quality and independence during synthesis.

## System 2

System 2 is deliberate synthesis.

Before writing the synthesis, check:

1. What focus is being synthesized: question, concept, contradiction, claim cluster, or decision?
2. Which sources actually bear on it?
3. What does each source add that the others do not?
4. What assumptions are doing work?
5. What would weaken or falsify the answer?
6. Does the answer conflict with Protocol Memory?
7. Which concept pages should be created or updated?

System 2 output goes in `synthesis/` and uses this naming pattern:

```text
insight_{ID}.md
```

Required structure:

```markdown
# Insight: {Title}

Status: Stable | Under Review

## Focus

## Synthesis

## Backing Evidence

## First Principles Breakdown

## Counterevidence and Limits

## Memory Check

## Next Research Actions
```

The Backing Evidence section must list the sources used and state what each source adds that the others do not.

The First Principles Breakdown section must include the relevant assumptions.

The Counterevidence and Limits section must include bias checks such as substitution, anchoring, overconfidence, and WYSIATI when they are relevant.

## Contradictions

If a synthesis conflicts with Protocol Memory, do not silently overwrite memory.

Record the conflict in the Memory Check section:

```markdown
Conflict: {baseline claim}
New Evidence: {source or finding}
Decision: Keep baseline | Mark under review | Revise baseline
Reason:
```

Only update Protocol Memory when the reason is clear enough for a future agent to inspect.

## Failure Log

Append to `failure_log.md` when the agent catches itself doing substitution, anchoring, WYSIATI, or a related reasoning drift mid-turn.

Use one line:

```markdown
- Date: {YYYY-MM-DD} | Focus: {question, concept, claim, or synthesis} | Failure Mode: {mode} | What Changed: {correction}
```

## End-of-Turn Check

Before ending a research turn, verify:

1. The response matches the user's request or the active research focus.
2. Observation and inference are separated.
3. Missing evidence is visible.
4. At least one appropriate state artifact was updated: `processed_wiki/`, `concept_wiki/`, `research_radar.md`, `synthesis/`, or Protocol Memory.
5. Questions were not invented just to make the radar look active.
6. Any caught reasoning drift was logged in `failure_log.md`.
7. No em dash characters were introduced.
EOF_PROTOCOL

if [ ! -f "$TARGET/user_questions.txt" ]; then
  cat > "$TARGET/user_questions.txt" <<'EOF_QUESTIONS'
# Optional: write research questions here, one per line.
# Example:
# What should this source set help us understand?
EOF_QUESTIONS
fi

cat > "$TARGET/concept_wiki/README.md" <<'EOF_CONCEPT_WIKI'
# Concept Wiki

This folder holds durable concept pages that accumulate across sources.

Use one short markdown file per concept. Keep pages brief, sourced, and easy to revise.
EOF_CONCEPT_WIKI

cat > "$TARGET/research_radar.md" <<'EOF_RADAR'
# Research Radar

This file is Bifocal's attention layer.

Keep entries short. The radar should show what deserves attention next. It is not the whole research system and it should not replace `processed_wiki/`, `concept_wiki/`, or `synthesis/`.

Use it for user questions, emergent questions, gaps, contradictions, concept clusters, and synthesis candidates.

## User Questions

Questions the researcher explicitly wrote in `user_questions.txt` or asked in conversation.

```markdown
### Q-{ID}: {Question}

Status: Open | Ready for Far Lens | Synthesized | Under Review

Evidence:

- Source:
  Date:
  Adds:

Notes:
```

## Emergent Attention Items

Important things the agent noticed while reading sources.

```markdown
### A-{ID}: {Short title}

Type: Question | Gap | Contradiction | Concept Cluster | Synthesis Candidate
Status: Open | Ready for Far Lens | Synthesized | Under Review

Why It Matters:

Evidence:

- Source:
  Date:
  Adds:

Next Action:
```

## Synthesis Ledger

```markdown
| Insight ID | File | Source Focus | Status |
| --- | --- | --- | --- |
| example | synthesis/insight_example.md | A-001 | Under Review |
```

Status values:

- Stable
- Under Review
EOF_RADAR

cat > "$TARGET/failure_log.md" <<'EOF_FAILURE'
# Failure Log

Append one line when the agent catches substitution, anchoring, WYSIATI, or related reasoning drift mid-turn.

Template:

```markdown
- Date: YYYY-MM-DD | Focus: {question, concept, claim, or synthesis} | Failure Mode: {mode} | What Changed: {correction}
```
EOF_FAILURE

: > "$TARGET/source_material/.gitkeep"
: > "$TARGET/processed_wiki/.gitkeep"
: > "$TARGET/concept_wiki/.gitkeep"
: > "$TARGET/synthesis/.gitkeep"

SOURCE_SCRIPT="$0"
if [ -f "$SOURCE_SCRIPT" ]; then
  SOURCE_ABS="$(cd "$(dirname "$SOURCE_SCRIPT")" && pwd)/$(basename "$SOURCE_SCRIPT")"
  TARGET_ABS="$(cd "$TARGET" && pwd)/init.sh"
  if [ "$SOURCE_ABS" != "$TARGET_ABS" ]; then
    cp "$SOURCE_SCRIPT" "$TARGET/init.sh"
    chmod +x "$TARGET/init.sh"
  fi
fi

printf 'Bifocal research framework initialized at %s\n' "$TARGET"
