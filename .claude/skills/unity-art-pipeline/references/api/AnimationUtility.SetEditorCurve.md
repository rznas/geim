<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.SetEditorCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clip | The animation clip to modify. |
| binding | The binding that defines the path and the properties of the curve. |
| curve | The curve to add. Set to null to remove the curve. |

### Description

Adds, modifies, or removes an editor float curve in an animation clip.

Unity internally combines position curves, scale curves, and rotation curves. When curves are combined, keyframes are set at the union of all keyframes points. In the Editor AnimationClip, you can specify special editor curves that are not combined and allows the user to edit curves in a more intuitive way.

Unity has two types of animation: float curve and object reference curve. A float curve is a classic curve that animates a float property over time. An object reference curve is a construct that animates an object reference property over time.

This method is used for float curves. For object reference curves, see: AnimationUtility.SetObjectReferenceCurve.
