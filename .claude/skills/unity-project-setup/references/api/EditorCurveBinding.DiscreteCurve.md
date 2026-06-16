<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorCurveBinding.DiscreteCurve.html
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

Creates a preconfigured binding for a curve where values should not be interpolated.

Use discrete curves for properties with discontinuous values, or for values that should not be interpolated. For example, use EditorCurveBinding.DiscreteCurve for enums or hashes. Discrete curves only support properties of type Int (with the DiscreteEvaluation attribute) or Enum. If you attempt to bind discrete curves to other types, a warning will be logged and a The default interpolated float curve binding. Refer to EditorCurveBinding.FloatCurve.
