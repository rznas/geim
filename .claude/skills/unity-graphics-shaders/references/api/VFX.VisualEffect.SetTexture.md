<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffect.SetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The ID of the property. This is the same ID that Shader.PropertyToID returns. |
| name | The name of the property. |
| t | The new texture value. |

### Description

Sets the value of a named texture property.

Automatically changes overridden state for this property to true. If the provided texture dimension doesn't correspond to the expected dimension, this function can log an error. If that happens, this assignment is ignored.
