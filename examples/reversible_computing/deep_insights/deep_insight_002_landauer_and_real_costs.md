# Insight: Landauer's Principle Is Foundational, But It Is Not the Practical Cost Model

Status: Stable

## Focus

Q-002: Why does reversibility matter for the thermodynamic cost of computation?

Q-003: What is Landauer's principle, and what does it actually imply?

## Synthesis

Landauer's principle says that erasing information has a thermodynamic cost. In the classic bit-erasure version, erasing one bit at temperature T costs at least kB T ln 2. That makes reversibility important because logically irreversible operations throw away information and therefore create a thermodynamic bill somewhere in the physical process.

But the key lesson from Wolpert et al. is that Landauer's bound is not a practical energy model for real computers. It is an ideal lower bound. Real machines operate in finite time, use clocks, have modular architectures, occupy limited physical degrees of freedom, and run far from equilibrium. Those constraints create irreversible entropy production above the Landauer term.

Tkachenko gives a useful contrast: in a quasi-static analog DNN model, inference can in principle avoid entropy production, while digital multistable bits face Landauer-type limits. But training remains dissipative in that same analog model. So reversibility can reduce a certain kind of thermodynamic cost, but it does not make computing free.

The honest answer is:

Landauer's principle explains why erasure is costly. Stochastic thermodynamics is needed to estimate the real costs of constrained physical computation.

## Backing Evidence

- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Adds: Argues that Landauer's bound is usually far below real computer energy costs because constraints create additional entropy production.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Adds: Claims quasi-static analog inference can have zero minimal energy cost, while training has a finite lower bound.
- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Adds: Shows a practical invertible logic path, which helps separate functional invertibility from thermodynamic cost claims.

## First Principles Breakdown

Observation: Erasure reduces the number of possible logical states represented by the system.

Inference: Reducing informational entropy must be paid for through entropy exported elsewhere.

Assumption: Realistic energy analysis must include constraints on time, control, noise, architecture, and physical implementation.

## Counterevidence and Limits

Landauer's bound remains fundamental. The point is not that it is wrong. The point is that it is incomplete for real machines. A reversible architecture may still dissipate energy through clocking, driving, leakage, error correction, finite-time operation, and measurement or control.

Bias checks:

- Substitution: Do not substitute the minimum erasure cost for total computer energy.
- Anchoring: Do not anchor on kB T ln 2 as if it predicts modern hardware energy.
- Overconfidence: Tkachenko's zero-cost inference claim is in-principle and quasi-static, not a present hardware result.
- WYSIATI: The source set needs experimental low-energy reversible or adiabatic computing results.

## Memory Check

No conflict with Protocol Memory.

## Next Research Actions

Add sources on experimental Landauer tests, finite-time Landauer bounds, adiabatic CMOS, and reversible circuit energy measurements.
