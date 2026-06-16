<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.GetPropertyAttributes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| propertyIndex | The index of the shader property. |

### Description

Returns an array of strings containing attributes of the shader property at the specified index.

Attributes are names enclosed inside a pair of brackets that appear before the property declaration, for example, "[HideInInspector]". The function returns an empty array if there is no attribute specified for the property.

Unity recognizes some attributes as ShaderPropertyFlags, and does not include those attributes in the return array.

If Unity cannot find a property at the specified index, the function throws an `ArgumentOutOfRangeException`.
