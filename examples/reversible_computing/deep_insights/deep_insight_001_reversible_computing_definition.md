# Insight: Reversible Computing Is About Avoiding Information Loss, But That Splits Into Several Meanings

Status: Stable

## Focus

Q-001: What is reversible computing?

## Synthesis

Reversible computing is the study of computation that avoids unnecessary information loss. The cleanest idea is that later states should retain enough information to reconstruct earlier states. But the current source set shows that this idea splits into at least three meanings.

Logical reversibility means the abstract input-output map is one-to-one. Reversible gates such as CNOT or Toffoli are examples. Invertible logic is related but different: it may recover valid inputs consistent with an output, even when there are multiple possible inputs. Smithson et al. build this kind of invertible logic with stochastic CMOS circuits.

Thermodynamic reversibility is stricter. It means the physical process produces no entropy. Wolpert et al. emphasize that real computers usually have constraints that create entropy production even when the ideal logical operation looks clean.

Quasi-static analog reversibility is another possible route. Tkachenko argues that analog DNN inference can, in principle, relax to a unique free-energy minimum with zero minimal energy cost, but only under quasi-static assumptions.

So the first Bifocal baseline is: reversible computing is not one thing. It includes logical reversibility, invertible search-like logic, and thermodynamic reversibility. Confusing these is the main way to overclaim.

## Backing Evidence

- Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
  Adds: Distinguishes reversible logic from invertible logic and demonstrates a standard-CMOS invertible logic family.
- Source: `sources/wolpert-et-al-2024-is-stochastic-thermodynamics-the-key-to-understanding-the-energy-costs-of-computation.pdf`
  Adds: Shows why physical reversibility must account for entropy production from real constraints.
- Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
  Adds: Provides a theoretical example where quasi-static analog inference may be thermodynamically reversible in principle.

## First Principles Breakdown

Observation: A computation maps some physical or logical state to another state.

Inference: If the map discards information, reconstructing the past requires extra information or erasure elsewhere.

Assumption: The energy relevance of reversibility depends on physical implementation, not just the abstract function.

## Counterevidence and Limits

Invertible CMOS logic is not automatically thermodynamically reversible. Quasi-static analog reversibility is not automatically practical. Logical reversibility does not remove costs from finite speed, control, noise, clocking, or architecture.

Bias checks:

- Substitution: Do not substitute invertibility for thermodynamic reversibility.
- Anchoring: Do not anchor on Landauer's bit-erasure example as the whole field.
- Overconfidence: Current source set has limited coverage of classical reversible circuit synthesis and quantum computing.
- WYSIATI: The folder lacks Bennett's foundational papers and dedicated adiabatic computing sources.

## Memory Check

No conflict with Protocol Memory.

## Next Research Actions

Add Bennett on reversible computation, Fredkin and Toffoli on conservative logic, and a source focused on adiabatic CMOS or reversible circuit synthesis.
