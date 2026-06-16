<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines a place in light's rendering to attach CommandBuffer objects to.

Unity's rendering loop can be extended by adding so called "command buffers" at various points in light rendering; mostly related to shadows. For example, you could do custom processing of the shadow map after it is rendered.

Additional resources: CommandBuffer, CameraEvent, command buffers overview.

### Properties

| Property | Description |
| --- | --- |
| BeforeShadowMap | Before shadowmap is rendered. |
| AfterShadowMap | After shadowmap is rendered. |
| BeforeScreenspaceMask | Before directional light screenspace shadow mask is computed. |
| AfterScreenspaceMask | After directional light screenspace shadow mask is computed. |
| BeforeShadowMapPass | Before shadowmap pass is rendered. |
| AfterShadowMapPass | After shadowmap pass is rendered. |
