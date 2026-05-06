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
