<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintToolWithOverlaysBase.OnToolSettingsGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | Active Terrain object. |
| editContext | Interface used to communicate between Editor and Paint tools. |

### Description

Contains the IMGUI code for custom settings beyond the common settings.

If TerrainPaintToolWithOverlaysBase.HasToolSettings returns true, then there is custom code in this function. If not, then there is no custom code in this function.
