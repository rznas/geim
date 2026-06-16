<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-keepUnusedRenderingResources.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines whether Unity frees per-Camera rendering resources for the Terrain when those resources aren't in use after a certain number of frames.

By default, this property is `false`, which implies that Unity deletes these rendering resources from memory if the Camera they're associated with hasn't rendered for 100 frames. You might sometimes not want this behavior because the next time these resources are required (for example, when that Camera starts to render again), you must reallocate them, which can negatively impact performance. In such cases, set this property to `true` to keep those resources in memory unless the Camera they're associated with is destroyed. You can also use Terrain.SetKeepUnusedCameraRenderingResources and Terrain.GetKeepUnusedCameraRenderingResources to configure the setting for a specific Camera.

The value is not serialized with Terrain component.
