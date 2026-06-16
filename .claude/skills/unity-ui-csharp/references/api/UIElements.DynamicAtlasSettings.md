<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DynamicAtlasSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains the settings used by the dynamic atlas system.

### Static Properties

| Property | Description |
| --- | --- |
| defaultFilters | Default filters for a dynamic atlas. |
| defaults | Specifies default values used to initialize the structure. |

### Properties

| Property | Description |
| --- | --- |
| activeFilters | Defines the filters that the dynamic atlas system uses to exclude textures from the texture atlas. |
| customFilter | When a delegate is assigned, the dynamic atlas system calls it to determine whether or not a texture can be added to the atlas. |
| maxAtlasSize | Specifies the maximum size (width/height) of the atlas texture, in pixels. This value must be a power of two, and must be greater than or equal to minAtlasSize. |
| maxSubTextureSize | Specifies the maximum size (width/height) of a texture that can be added to the atlas. When activeFilters contains DynamicAtlasFilters.Size, textures larger than this size are excluded from the atlas. Otherwise, this value is not used. |
| minAtlasSize | Specifies the minimum size (width/height) of the atlas texture, in pixels. This value must be a power of two, and must be greater than 0 and less than or equal to maxAtlasSize. |
