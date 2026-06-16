<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DynamicAtlasCustomFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| texture | The texture to filter. |
| filtersToApply | The filters the dynamic atlas applies when the delegate returns `true`. by default, this value is equal to DynamicAtlasSettings.activeFilters. |

### Returns

**bool** When `false`, the texture cannot be added to the atlas. When `true` the texture is added to the atlas, as long as it is not excluded by filtersToApply.

### Description

Delegate that can be used as a custom filter for the dynamic atlas.
