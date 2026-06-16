<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DynamicAtlasFilters.FilterMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Excludes textures that use a filter mode that the atlas does not support.

 This filter is disabled by default. You can enable it to prevent artifacts that might occur when the atlas does not support the texture's filter mode, and cannot sample the texture correctly. However, because excluding textures from the atlas can reduce performance, the default behavior is preferable in most cases.

 On GLES3 (and later) devices, the atlas supports more than one filter mode, so you should not need to enable this filter.
