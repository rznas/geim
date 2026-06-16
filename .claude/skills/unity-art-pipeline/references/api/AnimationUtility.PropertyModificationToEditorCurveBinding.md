<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.PropertyModificationToEditorCurveBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| modification | The PropertyModification to be converted. |
| gameObject | The root game object of the animated hierarchy. |
| binding | The resulting EditorCurveBinding. |

### Returns

**Type** The type of the animated value.

### Description

Use this method to convert a PropertyModification to an EditorCurveBinding.

The AnimationWindow uses this method when it filters property modifications from Undo.postprocessModifications, during keyframe operations.
