<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ITerrainLayerCustomUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides an interface to display a custom TerrainLayer UI in the Terrain Layers inspector.

Implement this interface on the ShaderGUI class for your custom terrain shader. This GUI will only be displayed when you select any Terrain Layer in the Paint Texture tab with the custom shader assigned to the terrain.

### Public Methods

| Method | Description |
| --- | --- |
| OnTerrainLayerGUI | Draws the custom GUI for the terrain layer. |
