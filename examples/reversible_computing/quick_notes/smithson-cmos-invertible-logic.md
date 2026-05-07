# Observation: Invertible Logic Can Be Built in Standard CMOS

Source: `sources/Efficient CMOS Invertible Logic Using Stochastic Computing.pdf`
Reviewed: 2026-05-08
Source Date: 2026-03-27

## Source Triage

- Type: Primary hardware research preprint.
- Author Context: Clear. Sean C. Smithson, Naoya Onizawa, Brett H. Meyer, Warren J. Gross, and Takahiro Hanyu. McGill University and Tohoku University.
- Evidence Mode: Design methodology, simulation, FPGA synthesis, and ASIC measurement for stochastic CMOS invertible logic.
- Use Level: Strong for practical invertible logic hardware, under review until peer review and independent replication.

## Signal

The paper presents invertible stochastic logic circuits that can run forward or reverse. A multiplier can act as a multiplier in forward mode and as a divider or factorizer in reverse mode. The key practical claim is manufacturability: the design uses standard CMOS and existing EDA tools rather than requiring exotic devices.

The paper also distinguishes reversible logic from invertible logic. Reversible logic requires one-to-one input-output mappings using gates such as Toffoli or CNOT. Invertible logic can recover valid inputs consistent with an output, often probabilistically, even when multiple valid inputs exist.

## Open Question

Does CMOS invertible logic improve energy efficiency in practice, or mainly improve functional reuse and reverse-mode search?

Concept Candidates:

- Invertible logic
- Reversible logic
- Stochastic computing
- Boltzmann machine logic

## Caveat

The paper demonstrates manufacturable invertible logic, but it is not the same as proving thermodynamically reversible computation.
