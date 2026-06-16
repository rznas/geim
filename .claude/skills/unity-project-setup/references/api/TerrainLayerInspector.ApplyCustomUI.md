<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainLayerInspector.ApplyCustomUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| customUI | The custom UI object. |
| terrain | The Terrain object. |

### Description

Applies the custom UI for the Terrain Layer object.

The custom UI object is usually the same ShaderGUI object implemented for the Terrain shader. This is because only the Terrain shader defines how to interpret data in a TerrainLayer object. To retrieve the custom UI object, cast the ShaderGUI object to the ITerrainLayerCustomUI interface.
