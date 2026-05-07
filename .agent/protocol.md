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
- Read `questions.txt` before choosing what to work on.
- Maintain `my_wikipedia/` as the durable wiki of reusable concepts.
- Keep bookkeeping light enough to follow across turns.

## Knowledge Ecosystem

Bifocal is not a question-answering workflow. It is a small research ecosystem.

Maintain these layers:

1. `sources/` holds raw inputs.
2. `observations/` holds short observations from individual sources.
3. `my_wikipedia/` holds reusable concepts that accumulate across sources.
4. `radar.md` holds attention items: user questions, emergent questions, gaps, contradictions, and insight candidates.
5. `insights/` holds Far Lens outputs.
6. Protocol Memory holds durable axioms only after synthesis.

Questions are steering signals. They help direct attention, but they are not the only reason to read, organize, synthesize, or update memory.

## Start Here

At the start of each research turn:

1. Read `questions.txt`, ignoring blank lines and lines that start with `#`.
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
2. Write a short note in `observations/` only when the material contains a useful signal.
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

Use `questions.txt` as the user's simple question inbox. Ignore blank lines and lines that start with `#`. Do not make the user edit radar syntax directly. When a question in `questions.txt` is not already represented in the radar, add it under User Questions.

For each useful source, add one short evidence tag under the most relevant attention item:

```markdown
- Source: {file or source name}
  Date: {YYYY-MM-DD}
  Adds: {one sentence explaining what this source adds that the others do not}
```

If no attention item matches, add one only when the source creates a real question, gap, contradiction, concept cluster, or insight candidate.

If a turn only updates observations or concept pages, the radar does not need a forced update. Do not invent questions just to satisfy bookkeeping.

## Exploration Mode

If the user provides sources but no active question, still run Near Lens:

1. Triage new sources.
2. Write useful observations.
3. Mark concept candidates in observation notes.
4. Add only the most important emergent questions, gaps, or contradictions to `radar.md`.
5. End with one next action.

## My Wikipedia

Use `my_wikipedia/` for promoted concepts, not every concept mentioned in a source.

Do not create a concept page just because a source mentions or defines a term. During Near Lens, mark possible concepts in `observations/` observation notes using `Concept Candidates`.

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

System 2 output goes in `insights/` and uses this naming pattern:

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
4. At least one appropriate state artifact was updated: `observations/`, `my_wikipedia/`, `radar.md`, `insights/`, or Protocol Memory.
5. Questions were not invented just to make the radar look active.
6. Any caught reasoning drift was logged in `mistakes.md`.
7. No em dash characters were introduced.
