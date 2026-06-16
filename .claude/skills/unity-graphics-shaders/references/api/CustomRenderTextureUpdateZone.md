<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomRenderTextureUpdateZone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure describing an Update Zone.

UpdateZones are used when updating the full custom render texture is not required. They are defined by a position, a size and a rotation inside the surface of the texture. Multiple Update Zones can be set up in order to update different parts of the texture at the same time. Additional resources: CustomRenderTexture.

### Properties

| Property | Description |
| --- | --- |
| needSwap | If true, and if the texture is double buffered, a request is made to swap the buffers before the next update. Otherwise, the buffers will not be swapped. |
| passIndex | Shader Pass used to update the Custom Render Texture for this Update Zone. |
| rotation | Rotation of the Update Zone. |
| updateZoneCenter | Position of the center of the Update Zone within the Custom Render Texture. |
| updateZoneSize | Size of the Update Zone. |
