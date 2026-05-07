# Insight: Dreamer As A World-Model Research Line

Status: Under Review

## Focus

A-001: Dreamer as a world-model research line.

## Synthesis

Dreamer is a research line that turns the world-model idea into a repeatable agent recipe:

1. Learn a compact predictive model from experience.
2. Imagine trajectories inside that model.
3. Train actor and critic behavior from imagined trajectories.
4. Execute the actor in the real environment to collect more experience.

DreamerV1 establishes latent imagination for continuous visual control. DreamerV2 changes the representation to discrete latent states and shows that behavior learned inside a separately trained world model can reach strong Atari performance. DreamerV3 pushes the approach toward generality by emphasizing robustness across domains through normalization, balancing, transformations, and fixed hyperparameters.

The line is not just "better world models over time." It is a sequence of attempts to make imagined behavior learning reliable enough that the learned model can substitute for large amounts of real interaction.

## Backing Evidence

- Source: `sources/Dream to Control (DreamerV1).pdf`
  Adds: Establishes the core loop of learning latent dynamics from experience, learning behavior in latent imagination, and acting in the environment.
- Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
  Adds: Uses discrete latent states and a separately trained world model to scale the Dreamer approach to Atari.
- Source: `sources/Mastering Diverse Domains through World Models (DreamerV3).pdf`
  Adds: Frames Dreamer as a general algorithm across many domains with a single configuration and robustness techniques.
- Source: `sources/World Models .pdf`
  Adds: Provides the earlier V-M-C conceptual ancestor: learned representation, predictive memory, and controller.

## First Principles Breakdown

Observation: Direct real-environment interaction can be expensive, sparse, slow, or dangerous.

Mechanism: Dreamer learns a predictive latent model and uses imagined trajectories to train behavior.

Assumption: The latent model preserves enough action-relevant structure that gradients or value estimates through imagination improve real behavior.

Implication: Progress in Dreamer depends on both representation quality and optimization stability. Better latent states alone are not enough if imagined training is unstable.

## Counterevidence and Limits

This synthesis is under review because it is based mainly on abstracts, introductions, and first-pass quick notes. The next pass should compare the detailed methods sections and ablations across V1, V2, and V3.

The research line is also mostly RL and control-focused. It should not be generalized to LLM world models without additional sources.

Bias checks:

- Substitution: Do not equate "Dreamer works on many domains" with "all world models work."
- Anchoring: Do not define world models only through Dreamer, because JEPA and other predictive architectures frame the category differently.
- Overconfidence: V3 breadth is strong evidence, but it still depends on the chosen domains, budgets, and evaluation protocol.
- WYSIATI: Current notes do not yet include detailed failure-mode sections or independent replications.

## Memory Check

No conflict with Protocol Memory.

## Next Research Actions

Read the methods and ablations for DreamerV1, DreamerV2, and DreamerV3 side by side. Then update Q-004 on limitations and failure modes.
