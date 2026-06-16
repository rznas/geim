<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintDetailsToolUtility.ClampedDetailPatchesGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | The target terrain. |
| detailMinMaxHeight | The minimum and maximum height of the details within the terrain. |
| clampedDetailPatchIconScreenPositions | The list of screen detail pactch icons within the screen positions. |

### Returns

**int** Returns the index of the terrain patch within the screen position, returns an invalid index of -1.

### Description

Gets data on the clamped detail patches for displaying their GUI within a terrain.

Use this method to calculate the necessary data to distinguish different clamped detail patches within a terrain. This data is also used to visualize these clamped areas when scattering details across a terrain.

 Additional resources: PaintDetailsToolUtility.DrawClampedDetailPatchGUI
