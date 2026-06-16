<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings-cameraRelativeLightCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable or disable using the camera position as the reference point for culling lights.

When Unity culls distant lights, a light that's far away from the world space origin can flicker. The flickering happens because GameObject coordinates become increasingly less precise as they get further away, so the light moves in and out of culling range.

 If you set `cameraRelativeLightCulling` to `true`, Unity uses the camera position as the reference point for culling lights instead of the world space origin. This can reduce flickering.

 If a light is closer to the world space origin than the camera position, setting `cameraRelativeLightCulling` to `true` may introduce flickering or make it worse. You can use the following approaches instead:

- Reduce Camera.farClipPlane to avoid the distance of lights becoming too large for precise calculations.
- Make everything in your scene smaller, to reduce distances across your whole scene.

Additional resources: GraphicsSettings.cameraRelativeShadowCulling
