<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.GetMatrixArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Get a matrix array from the property block.

Returns null if such property doesn't exist.

### Parameters

| Parameter | Description |
| --- | --- |
| values | The list to hold the returned array. |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Fetch a matrix array from the property block into a list.

The list will be resized to the array size, or cleared if such property doesn't exist. Memory allocation is guaranteed not to happen during the function call.
