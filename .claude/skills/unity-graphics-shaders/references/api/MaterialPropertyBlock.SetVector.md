<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.SetVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the property. |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| value | The Vector4 value to set. |

### Description

Set a vector property.

Adds a property to the block. If a vector property with the given name already exists, the old value is replaced. If the property is previously added using SetColor, the value is automatically converted to active color space as if ::SetColor is called.

Additional resources: SetColor, SetMatrix, SetFloat, SetTexture.
