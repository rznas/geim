<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gradient.Evaluate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| time | Time of the evaluation (0 - 1). |

### Description

Calculate color at a given time.

Gradient color and alpha keys are blended and interpolated depending on the gradient mode.

Unity clamps the colors and alpha if you use a value for `time` that's smaller than `0` or larger than `1`. 

Additional resources: mode, GradientMode, SetKeys.
