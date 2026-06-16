<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintTool_1.OnPaint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | Active Terrain object. |
| editContext | Interface used to communicate between Editor and Paint tools. |

### Returns

**bool** Return true to temporarily hide tree, grass, and detail layers on the terrain.

### Description

Custom terrain tool paint callback.

Unity calls this method when the mouse button is pressed or dragged, which is typically when a tool applies its modifications. Some tools may instead want to apply their modifications in custom painting logic from within OnSceneGUI. When the method returns true, the layers on top of the terrain, such as trees, grass, and other details, are not rendered.

 Additional resources: PaintContext
