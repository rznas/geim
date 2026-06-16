<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadowMapPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows precise control over which shadow map passes to execute CommandBuffer objects attached using Light.AddCommandBuffer.

These flags only take effect when used with Rendering.LightEvent/BeforeShadowMapPass or Rendering.LightEvent/AfterShadowMapPass.

### Properties

| Property | Description |
| --- | --- |
| PointlightPositiveX | +X point light shadow cubemap face. |
| PointlightNegativeX | -X point light shadow cubemap face. |
| PointlightPositiveY | +Y point light shadow cubemap face. |
| PointlightNegativeY | -Y point light shadow cubemap face. |
| PointlightPositiveZ | +Z point light shadow cubemap face. |
| PointlightNegativeZ | -Z point light shadow cubemap face. |
| DirectionalCascade0 | First directional shadow map cascade. |
| DirectionalCascade1 | Second directional shadow map cascade. |
| DirectionalCascade2 | Third directional shadow map cascade. |
| DirectionalCascade3 | Fourth directional shadow map cascade. |
| Spotlight | Spot light shadow pass. |
| AreaLight | Area light shadow pass. |
| Pointlight | All point light shadow passes. |
| Directional | All directional shadow map passes. |
| All | All shadow map passes. |
