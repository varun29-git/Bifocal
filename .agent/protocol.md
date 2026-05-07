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

## Start Here

At the start of each research turn:

1. Read `user_questions.txt`, ignoring blank lines and lines that start with `#`.
2. Promote any new user questions into `research_radar.md`.
3. Inspect `source_material/` for new or changed sources.
4. Use Near Lens unless the user explicitly asks for Far Lens or System 2.

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
4. Add or update a question in `research_radar.md` when the signal affects an active research direction.

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

Use `user_questions.txt` as the user's simple question inbox. Ignore blank lines and lines that start with `#`. Do not make the user edit radar syntax directly. When a question in `user_questions.txt` is not already represented in the radar, add it under User Questions.

For each useful source, add one short evidence tag under the most relevant question:

```markdown
- Source: {file or source name}
  Date: {YYYY-MM-DD}
  Adds: {one sentence explaining what this source adds that the others do not}
```

If no question matches, add a new question only when it points to a real gap.

If the agent has not updated `research_radar.md` in the current research turn, the turn is not complete.

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
7. Which concept pages should be created or updated?

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
5. `concept_wiki/` was updated when reusable concepts changed.
6. Any caught reasoning drift was logged in `failure_log.md`.
7. No em dash characters were introduced.
