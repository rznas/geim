<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-lightProbeSampleCountMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the number of samples to use for Light Probes relative to the number of samples for lightmap texels. (Editor only).

The default value is 4.

This value is a multiplier of directSampleCount, indirectSampleCount and environmentSampleCount. This multiplier is used to account for the fact that Light Probes have to sample a larger area and therefore require more samples than a lightmap texel. If you increase this value, the quality of your Light Probes might improve, but baking takes more time. This can help in cases where Light Probes appear inconsistent with other baked lighting in the Scene.

When Unity serializes this `LightingSettings` object as a Lighting Settings Asset, this property corresponds to the **Light Probe Sample Multiplier** property in the Lighting Settings Asset Inspector.

Additional resources: Lighting Settings Asset.
