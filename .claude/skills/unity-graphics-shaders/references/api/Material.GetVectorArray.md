<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetVectorArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the property. |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |

### Description

Get a named vector array.

Additional resources: SetVectorArray.

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the property. |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| values | The list to hold the returned array. |

### Description

Fetch a named vector array into a list.

The list will be resized to the array size, or cleared if such property doesn't exist. Memory allocation is guaranteed not to happen during the function call.
