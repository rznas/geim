<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings-cameraRelativeShadowCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable or disable using the camera position as the reference point for culling shadows.

When Unity culls distant shadows, a shadow that's far away from the world space origin can flicker. The flickering happens because GameObject coordinates become increasingly less precise as they get further away, so the shadow moves in and out of culling range.

 If you set `cameraRelativeShadowCulling` to `true`, Unity uses the camera position as the reference point for culling shadows instead of the world space origin. This can reduce flickering.

 If a shadow is closer to the world space origin than the camera position, setting `cameraRelativeShadowCulling` to `true` may introduce flickering or make it worse. You can use the following approaches instead:

- Reduce Camera.farClipPlane to avoid the distance of shadows becoming too large for precise calculations.
- Make everything in your scene smaller, to reduce distances across your whole scene.

Additional resources: GraphicsSettings.cameraRelativeLightCulling
