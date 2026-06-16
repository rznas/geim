<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.GetKeyBroken.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| curve | Curve to query. |
| index | Keyframe index. |

### Returns

**bool** Broken flag at specified index.

### Description

Retrieves the broken tangent flag for a specfic keyframe.

The Curve Editor uses the keyframe broken flag to automatically generate tangents.

Additional resources: AnimationUtility.GetKeyLeftTangentMode, AnimationUtility.GetKeyRightTangentMode.
