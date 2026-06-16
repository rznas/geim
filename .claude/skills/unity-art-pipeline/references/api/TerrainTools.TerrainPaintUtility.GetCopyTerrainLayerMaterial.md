<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.GetCopyTerrainLayerMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Material** Built in "Hidden/Terrain/TerrainLayerUtils" material.

### Description

Returns the default copy terrain layer material.

This material is used by PaintTexture operations. Pass 0 is used to select a channel from the alphamap and copy it into a single channel intermediary texture Pass 1 is used to copy from the single channel intermediary texture back into the source alphamap.
