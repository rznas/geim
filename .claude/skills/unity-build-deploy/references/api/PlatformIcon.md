<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlatformIcon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Icon slot container.

### Properties

| Property | Description |
| --- | --- |
| height | The height of the icon in pixels. |
| kind | The PlatformIconKind is specific to the target platform. |
| layerCount | The number of texture layers the icon slot currently contains. |
| maxLayerCount | The maximum number of texture layers required by the icon slot. |
| minLayerCount | The minimum number of texture layers required by the icon slot. |
| width | The width of the icon in pixels. |

### Public Methods

| Method | Description |
| --- | --- |
| GetTexture | Retrieve the texture which is currently assigned to the specified layer. |
| GetTextures | Retrieve an array of all textures which are currently assigned to the icon slot. |
| SetTexture | Assign a texture to the specified layer. |
| SetTextures | Assign all available icon layers. |
