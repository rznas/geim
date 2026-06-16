<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.CalculateBrushTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | Reference terrain, defines terrain UV and object space. |
| brushCenterTerrainUV | Center point of the brush, in terrain UV space (0-1 across the terrain tile). |
| brushSize | Size of the brush, in terrain space. |
| brushRotationDegrees | Brush rotation in degrees (clockwise). |

### Returns

**BrushTransform** Transform from terrain space to Brush UVs.

### Description

Creates a BrushTransform from the input parameters.
