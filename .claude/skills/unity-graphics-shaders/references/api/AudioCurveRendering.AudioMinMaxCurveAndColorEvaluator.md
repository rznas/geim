<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioCurveRendering.AudioMinMaxCurveAndColorEvaluator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | Normalized x-position in the range [0; 1] at which the min- and max-curves should be evaluated. |
| col | Color of the curve at the specified evaluation point. |
| minValue | Returned value of the minimum curve. Clamped to [-1; 1]. |
| maxValue | Returned value of the maximum curve. Clamped to [-1; 1]. |

### Description

Curve evaluation function that allows simultaneous evaluation of the min- and max-curves. The returned minValue and maxValue values are expected to be in the range [-1; 1] and a value of 0 corresponds to the vertical center of the rectangle that is drawn into. Values outside of this range will be clamped. Additionally the color of the curve at this point is evaluated.
