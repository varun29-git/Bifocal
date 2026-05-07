# World Model

Status: Stable

## Working Definition

A world model is a learned internal model that represents useful structure of an environment and predicts possible future states, observations, rewards, or abstract representations. In the world-model RL papers, it is used to train or guide behavior without relying only on direct environment interaction.

## Why It Matters

World models are the central concept connecting the source set. They support compression, prediction, imagination, planning, and more sample-efficient behavior learning.

## Source Notes

- Source: `sources/World Models .pdf`
  Adds: Introduces the V-M-C framing where a vision model compresses observations, a memory model predicts future latent states, and a controller acts from those representations.
- Source: `sources/Dream to Control (DreamerV1).pdf`
  Adds: Shows behavior learning from imagined latent trajectories for visual control.
- Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
  Adds: Uses discrete latent states to make world-model behavior learning competitive on Atari.
- Source: `sources/Mastering Diverse Domains through World Models (DreamerV3).pdf`
  Adds: Tests a world-model agent across many domains with fixed hyperparameters.
- Source: `sources/A Path Towards Autonomous Machine Intelligence (JEPA).pdf`
  Adds: Broadens world models into a proposed architecture for predictive abstraction, planning, and common sense.

## Open Questions

- What evidence is sufficient to say a model has learned a useful world model rather than a task-specific predictive shortcut?
- How should generative latent dynamics and joint embedding predictive architectures be compared?

## Related Deep Insights

- `deep_insights/deep_insight_001_world_model_definition.md`
- `deep_insights/deep_insight_002_predictive_representation_evidence.md`
