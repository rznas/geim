<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CameraEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines a place in camera's rendering to attach CommandBuffer objects to.

Unity's rendering loop can be extended by adding so called "command buffers" at various points in camera rendering. For example, you could add some custom geometry to be drawn right after the skybox is drawn.

Additional resources: CommandBuffer, LightEvent, command buffers overview.

### Properties

| Property | Description |
| --- | --- |
| BeforeDepthTexture | Before camera's depth texture is generated. |
| AfterDepthTexture | After camera's depth texture is generated. |
| BeforeDepthNormalsTexture | Before camera's depth+normals texture is generated. |
| AfterDepthNormalsTexture | After camera's depth+normals texture is generated. |
| BeforeGBuffer | Before deferred rendering G-buffer is rendered. |
| AfterGBuffer | After deferred rendering G-buffer is rendered. |
| BeforeLighting | Before lighting pass in deferred rendering. |
| AfterLighting | After lighting pass in deferred rendering. |
| BeforeFinalPass | Before final geometry pass in deferred lighting. |
| AfterFinalPass | After final geometry pass in deferred lighting. |
| BeforeForwardOpaque | Before opaque objects in forward rendering. |
| AfterForwardOpaque | After opaque objects in forward rendering. |
| BeforeImageEffectsOpaque | Before image effects that happen between opaque & transparent objects. |
| AfterImageEffectsOpaque | After image effects that happen between opaque & transparent objects. |
| BeforeSkybox | Before skybox is drawn. |
| AfterSkybox | After skybox is drawn. |
| BeforeForwardAlpha | Before transparent objects in forward rendering. |
| AfterForwardAlpha | After transparent objects in forward rendering. |
| BeforeImageEffects | Before image effects. |
| AfterImageEffects | After image effects. |
| AfterEverything | After camera has done rendering everything. |
| BeforeReflections | Before reflections pass in deferred rendering. |
| AfterReflections | After reflections pass in deferred rendering. |
| BeforeHaloAndLensFlares | Before halo and lens flares. |
| AfterHaloAndLensFlares | After halo and lens flares. |
