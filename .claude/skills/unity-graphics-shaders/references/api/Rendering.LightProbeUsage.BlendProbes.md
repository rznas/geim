<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightProbeUsage.BlendProbes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Simple light probe interpolation is used.

If baked light probes are present in the Scene, an interpolated light probe will be calculated for this object and set as built-in shader uniform variables. Surface shaders use this information automatically. To add light probe contribution to your custom non-surface shaders, use ShadeSH9(worldSpaceNormal) in your vertex or pixel shader.

Additional resources: Light Probes.
