<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.SetLocalPositionAndRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| localPosition | The local space position to apply to the transform. |
| localRotation | The local space rotation to apply to the transform. |

### Description

Sets the position and rotation of the Transform component in local space (i.e. relative to its parent transform).

When setting both the position and rotation of a transform, calling this method is slightly more efficient than assigning to TransformHandle.localPosition and TransformHandle.localRotation individually.

If the transform has no parent, then calling this is equivalent to calling TransformHandle.SetPositionAndRotation.
