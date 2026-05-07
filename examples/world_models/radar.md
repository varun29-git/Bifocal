# Research Radar

This file is Bifocal's attention layer for the world models example.

Keep entries short. The radar should show what deserves attention next. It is not the whole research system and it should not replace `quick_notes/`, `my_wikipedia/`, or `deep_insights/`.

## User Questions

### Q-001: What is a world model in machine learning?

Status: Ready for Far Lens

Evidence:

- Source: `sources/World Models .pdf`
  Date: 2018-05-09
  Adds: Defines a world model through a V-M-C agent that compresses observations, predicts future latent states, and supports action.
- Source: `sources/Dream to Control (DreamerV1).pdf`
  Date: 2020-03-17
  Adds: Frames world models as learned latent dynamics used for behavior learning in imagination.
- Source: `sources/A Path Towards Autonomous Machine Intelligence (JEPA).pdf`
  Date: 2022-06-27
  Adds: Broadens world models into predictive abstraction for planning, common sense, and autonomous intelligence.

Notes:

Near Lens has enough distinct evidence to synthesize a first definition, but the answer should separate empirical RL systems from broader architecture proposals.

### Q-002: How do world models differ across reinforcement learning, robotics, and large language model research?

Status: Open

Evidence:

- Source: `sources/Dream to Control (DreamerV1).pdf`
  Date: 2020-03-17
  Adds: Shows world models in visual control tasks through latent dynamics and actor critic learning in imagination.
- Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
  Date: 2022-02-12
  Adds: Extends world-model learning to Atari and a humanoid robot example from pixel inputs.
- Source: `sources/Mastering Diverse Domains through World Models (DreamerV3).pdf`
  Date: 2024-04-17
  Adds: Compares a single Dreamer configuration across Atari, ProcGen, DMLab, Minecraft, visual control, proprioceptive control, and BSuite.
- Source: `sources/A Path Towards Autonomous Machine Intelligence (JEPA).pdf`
  Date: 2022-06-27
  Adds: Connects world models to self-supervised predictive representation, hierarchy, intrinsic motivation, and planning.

Notes:

This source set covers RL and robotics-adjacent control. It does not yet include a direct LLM-specific source, so the LLM part is a gap.

### Q-003: What evidence would show that a model has learned a useful predictive representation of its environment?

Status: Ready for Far Lens

Evidence:

- Source: `sources/World Models .pdf`
  Date: 2018-05-09
  Adds: Uses policy transfer from hallucinated or learned environments back to actual environments as evidence.
- Source: `sources/Dream to Control (DreamerV1).pdf`
  Date: 2020-03-17
  Adds: Uses improved data efficiency, computation time, and final performance on visual control tasks.
- Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
  Date: 2022-02-12
  Adds: Treats human-level Atari behavior learned inside a separately trained world model as evidence of useful representation.
- Source: `sources/Mastering Diverse Domains through World Models (DreamerV3).pdf`
  Date: 2024-04-17
  Adds: Uses broad cross-domain performance with fixed hyperparameters as evidence of robust world-model learning.

Notes:

Ready for Far Lens, but synthesis should distinguish predictive accuracy, behavioral performance, transfer, and robustness as different evidence types.

### Q-004: What are the main limitations or failure modes of current world-model approaches?

Status: Open

Evidence:

- Source: `sources/Dream to Control (DreamerV1).pdf`
  Date: 2020-03-17
  Adds: Raises the risk that finite imagination horizons can produce shortsighted behavior.
- Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
  Date: 2022-02-12
  Adds: Notes that prior Atari world models were not accurate enough for competitive behavior learning.
- Source: `sources/Mastering Diverse Domains through World Models (DreamerV3).pdf`
  Date: 2024-04-17
  Adds: Motivates normalization, balancing, and transformations as robustness fixes for cross-domain learning.
- Source: `sources/A Path Towards Autonomous Machine Intelligence (JEPA).pdf`
  Date: 2022-06-27
  Adds: Identifies uncertainty, hierarchy, and long time-scale planning as core open challenges.

Notes:

Needs deeper reading of methods and limitations sections before synthesis.

## Emergent Attention Items

### A-001: Dreamer as a world-model research line

Type: Concept Cluster
Status: Ready for Far Lens

Why It Matters:

The source set contains three Dreamer generations, making it possible to track how the mechanism evolves from latent imagination to discrete latent states to cross-domain robustness.

Evidence:

- Source: `sources/Dream to Control (DreamerV1).pdf`
  Date: 2020-03-17
  Adds: Establishes latent imagination for visual control.
- Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
  Date: 2022-02-12
  Adds: Extends Dreamer with discrete latents for Atari-scale behavior learning.
- Source: `sources/Mastering Diverse Domains through World Models (DreamerV3).pdf`
  Date: 2024-04-17
  Adds: Generalizes Dreamer across many domains with fixed hyperparameters.

Next Action:

Read the methods sections for V1, V2, and V3 side by side before writing a deep insight.

### A-002: Missing LLM-specific world-model evidence

Type: Gap
Status: Open

Why It Matters:

One user question asks about large language model research, but the current source set is mostly reinforcement learning, control, and broad cognitive architecture.

Evidence:

- Source: Current source set
  Date: 2026-05-08
  Adds: Contains no direct LLM-specific paper on world models.

Next Action:

Add at least one LLM-specific source before answering the LLM comparison part.

## Synthesis Ledger

```markdown
| Deep Insight ID | File | Source Focus | Status |
| --- | --- | --- | --- |
```
