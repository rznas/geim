<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.IOnSceneGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface that provides parameters and utility functions for the OnSceneGUI event of the terrain paint tools.

Additional resources: TerrainPaintTool<T0>.OnSceneGUI.

### Properties

| Property | Description |
| --- | --- |
| brushSize | Read only. Current brush size in terrain units (equivalent size to world units). |
| brushStrength | Read only. Current brush strength. |
| brushTexture | Read only. Current selected brush texture. |
| controlId | The control ID for the current Terrain Inspector. (Read Only) |
| hitValidTerrain | Read only. True if the mouse is over a valid Terrain object; otherwise false. |
| raycastHit | Read only. The raycast result for the current mouse position. This is valid when hitValidTerrain is true. |
| sceneView | Read only. SceneView object. |

### Public Methods

| Method | Description |
| --- | --- |
| Repaint | Instructs the Editor to repaint the tool UI, the Scene view, or both. |
