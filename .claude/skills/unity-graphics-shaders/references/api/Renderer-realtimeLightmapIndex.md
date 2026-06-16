<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-realtimeLightmapIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The index of the real-time lightmap applied to this renderer.

A value of -1 (0xFFFF) means no lightmap has been assigned, which is the default. A value of 0xFFFE is internally used for objects that have their scale in lightmap set to 0; they affect lightmaps, but don't have a lightmap assigned themselves. The index is 16 bits internally and can't be larger than 65533 (0xFFFD).

Note: this property is only serialized when building the player. In all the other cases it's the responsibility of the Unity lightmapping system (or a custom script that brings external lightmapping data) to set it when the Scene loads or playmode is entered.

A lightmap is a texture atlas and multiple Renderers can use different portions of the same lightmap.

Additional resources: LightmapSettings class, lightmapIndex, lightmapScaleOffset property, ShaderLab properties.
