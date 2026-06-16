<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-autoGenerate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Deprecated as Auto Generate lighting is no longer supported. Whether the Unity Editor automatically precomputes lighting data when the Scene data changes. (Editor only).

When this is set to `true`, the Editor automatically bakes lightmaps, Light Probes and Reflection Probes when you make changes to your Scene. When this is set to `false`, Unity does not automatically bake this data. The default value is `false`.

When this is set to `false`, you can instruct Unity to perform the bake by pressing the **Generate Lighting** button in the Lighting window, or by using the Lightmapping.Bake or Lightmapping.BakeAsync APIs.

This setting applies to the Baked Global Illumination system and the Enlighten Realtime Global Illumination system.

When Unity serializes this `LightingSettings` object as a Lighting Settings Asset, this property corresponds to the **Auto Generate** property in the Lighting Settings Asset Inspector.

Additional resources: Lighting Settings Asset, Lighting window, Lightmapping.Bake, Lightmapping.BakeAsync.
