#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-.}"

mkdir -p "$TARGET/.agent" "$TARGET/sources" "$TARGET/quick_notes" "$TARGET/my_wikipedia" "$TARGET/deep_insights"
rm -f "$TARGET/.agent/project_memory.md"

cat > "$TARGET/README.md" <<'EOF_README'
# Bifocal Research Autonomy Framework

Experimental Research Framework (V0.2-alpha)

Bifocal is a small research scaffold for AI-integrated IDEs. It helps an agent turn a static folder of sources into an evolving research memory without turning the first coherent summary into a conclusion.

Bifocal has two lenses:

- Near Lens for quick source triage, quick notes, gaps, and contradictions.
- Far Lens for slower synthesis, concept consolidation, and memory updates.

The framework can use System 1 and System 2 as familiar labels, but the product idea is simpler: shift focus without losing the evidence trail.

## What It Provides

- `sources/` for raw inputs.
- `my_questions.txt` for optional plain-language questions from the user.
- `quick_notes/` for short System 1 quick_notes.
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

This is V0.2-alpha. It is suitable for experimentation and iteration, not for unattended high-stakes research.
EOF_README

cat > "$TARGET/.agent/README.md" <<'EOF_AGENT_README'
# Agent Instructions

This folder holds the operating protocol for the AI agent.

Start with `protocol.md`. Users usually should not need to edit this folder during normal research.
EOF_AGENT_README

cat > "$TARGET/.agent/protocol.md" <<'EOF_PROTOCOL'
# Agent Research Protocol

This file is both the operating protocol and the project memory.

Use Bifocal as a two-lens research mode:

- Near Lens, also called System 1, is for source triage, quick notes, gaps, and contradictions.
- Far Lens, also called System 2, is for synthesis, concept consolidation, and memory updates.

The System 1 and System 2 labels are practical shorthand, not claims about agent cognition.

## Non-Negotiables

- Use humble, grounded language.
- Do not use em dash characters.
- Start from first principles.
- Separate observation from inference.
- Read `my_questions.txt` before choosing what to work on.
- Maintain `my_wikipedia/` as the durable wiki of reusable concepts.
- Keep bookkeeping light enough to follow across turns.

## Knowledge Ecosystem

Bifocal is not a question-answering workflow. It is a small research ecosystem.

Maintain these layers:

1. `sources/` holds raw inputs.
2. `quick_notes/` holds short quick notes from individual sources.
3. `my_wikipedia/` holds reusable concepts that accumulate across sources.
4. `radar.md` holds attention items: user questions, emergent questions, gaps, contradictions, and deep insight candidates.
5. `deep_insights/` holds Far Lens outputs.
6. Protocol Memory holds durable axioms only after synthesis.

Questions are steering signals. They help direct attention, but they are not the only reason to read, organize, synthesize, or update memory.

## Start Here

At the start of each research turn:

1. Read `my_questions.txt`, ignoring blank lines and lines that start with `#`.
2. Add any new user questions to `radar.md` as attention items.
3. Inspect `sources/` for new or changed sources.
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
2. Write a short note in `quick_notes/` only when the material contains a useful signal.
3. Mark concept candidates in the observation note when the material clarifies a reusable idea.
4. Add or update `radar.md` when the signal creates a question, gap, contradiction, or insight candidate.

System 1 notes should be brief.

Suggested structure:

```markdown
# Observation: {Topic}

Source:
Date:

## Signal

## Open Question

Concept Candidates:

- {candidate concept}

## Caveat
```

Do not force every source into the template if a one-line radar update is enough.

## Attention Radar

Use `radar.md` as the active attention layer, not as the whole research system.

Use `my_questions.txt` as the user's simple question inbox. Ignore blank lines and lines that start with `#`. Do not make the user edit radar syntax directly. When a question in `my_questions.txt` is not already represented in the radar, add it under User Questions.

For each useful source, add one short evidence tag under the most relevant attention item:

```markdown
- Source: {file or source name}
  Date: {YYYY-MM-DD}
  Adds: {one sentence explaining what this source adds that the others do not}
```

If no attention item matches, add one only when the source creates a real question, gap, contradiction, concept cluster, or insight candidate.

If a turn only updates quick notes or concept pages, the radar does not need a forced update. Do not invent questions just to satisfy bookkeeping.

## Exploration Mode

If the user provides sources but no active question, still run Near Lens:

1. Triage new sources.
2. Write useful quick notes.
3. Mark concept candidates in observation notes.
4. Add only the most important emergent questions, gaps, or contradictions to `radar.md`.
5. End with one next action.

## My Wikipedia

Use `my_wikipedia/` for promoted concepts, not every concept mentioned in a source.

Do not create a concept page just because a source mentions or defines a term. During Near Lens, mark possible concepts in `quick_notes/` observation notes using `Concept Candidates`.

Promote a candidate to `my_wikipedia/` only when one condition is true:

1. It appears in 2 or more independent sources.
2. It is central to a user question or active radar item.
3. It is needed to understand a Far Lens synthesis.
4. The user explicitly asks for a concept page.

Create at most 3 new concept pages per research turn unless the user asks otherwise.

Create one markdown file per concept using a short lowercase filename:

```text
my_wikipedia/{concept-name}.md
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
7. Which concept candidates should be promoted, or which existing concept pages should be updated?

System 2 output goes in `deep_insights/` and uses this naming pattern:

```text
deep_insight_{ID}.md
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

If an insight conflicts with Protocol Memory, do not silently overwrite memory.

Record the conflict in the Memory Check section:

```markdown
Conflict: {baseline claim}
New Evidence: {source or finding}
Decision: Keep baseline | Mark under review | Revise baseline
Reason:
```

Only update Protocol Memory when the reason is clear enough for a future agent to inspect.

## Failure Log

Append to `mistakes.md` when the agent catches itself doing substitution, anchoring, WYSIATI, or a related reasoning drift mid-turn.

Use one line:

```markdown
- Date: {YYYY-MM-DD} | Focus: {question, concept, claim, or synthesis} | Failure Mode: {mode} | What Changed: {correction}
```

## End-of-Turn Check

Before ending a research turn, verify:

1. The response matches the user's request or the active research focus.
2. Observation and inference are separated.
3. Missing evidence is visible.
4. At least one appropriate state artifact was updated: `quick_notes/`, `my_wikipedia/`, `radar.md`, `deep_insights/`, or Protocol Memory.
5. Questions were not invented just to make the radar look active.
6. Any caught reasoning drift was logged in `mistakes.md`.
7. No em dash characters were introduced.
EOF_PROTOCOL

if [ ! -f "$TARGET/my_questions.txt" ]; then
  cat > "$TARGET/my_questions.txt" <<'EOF_QUESTIONS'
# Optional: write research questions here, one per line.
# Example:
# What should this source set help us understand?
EOF_QUESTIONS
fi

cat > "$TARGET/sources/README.md" <<'EOF_SOURCES_README'
# Sources

Put raw material here: PDFs, notes, transcripts, articles, copied text, exports, and links saved as text.

The agent reads this folder first, triages source quality, and turns useful signals into quick notes.
EOF_SOURCES_README

cat > "$TARGET/quick_notes/README.md" <<'EOF_OBSERVATIONS_README'
# Quick Notes

This folder holds short Near Lens notes from individual sources.

Use it for useful signals, caveats, contradictions, and concept candidates. Do not treat these notes as final conclusions.
EOF_OBSERVATIONS_README

cat > "$TARGET/my_wikipedia/README.md" <<'EOF_CONCEPT_WIKI'
# My Wikipedia

This folder holds promoted concept pages that accumulate across sources.

Do not create a page for every mentioned term. Promote a concept here only when it repeats across independent sources, is central to an active focus, is needed for synthesis, or the user asks for it.

Use one short markdown file per promoted concept. Keep pages brief, sourced, and easy to revise.
EOF_CONCEPT_WIKI

cat > "$TARGET/deep_insights/README.md" <<'EOF_INSIGHTS_README'
# Deep Insights

This folder holds Far Lens synthesis files.

Use it for slower, evidence-backed outputs that compare sources, check assumptions, and state limits.
EOF_INSIGHTS_README

cat > "$TARGET/radar.md" <<'EOF_RADAR'
# Research Radar

This file is Bifocal's attention layer.

Keep entries short. The radar should show what deserves attention next. It is not the whole research system and it should not replace `quick_notes/`, `my_wikipedia/`, or `deep_insights/`.

Use it for user questions, emergent questions, gaps, contradictions, concept clusters, and deep insight candidates.

## User Questions

Questions the researcher explicitly wrote in `my_questions.txt` or asked in conversation.

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
| Deep Insight ID | File | Source Focus | Status |
| --- | --- | --- | --- |
| example | deep_insights/deep_insight_example.md | A-001 | Under Review |
```

Status values:

- Stable
- Under Review
EOF_RADAR

cat > "$TARGET/mistakes.md" <<'EOF_FAILURE'
# Failure Log

Append one line when the agent catches substitution, anchoring, WYSIATI, or related reasoning drift mid-turn.

Template:

```markdown
- Date: YYYY-MM-DD | Focus: {question, concept, claim, or synthesis} | Failure Mode: {mode} | What Changed: {correction}
```
EOF_FAILURE

: > "$TARGET/sources/.gitkeep"
: > "$TARGET/quick_notes/.gitkeep"
: > "$TARGET/my_wikipedia/.gitkeep"
: > "$TARGET/deep_insights/.gitkeep"

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
