<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffect.GetMatrix4x4.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The ID of the property. This is the same ID that Shader.PropertyToID returns. |
| name | The name of the property. |

### Returns

**Matrix4x4** The value for the Matrix4x4 you specify. Returns `Matrix4x4.identity` if VisualEffect.HasMatrix4x4 returns `false`.

### Description

Gets the value of a named Matrix4x4 property.
