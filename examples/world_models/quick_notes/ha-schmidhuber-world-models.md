# Observation: World Models as V-M-C Agent Architecture

Source: `sources/World Models .pdf`
Reviewed: 2026-05-08
Source Date: 2018-05-09

## Source Triage

- Type: Primary research, ICML 2018 proceedings version.
- Author Context: Clear. David Ha, Google Brain, and Jurgen Schmidhuber, NNAISENSE and IDSIA.
- Evidence Mode: Evidence comes from experiments in reinforcement learning environments, with architectural details and benchmark results inside the paper.
- Use Level: Strong for the original V-M-C framing of learned world models in RL.

## Signal

This paper frames a world model as a learned compressed representation of an environment that can support action. The agent is decomposed into Vision, Memory, and Controller components. The Vision model compresses observations into latent vectors, the Memory model predicts future latent states, and the Controller maps latent and memory state to actions.

The most important signal is that behavior can be trained through the agent's learned model, including in generated or "dreamed" rollouts, rather than only through direct environment interaction.

## Open Question

How much of the agent's useful behavior comes from predictive representation quality versus the controller optimization procedure?

Concept Candidates:

- World model
- Latent state
- V-M-C architecture
- Dream training
- MDN-RNN

## Caveat

This is an early and relatively compact demonstration. It is strong for the conceptual architecture, but later Dreamer papers are better evidence for scale, robustness, and benchmark performance.
