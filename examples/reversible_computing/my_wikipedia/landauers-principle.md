# Landauer's Principle

Status: Under Review

## Working Definition

Landauer's principle connects information erasure to thermodynamic cost. In its classic form, erasing one bit at temperature T costs at least kB T ln 2 of dissipated energy.

## Why It Matters

Landauer's principle explains why logically irreversible operations such as erasure are not thermodynamically free. But the current source set warns that Landauer's bound is usually not the practical energy cost of real computation, because real machines face constraints that create additional entropy production.

## Source Notes

- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Adds: Argues that Landauer's bound is often almost useless for real computers unless extra constraints and entropy production are analyzed.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Adds: Contrasts digital multistable bits, which face Landauer-type limits, with quasi-static analog inference.
- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Adds: Provides a practical invertible logic example, while not claiming thermodynamic reversibility.

## Open Questions

- Which operations in a proposed architecture actually erase information?
- How large are the non-Landauer costs from clocking, speed, noise, constraints, and reliability?
