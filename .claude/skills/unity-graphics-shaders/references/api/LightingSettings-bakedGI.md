<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-bakedGI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether to enable the Baked Global Illumination system for this Scene.

When this is set to `true`, this Scene uses the Baked Global Illumination system. This means that you are able to generate baked lightmaps, Light Probes and Reflection Probes for this Scene.

When this is set to `false`, this Scene does not use the Baked Global Illumination system. This means that you are unable to generate baked lightmaps and Light Probes for this Scene. At runtime, Unity will not load precomputed lighting data for this Scene, and Baked Lights and Mixed Lights will behave as real-time Lights.

When Unity serializes this `LightingSettings` object as a Lighting Settings Asset, this property corresponds to the **Baked GI** property in the Lighting Settings Asset Inspector.

Additional resources: Lighting Settings Asset, realtimeGI.
