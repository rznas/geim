<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.HasVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the property. |
| nameID | The name ID of the property. Use Shader.PropertyToID to get this ID. |

### Returns

**bool** Returns true if MaterialPropertyBlock has this property.

### Description

Checks if MaterialPropertyBlock has the Vector property with the given name or name ID. This also works with the Vector Array property. To set the property, use SetVector.

Additional resources: MaterialPropertyBlock, HasProperty, HasFloat, HasTexture, HasBuffer, HasColor, HasConstantBuffer, HasInt, HasMatrix.
