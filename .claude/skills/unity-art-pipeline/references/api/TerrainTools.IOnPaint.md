<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.IOnPaint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface that provides parameters and utility functions for the OnPaint event of the terrain paint tools.

Additional resources: TerrainPaintTool<T0>.OnPaint.

### Properties

| Property | Description |
| --- | --- |
| brushSize | Read only. Current brush size in Terrain units (equivalent size to world units). |
| brushStrength | Read only. Current brush strength. |
| brushTexture | Read only. Current selected brush texture. |
| hitValidTerrain | Read only. True if the mouse is over a valid Terrain object; otherwise false. |
| raycastHit | Read only. The raycast result for the current mouse position. This is valid when hitValidTerrain is true. |
| uv | Read only. The normalized position (between 0 and 1) on the active Terrain. |

### Public Methods

| Method | Description |
| --- | --- |
| Repaint | Instructs the Editor to repaint the tool UI, the Scene view, or both. |
