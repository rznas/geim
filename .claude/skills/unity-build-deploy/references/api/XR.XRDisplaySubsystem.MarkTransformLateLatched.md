<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.MarkTransformLateLatched.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The transform of the GameObject to be late latched. |
| nodeType | The late latch node type to be associated with the transform. |

### Description

This marks a given GameObject's transform to be late latched in the next frame. Once marked for late latching, the GameObject transform and its descendants will be updated with the latest VR pose updates before rendering is submitted to the GPU.
