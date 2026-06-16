<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.TangentMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The TangentMode option for each Keyframe.

The Curve Editor uses the TangentMode to calculate Keyframe.inTangent and Keyframe.outTangent.

Additional resources: AnimationUtility.SetKeyRightTangentMode, AnimationUtility.SetKeyLeftTangentMode, AnimationUtility.SetKeyBroken.

### Properties

| Property | Description |
| --- | --- |
| Free | The tangent can be freely set by dragging the tangent handle. |
| Auto | The tangents are automatically set to make the curve go smoothly through the key. |
| Linear | The tangent points towards the neighboring key. |
| Constant | The curve retains a constant value between two keys. |
| ClampedAuto | The tangents are automatically set to make the curve go smoothly through the key. |
