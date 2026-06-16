<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.GetPropertyDefaultIntValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| propertyIndex | The index of the shader property. |

### Description

Returns the default int value of the shader property at the specified index.

The shader property declaration block specifies the default value.

If Unity cannot find a property at the specified index, the function throws an `ArgumentOutOfRangeException`. If the property type is not Int, the function throws an `ArgumentException`.
