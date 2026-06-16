<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSettings-useLegacyProbeSampleCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable the legacy fixed sample counts for baking Light Probes with Progressive Lightmapper.

The fixed sample counts are: 64 direct samples, 2048 indirect samples and 2048 environment samples. Disabling this ties the Light Probe sample counts to the sample counts specified for lightmaps. When disabled a multiplier is provided in the lighting settings to be able to use more samples for Light Probes. This is because a Light Probe covers a larger area than a lightmap texel so generally needs more samples to converge.
