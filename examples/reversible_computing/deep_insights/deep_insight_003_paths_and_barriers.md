# Insight: The Main Barrier Is Preserving Reversibility While Still Being Useful

Status: Under Review

## Focus

Q-005: What are the main practical barriers to building useful reversible computers?

Q-006: Which claims about reversible computing are established, and which are speculative?

## Synthesis

The practical problem is not whether reversible ideas are mathematically meaningful. They are. The problem is preserving the benefits of reversibility while still getting speed, reliability, precision, programmability, and manufacturability.

Smithson et al. attack manufacturability by showing invertible stochastic logic in standard CMOS and existing EDA flows. That is important because many invertible-logic proposals rely on exotic devices. But this is primarily a functional and hardware-design result, not proof of near-zero thermodynamic cost.

Wolpert et al. identify a deeper barrier: real machines face constraints that produce entropy. Finite-time operation, global clocks, modularity, limited degrees of freedom, and correlations across subsystems all create costs beyond the ideal reversible picture.

Tkachenko gives a sharp in-principle split. Quasi-static analog inference may be reversible, but training is dissipative and its energy lower bound scales with parameters and dataset size. That makes learning or adaptation a major practical barrier even if inference can be made very efficient.

Established in this source set:

- Erasure has a thermodynamic cost.
- Real computation has costs beyond Landauer's bound.
- Invertible logic can be built in standard CMOS, at least for demonstrated circuits.
- Quasi-static analog models can clarify when inference may be thermodynamically reversible in principle.

Speculative or under review:

- Whether reversible computing can deliver large practical energy savings at useful speed and scale.
- Whether CMOS invertible logic will beat conventional hardware on system-level energy for real workloads.
- Whether quasi-static analog DNN inference can preserve precision, reliability, and programmability in deployable machines.
- The relationship to quantum computing in this folder, because the current sources mention it only lightly.

## Backing Evidence

- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Adds: Demonstrates a manufacturable CMOS path for invertible logic, including multiplier and factorizer behavior.
- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Adds: Explains why real computational constraints create unavoidable entropy production above ideal bounds.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Adds: Separates reversible inference from dissipative training in an idealized analog DNN framework.

## First Principles Breakdown

Observation: Useful computers must finish in finite time, tolerate noise, and expose controllable input-output behavior.

Inference: Every control requirement risks adding irreversibility or overhead.

Assumption: A reversible computer is only useful if total system energy improves, not merely if one logical component is reversible.

## Counterevidence and Limits

The source set is not yet balanced. It has one manufacturable invertible-logic paper, one broad thermodynamics perspective, and one theoretical analog-DNN paper. It lacks classic reversible computation sources, adiabatic hardware measurements, quantum computing sources, and mature systems benchmarks.

Bias checks:

- Substitution: Do not substitute circuit-level invertibility for system-level energy efficiency.
- Anchoring: Do not anchor on ideal quasi-static limits when practical speed matters.
- Overconfidence: Treat near-zero energy claims as in-principle until tied to implementation data.
- WYSIATI: Missing sources are especially important for quantum, adiabatic, and classic reversible circuit theory.

## Memory Check

No conflict with Protocol Memory.

## Next Research Actions

Add one classic reversible computing source, one adiabatic CMOS or reversible hardware measurement source, one quantum computing source, and one systems benchmark or review.
