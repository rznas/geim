<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.CurveFilterOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The keyframe reduction settings for compressing animation curves.

Use the CurveFilterOptions when saving a recording to a clip. A value of 0.5 gives a light compression. Additional resources: GameObjectRecorder.SaveToClip.

### Properties

| Property | Description |
| --- | --- |
| floatError | The amount the float animation curve is allowed to deviate from its original curve. This amount is expressed as a percentage: a positive value between 0 and 100. |
| keyframeReduction | Whether to apply keyframe reduction. |
| positionError | The amount the position animation curve is allowed to deviate from its original curve. This amount is expressed as a percentage: a positive value between 0 and 100. |
| rotationError | The amount the rotation animation curve is allowed to deviate from its original curve. This amount is expressed as a number of degrees. It should be a positive value between 0 and 180. |
| scaleError | The amount the scale animation curve is allowed to deviate from its original curve. This amount is expressed as a percentage: a positive value between 0 and 100. |
| unrollRotation | Whether to apply rotation unrolling. This option is enabled by default. |
