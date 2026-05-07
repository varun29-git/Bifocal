# Insight: World Model Definition

Status: Stable

## Focus

Q-001: What is a world model in machine learning?

## Synthesis

A world model is a learned representation of how an environment works that lets an agent predict relevant future consequences from current context and possible actions. In the reinforcement learning sources, this usually means a compact latent dynamics model that predicts future states, rewards, or representations so behavior can be learned or evaluated without relying only on direct interaction with the environment.

The core idea has three parts:

1. Compression: turn high-dimensional observations into a smaller useful state.
2. Prediction: model how that state changes over time, often conditioned on actions.
3. Use for action: train, plan, or evaluate behavior through the learned model.

The definition should stay broad enough to include LeCun's JEPA framing, where a world model is a predictive abstraction used for planning and common sense, but narrow enough to distinguish empirical RL systems from conceptual architecture proposals. In this source set, the strongest empirical definition comes from the Ha and Schmidhuber and Dreamer papers, while JEPA expands the conceptual horizon.

## Backing Evidence

- Source: `sources/World Models .pdf`
  Adds: Introduces the V-M-C framing in which a vision model compresses observations, a memory model predicts future latent states, and a controller acts from those representations.
- Source: `sources/Dream to Control (DreamerV1).pdf`
  Adds: Defines a practical world-model agent loop: learn latent dynamics from experience, learn behavior in latent imagination, and collect more experience in the environment.
- Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
  Adds: Shows that a world model can be trained separately and still support behavior learning on Atari when its latent representations are useful enough.
- Source: `sources/Mastering Diverse Domains through World Models (DreamerV3).pdf`
  Adds: Shows the same world-model pattern applied across many domains using fixed hyperparameters and robustness techniques.
- Source: `sources/A Path Towards Autonomous Machine Intelligence (JEPA).pdf`
  Adds: Broadens world models into predictive representations for planning, hierarchy, and common sense.

## First Principles Breakdown

Observation: Agents receive partial, high-dimensional streams of experience.

Mechanism: A world model learns an internal state that preserves task-relevant structure and predicts future consequences.

Assumption: A compact predictive state can be more useful for action than raw observation history alone.

Implication: If the model is good enough, the agent can improve behavior through imagined trajectories, planning, or prediction-based evaluation.

## Counterevidence and Limits

The term "world model" can become too broad. JEPA uses it as part of a proposed cognitive architecture, while Dreamer uses it as an empirically evaluated model-based RL component. These should not be treated as the same kind of evidence.

Performance alone does not prove a model has learned a general model of the world. It may have learned task-specific regularities that are sufficient for a benchmark. A stronger claim needs evidence of prediction quality, transfer, robustness, or useful behavior under changed conditions.

Bias checks:

- Substitution: Do not replace "learned predictive representation" with "human-like understanding."
- Anchoring: Do not let the Ha and Schmidhuber V-M-C architecture define the whole category.
- Overconfidence: The definition is stable for this source set, not final for all machine learning.
- WYSIATI: The current set lacks a direct LLM-specific world-model source.

## Memory Check

No conflict with Protocol Memory.

## Next Research Actions

Use this definition as the base for Q-003 and A-001. Add at least one LLM-specific world-model source before synthesizing Q-002.
