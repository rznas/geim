<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TextureSlotCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of textures that UI Toolkit can bind simultaneously to the shader to reduce draw calls.

Additional resources: PanelSettings.textureSlotCount

### Properties

| Property | Description |
| --- | --- |
| One | UI Toolkit can bind only one texture to the shader at once. No dynamic branching is required to select the texture. |
| Two | UI Toolkit can bind up to two textures to the shader at once. It uses one dynamic branch to select the appropriate texture. |
| Four | UI Toolkit can bind up to four textures to the shader at once. It uses two nested dynamic branches to select the appropriate texture. |
| Eight | UI Toolkit can bind up to eight textures to the shader at once. It uses three nested dynamic branches to select the appropriate texture. /// |
