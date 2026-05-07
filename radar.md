# Research Radar

This file is Bifocal's attention layer.

Keep entries short. The radar should show what deserves attention next. It is not the whole research system and it should not replace `observations/`, `my_wikipedia/`, or `insights/`.

Use it for user questions, emergent questions, gaps, contradictions, concept clusters, and insight candidates.

## User Questions

Questions the researcher explicitly wrote in `questions.txt` or asked in conversation.

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
| example | insights/insight_example.md | A-001 | Under Review |
```

Status values:

- Stable
- Under Review
