<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.IOnInspectorGUI.ShowBrushesGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| spacing | Pixel spacing for the brush GUI controls. |
| flags | Specifies which brush controls to display in the Terrain tool UI. |
| textureResolutionPerTile | The resolution per Terrain tile of the Texture, which the tool is editing. Unity uses this value to calculate Brush size limits. |

### Description

Displays the default controls for the brush in the tool inspector.

If the tool is editing multiple Textures on a Terrain, textureResolutionPerTile is the largest resolution among them. Additional resources: IOnPaint.brushSize and IOnPaint.brushStrength.
