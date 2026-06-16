<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.SetKeyBroken.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| curve | The curve to modify. |
| index | Keyframe index. |
| broken | Broken flag. |

### Description

Change the specified keyframe broken tangent flag.

The keyframe broken flag will be used by the Curve Editor to generate tangents automatically. Changing the broken flag here will also recalculate Keyframe.inTangent and Keyframe.outTangent.

Additional resources: AnimationUtility.SetKeyLeftTangentMode, AnimationUtility.SetKeyRightTangentMode.
