# Stochastic Thermodynamics

Status: Draft

## Working Definition

Stochastic thermodynamics is a framework for analyzing heat, work, and entropy production in systems that evolve under fluctuations, often far from equilibrium.

## Why It Matters

Real computers are not ideal equilibrium systems. They compute in finite time, with constrained architectures, clocks, modules, noise, and physical implementation limits. Stochastic thermodynamics gives tools for estimating the extra irreversible entropy production caused by those constraints.

## Source Notes

- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Adds: Makes stochastic thermodynamics the main candidate framework for realistic energy-cost analysis of computation.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Adds: Uses statistical mechanics to reason about reversible inference and dissipative training in analog DNNs.
- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Adds: Uses stochastic computation and Boltzmann-machine-style logic, adjacent to but not identical with stochastic thermodynamic analysis.

## Open Questions

- How can stochastic thermodynamic bounds be translated into engineering design rules?
- Which computing architectures can approach low entropy production without losing speed or reliability?
