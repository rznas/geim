<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.PerObjectData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

What kind of per-object data to setup during rendering.

At minimum, object transformation matrices are set up per-object, but extra data (e.g. lightmaps, light probes etc.) can be set up by combining PerObjectData flags.

Additional resources: DrawingSettings, ScriptableRenderContext.DrawRenderers.

### Properties

| Property | Description |
| --- | --- |
| None | Do not setup any particular per-object data besides the transformation matrix. |
| LightProbe | Setup per-object light probe SH data. |
| ReflectionProbes | Setup per-object reflection probe data. |
| LightProbeProxyVolume | Setup per-object light probe proxy volume data. |
| Lightmaps | Setup per-object lightmaps. |
| LightData | Setup per-object light data. |
| MotionVectors | Setup per-object motion vectors. |
| LightIndices | Setup per-object light indices. |
| ReflectionProbeData | Setup per-object reflection probe index offset and count. |
| OcclusionProbe | Setup per-object occlusion probe data. |
| OcclusionProbeProxyVolume | Setup per-object occlusion probe proxy volume data (occlusion in alpha channels). |
| ShadowMask | Setup per-object shadowmask. |
