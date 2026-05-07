# Observation: Real Computation Has Costs Beyond Landauer's Bound

Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
Reviewed: 2026-05-08
Source Date: 2024-10-29

## Source Triage

- Type: Scholarly perspective and research agenda.
- Author Context: Clear. David H. Wolpert and collaborators, published in PNAS.
- Evidence Mode: Conceptual synthesis of stochastic thermodynamics, computer science theory, and physical constraints on computation.
- Use Level: Strong framing source for why Landauer's bound is not enough for real computers.

## Signal

The paper argues that Landauer's bound is usually far below the real energy cost of computation because real computers face constraints: finite time, clocking, modularity, architecture, limited degrees of freedom, and far-from-equilibrium operation. Those constraints create irreversible entropy production above the idealized bound.

The central move is to treat energy as a computational resource, like time and memory, but grounded in stochastic thermodynamics rather than only in abstract computer science.

## Open Question

How should reversible computing distinguish logical reversibility from thermodynamic reversibility under realistic constraints?

Concept Candidates:

- Landauer's principle
- Stochastic thermodynamics
- Entropy production
- Thermodynamic speed limits

## Caveat

This is a perspective article. It gives a powerful conceptual map, but it is not itself a hardware demonstration.
