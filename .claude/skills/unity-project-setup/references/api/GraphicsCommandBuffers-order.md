<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/GraphicsCommandBuffers-order.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# CameraEvent and LightEvent events order reference for the Built-In Render Pipeline

## CameraEvent

The order of execution for CameraEvents depends on the rendering path that your Project uses.

### Deferred rendering path

- BeforeGBuffer: Unity renders opaque geometry
- AfterGBuffer: Unity resolves depth.
- BeforeReflections: Unity renders default reflections, and **Reflection Probe** reflections.
- AfterReflections: Unity copies reflections to the Emissive channel of the G-buffer.
- BeforeLighting: Unity renders shadows. See LightEvent order of execution.
- AfterLighting
- BeforeFinalPass: Unity processes the final pass.
- AfterFinalPass
- BeforeForwardOpaque (only called if there is opaque geometry that cannot be rendered using deferred): Unity renders opaque geometry that cannot be rendered with deferred rendering.
- AfterForwardOpaque (only called if there is opaque geometry that cannot be rendered using deferred)
- BeforeSkybox: Unity renders the **skybox**.
- AfterSkybox: Unity renders halos.
- BeforeImageEffectsOpaque: Unity applies opaque-only **post-processing** effects.
- AfterImageEffectsOpaque
- BeforeForwardAlpha: Unity renders transparent geometry, and UI Canvases with a Rendering Mode of **Screen Space - **Camera****.
- AfterForwardAlpha: BeforeHaloAndLensFlares: Unity renders **lens flares**.
- AfterHaloAndLensFlares
- BeforeImageEffects: Unity applies post-processing effects.
- AfterImageEffects
- AfterEverything: Unity renders UI Canvases with a Rendering Mode that is not **Screen Space - Camera**.

### Forward rendering path

- BeforeDepthTexture: Unity renders depth for opaque geometry.
- AfterDepthTexture
- BeforeDepthNormalsTexture: Unity renders depth normals for opaque geometry.
- AfterDepthNormalsTexture: Unity renders shadows. See LightEvent order of execution.
- BeforeForwardOpaque: Unity renders opaque geometry.
- AfterForwardOpaque
- BeforeSkybox: Unity renders the skybox.
- AfterSkybox: Unity renders halos.
- BeforeImageEffectsOpaque: Unity applies opaque-only post-processing effects.
- AfterImageEffectsOpaque
- BeforeForwardAlpha: Unity renders transparent geometry, and UI Canvases with a Rendering Mode of **Screen Space - Camera**.
- AfterForwardAlpha
- BeforeHaloAndLensFlares: Unity renders lens flares.
- AfterHaloAndLensFlares
- BeforeImageEffects: Unity applies post-processing effects.
- AfterImageEffects
- AfterEverything: Unity renders UI Canvases with a Rendering Mode that is not **Screen Space - Camera**.

## LightEvent order of execution

During the “render shadows” stage above, for each shadow-casting Light, Unity performs these steps:

- BeforeShadowMap
- BeforeShadowMapPass: Unity renders all shadow casters for the current Pass
- AfterShadowMapPass: Unity repeats the last three steps, for each Pass
- AfterShadowMap
- BeforeScreenSpaceMask: Unity gathers the shadow map into a screen space buffer and performs filtering
- AfterScreenSpaceMask
