#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-.}"

mkdir -p "$TARGET/.agent" "$TARGET/source_material" "$TARGET/processed_wiki" "$TARGET/synthesis"
rm -f "$TARGET/.agent/project_memory.md"

cat > "$TARGET/README.md" <<'EOF_README'
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
EOF_README

cat > "$TARGET/.agent/protocol.md" <<'EOF_PROTOCOL'
# Agent Research Protocol

This file is both the operating protocol and the project memory.

Use the System 1 and System 2 labels as research modes. They are inspired by *Thinking, Fast and Slow*, but they are not claims about agent cognition.

## Non-Negotiables

- Use humble, grounded language.
- Do not use em dash characters.
- Start from first principles.
- Separate observation from inference.
- Keep bookkeeping light enough to follow across turns.

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

Use it for quick observation:

1. Read or skim incoming source material.
2. Write a short note in `processed_wiki/` only when the material contains a useful signal.
3. Add or update a question in `research_radar.md` when the signal affects an active research direction.

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

## Radar Check

Use `research_radar.md` as the active question list.

For each useful source, add one short evidence tag under the most relevant question:

```markdown
- Source: {file or source name}
  Date: {YYYY-MM-DD}
  Adds: {one sentence explaining what this source adds that the others do not}
```

If no question matches, add a new question only when it points to a real gap.

If the agent has not updated `research_radar.md` in the current research turn, the turn is not complete.

## Transition Trigger

Switch to System 2 when either condition is true:

1. A question has 3 or more evidence tags with distinct Adds lines.
2. The user explicitly asks for System 2.

Distinct Adds lines are a readiness signal. Confirm source independence during synthesis.

## System 2

System 2 is deliberate synthesis.

Before writing the synthesis, check:

1. What question is being answered?
2. Which sources actually bear on it?
3. What does each source add that the others do not?
4. What assumptions are doing work?
5. What would weaken or falsify the answer?
6. Does the answer conflict with Protocol Memory?

System 2 output goes in `synthesis/` and uses this naming pattern:

```text
insight_{ID}.md
```

Required structure:

```markdown
# Insight: {Title}

Status: Stable | Under Review

## Question

## Short Answer

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
- Date: {YYYY-MM-DD} | Question: {question} | Failure Mode: {mode} | What Changed: {correction}
```

## End-of-Turn Check

Before ending a research turn, verify:

1. The answer matches the user's actual question.
2. Observation and inference are separated.
3. Missing evidence is visible.
4. `research_radar.md` was updated in this turn.
5. Any caught reasoning drift was logged in `failure_log.md`.
6. No em dash characters were introduced.
EOF_PROTOCOL

cat > "$TARGET/research_radar.md" <<'EOF_RADAR'
# Research Radar

This file tracks active questions and completed synthesis.

Keep entries short. The radar should help the agent decide what to do next, not become a second notebook.

Use User Questions for objectives the researcher explicitly asked for. Use AI Generated Questions for gaps the agent found while observing sources.

## User Questions

```markdown
### Q-{ID}: {Question}

Status: Open | Ready for System 2 | Synthesized | Under Review

Evidence:

- Source:
  Date:
  Adds:

Notes:
```

## AI Generated Questions

```markdown
### AQ-{ID}: {Question}

Status: Open | Ready for System 2 | Synthesized | Under Review

Evidence:

- Source:
  Date:
  Adds:

Notes:
```

## Synthesis Ledger

```markdown
| Insight ID | File | Source Question | Status |
| --- | --- | --- | --- |
| example | synthesis/insight_example.md | Q-001 | Under Review |
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
- Date: YYYY-MM-DD | Question: {question} | Failure Mode: {mode} | What Changed: {correction}
```
EOF_FAILURE

: > "$TARGET/source_material/.gitkeep"
: > "$TARGET/processed_wiki/.gitkeep"
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
