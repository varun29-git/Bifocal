# Insight: Evidence For Useful Predictive Representations

Status: Stable

## Focus

Q-003: What evidence would show that a model has learned a useful predictive representation of its environment?

## Synthesis

A useful predictive representation is not proven by reconstruction quality alone. In this source set, the strongest evidence is behavioral and counterfactual: the representation should let the agent predict enough about future consequences that it can learn, plan, or act better than it could from direct experience alone.

The evidence ladder is:

1. Prediction evidence: the model predicts future latent states, rewards, discounts, or observations from history and actions.
2. Behavioral evidence: policies trained through the model perform well in the real environment.
3. Efficiency evidence: the agent learns with better data efficiency, computation time, or reuse of past experience.
4. Transfer evidence: behavior learned inside the model transfers back to the real environment.
5. Robustness evidence: the same modeling approach works across different tasks or domains without extensive retuning.

For world models, the most convincing evidence is not that the model can imagine plausible futures. It is that using those imagined futures improves real behavior.

## Backing Evidence

- Source: `sources/World Models .pdf`
  Adds: Uses policy learning inside a learned or hallucinated environment and transfer back to actual environments as evidence that the model contains actionable structure.
- Source: `sources/Dream to Control (DreamerV1).pdf`
  Adds: Uses behavior learning in compact latent imagination, with improved data efficiency, computation time, and final performance on visual control tasks.
- Source: `sources/Mastering Atari with Discrete World Models (DreamerV2).pdf`
  Adds: Treats human-level Atari behavior learned inside a separately trained world model as evidence that the latent representation is useful for behavior.
- Source: `sources/Mastering Diverse Domains through World Models (DreamerV3).pdf`
  Adds: Uses broad cross-domain performance with fixed hyperparameters as evidence that the learned representations are robust enough to support general control.

## First Principles Breakdown

Observation: Environments produce more detail than an agent can efficiently use for every decision.

Mechanism: A predictive representation compresses experience into a state that keeps information needed to predict future consequences.

Assumption: If the representation captures causal or action-relevant structure, policies trained against it should work outside the model.

Implication: Real-environment behavior is the key test. Prediction and reconstruction are supporting evidence, not the final proof.

## Counterevidence and Limits

A model can be predictive but not useful for control. It can also be useful on a benchmark while failing under distribution shift. The Dreamer papers use strong behavioral evidence, but deeper synthesis should inspect benchmark details, ablations, and failure cases before making claims about general world understanding.

Bias checks:

- Substitution: Do not use benchmark score as a complete proxy for representation quality.
- Anchoring: Do not treat latent imagination as the only possible evidence path.
- Overconfidence: Cross-domain performance in DreamerV3 is strong evidence, but still bounded by the evaluated domains.
- WYSIATI: The current source set does not include direct evidence from LLM-oriented world-model research.

## Memory Check

No conflict with Protocol Memory.

## Next Research Actions

Use this evidence ladder when reading future world-model papers. For Q-004, check where the ladder breaks: prediction, transfer, robustness, or long-horizon behavior.
