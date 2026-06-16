<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioCurveRendering.DrawMinMaxFilledCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| r | Rectangle determining the size of the graph. |
| eval | Normalized x-position in the range [0; 1] at which the min- and max-curves should be evaluated. The returned minValue and maxValue values are expected to be in the range [-1; 1] and a value of 0 corresponds to the vertical center of the rectangle that is drawn into. Values outside of this range will be clamped. |

### Description

Fills the area between the two curves evaluated by the AudioMinMaxCurveAndColorEvaluator provided with smooth gradients along the edges.
