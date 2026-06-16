<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-indirectResolution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the number of texels that Enlighten Realtime Global Illumination uses per world unit when calculating indirect lighting. (Editor only).

The default value is 2. Increasing this value can improve lightmap quality, but also increases bake times. Doubling this value causes the number of texels to quadruple, because the value refers to both the height and width of the lightmap. See the Occupied texels count in the statistics area at the bottom of the Lighting window.

This setting affects the lower-resolution, indirect-only lightmaps that the Enlighten Realtime Global Illumination lightmapper generates. These lightmaps are compatible with both the Baked Global Illumination system and the Enlighten Realtime Global Illumination system.

Note that when these indirect-only lightmaps are used with the Baked Global Illumination system, Unity composites them into the final lightmaps, along with the full-resolution direct and ambient occlusion lighting data. The resolution of the final lightmaps is controlled by the LightingSettings.lightmapResolution property. Changing this value therefore does not affect the resolution of the final lightmaps, although it can affect the fidelity of the indirect-only data within them.

When Unity serializes this `LightingSettings` object as a Lighting Settings Asset, this property corresponds to the **Indirect Resolution** property in the Lighting Settings Asset Inspector.

Additional resources: Lighting Settings Asset, LightingSettings.lightmapResolution.
