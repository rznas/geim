<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.SetFloatArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the property. |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| values | The array to set. |

### Description

Set a float array property.

Adds a float array property to the block. If a float array property with the given name already exists, the old value is replaced.

The array length can't be changed once it has been added to the block. If you subsequently try to set a longer array into the same property, the length will be capped to the original length and the extra items you tried to assign will be ignored. If you set a shorter array than the original length, your values will be assigned but the original values will remain for the array elements beyond the length of your new shorter array.

Additional resources: SetVectorArray, SetMatrixArray.
