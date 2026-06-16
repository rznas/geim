<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MinMaxCurve.Evaluate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| time | Normalized time (in the range 0 - 1, where 1 represents 100%) at which to evaluate the curve. This is valid when ParticleSystem.MinMaxCurve.mode is set to ParticleSystemCurveMode.Curve or ParticleSystemCurveMode.TwoCurves. |
| lerpFactor | Blend between the two curves/constants (Valid when ParticleSystem.MinMaxCurve.mode is set to ParticleSystemCurveMode.TwoConstants or ParticleSystemCurveMode.TwoCurves). |

### Returns

**float** Calculated curve/constant value.

### Description

Manually query the curve to calculate values based on what mode it is in.

This automatically clamps the time and lerpFactor properties between 0 and 1.
