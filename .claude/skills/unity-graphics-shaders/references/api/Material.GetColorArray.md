<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetColorArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Get a named color array.

It is just an alias to GetVectorArray, only colors are cast to vectors. No sRGB-linear conversion is done during the function call.

Additional resources: SetColorArray, GetVectorArray.

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |
| values | The list to hold the returned array. |

### Description

Fetch a named color array into a list.

The list will be resized to the array size, or cleared if such property doesn't exist. Memory allocation is guaranteed not to happen during the function call.
