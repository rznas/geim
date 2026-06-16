<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MinMaxGradient.Evaluate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| time | Normalized time (in the range 0 - 1, where 1 represents 100%) at which to evaluate the gradient. This is valid when ParticleSystem.MinMaxGradient.mode is set to ParticleSystemGradientMode.Gradient or ParticleSystemGradientMode.TwoGradients. |
| lerpFactor | Blend between the two gradients/colors (Valid when ParticleSystem.MinMaxGradient.mode is set to ParticleSystemGradientMode.TwoColors or ParticleSystemGradientMode.TwoGradients). |

### Returns

**Color** Calculated gradient/color value.

### Description

Manually query the gradient to calculate colors based on what mode it is in.

This automatically clamps the time and lerpFactor properties between 0 and 1.
