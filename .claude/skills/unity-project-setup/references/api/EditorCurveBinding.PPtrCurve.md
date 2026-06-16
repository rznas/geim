<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorCurveBinding.PPtrCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inPath | The transform path to the object to animate. |
| inType | The type of the object to animate. |
| inPropertyName | The name of the property to animate on the object. |

### Returns

**EditorCurveBinding** The new EditorCurveBinding.

### Description

Creates a preconfigured binding for a curve that points to an Object.

Use PPtr curves for curves that manipulate references to Objects. For example, use EditorCurveBinding.PPtrCurve for Material curves or Sprite curves.
