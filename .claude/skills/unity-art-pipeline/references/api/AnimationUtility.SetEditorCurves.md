<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.SetEditorCurves.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clip | The animation clip to modify. |
| binding | The binding that defines the path and the properties of each curve. |
| curves | The curves to add. Setting curves in the array to null will remove these curves from the clip. |

### Description

Adds, modifies, or removes multiple editor float curves in an animation clip.

This method is the equivalent of calling AnimationUtility.SetEditorCurve for each individual curve, but applies relevant post-processing operations only once. This method is used for float curves. For object reference curves, see: AnimationUtility.SetObjectReferenceCurves.
