<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.FilteringSettings-excludeMotionVectorObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines if Unity excludes GameObjects that are in motion from rendering. This refers to GameObjects that have an active Motion Vector pass assigned to their Material or have set the Motion Vector mode to **per object motion** (Menu: **Mesh Renderer > Additional Settings > Motion Vectors > Per Object Motion**). For Unity to exclude a GameObject from rendering, the GameObject must have moved since the last frame. To exclude a GameObject manually, enable a Motion Vector pass.

Additional resources: ScriptableRenderContext.DrawRenderers, Creating a simple render loop in a custom render pipeline.
