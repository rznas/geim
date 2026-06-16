<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ReflectionProbeUsage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reflection Probe usage.

### Properties

| Property | Description |
| --- | --- |
| Off | Reflection probes are disabled, skybox will be used for reflection. |
| BlendProbes | Reflection probes are enabled. Blending occurs only between probes, useful in indoor environments. The renderer will use default reflection if there are no reflection probes nearby, but no blending between default reflection and probe will occur. |
| BlendProbesAndSkybox | Reflection probes are enabled. Blending occurs between probes or probes and default reflection, useful for outdoor environments. |
| Simple | Reflection probes are enabled, but no blending will occur between probes when there are two overlapping volumes. |
