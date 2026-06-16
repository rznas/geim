<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtilityEditor.UpdateTerrainDataUndo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrainData | Terrain data object. |
| undoName | The name of the undo operation. |

### Description

Updates the undo stack with a terrain operation.

This method adds a new terrain operation to the undo stack, so the operation can be undone and revert the terrain's data to its previous state.
