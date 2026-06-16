<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.ApplyDelayedActions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flushes the delayed actions created by PaintContext heightmap and alphamap modifications.

Expensive updates that would cause performance issues during painting and sculpting are deferred until the user finishes interacting with them. PaintContext.ScatterAlphamap creates a delayed action to rebuild basemap LOD textures. PaintContext.ScatterHeightmap creates a delayed action to rebuild collision, physics, pixel error metrics, visibility bounding boxes, and grass, tree, and detail positions. ApplyDelayedActions will immediately apply these delayed actions. ApplyDelayedActions is called automatically on mouse button up, and when the terrain inspector is closed (OnDisable).
