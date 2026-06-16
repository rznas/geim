<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetVectorArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Property name. |
| values | Array of values to set. |
| nameID | Property name ID, use Shader.PropertyToID to get it. |

### Description

Sets a vector array property.

Sets a vector array property on the material. If a vector array property with the given name already exists, the old value is replaced.

The array length can't be changed once it has been added to the block. If you subsequently try to set a longer array into the same property, the length will be capped to the original length and the extra items you tried to assign will be ignored. If you set a shorter array than the original length, your values will be assigned but the original values will remain for the array elements beyond the length of your new shorter array.

Array parameters are not exposed in the material inspector, nor serialized with the material asset. But they can be set and queried with `SetFloatArray`, `SetColorArray`, `SetVectorArray`, `SetMatrixArray` and the corresponding getters from scripts at runtime.

Additional resources: GetVectorArray, SetColorArray.
