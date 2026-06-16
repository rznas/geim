<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.HasBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property. Use Shader.PropertyToID to get this ID. |
| name | The name of the property. |

### Returns

**bool** Returns true if MaterialPropertyBlock has this property.

### Description

Checks if MaterialPropertyBlock has the ComputeBuffer property with the given name or name ID. To set the property, use SetBuffer.

Additional resources: MaterialPropertyBlock, HasProperty, HasFloat, HasTexture, HasColor, HasConstantBuffer, HasInt, HasMatrix, HasVector.
