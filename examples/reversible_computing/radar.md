# Research Radar

This file is Bifocal's attention layer for the reversible computing example.

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
