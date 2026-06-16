<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.SetObjectReferenceCurves.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clip | The animation clip to modify. |
| bindings | The bindings that define the paths and the properties of each curve. |
| keyframes | Array of Object reference arrays, one per binding. |

### Description

Adds, modifies, or removes object references curve in an animation clip.

This method is equivalent to calling AnimationUtility.SetObjectReferenceCurve for each individual curve. This method also applies relevant post-processing operations only once. This method modifies object reference curves. For float curves, see AnimationUtility.SetEditorCurves.
