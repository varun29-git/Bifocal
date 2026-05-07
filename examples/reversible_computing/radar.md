# Research Radar

This file is Bifocal's attention layer for the reversible computing example.

Keep entries short. The radar should show what deserves attention next. It is not the whole research system and it should not replace `quick_notes/`, `my_wikipedia/`, or `deep_insights/`.

## User Questions

### Q-001: What is reversible computing?

Status: Synthesized

Evidence:

- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Date: 2026-03-27
  Adds: Distinguishes reversible logic from invertible logic and demonstrates CMOS invertible logic.
- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Date: 2024-10-29
  Adds: Connects computation to entropy production under realistic physical constraints.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Date: 2025-12-07
  Adds: Presents quasi-static analog inference as thermodynamically reversible in principle.

Notes:

Synthesized in `deep_insights/deep_insight_001_reversible_computing_definition.md`.

### Q-002: Why does reversibility matter for the thermodynamic cost of computation?

Status: Synthesized

Evidence:

- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Date: 2024-10-29
  Adds: Argues that real computational constraints create entropy production above Landauer's ideal bound.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Date: 2025-12-07
  Adds: Separates reversible quasi-static inference from dissipative training.
- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Date: 2026-03-27
  Adds: Gives a practical invertible logic case that must be distinguished from thermodynamic reversibility.

Notes:

Synthesized in `deep_insights/deep_insight_002_landauer_and_real_costs.md`.

### Q-003: What is Landauer's principle, and what does it actually imply?

Status: Synthesized

Evidence:

- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Date: 2024-10-29
  Adds: Explains Landauer's bound and why it is usually far below actual computer energy costs.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Date: 2025-12-07
  Adds: Uses Landauer's principle as a contrast between digital multistable bits and quasi-static analog inference.

Notes:

Synthesized in `deep_insights/deep_insight_002_landauer_and_real_costs.md`.

### Q-004: How are reversible logic, adiabatic computing, and quantum computing related?

Status: Open

Evidence:

- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Date: 2026-03-27
  Adds: Clearly distinguishes reversible logic from invertible logic and mentions quantum devices in related invertible-logic work.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Date: 2025-12-07
  Adds: Discusses quasi-static analog operation, which is adjacent to adiabatic reasoning but not a full adiabatic computing source.

Notes:

Not synthesized. The folder needs dedicated adiabatic computing and quantum computing sources before answering this cleanly.

### Q-005: What are the main practical barriers to building useful reversible computers?

Status: Synthesized

Evidence:

- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Date: 2024-10-29
  Adds: Identifies physical constraints such as finite time, clocking, modularity, and architecture as entropy-production sources.
- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Date: 2026-03-27
  Adds: Shows manufacturability progress while raising questions about overhead and system-level energy benefit.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Date: 2025-12-07
  Adds: Makes training and adaptation a fundamental energy-cost barrier even when inference is reversible in principle.

Next Action:

Synthesized in `deep_insights/deep_insight_003_paths_and_barriers.md`.

### Q-006: Which claims about reversible computing are established, and which are speculative?

Status: Synthesized

Evidence:

- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Date: 2024-10-29
  Adds: Establishes that Landauer alone is incomplete for real computers and motivates stochastic thermodynamics.
- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Date: 2026-03-27
  Adds: Establishes a CMOS invertible-logic demonstration, while broader energy claims remain under review.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Date: 2025-12-07
  Adds: Establishes an in-principle theoretical split between reversible inference and dissipative training.

Notes:

Synthesized in `deep_insights/deep_insight_003_paths_and_barriers.md`.

## Emergent Attention Items

### A-001: Invertible is not the same as thermodynamically reversible

Type: Contradiction
Status: Synthesized

Why It Matters:

The CMOS invertible logic paper shows reverse-mode function, but the thermodynamics sources warn that physical constraints still create entropy production.

Evidence:

- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Date: 2026-03-27
  Adds: Demonstrates invertible logic in standard CMOS.
- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Date: 2024-10-29
  Adds: Explains why physical constraints produce costs beyond logical descriptions.

Next Action:

When adding hardware sources, separate functional invertibility, logical reversibility, and thermodynamic reversibility.

### A-002: Missing classic reversible computing foundations

Type: Gap
Status: Open

Why It Matters:

The current run lacks Bennett, Fredkin, Toffoli, and classical reversible circuit synthesis sources.

Evidence:

- Source: Current source set
  Date: 2026-05-08
  Adds: Covers modern thermodynamics, invertible CMOS, and quasi-static DNNs, but not the classic foundations.

Next Action:

Add foundational papers or review chapters on reversible computation and reversible logic gates.

### A-003: Missing adiabatic and quantum sources

Type: Gap
Status: Open

Why It Matters:

Q-004 cannot be answered fully from the current folder because adiabatic computing and quantum computing are only lightly touched.

Evidence:

- Source: Current source set
  Date: 2026-05-08
  Adds: Contains only adjacent mentions, not dedicated adiabatic or quantum treatment.

Next Action:

Add sources on adiabatic CMOS, reversible quantum gates, and quantum circuit thermodynamics.

## Synthesis Ledger

```markdown
| Deep Insight ID | File | Source Focus | Status |
| --- | --- | --- | --- |
| 001 | `deep_insights/deep_insight_001_reversible_computing_definition.md` | Q-001 | Stable |
| 002 | `deep_insights/deep_insight_002_landauer_and_real_costs.md` | Q-002, Q-003 | Stable |
| 003 | `deep_insights/deep_insight_003_paths_and_barriers.md` | Q-005, Q-006 | Under Review |
```
