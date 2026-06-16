<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.SetKeyLeftTangentMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| curve | The curve to modify. |
| index | Keyframe index. |
| tangentMode | Tangent mode. |

### Description

Change the specified keyframe tangent mode.

The keyframe tangent mode will be used by the Curve Editor to generate tangents automatically. Changing the tangent mode here will also recalculate Keyframe.inTangent and Keyframe.outTangent.

Additional resources: AnimationUtility.SetKeyRightTangentMode, AnimationUtility.SetKeyBroken.
