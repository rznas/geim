<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightmapParameters-clusterResolution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the resolution at which Enlighten Realtime Global Illumination stores and can transfer input light.

Typically this resolution can be slightly lower than the resolution of the real-time lightmap without significantly reducing the final quality, although this depends on the kinds of lighting environments you wish to use. Small, bright light sources will require a higher clusterResolution for Enlighten Realtime Global Illumination to capture them accurately.
 


 Cluster resolution is multiplied by the real-time lightmap resolution. A high value means a higher cluster resolution. A value of 1 matches each texel in the real-time lightmap with one input cluster.
 


 Using a very small cluster resolution results in light being smeared across the output texels. Larger values do not significantly increase quality (as they have to be averaged for the final output texel), but can cause unnecessary increases in time and memory footprint.
