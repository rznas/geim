<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightProbeUsage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Light probe interpolation type.

Additional resources: Light Probes, Light Probe Proxy Volume.

### Properties

| Property | Description |
| --- | --- |
| Off | Light Probes are not used. The Scene's ambient probe is provided to the shader. |
| BlendProbes | Simple light probe interpolation is used. |
| UseProxyVolume | Uses a 3D grid of interpolated light probes. |
| CustomProvided | The light probe shader uniform values are extracted from the material property block set on the renderer. |
