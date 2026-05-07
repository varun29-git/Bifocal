# Observation: DreamerV2 Uses Discrete Latents For Atari

Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
Reviewed: 2026-05-08
Source Date: 2022-02-12

## Source Triage

- Type: Primary research, ICLR 2021 conference paper.
- Author Context: Clear. Danijar Hafner, Timothy Lillicrap, Mohammad Norouzi, and Jimmy Ba, with Google Research, DeepMind, and University of Toronto affiliations.
- Evidence Mode: Evidence comes from architecture changes and Atari benchmark results.
- Use Level: Strong for evidence that world models can support competitive behavior learning on Atari.

## Signal

DreamerV2 extends Dreamer to Atari by using discrete latent representations and a separately trained world model. The paper claims human-level performance on the Atari benchmark through behavior learned inside the world model.

This is important because it treats successful policy learning inside the world model as evidence that the model has learned a useful representation of the environment.

## Open Question

What properties of discrete latent states made the learned world model accurate enough for Atari compared with earlier image-based model attempts?

Concept Candidates:

- Discrete latent states
- RSSM
- Separately trained world model
- Atari benchmark
- Latent behavior learning

## Caveat

The first-pass reading supports the headline contribution, but a deeper read is needed before comparing it fairly against MuZero, Rainbow, IQN, or model-free baselines.
