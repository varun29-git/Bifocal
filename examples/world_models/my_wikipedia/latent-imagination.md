# Latent Imagination

Status: Draft

## Working Definition

Latent imagination is behavior learning through predicted trajectories in a compact learned state space instead of through direct rollout in the external environment or pixel-level prediction.

## Why It Matters

It is a core mechanism in Dreamer. It lets the agent evaluate and improve actions using the learned world model, often with better memory and compute efficiency than imagining full observations.

## Source Notes

- Source: `sources/Dream to Control (DreamerV1).pdf`
  Adds: Establishes behavior learning from imagined latent trajectories using actor critic learning and value gradients.
- Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
  Adds: Shows latent imagination can scale to Atari when the world model uses discrete latent representations.
- Source: `sources/Mastering Diverse Domains through World Models (DreamerV3).pdf`
  Adds: Applies the Dreamer mechanism across many domains with robustness techniques.

## Open Questions

- When does latent imagination fail because the learned model is inaccurate?
- How much horizon is enough before imagined rollouts become misleading?
