# Observation: DreamerV1 Learns Behavior In Latent Imagination

Source: `sources/Dream to Control (DreamerV1).pdf`
Reviewed: 2026-05-08
Source Date: 2020-03-17

## Source Triage

- Type: Primary research, ICLR 2020 conference paper.
- Author Context: Clear. Danijar Hafner, Timothy Lillicrap, Jimmy Ba, and Mohammad Norouzi, with Toronto, DeepMind, and Google Brain affiliations.
- Evidence Mode: Evidence comes from algorithm design and experiments on visual control tasks.
- Use Level: Strong for the latent imagination mechanism in Dreamer.

## Signal

DreamerV1 makes the world-model idea operational for visual control by learning a latent dynamics model and then learning behavior from imagined trajectories in that compact latent space. It emphasizes analytic gradients through imagined trajectories and value estimates, rather than derivative-free planning.

The paper separates the loop into dynamics learning from experience, behavior learning in imagination, and acting in the environment to gather more experience.

## Open Question

Does latent imagination mainly help through sample efficiency, computational efficiency, or better long-horizon credit assignment?

Concept Candidates:

- Latent imagination
- Latent dynamics
- Actor critic in imagination
- Value gradients
- Visual control

## Caveat

The paper is strong evidence for continuous visual control, but it does not by itself establish that the same approach generalizes across all domains.
