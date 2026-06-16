<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-lightmapScaleOffset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The UV scale & offset used for a lightmap.

A lightmap is a texture atlas and multiple Renderers can use different portions of the same lightmap.

The vector's x and y refer to UV scale, while z and w refer to UV offset.

Note: this property is only serialized when building the player. In all the other cases it's the responsibility of the Unity lightmapping system (or a custom script that brings external lightmapping data) to set it when the Scene loads or playmode is entered.

Additional resources: LightmapSettings class, lightmapIndex property, ShaderLab properties.
