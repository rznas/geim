<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.LerpUnclamped.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | The start value. |
| b | The end value. |
| t | The interpolation between the two floats. |

### Returns

**float** The float value as a result from the linear interpolation.

### Description

Linearly interpolates between `a` and `b` by `t` with no limit to `t`.

The parameter `t` is not clamped and a value based on `a` and `b` is supported. If `t` is less than zero, or greater than one, then LerpUnclamped will result in a return value outside the range `a` to `b`.

Suppose parameter `a` = 0.33f, and `b` = 1.5f. If interpolator `t` = -0.25f then the return value is 0.0375f.

**Details:** The calculation (`b` - /a/) is 1.17f. This is scaled by 0.25f and a result of 0.2925f is obtained. Subtracting this from `a` (because the interpolant `t` is negative) results in 0.0375f.

Additional resources: Lerp.
