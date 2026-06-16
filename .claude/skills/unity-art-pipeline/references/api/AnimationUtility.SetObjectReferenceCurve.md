<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.SetObjectReferenceCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clip | The animation clip to modify. |
| binding | The bindings that define the paths and the properties of each curve. |
| keyframes | Array of Object reference values over time. Setting this to null will remove the curve. |

### Description

Adds, modifies, or removes an object reference curve in an animation clip.

Unity has two types of animation: float curve and object reference curve. A float curve is a classic curve that animates a float property over time. An object reference curve is a construct that animates an object reference property over time.

This method modifies object reference curves. For float curves, see AnimationUtility.SetEditorCurve.
