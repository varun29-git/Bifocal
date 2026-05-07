# Observation: Quasi-Static Analog Inference May Be Reversible, Training Is Not Free

Source: `sources/2. "Thermodynamic bounds on energy use in quasi-static Deep Neural Networks".pdf`
Reviewed: 2026-05-08
Source Date: 2025-12-07

## Source Triage

- Type: Primary theoretical preprint.
- Author Context: Clear. Alexei V. Tkachenko, Brookhaven National Laboratory.
- Evidence Mode: Statistical-mechanical model of quasi-static analog DNNs with thermodynamic bounds for inference and training.
- Use Level: Useful for analog reversible-inference theory, under review until peer review and implementation evidence.

## Signal

The paper maps feedforward neural networks onto a physical free-energy functional. In that model, quasi-static analog inference can in principle proceed with zero minimal energy cost because the system relaxes to a unique free-energy minimum without entropy production.

Training is different. Clamping inputs and outputs overconstrains the system, creating stresses that propagate backward like backpropagation. The paper derives a lower bound on training energy that scales with parameter count and dataset size.

## Open Question

Can physical quasi-static analog systems maintain the needed precision, speed, and stability outside idealized assumptions?

Concept Candidates:

- Quasi-static analog computing
- Reversible inference
- Physical learning
- Training energy bound

## Caveat

The strongest claims are theoretical and depend on quasi-static operation, timescale separation, and analog physical implementation assumptions.
